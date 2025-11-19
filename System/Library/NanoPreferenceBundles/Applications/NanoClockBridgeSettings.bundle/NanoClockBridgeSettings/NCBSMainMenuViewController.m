@interface NCBSMainMenuViewController
- (id)bundle;
- (id)localizedPaneTitle;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation NCBSMainMenuViewController

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PANE_TITLE" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];

  return v3;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v20.receiver = self;
  v20.super_class = NCBSMainMenuViewController;
  v6 = a4;
  [(NCBSMainMenuViewController *)&v20 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(NCBSMainMenuViewController *)self indexForIndexPath:v6, v20.receiver, v20.super_class];
  v8 = [(NCBSMainMenuViewController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(NCBSMainMenuViewController *)self specifierAtIndex:[(NCBSMainMenuViewController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:PSIsRadioGroupKey];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v11 identifier];
    v15 = [v14 isEqualToString:@"TapToSpeakTimeSettingsGroupID"];

    if (v15)
    {
      v16 = [v9 propertyForKey:PSValueKey];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 integerValue];
        v19 = +[AXTimeOutputPreferences sharedInstance];
        [v19 setTapToSpeakTimeAvailability:v18];

        [(NCBSMainMenuViewController *)self reloadSpecifiers];
      }
    }
  }
}

@end