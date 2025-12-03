@interface AOLAccount
+ (id)descriptionPlaceholder;
+ (id)userInfoForAccountTopLevelSpecifier;
+ (void)getRemoveOptionTitles:(id *)titles values:(id *)values defaultValue:(id *)value;
@end

@implementation AOLAccount

+ (id)descriptionPlaceholder
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"AOL_ACCOUNT_DESCRIPTION_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];

  return v3;
}

+ (id)userInfoForAccountTopLevelSpecifier
{
  hostname = [self hostname];

  if (!hostname)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"AccountPreferences_AOL.m" lineNumber:32 description:@"Expected all AOL accounts to have a single hostname defined by the class"];
  }

  v5 = NSStringFromClass(self);
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:self, @"class", v5, @"chosenType", 0];

  return v6;
}

+ (void)getRemoveOptionTitles:(id *)titles values:(id *)values defaultValue:(id *)value
{
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"REMOVE_AFTER_ONE_DAY" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"REMOVE_AFTER_ONE_WEEK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v14 = [NSArray arrayWithObjects:v9, v11, 0];

  v12 = [NSArray arrayWithObjects:@"1", @"7", 0];
  if (titles)
  {
    *titles = v14;
  }

  if (values)
  {
    v13 = v12;
    *values = v12;
  }

  if (value)
  {
    *value = @"7";
  }
}

@end