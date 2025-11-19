@interface CNContactMultiValueDiffUpdate
- (BOOL)applyToABPerson:(void *)a3 withPropertiesContext:(id)a4 logger:(id)a5 error:(id *)a6;
- (CNContactMultiValueDiffUpdate)initWithProperty:(id)a3 diff:(id)a4;
- (void)applyToMutableContact:(id)a3 withIdentifierMap:(id)a4;
@end

@implementation CNContactMultiValueDiffUpdate

- (BOOL)applyToABPerson:(void *)a3 withPropertiesContext:(id)a4 logger:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [(CNContactMultiValueDiffUpdate *)self diff];
  v13 = [(CNContactMultiValueDiffUpdate *)self property];
  v14 = [v11 isUnifiedContact];

  LOBYTE(a6) = [v12 applyToABPerson:a3 propertyDescription:v13 isUnified:v14 logger:v10 error:a6];
  return a6;
}

- (CNContactMultiValueDiffUpdate)initWithProperty:(id)a3 diff:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNContactMultiValueDiffUpdate;
  v9 = [(CNContactMultiValueDiffUpdate *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_property, a3);
    objc_storeStrong(&v10->_diff, a4);
    v11 = v10;
  }

  return v10;
}

- (void)applyToMutableContact:(id)a3 withIdentifierMap:(id)a4
{
  property = self->_property;
  v7 = a4;
  v8 = a3;
  v9 = [(CNPropertyDescription *)property key];
  v12 = [v8 valueForKey:v9];

  v10 = [(CNMultiValueDiff *)self->_diff multiValueByApplyToMultiValue:v12 withIdentifierMap:v7];

  v11 = [(CNPropertyDescription *)self->_property key];
  [v8 setValue:v10 forKey:v11];
}

@end