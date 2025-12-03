@interface ADManagedObjectService
- (ADManagedObjectService)initWithDomainName:(id)name;
- (id)domains;
@end

@implementation ADManagedObjectService

- (id)domains
{
  domainName = self->_domainName;
  v2 = [NSArray arrayWithObjects:&domainName count:1];

  return v2;
}

- (ADManagedObjectService)initWithDomainName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = ADManagedObjectService;
  v5 = [(ADManagedObjectService *)&v11 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    domainName = v5->_domainName;
    v5->_domainName = v6;

    v8 = [@"com.apple.siri.ManagedObjectService." stringByAppendingString:nameCopy];
    [(ADService *)v5 setIdentifier:v8];

    v9 = [[NSSet alloc] initWithObjects:{v5->_domainName, 0}];
    [(ADService *)v5 setManagedStorageDomains:v9];
  }

  return v5;
}

@end