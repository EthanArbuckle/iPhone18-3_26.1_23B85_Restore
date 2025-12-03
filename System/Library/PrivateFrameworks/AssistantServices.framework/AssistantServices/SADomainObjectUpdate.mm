@interface SADomainObjectUpdate
- (id)domainFromSADObject;
@end

@implementation SADomainObjectUpdate

- (id)domainFromSADObject
{
  identifier = [(SADomainObjectUpdate *)self identifier];
  groupIdentifier = [identifier groupIdentifier];

  return groupIdentifier;
}

@end