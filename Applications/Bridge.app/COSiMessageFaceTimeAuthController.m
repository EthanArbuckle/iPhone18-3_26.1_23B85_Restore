@interface COSiMessageFaceTimeAuthController
+ (id)DSIDForIDSAccount:(id)a3;
+ (id)faceTimeAccountInAccountStore;
+ (id)iMessageAccountInAccountStore;
@end

@implementation COSiMessageFaceTimeAuthController

+ (id)DSIDForIDSAccount:(id)a3
{
  v3 = a3;
  v4 = sub_10002C8C8();
  v5 = [v4 DSIDForAccount:v3 service:AIDAServiceTypeMessages];

  return v5;
}

+ (id)iMessageAccountInAccountStore
{
  v2 = sub_10002C8C8();
  v3 = [v2 accountForService:AIDAServiceTypeMessages];

  return v3;
}

+ (id)faceTimeAccountInAccountStore
{
  v2 = sub_10002C8C8();
  v3 = [v2 accountForService:AIDAServiceTypeFaceTime];

  return v3;
}

@end