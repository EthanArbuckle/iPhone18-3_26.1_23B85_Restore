@interface _CNContactPosterFetchRequestPredicateBuilder
- (id)build;
- (void)setContactIdentifiers:(id)a3;
- (void)setDeletedItemPolicy:(int64_t)a3;
- (void)setRecencyType:(int64_t)a3;
@end

@implementation _CNContactPosterFetchRequestPredicateBuilder

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

- (void)setContactIdentifiers:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"contactIdentifier", a3];
  }

  else
  {
    v4 = 0;
  }

  contactIdentifierClause = self->_contactIdentifierClause;
  self->_contactIdentifierClause = v4;

  MEMORY[0x1EEE66BB8](v4, contactIdentifierClause);
}

- (void)setRecencyType:(int64_t)a3
{
  if (a3 == 1)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES", @"isCurrent", v6];
    goto LABEL_5;
  }

  if (!a3)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO OR %K == nil", @"isCurrent", @"isCurrent"];
    v4 = LABEL_5:;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:
  recencyTypeClause = self->_recencyTypeClause;
  self->_recencyTypeClause = v4;

  MEMORY[0x1EEE66BB8](v4, recencyTypeClause);
}

- (void)setDeletedItemPolicy:(int64_t)a3
{
  if (!a3)
  {
    v4 = @"%K == NULL";
    goto LABEL_5;
  }

  if (a3 == 2)
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