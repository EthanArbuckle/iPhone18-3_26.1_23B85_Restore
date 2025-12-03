@interface CNiOSABGroupiOSLegacyIdentifierPredicate
- (CNiOSABGroupiOSLegacyIdentifierPredicate)initWithCoder:(id)coder;
- (CNiOSABGroupiOSLegacyIdentifierPredicate)initWithiOSLegacyIdentifier:(int)identifier;
- (NSString)description;
- (__CFArray)cn_copyGroupsInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABGroupiOSLegacyIdentifierPredicate

- (CNiOSABGroupiOSLegacyIdentifierPredicate)initWithiOSLegacyIdentifier:(int)identifier
{
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"iOSLegacyIdentifier == %d", *&identifier];
  v8.receiver = self;
  v8.super_class = CNiOSABGroupiOSLegacyIdentifierPredicate;
  v6 = [(CNPredicate *)&v8 initWithPredicate:v5];

  if (v6)
  {
    v6->_iOSLegacyIdentifier = identifier;
  }

  return v6;
}

- (CNiOSABGroupiOSLegacyIdentifierPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CNiOSABGroupiOSLegacyIdentifierPredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_iOSLegacyIdentifier = [coderCopy decodeInt32ForKey:@"_iOSLegacyIdentifier"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABGroupiOSLegacyIdentifierPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_iOSLegacyIdentifier forKey:{@"_iOSLegacyIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyGroupsInAddressBook:(void *)book error:(__CFError *)error
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  GroupWithRecordID = ABAddressBookGetGroupWithRecordID(book, [(CNiOSABGroupiOSLegacyIdentifierPredicate *)self iOSLegacyIdentifier]);
  if (GroupWithRecordID)
  {
    CFArrayAppendValue(Mutable, GroupWithRecordID);
  }

  return Mutable;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNGroup predicateForiOSLegacyIdentifier:]"];
  v5 = [v3 appendName:@"legacyIdentifier" intValue:{-[CNiOSABGroupiOSLegacyIdentifierPredicate iOSLegacyIdentifier](self, "iOSLegacyIdentifier")}];
  build = [v3 build];

  return build;
}

@end