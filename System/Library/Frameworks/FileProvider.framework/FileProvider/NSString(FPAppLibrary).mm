@interface NSString(FPAppLibrary)
+ (id)fp_defaultProviderDomainID;
+ (void)setFp_defaultProviderDomainID:()FPAppLibrary;
@end

@implementation NSString(FPAppLibrary)

+ (void)setFp_defaultProviderDomainID:()FPAppLibrary
{
  v7 = a3;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([_defaultProviderDomainID isEqualToString:v7] & 1) == 0)
  {
    v5 = [v7 copy];
    v6 = _defaultProviderDomainID;
    _defaultProviderDomainID = v5;
  }

  objc_sync_exit(selfCopy);
}

+ (id)fp_defaultProviderDomainID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = [_defaultProviderDomainID copy];
  objc_sync_exit(selfCopy);

  return v2;
}

@end