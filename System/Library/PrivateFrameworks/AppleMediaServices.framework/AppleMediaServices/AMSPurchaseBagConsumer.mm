@interface AMSPurchaseBagConsumer
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
@end

@implementation AMSPurchaseBagConsumer

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_144 != -1)
  {
    dispatch_once(&_MergedGlobals_144, &__block_literal_global_115);
  }

  v3 = qword_1ED6E30A8;

  return v3;
}

void __39__AMSPurchaseBagConsumer_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E30A8;
  qword_1ED6E30A8 = @"AMSPurchase";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E30B0 != -1)
  {
    dispatch_once(&qword_1ED6E30B0, &__block_literal_global_3_4);
  }

  v3 = qword_1ED6E30B8;

  return v3;
}

void __46__AMSPurchaseBagConsumer_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E30B8;
  qword_1ED6E30B8 = @"1";
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end