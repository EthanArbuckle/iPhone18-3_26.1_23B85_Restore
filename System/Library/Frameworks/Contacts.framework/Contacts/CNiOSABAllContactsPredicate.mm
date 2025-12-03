@interface CNiOSABAllContactsPredicate
- (CNiOSABAllContactsPredicate)initWithCoder:(id)coder;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABAllContactsPredicate

- (NSString)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v3 = [v2 appendName:@"kind" object:@"-[CNContact predicateForAllContacts:]"];
  build = [v2 build];

  return build;
}

- (CNiOSABAllContactsPredicate)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CNiOSABAllContactsPredicate;
  return [(CNPredicate *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CNiOSABAllContactsPredicate;
  [(CNPredicate *)&v3 encodeWithCoder:coder];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  sortOrder = [request sortOrder];

  return ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(book, 0, sortOrder);
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end