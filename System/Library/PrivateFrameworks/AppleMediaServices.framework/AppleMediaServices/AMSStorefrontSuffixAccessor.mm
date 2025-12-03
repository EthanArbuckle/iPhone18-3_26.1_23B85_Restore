@interface AMSStorefrontSuffixAccessor
+ (BOOL)setStorefrontSuffix:(id)suffix clientInfo:(id)info error:(id *)error;
+ (id)storefrontSuffixWithClientInfo:(id)info;
@end

@implementation AMSStorefrontSuffixAccessor

+ (BOOL)setStorefrontSuffix:(id)suffix clientInfo:(id)info error:(id *)error
{
  if (suffix)
  {
    v6 = sub_192F967CC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  infoCopy = info;
  static StorefrontSuffixAccessor.setStorefrontSuffix(_:clientInfo:)(v6, v8, infoCopy);

  return 1;
}

+ (id)storefrontSuffixWithClientInfo:(id)info
{
  swift_getObjCClassMetadata();
  infoCopy = info;
  static StorefrontSuffixAccessor.storefrontSuffix(withClientInfo:)(infoCopy);
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