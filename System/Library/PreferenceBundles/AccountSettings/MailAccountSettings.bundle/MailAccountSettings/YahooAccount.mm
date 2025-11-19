@interface YahooAccount
+ (id)descriptionPlaceholder;
+ (id)userInfoForAccountTopLevelSpecifier;
- (id)detailedSpecifiers;
@end

@implementation YahooAccount

+ (id)descriptionPlaceholder
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"YAHOO_ACCOUNT_DESCRIPTION_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];

  return v3;
}

+ (id)userInfoForAccountTopLevelSpecifier
{
  v4 = [a1 hostname];

  if (!v4)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"AccountPreferences_Yahoo.m" lineNumber:33 description:@"Expected all Yahoo! accounts to have a single hostname defined by the class"];
  }

  v5 = NSStringFromClass(a1);
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:a1, @"class", v5, @"chosenType", 0];

  return v6;
}

- (id)detailedSpecifiers
{
  v6.receiver = self;
  v6.super_class = YahooAccount;
  v2 = [(YahooAccount *)&v6 detailedSpecifiers];
  v3 = [NSMutableArray arrayWithArray:v2];

  v4 = [v3 indexOfSpecifierWithID:MailAccountPassword];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 removeObjectAtIndex:v4];
  }

  return v3;
}

@end