@interface COSiCloudAuthController
+ (id)DSIDForiCloudAccount:(id)a3;
+ (id)altDSIDForiCloudAccount:(id)a3;
+ (id)iCloudAccountInAccountStore;
@end

@implementation COSiCloudAuthController

+ (id)DSIDForiCloudAccount:(id)a3
{
  v3 = a3;
  v4 = sub_10002C8C8();
  v5 = [v4 DSIDForAccount:v3 service:AIDAServiceTypeCloud];

  return v5;
}

+ (id)altDSIDForiCloudAccount:(id)a3
{
  v3 = a3;
  v4 = sub_10002C8C8();
  v5 = [v4 altDSIDForAccount:v3 service:AIDAServiceTypeCloud];

  return v5;
}

+ (id)iCloudAccountInAccountStore
{
  v2 = sub_10002C8C8();
  v3 = [v2 accountForService:AIDAServiceTypeCloud];

  return v3;
}

@end