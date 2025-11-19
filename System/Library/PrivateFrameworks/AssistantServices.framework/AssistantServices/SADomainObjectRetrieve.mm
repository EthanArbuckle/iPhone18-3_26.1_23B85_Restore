@interface SADomainObjectRetrieve
- (id)domainFromSADObject;
@end

@implementation SADomainObjectRetrieve

- (id)domainFromSADObject
{
  v2 = [(SADomainObjectRetrieve *)self identifiers];
  v3 = [v2 lastObject];
  v4 = [v3 groupIdentifier];

  return v4;
}

@end