@interface BKBookCacheController
+ (id)sharedInstance;
- (BKBookCacheController)init;
- (void)cachedURLForAssetURL:(id)l completion:(id)completion;
- (void)setMetadataForAssetID:(id)d withHelper:(id)helper pageCount:(int64_t)count;
@end

@implementation BKBookCacheController

+ (id)sharedInstance
{
  if (qword_100AF7790 != -1)
  {
    sub_10079226C();
  }

  v3 = qword_100AF7788;

  return v3;
}

- (BKBookCacheController)init
{
  v7.receiver = self;
  v7.super_class = BKBookCacheController;
  v2 = [(BKBookCacheController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCountedSet);
    [(BKBookCacheController *)v2 setOpenBooks:v3];

    v4 = dispatch_queue_create("BKBookCacheController.access", 0);
    [(BKBookCacheController *)v2 setAccessQueue:v4];

    v5 = dispatch_queue_create("BKBookCacheController.serial", 0);
    [(BKBookCacheController *)v2 setSerialQueue:v5];
  }

  return v2;
}

- (void)setMetadataForAssetID:(id)d withHelper:(id)helper pageCount:(int64_t)count
{
  dCopy = d;
  helperCopy = helper;
  if (dCopy && helperCopy)
  {
    v8 = +[BKLibraryManager defaultManager];
    newManagedObjectContext = [v8 newManagedObjectContext];
    dCopy = [NSString stringWithFormat:@"NewMOC 2 %s %@", "[BKBookCacheController setMetadataForAssetID:withHelper:pageCount:]", dCopy];
    [newManagedObjectContext setName:dCopy];

    v11 = [v8 libraryMutableAssetWithAssetID:dCopy inManagedObjectContext:newManagedObjectContext];
    v12 = v11;
    if (!v11)
    {
LABEL_50:

      goto LABEL_51;
    }

    author = [v11 author];
    if (!author || (v14 = author, [v12 author], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", BKLibrarySortLastUnknownAuthorString), v15, v14, v16))
    {
      v17 = [helperCopy helperMetadataForKey:AEHelperStringMetadataAuthorKey needsCoordination:1];
      if ([v17 length])
      {
        [v12 setAuthor:v17];
      }
    }

    title = [v12 title];

    if (!title)
    {
      v19 = [helperCopy helperMetadataForKey:AEHelperStringMetadataTitleKey needsCoordination:1];
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = &stru_100A30A68;
      }

      [v12 setTitle:v20];
    }

    genre = [v12 genre];

    if (!genre)
    {
      v22 = [helperCopy helperMetadataForKey:AEHelperStringMetadataGenreKey needsCoordination:1];
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = &stru_100A30A68;
      }

      [v12 setGenre:v23];
    }

    epubID = [v12 epubID];

    if (!epubID)
    {
      v25 = [helperCopy helperMetadataForKey:AEHelperStringMetadataBookIdUrlIdentifierKey needsCoordination:1];
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = &stru_100A30A68;
      }

      [v12 setEpubID:v26];
    }

    language = [v12 language];

    if (!language)
    {
      v28 = [helperCopy helperMetadataForKey:AEHelperStringMetadataLanguageKey needsCoordination:1];
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = &stru_100A30A68;
      }

      [v12 setLanguage:v29];
    }

    pageProgressionDirection = [v12 pageProgressionDirection];

    if (pageProgressionDirection)
    {
      v31 = 0;
    }

    else
    {
      v32 = [helperCopy helperMetadataForKey:AEHelperStringMetadataPageProgressionKey needsCoordination:1];
      if (v32)
      {
        [v12 setPageProgressionDirection:v32];
        v31 = [v32 isEqualToString:AEHelperStringMetadataPageProgressionRightToLeftValue];
      }

      else
      {
        v31 = 0;
      }
    }

    coverWritingMode = [v12 coverWritingMode];

    if (coverWritingMode)
    {
      if (!v31)
      {
LABEL_44:
        pageCount = [v12 pageCount];
        if ((count - 1) <= 0x7FFFFFFFFFFFFFFDLL && !pageCount && [v12 pageCount] != count)
        {
          [v12 setPageCount:count];
        }

        if ([newManagedObjectContext hasChanges])
        {
          [newManagedObjectContext saveLibrary];
        }

        goto LABEL_50;
      }
    }

    else
    {
      v34 = [helperCopy helperMetadataForKey:AEHelperStringMetadataCoverWritingModeKey needsCoordination:1];
      if (v34)
      {
        v35 = v34;
        [v12 setCoverWritingMode:v34];
        LOBYTE(v31) = [v35 imIsVerticalWritingMode];
      }

      if ((v31 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    temporaryAssetID = [v12 temporaryAssetID];
    if ([temporaryAssetID length])
    {
      v37 = +[BCCacheManager defaultCacheManager];
      [v37 incrementVersionForIdentifier:dCopy];
    }

    goto LABEL_44;
  }

LABEL_51:
}

- (void)cachedURLForAssetURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  serialQueue = [(BKBookCacheController *)self serialQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018299C;
  v11[3] = &unk_100A03788;
  v12 = lCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = lCopy;
  dispatch_async(serialQueue, v11);
}

@end