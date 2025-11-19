@interface SADomainObjectPunchOut
- (id)domainFromSADObject;
@end

@implementation SADomainObjectPunchOut

- (id)domainFromSADObject
{
  v2 = [(SADomainObjectPunchOut *)self domainItem];
  v3 = [v2 groupIdentifier];

  return v3;
}

@end