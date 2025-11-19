@interface CNDataclassActionDefinition
+ (ACDataclassAction)cancelDueToRestrictions;
@end

@implementation CNDataclassActionDefinition

+ (ACDataclassAction)cancelDueToRestrictions
{
  v2 = [ACDataclassAction actionWithType:0];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SCREENTIME_SIGNOUT_RESTRICTIONS_ENABLED_ALERT_TITLE" value:&stru_10790 table:0];
  [v2 setUndoAlertTitle:v4];

  v5 = [v3 localizedStringForKey:@"SCREENTIME_SIGNOUT_RESTRICTIONS_ENABLED_ALERT_MESSAGE" value:&stru_10790 table:0];
  [v2 setUndoAlertMessage:v5];

  return v2;
}

@end