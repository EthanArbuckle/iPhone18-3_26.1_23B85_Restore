@interface AMSStorefrontSuffixAccessor
+ (BOOL)setStorefrontSuffix:(id)a3 clientInfo:(id)a4 error:(id *)a5;
+ (id)storefrontSuffixWithClientInfo:(id)a3;
@end

@implementation AMSStorefrontSuffixAccessor

+ (BOOL)setStorefrontSuffix:(id)a3 clientInfo:(id)a4 error:(id *)a5
{
  if (a3)
  {
    v6 = sub_192F967CC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a4;
  static StorefrontSuffixAccessor.setStorefrontSuffix(_:clientInfo:)(v6, v8, v9);

  return 1;
}

+ (id)storefrontSuffixWithClientInfo:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static StorefrontSuffixAccessor.storefrontSuffix(withClientInfo:)(v4);
  v6 = v5;

  if (v6)
  {
    v7 = sub_192F9679C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end