@interface BooksSpotlightIndexRequestHandler
- (id)searchableIndexProvideDataForIndex:(id)index identifier:(id)identifier type:(id)type error:(id *)error;
- (id)searchableIndexProvideFileURLForIndex:(id)index identifier:(id)identifier type:(id)type error:(id *)error;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
@end

@implementation BooksSpotlightIndexRequestHandler

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  indexCopy = index;
  handlerCopy = handler;
  v7 = sub_100001864();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100001C10(indexCopy, v7);
  }

  handlerCopy[2](handlerCopy);
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  indexCopy = index;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v10 = sub_100001864();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100001C88();
  }

  handlerCopy[2](handlerCopy);
}

- (id)searchableIndexProvideDataForIndex:(id)index identifier:(id)identifier type:(id)type error:(id *)error
{
  indexCopy = index;
  identifierCopy = identifier;
  typeCopy = type;
  v11 = sub_100001864();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100001CF0();
  }

  v12 = objc_autoreleasePoolPush();
  v13 = sub_100001440(indexCopy, identifierCopy);
  identifier = [UTTypeURL identifier];
  v15 = [typeCopy isEqualToString:identifier];

  if (!v15)
  {
    identifier2 = [UTTypeUTF8PlainText identifier];
    v27 = [typeCopy isEqualToString:identifier2];

    if (!v27)
    {
      v37 = 0;
      goto LABEL_29;
    }

    v28 = v13;
    v29 = objc_alloc_init(NSMutableArray);
    title = [v28 title];
    if ([title length])
    {
      [v29 addObject:title];
    }

    v47 = title;
    contentType = [v28 contentType];
    identifier3 = [UTTypeEPUB identifier];
    v49 = v12;
    if ([contentType isEqualToString:identifier3] & 1) != 0 || (objc_msgSend(contentType, "isEqualToString:", @"com.apple.ibooks-container") & 1) != 0 || (objc_msgSend(contentType, "isEqualToString:", @"com.apple.ibooks") & 1) != 0 || (objc_msgSend(contentType, "isEqualToString:", @"com.apple.ibooks-folder"))
    {
    }

    else
    {
      v39 = [contentType isEqualToString:@"com.apple.m4a-audio"];

      if ((v39 & 1) == 0)
      {
        identifier4 = [UTTypePDF identifier];
        v41 = [contentType isEqualToString:identifier4];

        if (!v41)
        {
          goto LABEL_20;
        }

        contributors = [v28 contributors];
        v34 = [contributors componentsJoinedByString:{@", "}];

        if ([v34 length])
        {
          [v29 addObject:v34];
        }

        preferredFilenameExtension = [UTTypePDF preferredFilenameExtension];
        if ([preferredFilenameExtension length])
        {
          uppercaseString = [preferredFilenameExtension uppercaseString];
          [v29 addObject:uppercaseString];
        }

        fileSize = [v28 fileSize];
        longLongValue = [fileSize longLongValue];

        if (longLongValue >= 1)
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

    contributors2 = [v28 contributors];
    v34 = [contributors2 componentsJoinedByString:{@", "}];

    if ([v34 length])
    {
      [v29 addObject:v34];
    }

    preferredFilenameExtension = [v28 si_stringAttributeForKey:@"com_apple_iBooks_storeURL"];
    if ([preferredFilenameExtension length])
    {
      [v29 addObject:preferredFilenameExtension];
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
    identifier5 = [UTTypeURL identifier];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100001B78;
    v50[3] = &unk_1000042C0;
    v52 = &v53;
    v22 = v20;
    v51 = v22;
    v23 = [v19 loadDataWithTypeIdentifier:identifier5 forItemProviderCompletionHandler:v50];

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

- (id)searchableIndexProvideFileURLForIndex:(id)index identifier:(id)identifier type:(id)type error:(id *)error
{
  indexCopy = index;
  identifierCopy = identifier;
  typeCopy = type;
  v11 = sub_100001864();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100001D9C();
  }

  v12 = objc_autoreleasePoolPush();
  v13 = sub_100001440(indexCopy, identifierCopy);
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