@interface CNiOSABContaineriOSLegacyIdentifierPredicate
- (CNiOSABContaineriOSLegacyIdentifierPredicate)initWithCoder:(id)a3;
- (CNiOSABContaineriOSLegacyIdentifierPredicate)initWithiOSLegacyIdentifier:(int)a3;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABContaineriOSLegacyIdentifierPredicate

- (CNiOSABContaineriOSLegacyIdentifierPredicate)initWithiOSLegacyIdentifier:(int)a3
{
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"iOSLegacyIdentifier == %d", *&a3];
  v8.receiver = self;
  v8.super_class = CNiOSABContaineriOSLegacyIdentifierPredicate;
  v6 = [(CNPredicate *)&v8 initWithPredicate:v5];

  if (v6)
  {
    v6->_iOSLegacyIdentifier = a3;
  }

  return v6;
}

- (CNiOSABContaineriOSLegacyIdentifierPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CNiOSABContaineriOSLegacyIdentifierPredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_iOSLegacyIdentifier = [v4 decodeInt32ForKey:@"_iOSLegacyIdentifier"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABContaineriOSLegacyIdentifierPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_iOSLegacyIdentifier forKey:{@"_iOSLegacyIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4
{
  values = ABAddressBookGetSourceWithRecordID(a3, [(CNiOSABContaineriOSLegacyIdentifierPredicate *)self iOSLegacyIdentifier:a3]);
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
  v6 = [v3 build];

  return v6;
}

@end