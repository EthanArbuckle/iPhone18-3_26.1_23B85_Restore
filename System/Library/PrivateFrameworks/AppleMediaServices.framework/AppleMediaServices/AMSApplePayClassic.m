@interface AMSApplePayClassic
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
@end

@implementation AMSApplePayClassic

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_85 != -1)
  {
    dispatch_once(&_MergedGlobals_85, &__block_literal_global_9);
  }

  v3 = qword_1ED6E2728;

  return v3;
}

void __35__AMSApplePayClassic_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E2728;
  qword_1ED6E2728 = @"AMSApplePayClassic";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E2730 != -1)
  {
    dispatch_once(&qword_1ED6E2730, &__block_literal_global_3);
  }

  v3 = qword_1ED6E2738;

  return v3;
}

void __42__AMSApplePayClassic_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E2738;
  qword_1ED6E2738 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end