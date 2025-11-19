@interface CustomVoiceOverLabelController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (id)specifiers;
- (void)addLabelSpecifiers:(id)a3 fromLabelCache:(id)a4;
- (void)deleteCustomLabel:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
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
    v7 = [v6 voiceOverCustomLabels];
    v8 = [v7 mutableCopy];
    [(CustomVoiceOverLabelController *)self setLabelCache:v8];

    v9 = [(CustomVoiceOverLabelController *)self labelCache];
    [(CustomVoiceOverLabelController *)self addLabelSpecifiers:v5 fromLabelCache:v9];

    v10 = [v5 copy];
    v11 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v10;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)addLabelSpecifiers:(id)a3 fromLabelCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = settingsLocString(@"CUSTOM_LABELS_HEADER", @"VoiceOverSettings");
  v8 = [PSSpecifier groupSpecifierWithName:v7];

  [v8 setProperty:&__kCFBooleanTrue forKey:@"isEditable"];
  v26 = v5;
  v23 = v8;
  [v5 addObject:v8];
  v9 = v6;
  v10 = [v6 allKeys];
  v11 = [v10 sortedArrayUsingSelector:"localizedCompare:"];

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
        v20 = [v19 firstObject];
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

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(CustomVoiceOverLabelController *)self specifierAtIndexPath:a4];
  v5 = [v4 propertyForKey:@"customLabelKey"];
  v6 = v5 != 0;

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v8 = [(CustomVoiceOverLabelController *)self specifierAtIndexPath:a5];
    v7 = [v8 propertyForKey:@"customLabelKey"];
    if (v7)
    {
      [(CustomVoiceOverLabelController *)self deleteCustomLabel:v8];
    }
  }
}

- (void)deleteCustomLabel:(id)a3
{
  v9 = a3;
  v4 = [v9 propertyForKey:@"customLabelKey"];
  if (v4)
  {
    v5 = [(CustomVoiceOverLabelController *)self labelCache];
    [v5 removeObjectForKey:v4];

    v6 = +[AXSettings sharedInstance];
    v7 = [(CustomVoiceOverLabelController *)self labelCache];
    v8 = [v7 copy];
    [v6 setVoiceOverCustomLabels:v8];

    [(CustomVoiceOverLabelController *)self removeSpecifier:v9 animated:1];
  }
}

@end