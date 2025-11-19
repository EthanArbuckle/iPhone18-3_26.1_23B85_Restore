@interface AEPDFPlugin
+ (id)generateImageForDocument:(id)a3 pageIndex:(unint64_t)a4 size:(CGSize)a5 showBookmark:(BOOL)a6;
- (BOOL)isPdfURL:(id)a3;
- (id)_bookInfoForAssetAtURL:(id)a3 withMoc:(id)a4 error:(id *)a5 needsCoordination:(BOOL)a6;
- (id)_updateBook:(id)a3 onMoc:(id)a4 forCurrentURL:(id)a5;
- (id)helper:(id)a3 annotationProviderForURL:(id)a4 needsCoordination:(BOOL)a5 forAssetID:(id)a6;
- (id)helper:(id)a3 coverImageForURL:(id)a4 size:(CGSize)a5;
- (id)helper:(id)a3 metadataForKey:(id)a4 forURL:(id)a5 needsCoordination:(BOOL)a6;
- (id)helperForURL:(id)a3 withOptions:(id)a4;
- (void)_logLoadErrorForURL:(id)a3;
- (void)helper:(id)a3 deletePersistentCacheForURL:(id)a4;
- (void)helper:(id)a3 setMetadata:(id)a4 forKey:(id)a5 forURL:(id)a6;
- (void)helper:(id)a3 updateCachedURLFrom:(id)a4 to:(id)a5;
- (void)helper:(id)a3 viewControllerWithOptions:(id)a4 completion:(id)a5;
- (void)loadError:(id)a3;
- (void)sendError:(id)a3 toCompletion:(id)a4;
- (void)sendViewControllerForBook:(id)a3 toCompletion:(id)a4;
- (void)showPasswordDialogForBook:(id)a3 transaction:(id)a4 withCompletion:(id)a5;
@end

@implementation AEPDFPlugin

- (BOOL)isPdfURL:(id)a3
{
  v3 = a3;
  if ([v3 isFileURL])
  {
    v4 = [v3 pathExtension];
    v5 = [v4 caseInsensitiveCompare:@"pdf"] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)generateImageForDocument:(id)a3 pageIndex:(unint64_t)a4 size:(CGSize)a5 showBookmark:(BOOL)a6
{
  v6 = 0;
  if (a3 && a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = a6;
    height = a5.height;
    width = a5.width;
    v10 = [a3 pageAtIndex:a4];
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
    v27 = [NSNumber numberWithBool:v7];
    v30[1] = PDFPageImageProperty_WithRotation;
    v31[0] = v27;
    v31[1] = &__kCFBooleanTrue;
    v28 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    v6 = [v11 imageOfSize:1 forBox:v28 withOptions:{v24, v26}];
  }

  return v6;
}

- (id)helperForURL:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = [[AEPDFBookHelper alloc] initWithDelegate:self forURL:v5];

  return v6;
}

- (id)helper:(id)a3 annotationProviderForURL:(id)a4 needsCoordination:(BOOL)a5 forAssetID:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = [(AEPDFPlugin *)self sharedAnnotationProvider];
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = [v10 helperMetadataForKey:AEHelperStringMetadataAssetIDKey needsCoordination:v7];
  }

  v15 = v14;
  v16 = [IMLibraryPlist isManagedBookFromURL:v12];
  v17 = [v16 BOOLValue];

  v18 = [AEAnnotationSerializationManager annotationSerializationManagerWithAssetID:v15 assetURL:v12 bookVersionString:0 pathToAssetContextDirectory:0 isManagedBook:v17];

  if (([v18 isAssetOfflineWithAssetID:v15] & 1) != 0 || objc_msgSend(v18, "takeBookOfflineIfManagedWithAnnotationProvider:assetID:", v13, v15))
  {
    v19 = [v18 annotationProviderForOfflineDBWithAssetID:v15];

    v13 = v19;
  }

  return v13;
}

- (id)_updateBook:(id)a3 onMoc:(id)a4 forCurrentURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 fileSize];
    v14 = [v13 longLongValue];

    v15 = +[NSFileManager defaultManager];
    v16 = [v10 path];
    v30 = 0;
    v17 = [v15 attributesOfItemAtPath:v16 error:&v30];
    v18 = v30;

    v19 = [v17 fileSize];
    v20 = v12;
    if (v19)
    {
      v21 = v19;
      v20 = v12;
      if (v14 != v19)
      {
        v29 = 0;
        v22 = +[AEEpubInfoSource sharedInstance];
        [v22 resetBookForURL:v10];

        v20 = [(AEPDFPlugin *)self _bookInfoForAssetAtURL:v10 withMoc:v9 error:&v29 needsCoordination:1];

        v23 = [NSNumber numberWithLongLong:v21];
        [v20 setFileSize:v23];

        if ([v9 hasChanges])
        {
          v28 = 0;
          v24 = [v9 save:&v28];
          v25 = v28;
          v26 = v25;
          if ((v24 & 1) == 0)
          {
            NSLog(@"Error updating book's file size: %@ -- %@", v10, v25);
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

- (id)helper:(id)a3 coverImageForURL:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a4;
  if ([(AEPDFPlugin *)self isPdfURL:v8])
  {
    v9 = +[AEPdfCache sharedInstance];
    v10 = [v9 copyCacheObjectForURL:v8];

    v11 = [v10 document];
    if (v11 && ([v10 document], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEncrypted"), v12, (v13 & 1) == 0))
    {
      v14 = [AEPDFPlugin generateImageForDocument:v11 pageIndex:0 size:width, height];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)helper:(id)a3 metadataForKey:(id)a4 forURL:(id)a5 needsCoordination:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a5;
  if ([(AEPDFPlugin *)self isPdfURL:v10])
  {
    if ([v9 isEqualToString:AEHelperStringMetadataDefaultCollectionNameKey])
    {
      v11 = @"PDF";
    }

    else if ([v9 isEqualToString:AEHelperStringMetadataCoverArtEffectKey])
    {
      v11 = AEHelperStringMetadataCoverArtEffectEdgeSpiralValue;
    }

    else
    {
      v13 = +[AEEpubInfoSource sharedInstance];
      v11 = [v13 metadataForKey:v9 forURL:v10 needsCoordination:v6];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)helper:(id)a3 setMetadata:(id)a4 forKey:(id)a5 forURL:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  if ([(AEPDFPlugin *)self isPdfURL:v10])
  {
    v11 = +[AEEpubInfoSource sharedInstance];
    [v11 setMetadata:v12 forKey:v9 forURL:v10];
  }
}

- (void)helper:(id)a3 deletePersistentCacheForURL:(id)a4
{
  v4 = a4;
  v5 = +[AEEpubInfoSource sharedInstance];
  [v5 resetBookForURL:v4];

  v6 = +[AEPdfCache sharedInstance];
  [v6 clearNativeObjectCache];
}

- (void)helper:(id)a3 updateCachedURLFrom:(id)a4 to:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = +[AEEpubInfoSource sharedInstance];
  [v8 updateCachedURLFrom:v7 to:v6];

  v9 = +[AEPdfCache sharedInstance];
  [v9 clearNativeObjectCache];
}

- (void)sendViewControllerForBook:(id)a3 toCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BKPDFModernBookViewController alloc] initWithBook:v7 storeID:0];

  v9 = [(AEPDFPlugin *)self sharedBookCoverResetter];
  [(BKPDFModernBookViewController *)v8 setSharedBookCoverResetter:v9];

  v10 = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_3A6C0;
  v12[3] = &unk_1E3258;
  v13 = v10;
  v14 = v6;
  v11 = v6;
  dispatch_async(&_dispatch_main_q, v12);
}

- (void)sendError:(id)a3 toCompletion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3A790;
  v7[3] = &unk_1E3258;
  v8 = a3;
  v9 = a4;
  v5 = v8;
  v6 = v9;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)loadError:(id)a3
{
  v3 = AssetEngineErrorDomain;
  v4 = a3;
  v5 = [NSError errorWithDomain:v3 code:3001 userInfo:0];
  v4[2](v4, 0, v5);
}

- (void)_logLoadErrorForURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 path];
    v6 = +[NSFileManager defaultManager];
    if ([v6 fileExistsAtPath:v5])
    {
      if ([v6 isReadableFileAtPath:v5])
      {
        v7 = +[AEPdfCache sharedInstance];
        v8 = [v7 copyCacheObjectForURL:v4];

        v9 = [v8 document];
        v10 = v9;
        if (v9)
        {
          if ([v9 isLocked])
          {
            v11 = BKModernPDFLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              sub_137400();
            }
          }

          else
          {
            v12 = [v10 pageCount];
            v11 = BKModernPDFLog();
            v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
            if (v12)
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
    v5 = BKModernPDFLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1374DC(v5);
    }
  }
}

- (void)helper:(id)a3 viewControllerWithOptions:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 url];
  if ([(AEPDFPlugin *)self isPdfURL:v10])
  {
    v11 = dispatch_get_global_queue(0, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_3AB3C;
    v12[3] = &unk_1E38C0;
    v13 = v10;
    v14 = self;
    v16 = v9;
    v15 = v8;
    dispatch_async(v11, v12);
  }
}

- (id)_bookInfoForAssetAtURL:(id)a3 withMoc:(id)a4 error:(id *)a5 needsCoordination:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a3;
  v11 = +[AEEpubInfoSource sharedInstance];
  v12 = [v11 bookInfoForURL:v10 fromManagedObjectContext:v9 error:a5 needsCoordination:v6 updateDate:0];

  return v12;
}

- (void)showPasswordDialogForBook:(id)a3 transaction:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    sub_1375AC();
  }

  v29 = [v7 managedObjectContext];
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
  v17 = v9;
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
  v33 = v7;
  v34 = v29;
  v35 = self;
  v36 = v8;
  v37 = v17;
  v22 = v8;
  v23 = v17;
  v24 = v29;
  v25 = v7;
  v26 = v18;
  v27 = [UIAlertAction actionWithTitle:v21 style:0 handler:v31];
  [v26 addAction:v27];

  [v26 addTextFieldWithConfigurationHandler:&stru_1E3950];
  v28 = +[AEAssetEngine appInfoMgr];
  [v28 presentViewController:v26 transaction:v22 animated:1 completion:0];
}

@end