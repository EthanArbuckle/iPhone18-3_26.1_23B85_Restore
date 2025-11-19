@interface NSString(FPAppLibrary)
+ (id)fp_defaultProviderDomainID;
+ (void)setFp_defaultProviderDomainID:()FPAppLibrary;
@end

@implementation NSString(FPAppLibrary)

+ (void)setFp_defaultProviderDomainID:()FPAppLibrary
{
  v7 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  if (([_defaultProviderDomainID isEqualToString:v7] & 1) == 0)
  {
    v5 = [v7 copy];
    v6 = _defaultProviderDomainID;
    _defaultProviderDomainID = v5;
  }

  objc_sync_exit(v4);
}

+ (id)fp_defaultProviderDomainID
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = [_defaultProviderDomainID copy];
  objc_sync_exit(v1);

  return v2;
}

@end