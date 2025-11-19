@interface MSNanoPreferencesSyncDomainAccessorFactory
+ (id)createAccessorWithDomain:(id)a3;
@end

@implementation MSNanoPreferencesSyncDomainAccessorFactory

+ (id)createAccessorWithDomain:(id)a3
{
  v3 = a3;
  v4 = [[NPSDomainAccessor alloc] initWithDomain:v3];

  return v4;
}

@end