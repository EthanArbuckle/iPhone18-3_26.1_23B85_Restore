@interface CNLinkedContactsPredicate
- (CNLinkedContactsPredicate)initWithCoder:(id)coder;
- (CNLinkedContactsPredicate)initWithContact:(id)contact;
- (CNLinkedContactsPredicate)initWithContactIdentifier:(id)identifier;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNLinkedContactsPredicate

- (CNLinkedContactsPredicate)initWithContact:(id)contact
{
  contactCopy = contact;
  v9.receiver = self;
  v9.super_class = CNLinkedContactsPredicate;
  v5 = [(CNPredicate *)&v9 init];
  if (v5)
  {
    v6 = [contactCopy copy];
    contact = v5->_contact;
    v5->_contact = v6;
  }

  return v5;
}

- (CNLinkedContactsPredicate)initWithContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CNLinkedContactsPredicate;
  v5 = [(CNPredicate *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v6;
  }

  return v5;
}

- (CNLinkedContactsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CNLinkedContactsPredicate;
  v5 = [(CNPredicate *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contact"];
    v7 = [v6 copy];
    contact = v5->_contact;
    v5->_contact = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
    v10 = [v9 copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNLinkedContactsPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_contactIdentifier forKey:{@"_contactIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_contact forKey:@"_contact"];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsLinkedToContact:]"];
  contact = [(CNLinkedContactsPredicate *)self contact];
  v6 = [v3 appendName:@"contact" object:contact];

  build = [v3 build];

  return build;
}

@end