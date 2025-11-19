@interface SADomainObjectCreate
- (id)domainFromSADObject;
@end

@implementation SADomainObjectCreate

- (id)domainFromSADObject
{
  v2 = [(SADomainObjectCreate *)self object];
  v3 = [v2 groupIdentifier];

  return v3;
}

@end