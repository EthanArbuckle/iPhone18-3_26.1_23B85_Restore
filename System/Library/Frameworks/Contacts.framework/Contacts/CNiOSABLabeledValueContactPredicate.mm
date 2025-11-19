@interface CNiOSABLabeledValueContactPredicate
- (CNiOSABLabeledValueContactPredicate)initWithCoder:(id)a3;
- (CNiOSABLabeledValueContactPredicate)initWithLabeledValueIdentifier:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABLabeledValueContactPredicate

- (CNiOSABLabeledValueContactPredicate)initWithLabeledValueIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = CNiOSABLabeledValueContactPredicate;
  v3 = a3;
  v4 = [(CNPredicate *)&v8 init];
  v5 = [v3 copy];

  identifier = v4->_identifier;
  v4->_identifier = v5;

  return v4;
}

- (CNiOSABLabeledValueContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABLabeledValueContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABLabeledValueContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:{@"_identifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v27[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  v13 = *MEMORY[0x1E6996568];
  v14 = [(CNiOSABLabeledValueContactPredicate *)self identifier];
  LODWORD(v13) = (*(v13 + 16))(v13, v14);

  if (v13)
  {
    if (a7)
    {
      [CNErrorFactory errorWithCode:400 userInfo:0];
      *a7 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v23 = -1;
    v16 = [(CNiOSABLabeledValueContactPredicate *)self identifier];
    PersonMatchingMultiValueUUID = ABAddressBookFindPersonMatchingMultiValueUUID();

    values = PersonMatchingMultiValueUUID;
    if (PersonMatchingMultiValueUUID)
    {
      v15 = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
      v18 = [CNiOSABConversions contactIdentifierFromABPerson:?];
      v19 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
      NSMapInsert(v19, (v23 + 1), MEMORY[0x1E695E0F0]);
      v25 = v19;
      v26 = v18;
      v24 = *MEMORY[0x1E698A0E8];
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v27[0] = v20;
      *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    }

    else
    {
      v15 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  return v15;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactMatchingLabeledValueIdentifier:]"];
  v5 = [(CNiOSABLabeledValueContactPredicate *)self identifier];
  v6 = [v3 appendName:@"identifier" object:v5];

  v7 = [v3 build];

  return v7;
}

@end