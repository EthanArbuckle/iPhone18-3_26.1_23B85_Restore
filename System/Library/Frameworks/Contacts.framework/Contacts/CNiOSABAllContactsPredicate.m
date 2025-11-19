@interface CNiOSABAllContactsPredicate
- (CNiOSABAllContactsPredicate)initWithCoder:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABAllContactsPredicate

- (NSString)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v3 = [v2 appendName:@"kind" object:@"-[CNContact predicateForAllContacts:]"];
  v4 = [v2 build];

  return v4;
}

- (CNiOSABAllContactsPredicate)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNiOSABAllContactsPredicate;
  return [(CNPredicate *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CNiOSABAllContactsPredicate;
  [(CNPredicate *)&v3 encodeWithCoder:a3];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v8 = [a4 sortOrder];

  return ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(a3, 0, v8);
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end