@interface SADomainObjectRetrieve
- (id)domainFromSADObject;
@end

@implementation SADomainObjectRetrieve

- (id)domainFromSADObject
{
  identifiers = [(SADomainObjectRetrieve *)self identifiers];
  lastObject = [identifiers lastObject];
  groupIdentifier = [lastObject groupIdentifier];

  return groupIdentifier;
}

@end