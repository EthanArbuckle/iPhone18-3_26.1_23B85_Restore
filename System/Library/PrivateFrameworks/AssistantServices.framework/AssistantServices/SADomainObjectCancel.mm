@interface SADomainObjectCancel
- (id)domainFromSADObject;
@end

@implementation SADomainObjectCancel

- (id)domainFromSADObject
{
  v2 = [(SADomainObjectCancel *)self identifier];
  v3 = [v2 groupIdentifier];

  return v3;
}

@end