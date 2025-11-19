@interface CNiOSABContactLegacyIdentifierPredicate
- (CNiOSABContactLegacyIdentifierPredicate)initWithCoder:(id)a3;
- (CNiOSABContactLegacyIdentifierPredicate)initWithLegacyIdentifier:(int)a3;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABContactLegacyIdentifierPredicate

- (CNiOSABContactLegacyIdentifierPredicate)initWithLegacyIdentifier:(int)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABContactLegacyIdentifierPredicate;
  result = [(CNPredicate *)&v5 init];
  result->_legacyIdentifier = a3;
  return result;
}

- (CNiOSABContactLegacyIdentifierPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CNiOSABContactLegacyIdentifierPredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_legacyIdentifier = [v4 decodeInt32ForKey:@"_legacyIdentifier"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABContactLegacyIdentifierPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_legacyIdentifier forKey:{@"_legacyIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  result = ABAddressBookGetPersonWithRecordID(a3, self->_legacyIdentifier);
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
  v6 = [v3 build];

  return v6;
}

@end