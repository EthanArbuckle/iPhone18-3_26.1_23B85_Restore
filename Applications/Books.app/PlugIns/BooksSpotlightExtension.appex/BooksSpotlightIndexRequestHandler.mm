@interface BooksSpotlightIndexRequestHandler
- (id)searchableIndexProvideDataForIndex:(id)a3 identifier:(id)a4 type:(id)a5 error:(id *)a6;
- (id)searchableIndexProvideFileURLForIndex:(id)a3 identifier:(id)a4 type:(id)a5 error:(id *)a6;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
@end

@implementation BooksSpotlightIndexRequestHandler

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100001864();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100001C10(v5, v7);
  }

  v6[2](v6);
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_100001864();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100001C88();
  }

  v9[2](v9);
}

- (id)searchableIndexProvideDataForIndex:(id)a3 identifier:(id)a4 type:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100001864();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100001CF0();
  }

  v12 = objc_autoreleasePoolPush();
  v13 = sub_100001440(v8, v9);
  v14 = [UTTypeURL identifier];
  v15 = [v10 isEqualToString:v14];

  if (!v15)
  {
    v26 = [UTTypeUTF8PlainText identifier];
    v27 = [v10 isEqualToString:v26];

    if (!v27)
    {
      v37 = 0;
      goto LABEL_29;
    }

    v28 = v13;
    v29 = objc_alloc_init(NSMutableArray);
    v30 = [v28 title];
    if ([v30 length])
    {
      [v29 addObject:v30];
    }

    v47 = v30;
    v31 = [v28 contentType];
    v32 = [UTTypeEPUB identifier];
    v49 = v12;
    if ([v31 isEqualToString:v32] & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"com.apple.ibooks-container") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"com.apple.ibooks") & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"com.apple.ibooks-folder"))
    {
    }

    else
    {
      v39 = [v31 isEqualToString:@"com.apple.m4a-audio"];

      if ((v39 & 1) == 0)
      {
        v40 = [UTTypePDF identifier];
        v41 = [v31 isEqualToString:v40];

        if (!v41)
        {
          goto LABEL_20;
        }

        v42 = [v28 contributors];
        v34 = [v42 componentsJoinedByString:{@", "}];

        if ([v34 length])
        {
          [v29 addObject:v34];
        }

        v35 = [UTTypePDF preferredFilenameExtension];
        if ([v35 length])
        {
          v43 = [v35 uppercaseString];
          [v29 addObject:v43];
        }

        v44 = [v28 fileSize];
        v46 = [v44 longLongValue];

        if (v46 >= 1)
        {
          v45 = [NSByteCountFormatter stringFromByteCount:"stringFromByteCount:countStyle:" countStyle:?];
          [v29 addObject:v45];
        }

LABEL_19:

LABEL_20:
        if ([v29 count])
        {
          v36 = [v29 componentsJoinedByString:@"\n"];
        }

        else
        {
          v36 = &stru_1000044C0;
        }

        v12 = v49;

        v37 = [(__CFString *)v36 dataUsingEncoding:4];

        goto LABEL_29;
      }
    }

    v33 = [v28 contributors];
    v34 = [v33 componentsJoinedByString:{@", "}];

    if ([v34 length])
    {
      [v29 addObject:v34];
    }

    v35 = [v28 si_stringAttributeForKey:@"com_apple_iBooks_storeURL"];
    if ([v35 length])
    {
      [v29 addObject:v35];
    }

    goto LABEL_19;
  }

  v16 = v13;
  v17 = [v16 si_stringAttributeForKey:@"com_apple_iBooks_storeURL"];
  if ([v17 length] && (+[NSURL URLWithString:](NSURL, "URLWithString:", v17), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v18;
    v48 = v12;
    v20 = dispatch_group_create();
    dispatch_group_enter(v20);
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = sub_1000018EC;
    v57 = sub_1000018FC;
    v58 = 0;
    v21 = [UTTypeURL identifier];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100001B78;
    v50[3] = &unk_1000042C0;
    v52 = &v53;
    v22 = v20;
    v51 = v22;
    v23 = [v19 loadDataWithTypeIdentifier:v21 forItemProviderCompletionHandler:v50];

    v24 = dispatch_time(0, 20000000000);
    dispatch_group_wait(v22, v24);
    v25 = v54[5];

    _Block_object_dispose(&v53, 8);
    v12 = v48;
  }

  else
  {
    v22 = sub_100001864();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100001D58(v22);
    }

    v19 = 0;
    v25 = 0;
  }

  v37 = v25;
LABEL_29:

  objc_autoreleasePoolPop(v12);

  return v37;
}

- (id)searchableIndexProvideFileURLForIndex:(id)a3 identifier:(id)a4 type:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100001864();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100001D9C();
  }

  v12 = objc_autoreleasePoolPush();
  v13 = sub_100001440(v8, v9);
  v14 = [v13 si_stringAttributeForKey:@"com_apple_iBooks_localFileURL"];
  if ([v14 length])
  {
    v15 = [NSURL URLWithString:v14];
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v12);

  return v15;
}

@end