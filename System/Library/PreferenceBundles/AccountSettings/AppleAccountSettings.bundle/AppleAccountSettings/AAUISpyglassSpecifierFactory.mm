@interface AAUISpyglassSpecifierFactory
+ (id)currentSpecifierForPaymentAndShipping;
+ (id)currentSpecifierForPersonalInformation:(BOOL)information;
+ (id)currentSpecifierForSignInAndSecurity;
+ (id)specifierForPaymentAndShipping:(id)shipping isPaymentSpecifierProviderNil:(BOOL)nil;
+ (id)specifierForPersonalInformationWithAppleIDType:(BOOL)type;
+ (id)specifierForSignInAndSecurity;
+ (id)specifierForSubscriptions:(id)subscriptions;
@end

@implementation AAUISpyglassSpecifierFactory

+ (id)specifierForPersonalInformationWithAppleIDType:(BOOL)type
{
  v3 = [[AAUISpyglassSpecifierRowModel alloc] initForSpecifierType:1];
  title = [v3 title];
  v5 = [PSSpecifier preferenceSpecifierNamed:title target:0 set:0 get:0 detail:0 cell:1 edit:0];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
  [v5 setObject:@"com.apple.graphic-icon.account.info" forKeyedSubscript:PSIconUTTypeIdentifierKey];
  [v5 setIdentifier:@"APPLE_ACCOUNT_CONTACT"];

  return v5;
}

+ (id)currentSpecifierForPersonalInformation:(BOOL)information
{
  if (information)
  {
    v3 = @"APPLEID_CONTACT_CELL_TITLE_MAID";
  }

  else
  {
    v3 = @"APPLEID_CONTACT_CELL_TITLE";
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_5A5F0 table:@"Localizable"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:0 cell:1 edit:0];

  [v6 setIdentifier:@"APPLE_ACCOUNT_CONTACT"];

  return v6;
}

+ (id)specifierForSignInAndSecurity
{
  v2 = [[AAUISpyglassSpecifierRowModel alloc] initForSpecifierType:2];
  title = [v2 title];
  v4 = [PSSpecifier preferenceSpecifierNamed:title target:0 set:0 get:0 detail:0 cell:1 edit:0];
  [v4 setIdentifier:@"PASSWORD_AND_SECURITY"];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
  [v4 setObject:@"com.apple.graphic-icon.account.security" forKeyedSubscript:PSIconUTTypeIdentifierKey];

  return v4;
}

+ (id)currentSpecifierForSignInAndSecurity
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"APPLEID_SECURITY_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:1 edit:0];

  [v4 setIdentifier:@"PASSWORD_AND_SECURITY"];

  return v4;
}

+ (id)specifierForPaymentAndShipping:(id)shipping isPaymentSpecifierProviderNil:(BOOL)nil
{
  shippingCopy = shipping;
  v5 = [[AAUISpyglassSpecifierRowModel alloc] initForSpecifierType:3];
  v6 = v5;
  if (!shippingCopy)
  {
    title = [v5 title];
    shippingCopy = [PSSpecifier preferenceSpecifierNamed:title target:0 set:0 get:0 detail:0 cell:2 edit:0];
    [shippingCopy setIdentifier:@"PAYMENT_AND_SHIPPING"];
  }

  [shippingCopy setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
  [shippingCopy setObject:@"com.apple.graphic-icon.account.payment" forKeyedSubscript:PSIconUTTypeIdentifierKey];

  return shippingCopy;
}

+ (id)currentSpecifierForPaymentAndShipping
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"APPLEID_PAYMENT_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:2 edit:0];

  [v4 setIdentifier:@"PAYMENT_AND_SHIPPING"];

  return v4;
}

+ (id)specifierForSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  v4 = [[NSMutableArray alloc] initWithArray:subscriptionsCopy];
  v14 = [[AAUISpyglassSpecifierRowModel alloc] initForSpecifierType:4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = PSLazyIconLoading;
    v10 = PSIconUTTypeIdentifierKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:v9];
        [v12 setObject:@"com.apple.graphic-icon.account.subscriptions" forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v5;
}

@end