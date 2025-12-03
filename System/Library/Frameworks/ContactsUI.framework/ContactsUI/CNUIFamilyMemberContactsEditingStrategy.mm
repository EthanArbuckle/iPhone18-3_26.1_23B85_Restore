@interface CNUIFamilyMemberContactsEditingStrategy
+ (CNUIFamilyMemberContactsEditingStrategy)managedContactsStrategy;
+ (CNUIFamilyMemberContactsEditingStrategy)whitelistedContactsStrategy;
- (CNUIFamilyMemberContactsEditingStrategy)initWithProhibitedPropertyKeys:(id)keys sensitiveDataContactFilter:(id)filter;
@end

@implementation CNUIFamilyMemberContactsEditingStrategy

- (CNUIFamilyMemberContactsEditingStrategy)initWithProhibitedPropertyKeys:(id)keys sensitiveDataContactFilter:(id)filter
{
  keysCopy = keys;
  filterCopy = filter;
  v15.receiver = self;
  v15.super_class = CNUIFamilyMemberContactsEditingStrategy;
  v9 = [(CNUIFamilyMemberContactsEditingStrategy *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_prohibitedPropertyKeys, keys);
    v11 = _Block_copy(filterCopy);
    sensitiveDataContactFilter = v10->_sensitiveDataContactFilter;
    v10->_sensitiveDataContactFilter = v11;

    v13 = v10;
  }

  return v10;
}

+ (CNUIFamilyMemberContactsEditingStrategy)whitelistedContactsStrategy
{
  v2 = [self alloc];
  propertyKeysContainingSenstiveData = [MEMORY[0x1E6996B20] propertyKeysContainingSenstiveData];
  v4 = [v2 initWithProhibitedPropertyKeys:propertyKeysContainingSenstiveData sensitiveDataContactFilter:&__block_literal_global_27];

  return v4;
}

+ (CNUIFamilyMemberContactsEditingStrategy)managedContactsStrategy
{
  v2 = [self alloc];
  propertyKeysContainingSenstiveData = [MEMORY[0x1E6996B18] propertyKeysContainingSenstiveData];
  v4 = [v2 initWithProhibitedPropertyKeys:propertyKeysContainingSenstiveData sensitiveDataContactFilter:&__block_literal_global_266];

  return v4;
}

@end