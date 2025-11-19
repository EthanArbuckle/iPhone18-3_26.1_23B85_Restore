@interface BKBookCacheController
+ (id)sharedInstance;
- (BKBookCacheController)init;
- (void)cachedURLForAssetURL:(id)a3 completion:(id)a4;
- (void)setMetadataForAssetID:(id)a3 withHelper:(id)a4 pageCount:(int64_t)a5;
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

- (void)setMetadataForAssetID:(id)a3 withHelper:(id)a4 pageCount:(int64_t)a5
{
  v39 = a3;
  v7 = a4;
  if (v39 && v7)
  {
    v8 = +[BKLibraryManager defaultManager];
    v9 = [v8 newManagedObjectContext];
    v10 = [NSString stringWithFormat:@"NewMOC 2 %s %@", "[BKBookCacheController setMetadataForAssetID:withHelper:pageCount:]", v39];
    [v9 setName:v10];

    v11 = [v8 libraryMutableAssetWithAssetID:v39 inManagedObjectContext:v9];
    v12 = v11;
    if (!v11)
    {
LABEL_50:

      goto LABEL_51;
    }

    v13 = [v11 author];
    if (!v13 || (v14 = v13, [v12 author], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", BKLibrarySortLastUnknownAuthorString), v15, v14, v16))
    {
      v17 = [v7 helperMetadataForKey:AEHelperStringMetadataAuthorKey needsCoordination:1];
      if ([v17 length])
      {
        [v12 setAuthor:v17];
      }
    }

    v18 = [v12 title];

    if (!v18)
    {
      v19 = [v7 helperMetadataForKey:AEHelperStringMetadataTitleKey needsCoordination:1];
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

    v21 = [v12 genre];

    if (!v21)
    {
      v22 = [v7 helperMetadataForKey:AEHelperStringMetadataGenreKey needsCoordination:1];
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

    v24 = [v12 epubID];

    if (!v24)
    {
      v25 = [v7 helperMetadataForKey:AEHelperStringMetadataBookIdUrlIdentifierKey needsCoordination:1];
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

    v27 = [v12 language];

    if (!v27)
    {
      v28 = [v7 helperMetadataForKey:AEHelperStringMetadataLanguageKey needsCoordination:1];
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

    v30 = [v12 pageProgressionDirection];

    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v32 = [v7 helperMetadataForKey:AEHelperStringMetadataPageProgressionKey needsCoordination:1];
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

    v33 = [v12 coverWritingMode];

    if (v33)
    {
      if (!v31)
      {
LABEL_44:
        v38 = [v12 pageCount];
        if ((a5 - 1) <= 0x7FFFFFFFFFFFFFFDLL && !v38 && [v12 pageCount] != a5)
        {
          [v12 setPageCount:a5];
        }

        if ([v9 hasChanges])
        {
          [v9 saveLibrary];
        }

        goto LABEL_50;
      }
    }

    else
    {
      v34 = [v7 helperMetadataForKey:AEHelperStringMetadataCoverWritingModeKey needsCoordination:1];
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

    v36 = [v12 temporaryAssetID];
    if ([v36 length])
    {
      v37 = +[BCCacheManager defaultCacheManager];
      [v37 incrementVersionForIdentifier:v39];
    }

    goto LABEL_44;
  }

LABEL_51:
}

- (void)cachedURLForAssetURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKBookCacheController *)self serialQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018299C;
  v11[3] = &unk_100A03788;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

@end