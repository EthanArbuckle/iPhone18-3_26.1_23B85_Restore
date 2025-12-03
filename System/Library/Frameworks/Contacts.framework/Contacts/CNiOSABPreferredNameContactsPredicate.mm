@interface CNiOSABPreferredNameContactsPredicate
- (CNiOSABPreferredNameContactsPredicate)initWithCoder:(id)coder;
- (CNiOSABPreferredNameContactsPredicate)initWithRange:(_NSRange)range;
- (NSString)description;
- (_NSRange)range;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error;
- (void)encodeWithCoder:(id)coder;
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

- (CNiOSABPreferredNameContactsPredicate)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

- (CNiOSABPreferredNameContactsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CNiOSABPreferredNameContactsPredicate;
  v5 = [(CNPredicate *)&v12 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    p_range = &v5->_range;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_range"];
    p_range->location = [v8 rangeValue];
    v6->_range.length = v9;

    v10 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CNiOSABPreferredNameContactsPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696B098] valueWithRange:{self->_range.location, self->_range.length, v6.receiver, v6.super_class}];
  [coderCopy encodeObject:v5 forKey:@"_range"];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  requestCopy = request;
  [(CNiOSABPreferredNameContactsPredicate *)self range];
  managedConfiguration = [requestCopy managedConfiguration];
  [requestCopy sortOrder];

  v10 = ABCopyArrayOfPreferredNamePeopleAtOffsetForManagedConfiguration();
  return v10;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  managedConfiguration = [requestCopy managedConfiguration];
  deviceHasManagementRestrictions = [managedConfiguration deviceHasManagementRestrictions];

  if (deviceHasManagementRestrictions)
  {
    managedConfiguration2 = [requestCopy managedConfiguration];
    v10 = ABAddressBookIndexSetOfAllowedSourceIdentifiersIncludingDisabledSources();

    v11 = MEMORY[0x1E698A130];
    range = [(CNiOSABPreferredNameContactsPredicate *)self range];
    v14 = v13;
    sortOrder = [requestCopy sortOrder];

    v16 = [v11 predicateForContactsInRange:range allowedStoreIdentifiers:v14 sortOrder:{v10, sortOrder}];
  }

  else
  {
    v17 = MEMORY[0x1E698A130];
    range2 = [(CNiOSABPreferredNameContactsPredicate *)self range];
    v20 = v19;
    sortOrder2 = [requestCopy sortOrder];

    v16 = [v17 predicateForContactsInRange:range2 sortOrder:{v20, sortOrder2}];
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

  build = [v3 build];

  return build;
}

@end