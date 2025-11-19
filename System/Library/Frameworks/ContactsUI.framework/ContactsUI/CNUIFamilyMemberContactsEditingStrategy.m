@interface CNUIFamilyMemberContactsEditingStrategy
+ (CNUIFamilyMemberContactsEditingStrategy)managedContactsStrategy;
+ (CNUIFamilyMemberContactsEditingStrategy)whitelistedContactsStrategy;
- (CNUIFamilyMemberContactsEditingStrategy)initWithProhibitedPropertyKeys:(id)a3 sensitiveDataContactFilter:(id)a4;
@end

@implementation CNUIFamilyMemberContactsEditingStrategy

- (CNUIFamilyMemberContactsEditingStrategy)initWithProhibitedPropertyKeys:(id)a3 sensitiveDataContactFilter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CNUIFamilyMemberContactsEditingStrategy;
  v9 = [(CNUIFamilyMemberContactsEditingStrategy *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_prohibitedPropertyKeys, a3);
    v11 = _Block_copy(v8);
    sensitiveDataContactFilter = v10->_sensitiveDataContactFilter;
    v10->_sensitiveDataContactFilter = v11;

    v13 = v10;
  }

  return v10;
}

+ (CNUIFamilyMemberContactsEditingStrategy)whitelistedContactsStrategy
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E6996B20] propertyKeysContainingSenstiveData];
  v4 = [v2 initWithProhibitedPropertyKeys:v3 sensitiveDataContactFilter:&__block_literal_global_27];

  return v4;
}

+ (CNUIFamilyMemberContactsEditingStrategy)managedContactsStrategy
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E6996B18] propertyKeysContainingSenstiveData];
  v4 = [v2 initWithProhibitedPropertyKeys:v3 sensitiveDataContactFilter:&__block_literal_global_266];

  return v4;
}

@end