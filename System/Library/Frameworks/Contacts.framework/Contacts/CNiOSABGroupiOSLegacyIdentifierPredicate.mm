@interface CNiOSABGroupiOSLegacyIdentifierPredicate
- (CNiOSABGroupiOSLegacyIdentifierPredicate)initWithCoder:(id)a3;
- (CNiOSABGroupiOSLegacyIdentifierPredicate)initWithiOSLegacyIdentifier:(int)a3;
- (NSString)description;
- (__CFArray)cn_copyGroupsInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABGroupiOSLegacyIdentifierPredicate

- (CNiOSABGroupiOSLegacyIdentifierPredicate)initWithiOSLegacyIdentifier:(int)a3
{
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"iOSLegacyIdentifier == %d", *&a3];
  v8.receiver = self;
  v8.super_class = CNiOSABGroupiOSLegacyIdentifierPredicate;
  v6 = [(CNPredicate *)&v8 initWithPredicate:v5];

  if (v6)
  {
    v6->_iOSLegacyIdentifier = a3;
  }

  return v6;
}

- (CNiOSABGroupiOSLegacyIdentifierPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CNiOSABGroupiOSLegacyIdentifierPredicate;
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
  v5.super_class = CNiOSABGroupiOSLegacyIdentifierPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_iOSLegacyIdentifier forKey:{@"_iOSLegacyIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyGroupsInAddressBook:(void *)a3 error:(__CFError *)a4
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  GroupWithRecordID = ABAddressBookGetGroupWithRecordID(a3, [(CNiOSABGroupiOSLegacyIdentifierPredicate *)self iOSLegacyIdentifier]);
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
  v6 = [v3 build];

  return v6;
}

@end