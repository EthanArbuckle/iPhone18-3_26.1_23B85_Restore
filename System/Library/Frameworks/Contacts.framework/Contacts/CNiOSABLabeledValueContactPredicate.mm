@interface CNiOSABLabeledValueContactPredicate
- (CNiOSABLabeledValueContactPredicate)initWithCoder:(id)coder;
- (CNiOSABLabeledValueContactPredicate)initWithLabeledValueIdentifier:(id)identifier;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABLabeledValueContactPredicate

- (CNiOSABLabeledValueContactPredicate)initWithLabeledValueIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CNiOSABLabeledValueContactPredicate;
  identifierCopy = identifier;
  v4 = [(CNPredicate *)&v8 init];
  v5 = [identifierCopy copy];

  identifier = v4->_identifier;
  v4->_identifier = v5;

  return v4;
}

- (CNiOSABLabeledValueContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABLabeledValueContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABLabeledValueContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:{@"_identifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  environmentCopy = environment;
  v13 = *MEMORY[0x1E6996568];
  identifier = [(CNiOSABLabeledValueContactPredicate *)self identifier];
  LODWORD(v13) = (*(v13 + 16))(v13, identifier);

  if (v13)
  {
    if (error)
    {
      [CNErrorFactory errorWithCode:400 userInfo:0];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v23 = -1;
    identifier2 = [(CNiOSABLabeledValueContactPredicate *)self identifier];
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
      *infos = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
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
  identifier = [(CNiOSABLabeledValueContactPredicate *)self identifier];
  v6 = [v3 appendName:@"identifier" object:identifier];

  build = [v3 build];

  return build;
}

@end