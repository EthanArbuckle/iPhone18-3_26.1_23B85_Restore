@interface MSNanoPreferencesSyncDomainAccessorFactory
+ (id)createAccessorWithDomain:(id)domain;
@end

@implementation MSNanoPreferencesSyncDomainAccessorFactory

+ (id)createAccessorWithDomain:(id)domain
{
  domainCopy = domain;
  v4 = [[NPSDomainAccessor alloc] initWithDomain:domainCopy];

  return v4;
}

@end