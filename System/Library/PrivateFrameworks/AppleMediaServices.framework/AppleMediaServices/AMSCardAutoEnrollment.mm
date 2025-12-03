@interface AMSCardAutoEnrollment
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
@end

@implementation AMSCardAutoEnrollment

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_92 != -1)
  {
    dispatch_once(&_MergedGlobals_92, &__block_literal_global_24);
  }

  v3 = qword_1ED6E27F8;

  return v3;
}

void __38__AMSCardAutoEnrollment_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E27F8;
  qword_1ED6E27F8 = @"AMSCardEnrollment";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E2800 != -1)
  {
    dispatch_once(&qword_1ED6E2800, &__block_literal_global_3_1);
  }

  v3 = qword_1ED6E2808;

  return v3;
}

void __45__AMSCardAutoEnrollment_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E2808;
  qword_1ED6E2808 = @"1";
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