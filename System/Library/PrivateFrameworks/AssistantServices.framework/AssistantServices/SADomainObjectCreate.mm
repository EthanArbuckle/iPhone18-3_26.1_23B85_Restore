@interface SADomainObjectCreate
- (id)domainFromSADObject;
@end

@implementation SADomainObjectCreate

- (id)domainFromSADObject
{
  object = [(SADomainObjectCreate *)self object];
  groupIdentifier = [object groupIdentifier];

  return groupIdentifier;
}

@end