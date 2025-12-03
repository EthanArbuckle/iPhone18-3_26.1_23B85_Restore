@interface CNContactMultiValueDiffUpdate
- (BOOL)applyToABPerson:(void *)person withPropertiesContext:(id)context logger:(id)logger error:(id *)error;
- (CNContactMultiValueDiffUpdate)initWithProperty:(id)property diff:(id)diff;
- (void)applyToMutableContact:(id)contact withIdentifierMap:(id)map;
@end

@implementation CNContactMultiValueDiffUpdate

- (BOOL)applyToABPerson:(void *)person withPropertiesContext:(id)context logger:(id)logger error:(id *)error
{
  loggerCopy = logger;
  contextCopy = context;
  diff = [(CNContactMultiValueDiffUpdate *)self diff];
  property = [(CNContactMultiValueDiffUpdate *)self property];
  isUnifiedContact = [contextCopy isUnifiedContact];

  LOBYTE(error) = [diff applyToABPerson:person propertyDescription:property isUnified:isUnifiedContact logger:loggerCopy error:error];
  return error;
}

- (CNContactMultiValueDiffUpdate)initWithProperty:(id)property diff:(id)diff
{
  propertyCopy = property;
  diffCopy = diff;
  v13.receiver = self;
  v13.super_class = CNContactMultiValueDiffUpdate;
  v9 = [(CNContactMultiValueDiffUpdate *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_property, property);
    objc_storeStrong(&v10->_diff, diff);
    v11 = v10;
  }

  return v10;
}

- (void)applyToMutableContact:(id)contact withIdentifierMap:(id)map
{
  property = self->_property;
  mapCopy = map;
  contactCopy = contact;
  v9 = [(CNPropertyDescription *)property key];
  v12 = [contactCopy valueForKey:v9];

  v10 = [(CNMultiValueDiff *)self->_diff multiValueByApplyToMultiValue:v12 withIdentifierMap:mapCopy];

  v11 = [(CNPropertyDescription *)self->_property key];
  [contactCopy setValue:v10 forKey:v11];
}

@end