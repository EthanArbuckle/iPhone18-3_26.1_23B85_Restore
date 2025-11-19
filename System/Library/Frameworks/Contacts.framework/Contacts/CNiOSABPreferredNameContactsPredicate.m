@interface CNiOSABPreferredNameContactsPredicate
- (CNiOSABPreferredNameContactsPredicate)initWithCoder:(id)a3;
- (CNiOSABPreferredNameContactsPredicate)initWithRange:(_NSRange)a3;
- (NSString)description;
- (_NSRange)range;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABPreferredNameContactsPredicate

- (_NSRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (CNiOSABPreferredNameContactsPredicate)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v9.receiver = self;
  v9.super_class = CNiOSABPreferredNameContactsPredicate;
  v5 = [(CNPredicate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_range.location = location;
    v5->_range.length = length;
    v7 = v5;
  }

  return v6;
}

- (CNiOSABPreferredNameContactsPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNiOSABPreferredNameContactsPredicate;
  v5 = [(CNPredicate *)&v12 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    p_range = &v5->_range;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_range"];
    p_range->location = [v8 rangeValue];
    v6->_range.length = v9;

    v10 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNiOSABPreferredNameContactsPredicate;
  v4 = a3;
  [(CNPredicate *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696B098] valueWithRange:{self->_range.location, self->_range.length, v6.receiver, v6.super_class}];
  [v4 encodeObject:v5 forKey:@"_range"];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v8 = a4;
  [(CNiOSABPreferredNameContactsPredicate *)self range];
  v9 = [v8 managedConfiguration];
  [v8 sortOrder];

  v10 = ABCopyArrayOfPreferredNamePeopleAtOffsetForManagedConfiguration();
  return v10;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [v6 managedConfiguration];
  v8 = [v7 deviceHasManagementRestrictions];

  if (v8)
  {
    v9 = [v6 managedConfiguration];
    v10 = ABAddressBookIndexSetOfAllowedSourceIdentifiersIncludingDisabledSources();

    v11 = MEMORY[0x1E698A130];
    v12 = [(CNiOSABPreferredNameContactsPredicate *)self range];
    v14 = v13;
    v15 = [v6 sortOrder];

    v16 = [v11 predicateForContactsInRange:v12 allowedStoreIdentifiers:v14 sortOrder:{v10, v15}];
  }

  else
  {
    v17 = MEMORY[0x1E698A130];
    v18 = [(CNiOSABPreferredNameContactsPredicate *)self range];
    v20 = v19;
    v21 = [v6 sortOrder];

    v16 = [v17 predicateForContactsInRange:v18 sortOrder:{v20, v21}];
  }

  return v16;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForPreferredNameInRange:]"];
  v10.location = [(CNiOSABPreferredNameContactsPredicate *)self range];
  v5 = NSStringFromRange(v10);
  v6 = [v3 appendName:@"range" object:v5];

  v7 = [v3 build];

  return v7;
}

@end