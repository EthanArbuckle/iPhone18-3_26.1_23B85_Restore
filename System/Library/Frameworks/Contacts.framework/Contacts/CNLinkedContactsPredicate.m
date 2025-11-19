@interface CNLinkedContactsPredicate
- (CNLinkedContactsPredicate)initWithCoder:(id)a3;
- (CNLinkedContactsPredicate)initWithContact:(id)a3;
- (CNLinkedContactsPredicate)initWithContactIdentifier:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNLinkedContactsPredicate

- (CNLinkedContactsPredicate)initWithContact:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNLinkedContactsPredicate;
  v5 = [(CNPredicate *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contact = v5->_contact;
    v5->_contact = v6;
  }

  return v5;
}

- (CNLinkedContactsPredicate)initWithContactIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNLinkedContactsPredicate;
  v5 = [(CNPredicate *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v6;
  }

  return v5;
}

- (CNLinkedContactsPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNLinkedContactsPredicate;
  v5 = [(CNPredicate *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contact"];
    v7 = [v6 copy];
    contact = v5->_contact;
    v5->_contact = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
    v10 = [v9 copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNLinkedContactsPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_contactIdentifier forKey:{@"_contactIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_contact forKey:@"_contact"];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsLinkedToContact:]"];
  v5 = [(CNLinkedContactsPredicate *)self contact];
  v6 = [v3 appendName:@"contact" object:v5];

  v7 = [v3 build];

  return v7;
}

@end