@interface NCBSMainMenuViewController
- (id)bundle;
- (id)localizedPaneTitle;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v20.receiver = self;
  v20.super_class = NCBSMainMenuViewController;
  pathCopy = path;
  [(NCBSMainMenuViewController *)&v20 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(NCBSMainMenuViewController *)self indexForIndexPath:pathCopy, v20.receiver, v20.super_class];
  specifiers = [(NCBSMainMenuViewController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(NCBSMainMenuViewController *)self specifierAtIndex:[(NCBSMainMenuViewController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:PSIsRadioGroupKey];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    identifier = [v11 identifier];
    v15 = [identifier isEqualToString:@"TapToSpeakTimeSettingsGroupID"];

    if (v15)
    {
      v16 = [v9 propertyForKey:PSValueKey];
      v17 = v16;
      if (v16)
      {
        integerValue = [v16 integerValue];
        v19 = +[AXTimeOutputPreferences sharedInstance];
        [v19 setTapToSpeakTimeAvailability:integerValue];

        [(NCBSMainMenuViewController *)self reloadSpecifiers];
      }
    }
  }
}

@end