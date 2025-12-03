@interface CNInstantMessageAddressContactPredicate
- (CNInstantMessageAddressContactPredicate)initWithCoder:(id)coder;
- (CNInstantMessageAddressContactPredicate)initWithInstantMessageAddress:(id)address;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNInstantMessageAddressContactPredicate

- (CNInstantMessageAddressContactPredicate)initWithInstantMessageAddress:(id)address
{
  addressCopy = address;
  v10.receiver = self;
  v10.super_class = CNInstantMessageAddressContactPredicate;
  v5 = [(CNPredicate *)&v10 init];
  if (v5)
  {
    v6 = [addressCopy copy];
    imAddress = v5->_imAddress;
    v5->_imAddress = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingInstantMessageAddress:]"];
  imAddress = [(CNInstantMessageAddressContactPredicate *)self imAddress];
  dictionaryRepresentation = [imAddress dictionaryRepresentation];
  v7 = [v3 appendName:@"instantMessageAddress" object:dictionaryRepresentation];

  build = [v3 build];

  return build;
}

- (CNInstantMessageAddressContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNInstantMessageAddressContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imAddress"];
    v7 = [v6 copy];
    imAddress = v5->_imAddress;
    v5->_imAddress = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNInstantMessageAddressContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_imAddress forKey:{@"_imAddress", v5.receiver, v5.super_class}];
}

@end