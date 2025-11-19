@interface AOLAccount
+ (id)descriptionPlaceholder;
+ (id)userInfoForAccountTopLevelSpecifier;
+ (void)getRemoveOptionTitles:(id *)a3 values:(id *)a4 defaultValue:(id *)a5;
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
  v4 = [a1 hostname];

  if (!v4)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"AccountPreferences_AOL.m" lineNumber:32 description:@"Expected all AOL accounts to have a single hostname defined by the class"];
  }

  v5 = NSStringFromClass(a1);
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:a1, @"class", v5, @"chosenType", 0];

  return v6;
}

+ (void)getRemoveOptionTitles:(id *)a3 values:(id *)a4 defaultValue:(id *)a5
{
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"REMOVE_AFTER_ONE_DAY" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"REMOVE_AFTER_ONE_WEEK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v14 = [NSArray arrayWithObjects:v9, v11, 0];

  v12 = [NSArray arrayWithObjects:@"1", @"7", 0];
  if (a3)
  {
    *a3 = v14;
  }

  if (a4)
  {
    v13 = v12;
    *a4 = v12;
  }

  if (a5)
  {
    *a5 = @"7";
  }
}

@end