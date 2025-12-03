@interface CNiOSABContactLegacyIdentifierPredicate
- (CNiOSABContactLegacyIdentifierPredicate)initWithCoder:(id)coder;
- (CNiOSABContactLegacyIdentifierPredicate)initWithLegacyIdentifier:(int)identifier;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABContactLegacyIdentifierPredicate

- (CNiOSABContactLegacyIdentifierPredicate)initWithLegacyIdentifier:(int)identifier
{
  v5.receiver = self;
  v5.super_class = CNiOSABContactLegacyIdentifierPredicate;
  result = [(CNPredicate *)&v5 init];
  result->_legacyIdentifier = identifier;
  return result;
}

- (CNiOSABContactLegacyIdentifierPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CNiOSABContactLegacyIdentifierPredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_legacyIdentifier = [coderCopy decodeInt32ForKey:@"_legacyIdentifier"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABContactLegacyIdentifierPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_legacyIdentifier forKey:{@"_legacyIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  result = ABAddressBookGetPersonWithRecordID(book, self->_legacyIdentifier);
  values = result;
  if (result)
  {
    return CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForLegacyIdentifier:]"];
  v5 = [v3 appendName:@"legacyIdentifier" intValue:{-[CNiOSABContactLegacyIdentifierPredicate legacyIdentifier](self, "legacyIdentifier")}];
  build = [v3 build];

  return build;
}

@end