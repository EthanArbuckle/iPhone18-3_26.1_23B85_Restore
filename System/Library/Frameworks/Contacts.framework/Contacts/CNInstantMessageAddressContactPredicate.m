@interface CNInstantMessageAddressContactPredicate
- (CNInstantMessageAddressContactPredicate)initWithCoder:(id)a3;
- (CNInstantMessageAddressContactPredicate)initWithInstantMessageAddress:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNInstantMessageAddressContactPredicate

- (CNInstantMessageAddressContactPredicate)initWithInstantMessageAddress:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNInstantMessageAddressContactPredicate;
  v5 = [(CNPredicate *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v5 = [(CNInstantMessageAddressContactPredicate *)self imAddress];
  v6 = [v5 dictionaryRepresentation];
  v7 = [v3 appendName:@"instantMessageAddress" object:v6];

  v8 = [v3 build];

  return v8;
}

- (CNInstantMessageAddressContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNInstantMessageAddressContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_imAddress"];
    v7 = [v6 copy];
    imAddress = v5->_imAddress;
    v5->_imAddress = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNInstantMessageAddressContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_imAddress forKey:{@"_imAddress", v5.receiver, v5.super_class}];
}

@end