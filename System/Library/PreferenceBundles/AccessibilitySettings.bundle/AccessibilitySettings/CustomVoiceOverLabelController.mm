@interface CustomVoiceOverLabelController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (id)specifiers;
- (void)addLabelSpecifiers:(id)specifiers fromLabelCache:(id)cache;
- (void)deleteCustomLabel:(id)label;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation CustomVoiceOverLabelController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[AXSettings sharedInstance];
    voiceOverCustomLabels = [v6 voiceOverCustomLabels];
    v8 = [voiceOverCustomLabels mutableCopy];
    [(CustomVoiceOverLabelController *)self setLabelCache:v8];

    labelCache = [(CustomVoiceOverLabelController *)self labelCache];
    [(CustomVoiceOverLabelController *)self addLabelSpecifiers:v5 fromLabelCache:labelCache];

    v10 = [v5 copy];
    v11 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v10;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)addLabelSpecifiers:(id)specifiers fromLabelCache:(id)cache
{
  specifiersCopy = specifiers;
  cacheCopy = cache;
  v7 = settingsLocString(@"CUSTOM_LABELS_HEADER", @"VoiceOverSettings");
  v8 = [PSSpecifier groupSpecifierWithName:v7];

  [v8 setProperty:&__kCFBooleanTrue forKey:@"isEditable"];
  v26 = specifiersCopy;
  v23 = v8;
  [specifiersCopy addObject:v8];
  v9 = cacheCopy;
  allKeys = [cacheCopy allKeys];
  v11 = [allKeys sortedArrayUsingSelector:"localizedCompare:"];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v9 objectForKeyedSubscript:v16];
        v18 = v16;
        v19 = [v18 componentsSeparatedByString:@"|"];
        firstObject = [v19 firstObject];
        v21 = AXAppNameForBundleId();

        v22 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:"_appName:" detail:0 cell:4 edit:0];
        [v22 setProperty:v21 forKey:@"appName"];
        [v22 setProperty:v18 forKey:@"customLabelKey"];

        [v22 setProperty:&__kCFBooleanTrue forKey:@"enabled"];
        [v26 addObject:v22];
      }

      v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(CustomVoiceOverLabelController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:@"customLabelKey"];
  v6 = v5 != 0;

  return v6;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v8 = [(CustomVoiceOverLabelController *)self specifierAtIndexPath:path];
    v7 = [v8 propertyForKey:@"customLabelKey"];
    if (v7)
    {
      [(CustomVoiceOverLabelController *)self deleteCustomLabel:v8];
    }
  }
}

- (void)deleteCustomLabel:(id)label
{
  labelCopy = label;
  v4 = [labelCopy propertyForKey:@"customLabelKey"];
  if (v4)
  {
    labelCache = [(CustomVoiceOverLabelController *)self labelCache];
    [labelCache removeObjectForKey:v4];

    v6 = +[AXSettings sharedInstance];
    labelCache2 = [(CustomVoiceOverLabelController *)self labelCache];
    v8 = [labelCache2 copy];
    [v6 setVoiceOverCustomLabels:v8];

    [(CustomVoiceOverLabelController *)self removeSpecifier:labelCopy animated:1];
  }
}

@end