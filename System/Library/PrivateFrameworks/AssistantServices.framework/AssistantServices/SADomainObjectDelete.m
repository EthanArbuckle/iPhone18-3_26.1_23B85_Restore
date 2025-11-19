@interface SADomainObjectDelete
- (id)domainFromSADObject;
@end

@implementation SADomainObjectDelete

- (id)domainFromSADObject
{
  v2 = [(SADomainObjectDelete *)self identifier];
  v3 = [v2 groupIdentifier];

  return v3;
}

@end