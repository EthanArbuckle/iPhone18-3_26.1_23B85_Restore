@interface SADomainObjectPunchOut
- (id)domainFromSADObject;
@end

@implementation SADomainObjectPunchOut

- (id)domainFromSADObject
{
  domainItem = [(SADomainObjectPunchOut *)self domainItem];
  groupIdentifier = [domainItem groupIdentifier];

  return groupIdentifier;
}

@end