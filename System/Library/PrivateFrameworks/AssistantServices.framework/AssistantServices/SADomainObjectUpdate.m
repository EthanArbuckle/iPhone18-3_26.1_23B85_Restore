@interface SADomainObjectUpdate
- (id)domainFromSADObject;
@end

@implementation SADomainObjectUpdate

- (id)domainFromSADObject
{
  v2 = [(SADomainObjectUpdate *)self identifier];
  v3 = [v2 groupIdentifier];

  return v3;
}

@end