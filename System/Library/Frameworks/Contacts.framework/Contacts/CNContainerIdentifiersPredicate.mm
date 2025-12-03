@interface CNContainerIdentifiersPredicate
- (CNContainerIdentifiersPredicate)initWithIdentifiers:(id)identifiers;
- (id)cn_topLevelFilter;
@end

@implementation CNContainerIdentifiersPredicate

- (CNContainerIdentifiersPredicate)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  identifiersCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier IN %@", identifiersCopy];
  v11.receiver = self;
  v11.super_class = CNContainerIdentifiersPredicate;
  v6 = [(CNPredicate *)&v11 initWithPredicate:identifiersCopy];
  if (v6)
  {
    v7 = [identifiersCopy copy];
    identifiers = v6->_identifiers;
    v6->_identifiers = v7;

    v9 = v6;
  }

  return v6;
}

- (id)cn_topLevelFilter
{
  identifiers = [(CNContainerIdentifiersPredicate *)self identifiers];

  v4 = MEMORY[0x1E696AE18];
  if (identifiers)
  {
    identifiers2 = [(CNContainerIdentifiersPredicate *)self identifiers];
    v6 = [v4 predicateWithFormat:@"identifier IN %@", identifiers2];
  }

  else
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  return v6;
}

@end