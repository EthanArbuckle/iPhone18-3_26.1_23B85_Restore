@interface ABAnyValuePredicate
- (ABAnyValuePredicate)init;
- (id)queryJoinsInCompound:(BOOL)compound predicateIdentifier:(int)identifier;
- (id)queryWhereStringForPredicateIdentifier:(int)identifier;
- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)statement withBindingOffset:(int *)offset predicateIdentifier:(int)identifier;
@end

@implementation ABAnyValuePredicate

- (ABAnyValuePredicate)init
{
  v3.receiver = self;
  v3.super_class = ABAnyValuePredicate;
  result = [(ABPredicate *)&v3 init];
  if (result)
  {
    result->_property = -1;
  }

  return result;
}

- (id)queryJoinsInCompound:(BOOL)compound predicateIdentifier:(int)identifier
{
  if ((ABPersonGetTypeOfProperty(self->_property) & 0x100) == 0)
  {
    return 0;
  }

  v5 = MEMORY[0x1E695DEC8];

  return [v5 arrayWithObject:@"JOIN ABMultiValue abv ON abp.ROWID = abv.record_id"];
}

- (id)queryWhereStringForPredicateIdentifier:(int)identifier
{
  if ((ABPersonGetTypeOfProperty(self->_property) & 0x100) != 0)
  {
    return @"abv.property = ?";
  }

  v4 = ABPersonNameForProperty(self->_property);

  return [(__CFString *)v4 stringByAppendingString:@" is not NULL"];
}

- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)statement withBindingOffset:(int *)offset predicateIdentifier:(int)identifier
{
  if ((ABPersonGetTypeOfProperty(self->_property) & 0x100) != 0)
  {
    sqlite3_bind_int(statement->var1, *offset, self->_property);
    ++*offset;
  }
}

@end