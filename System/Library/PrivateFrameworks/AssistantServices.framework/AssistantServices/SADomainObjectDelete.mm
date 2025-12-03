@interface SADomainObjectDelete
- (id)domainFromSADObject;
@end

@implementation SADomainObjectDelete

- (id)domainFromSADObject
{
  identifier = [(SADomainObjectDelete *)self identifier];
  groupIdentifier = [identifier groupIdentifier];

  return groupIdentifier;
}

@end