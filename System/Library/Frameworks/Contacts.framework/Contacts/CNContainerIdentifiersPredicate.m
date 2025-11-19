@interface CNContainerIdentifiersPredicate
- (CNContainerIdentifiersPredicate)initWithIdentifiers:(id)a3;
- (id)cn_topLevelFilter;
@end

@implementation CNContainerIdentifiersPredicate

- (CNContainerIdentifiersPredicate)initWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier IN %@", v4];
  v11.receiver = self;
  v11.super_class = CNContainerIdentifiersPredicate;
  v6 = [(CNPredicate *)&v11 initWithPredicate:v5];
  if (v6)
  {
    v7 = [v4 copy];
    identifiers = v6->_identifiers;
    v6->_identifiers = v7;

    v9 = v6;
  }

  return v6;
}

- (id)cn_topLevelFilter
{
  v3 = [(CNContainerIdentifiersPredicate *)self identifiers];

  v4 = MEMORY[0x1E696AE18];
  if (v3)
  {
    v5 = [(CNContainerIdentifiersPredicate *)self identifiers];
    v6 = [v4 predicateWithFormat:@"identifier IN %@", v5];
  }

  else
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  return v6;
}

@end