@interface AMSAuthenticateOptions
+ (id)amsd_createAppProvidedDataWithMultiUserAction:(id)a3 home:(id)a4;
+ (id)amsd_createAppProvidedDataWithMultiUserAction:(id)a3 homeIdentifier:(id)a4;
+ (id)amsd_multiUserAuthenticateOptionsWithAppProvidedData:(id)a3;
@end

@implementation AMSAuthenticateOptions

+ (id)amsd_multiUserAuthenticateOptionsWithAppProvidedData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setAuthenticationType:1];
  [v5 setAppProvidedContext:@"mu"];
  [v5 setAppProvidedData:v4];

  return v5;
}

+ (id)amsd_createAppProvidedDataWithMultiUserAction:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 identifier];
  v9 = [a1 amsd_createAppProvidedDataWithMultiUserAction:v7 homeIdentifier:v8];

  LODWORD(v7) = [v6 isCurrentUserOwner];
  if (v7)
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

+ (id)amsd_createAppProvidedDataWithMultiUserAction:(id)a3 homeIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:v6 forKeyedSubscript:@"action"];

  [v7 setObject:@"home" forKeyedSubscript:@"context"];
  v8 = [v5 UUIDString];

  [v7 ams_setNullableObject:v8 forKey:@"homeId"];

  return v7;
}

@end