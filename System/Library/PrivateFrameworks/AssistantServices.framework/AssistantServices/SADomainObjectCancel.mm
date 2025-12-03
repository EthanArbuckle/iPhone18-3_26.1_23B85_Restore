@interface SADomainObjectCancel
- (id)domainFromSADObject;
@end

@implementation SADomainObjectCancel

- (id)domainFromSADObject
{
  identifier = [(SADomainObjectCancel *)self identifier];
  groupIdentifier = [identifier groupIdentifier];

  return groupIdentifier;
}

@end