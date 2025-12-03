@interface COSIndexGenerator
+ (void)consumeSpecifiers:(id)specifiers;
@end

@implementation COSIndexGenerator

+ (void)consumeSpecifiers:(id)specifiers
{
  selfCopy = self;
  specifiersCopy = specifiers;
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Indexing settings app to plist manifests and strings files... ", buf, 2u);
  }

  v40 = objc_alloc_init(NSMutableArray);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = specifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:@"NOTIFICATIONS_ID"];

        if (v12)
        {
          v13 = pbb_bridge_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            name = [v10 name];
            identifier2 = [v10 identifier];
            *buf = 138412546;
            v48 = name;
            v49 = 2112;
            v50 = identifier2;
            v16 = v13;
            v17 = "Skipped Non-compliant Controller: %@ - %@";
            goto LABEL_14;
          }

          goto LABEL_15;
        }

        v18 = [v10 propertyForKey:@"SkipIndexing"];
        bOOLValue = [v18 BOOLValue];

        if (bOOLValue)
        {
          v13 = pbb_bridge_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            name = [v10 name];
            identifier2 = [v10 identifier];
            *buf = 138412546;
            v48 = name;
            v49 = 2112;
            v50 = identifier2;
            v16 = v13;
            v17 = "SkipIndexing: %@ - %@";
LABEL_14:
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
          }

LABEL_15:

          continue;
        }

        [v40 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v7);
  }

  v20 = +[COSCoreSpotlightIndexer sharedInstance];
  [v20 setSkipManifests:1];

  v21 = +[COSCoreSpotlightIndexer sharedInstance];
  v22 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [v21 searchableItemsFromSpecifiers:v40 bundle:v22 category:0 pathURL:0 withURLPrefix:@"bridge" parentSpecifierNames:0];

  if (![v23 count])
  {
    v38 = pbb_bridge_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Indexing produced no indexable items.", buf, 2u);
    }

    goto LABEL_33;
  }

  v24 = objc_opt_new();
  [v24 addSearchableItems:v23];
  v25 = NSTemporaryDirectory();
  v26 = [NSURL fileURLWithPath:v25];
  v27 = [v26 URLByAppendingPathComponent:@"indexBridgeApp"];

  v28 = +[NSFileManager defaultManager];
  v42 = 0;
  v29 = [v28 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:&v42];
  v30 = v42;

  v31 = pbb_bridge_log();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    if (v32)
    {
      absoluteString = [v27 absoluteString];
      *buf = 138412290;
      v48 = absoluteString;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Writing files to %@", buf, 0xCu);
    }

    v41 = v30;
    v34 = [v24 writeToPlistAndStringsFilesAtURL:v27 error:&v41];
    v35 = v41;

    if ((v34 & 1) == 0)
    {
      v31 = pbb_bridge_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        absoluteString2 = [v27 absoluteString];
        *buf = 138412546;
        v48 = v35;
        v49 = 2112;
        v50 = absoluteString2;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Plist and strings file generation failed with error %@, for path: %@", buf, 0x16u);
      }

      v30 = v35;
      goto LABEL_29;
    }

LABEL_33:
    exit(1);
  }

  if (v32)
  {
    absoluteString3 = [v27 absoluteString];
    *buf = 138412546;
    v48 = v30;
    v49 = 2112;
    v50 = absoluteString3;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Directory creation failed with error %@, for path: %@", buf, 0x16u);
  }

LABEL_29:
}

@end