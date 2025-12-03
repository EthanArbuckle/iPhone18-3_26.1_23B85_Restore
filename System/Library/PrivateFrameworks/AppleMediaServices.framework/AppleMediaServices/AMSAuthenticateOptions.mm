@interface AMSAuthenticateOptions
+ (id)amsd_createAppProvidedDataWithMultiUserAction:(id)action home:(id)home;
+ (id)amsd_createAppProvidedDataWithMultiUserAction:(id)action homeIdentifier:(id)identifier;
+ (id)amsd_multiUserAuthenticateOptionsWithAppProvidedData:(id)data;
@end

@implementation AMSAuthenticateOptions

+ (id)amsd_multiUserAuthenticateOptionsWithAppProvidedData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(self);
  [v5 setAuthenticationType:1];
  [v5 setAppProvidedContext:@"mu"];
  [v5 setAppProvidedData:dataCopy];

  return v5;
}

+ (id)amsd_createAppProvidedDataWithMultiUserAction:(id)action home:(id)home
{
  homeCopy = home;
  actionCopy = action;
  identifier = [homeCopy identifier];
  v9 = [self amsd_createAppProvidedDataWithMultiUserAction:actionCopy homeIdentifier:identifier];

  LODWORD(actionCopy) = [homeCopy isCurrentUserOwner];
  if (actionCopy)
  {
    v10 = @"owner";
  }

  else
  {
    v10 = @"participant";
  }

  [v9 setObject:v10 forKeyedSubscript:@"role"];

  return v9;
}

+ (id)amsd_createAppProvidedDataWithMultiUserAction:(id)action homeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  actionCopy = action;
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:actionCopy forKeyedSubscript:@"action"];

  [v7 setObject:@"home" forKeyedSubscript:@"context"];
  uUIDString = [identifierCopy UUIDString];

  [v7 ams_setNullableObject:uUIDString forKey:@"homeId"];

  return v7;
}

@end