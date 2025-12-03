@interface AEPDFPlugin
+ (id)generateImageForDocument:(id)document pageIndex:(unint64_t)index size:(CGSize)size showBookmark:(BOOL)bookmark;
- (BOOL)isPdfURL:(id)l;
- (id)_bookInfoForAssetAtURL:(id)l withMoc:(id)moc error:(id *)error needsCoordination:(BOOL)coordination;
- (id)_updateBook:(id)book onMoc:(id)moc forCurrentURL:(id)l;
- (id)helper:(id)helper annotationProviderForURL:(id)l needsCoordination:(BOOL)coordination forAssetID:(id)d;
- (id)helper:(id)helper coverImageForURL:(id)l size:(CGSize)size;
- (id)helper:(id)helper metadataForKey:(id)key forURL:(id)l needsCoordination:(BOOL)coordination;
- (id)helperForURL:(id)l withOptions:(id)options;
- (void)_logLoadErrorForURL:(id)l;
- (void)helper:(id)helper deletePersistentCacheForURL:(id)l;
- (void)helper:(id)helper setMetadata:(id)metadata forKey:(id)key forURL:(id)l;
- (void)helper:(id)helper updateCachedURLFrom:(id)from to:(id)to;
- (void)helper:(id)helper viewControllerWithOptions:(id)options completion:(id)completion;
- (void)loadError:(id)error;
- (void)sendError:(id)error toCompletion:(id)completion;
- (void)sendViewControllerForBook:(id)book toCompletion:(id)completion;
- (void)showPasswordDialogForBook:(id)book transaction:(id)transaction withCompletion:(id)completion;
@end

@implementation AEPDFPlugin

- (BOOL)isPdfURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    pathExtension = [lCopy pathExtension];
    v5 = [pathExtension caseInsensitiveCompare:@"pdf"] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)generateImageForDocument:(id)document pageIndex:(unint64_t)index size:(CGSize)size showBookmark:(BOOL)bookmark
{
  v6 = 0;
  if (document && index != 0x7FFFFFFFFFFFFFFFLL)
  {
    bookmarkCopy = bookmark;
    height = size.height;
    width = size.width;
    v10 = [document pageAtIndex:index];
    v11 = v10;
    if (width == CGSizeZero.width && height == CGSizeZero.height)
    {
      BoxRectWithRotation = PDFPageGetBoxRectWithRotation(v10, 1);
      width = v14;
      v16 = v15;
      v17 = +[UIScreen mainScreen];
      [v17 bounds];
      v19 = v18;
      v21 = v20;

      if (width > v19 || v16 > v21)
      {
        CGSizeScaledToFitInSize();
        width = v23;
      }
    }

    v24 = BKImageSizeForScreenSize(width);
    v26 = v25;
    v30[0] = PDFPageImageProperty_DrawBookmark;
    v27 = [NSNumber numberWithBool:bookmarkCopy];
    v30[1] = PDFPageImageProperty_WithRotation;
    v31[0] = v27;
    v31[1] = &__kCFBooleanTrue;
    v28 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    v6 = [v11 imageOfSize:1 forBox:v28 withOptions:{v24, v26}];
  }

  return v6;
}

- (id)helperForURL:(id)l withOptions:(id)options
{
  lCopy = l;
  v6 = [[AEPDFBookHelper alloc] initWithDelegate:self forURL:lCopy];

  return v6;
}

- (id)helper:(id)helper annotationProviderForURL:(id)l needsCoordination:(BOOL)coordination forAssetID:(id)d
{
  coordinationCopy = coordination;
  helperCopy = helper;
  dCopy = d;
  lCopy = l;
  sharedAnnotationProvider = [(AEPDFPlugin *)self sharedAnnotationProvider];
  if (dCopy)
  {
    v14 = dCopy;
  }

  else
  {
    v14 = [helperCopy helperMetadataForKey:AEHelperStringMetadataAssetIDKey needsCoordination:coordinationCopy];
  }

  v15 = v14;
  v16 = [IMLibraryPlist isManagedBookFromURL:lCopy];
  bOOLValue = [v16 BOOLValue];

  v18 = [AEAnnotationSerializationManager annotationSerializationManagerWithAssetID:v15 assetURL:lCopy bookVersionString:0 pathToAssetContextDirectory:0 isManagedBook:bOOLValue];

  if (([v18 isAssetOfflineWithAssetID:v15] & 1) != 0 || objc_msgSend(v18, "takeBookOfflineIfManagedWithAnnotationProvider:assetID:", sharedAnnotationProvider, v15))
  {
    v19 = [v18 annotationProviderForOfflineDBWithAssetID:v15];

    sharedAnnotationProvider = v19;
  }

  return sharedAnnotationProvider;
}

- (id)_updateBook:(id)book onMoc:(id)moc forCurrentURL:(id)l
{
  bookCopy = book;
  mocCopy = moc;
  lCopy = l;
  v11 = bookCopy;
  v12 = v11;
  if (v11)
  {
    fileSize = [v11 fileSize];
    longLongValue = [fileSize longLongValue];

    v15 = +[NSFileManager defaultManager];
    path = [lCopy path];
    v30 = 0;
    v17 = [v15 attributesOfItemAtPath:path error:&v30];
    v18 = v30;

    fileSize2 = [v17 fileSize];
    v20 = v12;
    if (fileSize2)
    {
      v21 = fileSize2;
      v20 = v12;
      if (longLongValue != fileSize2)
      {
        v29 = 0;
        v22 = +[AEEpubInfoSource sharedInstance];
        [v22 resetBookForURL:lCopy];

        v20 = [(AEPDFPlugin *)self _bookInfoForAssetAtURL:lCopy withMoc:mocCopy error:&v29 needsCoordination:1];

        v23 = [NSNumber numberWithLongLong:v21];
        [v20 setFileSize:v23];

        if ([mocCopy hasChanges])
        {
          v28 = 0;
          v24 = [mocCopy save:&v28];
          v25 = v28;
          v26 = v25;
          if ((v24 & 1) == 0)
          {
            NSLog(@"Error updating book's file size: %@ -- %@", lCopy, v25);
          }
        }
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)helper:(id)helper coverImageForURL:(id)l size:(CGSize)size
{
  height = size.height;
  width = size.width;
  lCopy = l;
  if ([(AEPDFPlugin *)self isPdfURL:lCopy])
  {
    v9 = +[AEPdfCache sharedInstance];
    v10 = [v9 copyCacheObjectForURL:lCopy];

    document = [v10 document];
    if (document && ([v10 document], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEncrypted"), v12, (v13 & 1) == 0))
    {
      height = [AEPDFPlugin generateImageForDocument:document pageIndex:0 size:width, height];
    }

    else
    {
      height = 0;
    }
  }

  else
  {
    height = 0;
  }

  return height;
}

- (id)helper:(id)helper metadataForKey:(id)key forURL:(id)l needsCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  keyCopy = key;
  lCopy = l;
  if ([(AEPDFPlugin *)self isPdfURL:lCopy])
  {
    if ([keyCopy isEqualToString:AEHelperStringMetadataDefaultCollectionNameKey])
    {
      v11 = @"PDF";
    }

    else if ([keyCopy isEqualToString:AEHelperStringMetadataCoverArtEffectKey])
    {
      v11 = AEHelperStringMetadataCoverArtEffectEdgeSpiralValue;
    }

    else
    {
      v13 = +[AEEpubInfoSource sharedInstance];
      v11 = [v13 metadataForKey:keyCopy forURL:lCopy needsCoordination:coordinationCopy];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)helper:(id)helper setMetadata:(id)metadata forKey:(id)key forURL:(id)l
{
  metadataCopy = metadata;
  keyCopy = key;
  lCopy = l;
  if ([(AEPDFPlugin *)self isPdfURL:lCopy])
  {
    v11 = +[AEEpubInfoSource sharedInstance];
    [v11 setMetadata:metadataCopy forKey:keyCopy forURL:lCopy];
  }
}

- (void)helper:(id)helper deletePersistentCacheForURL:(id)l
{
  lCopy = l;
  v5 = +[AEEpubInfoSource sharedInstance];
  [v5 resetBookForURL:lCopy];

  v6 = +[AEPdfCache sharedInstance];
  [v6 clearNativeObjectCache];
}

- (void)helper:(id)helper updateCachedURLFrom:(id)from to:(id)to
{
  toCopy = to;
  fromCopy = from;
  v8 = +[AEEpubInfoSource sharedInstance];
  [v8 updateCachedURLFrom:fromCopy to:toCopy];

  v9 = +[AEPdfCache sharedInstance];
  [v9 clearNativeObjectCache];
}

- (void)sendViewControllerForBook:(id)book toCompletion:(id)completion
{
  completionCopy = completion;
  bookCopy = book;
  v8 = [[BKPDFModernBookViewController alloc] initWithBook:bookCopy storeID:0];

  sharedBookCoverResetter = [(AEPDFPlugin *)self sharedBookCoverResetter];
  [(BKPDFModernBookViewController *)v8 setSharedBookCoverResetter:sharedBookCoverResetter];

  v10 = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_3A6C0;
  v12[3] = &unk_1E3258;
  v13 = v10;
  v14 = completionCopy;
  v11 = completionCopy;
  dispatch_async(&_dispatch_main_q, v12);
}

- (void)sendError:(id)error toCompletion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3A790;
  v7[3] = &unk_1E3258;
  errorCopy = error;
  completionCopy = completion;
  v5 = errorCopy;
  v6 = completionCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)loadError:(id)error
{
  v3 = AssetEngineErrorDomain;
  errorCopy = error;
  v5 = [NSError errorWithDomain:v3 code:3001 userInfo:0];
  errorCopy[2](errorCopy, 0, v5);
}

- (void)_logLoadErrorForURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (lCopy)
  {
    path = [lCopy path];
    v6 = +[NSFileManager defaultManager];
    if ([v6 fileExistsAtPath:path])
    {
      if ([v6 isReadableFileAtPath:path])
      {
        v7 = +[AEPdfCache sharedInstance];
        v8 = [v7 copyCacheObjectForURL:v4];

        document = [v8 document];
        v10 = document;
        if (document)
        {
          if ([document isLocked])
          {
            v11 = BKModernPDFLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              sub_137400();
            }
          }

          else
          {
            pageCount = [v10 pageCount];
            v11 = BKModernPDFLog();
            v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
            if (pageCount)
            {
              if (v13)
              {
                sub_137330();
              }
            }

            else if (v13)
            {
              sub_137398();
            }
          }
        }

        else
        {
          v11 = BKModernPDFLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            sub_137468();
          }
        }
      }

      else
      {
        v8 = BKModernPDFLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1372C8();
        }
      }
    }

    else
    {
      v8 = BKModernPDFLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_137260();
      }
    }
  }

  else
  {
    path = BKModernPDFLog();
    if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
    {
      sub_1374DC(path);
    }
  }
}

- (void)helper:(id)helper viewControllerWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v10 = [helper url];
  if ([(AEPDFPlugin *)self isPdfURL:v10])
  {
    v11 = dispatch_get_global_queue(0, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_3AB3C;
    v12[3] = &unk_1E38C0;
    v13 = v10;
    selfCopy = self;
    v16 = completionCopy;
    v15 = optionsCopy;
    dispatch_async(v11, v12);
  }
}

- (id)_bookInfoForAssetAtURL:(id)l withMoc:(id)moc error:(id *)error needsCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  mocCopy = moc;
  lCopy = l;
  v11 = +[AEEpubInfoSource sharedInstance];
  v12 = [v11 bookInfoForURL:lCopy fromManagedObjectContext:mocCopy error:error needsCoordination:coordinationCopy updateDate:0];

  return v12;
}

- (void)showPasswordDialogForBook:(id)book transaction:(id)transaction withCompletion:(id)completion
{
  bookCopy = book;
  transactionCopy = transaction;
  completionCopy = completion;
  if (!transactionCopy)
  {
    sub_1375AC();
  }

  managedObjectContext = [bookCopy managedObjectContext];
  v10 = AEBundle();
  v11 = [v10 localizedStringForKey:@"PDF Password Protected" value:&stru_1E7188 table:0];
  v12 = AEBundle();
  v13 = [v12 localizedStringForKey:@"Please type the password below." value:&stru_1E7188 table:0];
  v14 = [UIAlertController alertControllerWithTitle:v11 message:v13 preferredStyle:1];

  v15 = AEBundle();
  v16 = [v15 localizedStringForKey:@"Cancel" value:&stru_1E7188 table:0];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_3B8E8;
  v38[3] = &unk_1E38E8;
  v38[4] = self;
  v17 = completionCopy;
  v40 = v17;
  v18 = v14;
  v39 = v18;
  v19 = [UIAlertAction actionWithTitle:v16 style:1 handler:v38];
  [v18 addAction:v19];

  v20 = AEBundle();
  v21 = [v20 localizedStringForKey:@"OK" value:&stru_1E7188 table:0];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_3B96C;
  v31[3] = &unk_1E3910;
  v32 = v18;
  v33 = bookCopy;
  v34 = managedObjectContext;
  selfCopy = self;
  v36 = transactionCopy;
  v37 = v17;
  v22 = transactionCopy;
  v23 = v17;
  v24 = managedObjectContext;
  v25 = bookCopy;
  v26 = v18;
  v27 = [UIAlertAction actionWithTitle:v21 style:0 handler:v31];
  [v26 addAction:v27];

  [v26 addTextFieldWithConfigurationHandler:&stru_1E3950];
  v28 = +[AEAssetEngine appInfoMgr];
  [v28 presentViewController:v26 transaction:v22 animated:1 completion:0];
}

@end