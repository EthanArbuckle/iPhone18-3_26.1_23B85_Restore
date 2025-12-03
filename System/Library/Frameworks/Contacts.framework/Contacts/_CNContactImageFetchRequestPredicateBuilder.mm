@interface _CNContactImageFetchRequestPredicateBuilder
- (id)build;
- (void)setContactIdentifiers:(id)identifiers;
- (void)setDeletedItemPolicy:(int64_t)policy;
- (void)setRecencyType:(int64_t)type;
@end

@implementation _CNContactImageFetchRequestPredicateBuilder

- (id)build
{
  v3 = objc_opt_new();
  [v3 _cn_addNonNilObject:self->_contactIdentifierClause];
  [v3 _cn_addNonNilObject:self->_recencyTypeClause];
  [v3 _cn_addNonNilObject:self->_deletedItemPolicyClause];
  if (v3 && [v3 count])
  {
    v4 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];
  }

  else
  {
    v4 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  v5 = v4;

  return v5;
}

- (void)setContactIdentifiers:(id)identifiers
{
  if (identifiers)
  {
    identifiers = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"contactIdentifier", identifiers];
  }

  else
  {
    identifiers = 0;
  }

  contactIdentifierClause = self->_contactIdentifierClause;
  self->_contactIdentifierClause = identifiers;

  MEMORY[0x1EEE66BB8](identifiers, contactIdentifierClause);
}

- (void)setRecencyType:(int64_t)type
{
  if (type == 1)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES", @"isCurrent", v6];
    goto LABEL_5;
  }

  if (!type)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO OR %K == NULL", @"isCurrent", @"isCurrent"];
    v4 = LABEL_5:;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:
  recencyTypeClause = self->_recencyTypeClause;
  self->_recencyTypeClause = v4;

  MEMORY[0x1EEE66BB8](v4, recencyTypeClause);
}

- (void)setDeletedItemPolicy:(int64_t)policy
{
  if (!policy)
  {
    v4 = @"%K == NULL";
    goto LABEL_5;
  }

  if (policy == 2)
  {
    v4 = @"%K != NULL";
LABEL_5:
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:v4, @"deletionDate"];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  deletedItemPolicyClause = self->_deletedItemPolicyClause;
  self->_deletedItemPolicyClause = v5;

  MEMORY[0x1EEE66BB8](v5, deletedItemPolicyClause);
}

@end