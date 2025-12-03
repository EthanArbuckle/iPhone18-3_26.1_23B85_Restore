@interface COSiCloudAuthController
+ (id)DSIDForiCloudAccount:(id)account;
+ (id)altDSIDForiCloudAccount:(id)account;
+ (id)iCloudAccountInAccountStore;
@end

@implementation COSiCloudAuthController

+ (id)DSIDForiCloudAccount:(id)account
{
  accountCopy = account;
  v4 = sub_10002C8C8();
  v5 = [v4 DSIDForAccount:accountCopy service:AIDAServiceTypeCloud];

  return v5;
}

+ (id)altDSIDForiCloudAccount:(id)account
{
  accountCopy = account;
  v4 = sub_10002C8C8();
  v5 = [v4 altDSIDForAccount:accountCopy service:AIDAServiceTypeCloud];

  return v5;
}

+ (id)iCloudAccountInAccountStore
{
  v2 = sub_10002C8C8();
  v3 = [v2 accountForService:AIDAServiceTypeCloud];

  return v3;
}

@end