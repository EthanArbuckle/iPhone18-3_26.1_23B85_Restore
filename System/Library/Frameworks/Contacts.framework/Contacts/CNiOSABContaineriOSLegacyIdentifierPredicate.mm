@interface CNiOSABContaineriOSLegacyIdentifierPredicate
- (CNiOSABContaineriOSLegacyIdentifierPredicate)initWithCoder:(id)coder;
- (CNiOSABContaineriOSLegacyIdentifierPredicate)initWithiOSLegacyIdentifier:(int)identifier;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABContaineriOSLegacyIdentifierPredicate

- (CNiOSABContaineriOSLegacyIdentifierPredicate)initWithiOSLegacyIdentifier:(int)identifier
{
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"iOSLegacyIdentifier == %d", *&identifier];
  v8.receiver = self;
  v8.super_class = CNiOSABContaineriOSLegacyIdentifierPredicate;
  v6 = [(CNPredicate *)&v8 initWithPredicate:v5];

  if (v6)
  {
    v6->_iOSLegacyIdentifier = identifier;
  }

  return v6;
}

- (CNiOSABContaineriOSLegacyIdentifierPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CNiOSABContaineriOSLegacyIdentifierPredicate;
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
  v5.super_class = CNiOSABContaineriOSLegacyIdentifierPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_iOSLegacyIdentifier forKey:{@"_iOSLegacyIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error
{
  values = ABAddressBookGetSourceWithRecordID(book, [(CNiOSABContaineriOSLegacyIdentifierPredicate *)self iOSLegacyIdentifier:book]);
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E695E9C0];
  if (values)
  {
    return CFArrayCreate(v4, &values, 1, MEMORY[0x1E695E9C0]);
  }

  return CFArrayCreate(v4, 0, 0, v5);
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForiOSLegacyIdentifier:]"];
  v5 = [v3 appendName:@"legacyIdentifier" intValue:{-[CNiOSABContaineriOSLegacyIdentifierPredicate iOSLegacyIdentifier](self, "iOSLegacyIdentifier")}];
  build = [v3 build];

  return build;
}

@end