@interface SoundDetectionHistoryController
+ (BOOL)_deleteFilesForSpecifier:(id)specifier;
+ (id)_axParseSoundDetectionRecordingFiles;
+ (id)_directory;
+ (id)_formatDateFromString:(id)string;
+ (id)_parseJSONFile:(id)file;
+ (id)_sortJSONData:(id)data;
+ (void)_generateRadarForSpecifier:(id)specifier;
- (id)specifiers;
- (id)tableView:(id)view leadingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation SoundDetectionHistoryController

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v25 = OBJC_IVAR___PSListController__specifiers;
    selfCopy = self;
    v4 = +[NSMutableArray array];
    v24 = +[SoundDetectionHistoryController _axParseSoundDetectionRecordingFiles];
    v5 = [SoundDetectionHistoryController _sortJSONData:?];
    v6 = [PSSpecifier groupSpecifierWithName:0];
    [v6 setProperty:@"Swipe Right on a cell to file a radar for that sound. Swipe Left to delete the recorded sound." forKey:PSFooterTextGroupKey];
    [v4 addObject:v6];
    v7 = [PSSpecifier groupSpecifierWithName:0];

    v31 = v4;
    [v4 addObject:v7];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v30 = *v34;
      v29 = PSCellClassKey;
      v28 = PSTableCellStyleOverrideKey;
      v27 = PSEnabledKey;
      v10 = PSValueKey;
      do
      {
        v11 = 0;
        v12 = v7;
        do
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * v11);
          v14 = [v13 objectForKey:@"listenType"];
          v15 = [v13 objectForKey:@"audioStringDate"];
          v16 = [v13 objectForKey:@"audioFilePath"];
          v17 = [v13 objectForKey:@"jsonFilePath"];
          v18 = [v13 objectForKey:@"isCustomModel"];
          bOOLValue = [v18 BOOLValue];

          v20 = &stru_25D420;
          if ((bOOLValue & 1) == 0)
          {
            v21 = AXSDSoundDetectionTypeForIdentifier();
            v20 = AXSDSoundDetectionLocalizedTitleForType();
          }

          v7 = [PSSpecifier preferenceSpecifierNamed:v20 target:selfCopy set:0 get:0 detail:0 cell:-1 edit:0];

          [v7 setProperty:objc_opt_class() forKey:v29];
          [v7 setProperty:&off_27AED8 forKey:v28];
          [v7 setProperty:&__kCFBooleanTrue forKey:v27];
          [v7 setProperty:v15 forKey:v10];
          [v7 setProperty:v16 forKey:@"audioFilePath"];
          [v7 setProperty:v17 forKey:@"jsonFilePath"];
          [v31 addObject:v7];

          v11 = v11 + 1;
          v12 = v7;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v9);
    }

    v22 = *&selfCopy->PSListController_opaque[v25];
    *&selfCopy->PSListController_opaque[v25] = v31;

    v3 = *&selfCopy->PSListController_opaque[v25];
  }

  return v3;
}

+ (id)_directory
{
  v5 = 1;
  v2 = +[NSFileManager defaultManager];
  v3 = @"/var/mobile/Library/Accessibility/DataCollection/SoundFiles";
  if (![v2 fileExistsAtPath:@"/var/mobile/Library/Accessibility/DataCollection/SoundFiles" isDirectory:&v5])
  {
    v3 = 0;
  }

  return v3;
}

+ (id)_axParseSoundDetectionRecordingFiles
{
  _directory = [self _directory];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 enumeratorAtPath:_directory];

  v5 = objc_opt_new();
  nextObject = [v4 nextObject];
  if (nextObject)
  {
    v7 = nextObject;
    do
    {
      pathExtension = [v7 pathExtension];
      v9 = [pathExtension isEqualToString:@"wav"];

      if (!v9)
      {
        v10 = [_directory stringByAppendingPathComponent:v7];
        v11 = [SoundDetectionHistoryController _parseJSONFile:v10];
        if (v11)
        {
          stringByDeletingPathExtension = [v7 stringByDeletingPathExtension];
          v13 = [NSString stringWithFormat:@"%@.%@", stringByDeletingPathExtension, @"wav"];

          v14 = [_directory stringByAppendingPathComponent:v13];
          v15 = [v11 mutableCopy];
          [v15 setObject:v14 forKey:@"audioFilePath"];
          [v15 setObject:v10 forKey:@"jsonFilePath"];
          [v15 setObject:&off_27AEF0 forKey:@"isCustomModel"];
          [v5 addObject:v15];
        }

        else
        {
          v13 = AXLogUltron();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "JSON Data is nil", buf, 2u);
          }
        }
      }

      nextObject2 = [v4 nextObject];

      v7 = nextObject2;
    }

    while (nextObject2);
  }

  return v5;
}

+ (id)_parseJSONFile:(id)file
{
  fileCopy = file;
  v4 = [NSData dataWithContentsOfFile:fileCopy];
  v10 = 0;
  v5 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SoundDetectionHistoryController _parseJSONFile:];
    }

LABEL_7:

    v8 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SoundDetectionHistoryController *)fileCopy _parseJSONFile:v7];
    }

    goto LABEL_7;
  }

  v8 = v5;
LABEL_8:

  return v8;
}

+ (BOOL)_deleteFilesForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:@"audioFilePath"];
  v5 = +[NSFileManager defaultManager];
  v17 = 0;
  [v5 removeItemAtPath:v4 error:&v17];
  v6 = v17;

  v7 = v6 == 0;
  if (v6)
  {
    v8 = AXLogUltron();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[SoundDetectionHistoryController _deleteFilesForSpecifier:];
    }
  }

  v9 = AXLogUltron();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Successfully deleted file: %@", buf, 0xCu);
  }

  v10 = [specifierCopy propertyForKey:@"jsonFilePath"];

  v11 = +[NSFileManager defaultManager];
  v16 = v6;
  [v11 removeItemAtPath:v10 error:&v16];
  v12 = v16;

  if (v12)
  {
    v13 = AXLogUltron();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SoundDetectionHistoryController _deleteFilesForSpecifier:];
    }

    v7 = 0;
  }

  v14 = AXLogUltron();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v10;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Successfully deleted file: %@", buf, 0xCu);
  }

  return v7;
}

+ (id)_sortJSONData:(id)data
{
  dataCopy = data;
  v4 = [[NSSortDescriptor alloc] initWithKey:@"listenType" ascending:1];
  v5 = [[NSSortDescriptor alloc] initWithKey:@"audioStringDate" ascending:1];
  v9[0] = v5;
  v9[1] = v4;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [dataCopy sortedArrayUsingDescriptors:v6];

  return v7;
}

+ (id)_formatDateFromString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(NSDateFormatter);
  v5 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  v6 = +[NSTimeZone systemTimeZone];
  [v4 setTimeZone:v6];

  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  [v4 setDateStyle:2];
  [v4 setTimeStyle:1];
  v7 = [v4 dateFromString:stringCopy];

  return v7;
}

+ (void)_generateRadarForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  name = [specifierCopy name];
  v4 = [specifierCopy propertyForKey:@"audioFilePath"];
  v25[0] = v4;
  v5 = [specifierCopy propertyForKey:@"jsonFilePath"];

  v25[1] = v5;
  v23 = [NSArray arrayWithObjects:v25 count:2];

  v21 = objc_opt_new();
  [v21 setScheme:@"tap-to-radar"];
  [v21 setHost:@"new"];
  v6 = [NSString stringWithFormat:@"AX Sound Recognition False Positive: %@", name];
  v20 = [NSURLQueryItem queryItemWithName:@"Title" value:v6];

  v19 = [NSURLQueryItem queryItemWithName:@"Description" value:@"[Add any details about where you were or what you were doing when the false positive occured. Thanks!]"];
  v7 = [NSURLQueryItem queryItemWithName:@"Classification" value:@"Performance"];
  v8 = [NSURLQueryItem queryItemWithName:@"Reproducibility" value:@"I Didn't Try"];
  v9 = [NSURLQueryItem queryItemWithName:@"ComponentName" value:@"Accessibility Sound Detection"];
  v10 = [NSURLQueryItem queryItemWithName:@"ComponentID" value:@"1074027"];
  v11 = [NSURLQueryItem queryItemWithName:@"ComponentVersion" value:@"All"];
  v12 = [v23 componentsJoinedByString:{@", "}];
  v13 = [NSURLQueryItem queryItemWithName:@"Attachments" value:v12];

  v14 = [NSURLQueryItem queryItemWithName:@"AutoDiagnostics" value:@"0"];
  v24[0] = v20;
  v24[1] = v19;
  v24[2] = v8;
  v24[3] = v7;
  v15 = v8;
  v24[4] = v9;
  v24[5] = v10;
  v24[6] = v11;
  v24[7] = v13;
  v24[8] = v14;
  v16 = [NSArray arrayWithObjects:v24 count:9];
  [v21 setQueryItems:v16];

  v17 = [v21 URL];
  v18 = +[LSApplicationWorkspace defaultWorkspace];
  [v18 openURL:v17 withOptions:0];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v7 = [(SoundDetectionHistoryController *)self specifierAtIndex:[(SoundDetectionHistoryController *)self indexForIndexPath:path]];
    [SoundDetectionHistoryController _deleteFilesForSpecifier:v7];
    [(SoundDetectionHistoryController *)self removeSpecifier:v7];
  }
}

- (id)tableView:(id)view leadingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = __95__SoundDetectionHistoryController_tableView_leadingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
  v14 = &unk_2586B0;
  selfCopy = self;
  pathCopy = path;
  v4 = pathCopy;
  v5 = [UIContextualAction contextualActionWithStyle:0 title:@"File Radar" handler:&v11];
  selfCopy = [UIImage systemImageNamed:@"ant.circle.fill", v11, v12, v13, v14, selfCopy];
  [v5 setImage:selfCopy];

  v7 = +[UIColor purpleColor];
  [v5 setBackgroundColor:v7];

  v17 = v5;
  v8 = [NSArray arrayWithObjects:&v17 count:1];
  v9 = [UISwipeActionsConfiguration configurationWithActions:v8];

  return v9;
}

void __95__SoundDetectionHistoryController_tableView_leadingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a4;
  v7 = [v4 specifierAtIndex:{objc_msgSend(v4, "indexForIndexPath:", v5)}];
  [SoundDetectionHistoryController _generateRadarForSpecifier:v7];
  v6[2](v6, 1);
}

+ (void)_parseJSONFile:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Ultron History - Expected a Dictionary but received an array while parsing: %@", &v2, 0xCu);
}

@end