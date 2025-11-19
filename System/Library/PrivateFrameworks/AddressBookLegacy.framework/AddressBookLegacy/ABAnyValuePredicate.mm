@interface ABAnyValuePredicate
- (ABAnyValuePredicate)init;
- (id)queryJoinsInCompound:(BOOL)a3 predicateIdentifier:(int)a4;
- (id)queryWhereStringForPredicateIdentifier:(int)a3;
- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)a3 withBindingOffset:(int *)a4 predicateIdentifier:(int)a5;
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

- (id)queryJoinsInCompound:(BOOL)a3 predicateIdentifier:(int)a4
{
  if ((ABPersonGetTypeOfProperty(self->_property) & 0x100) == 0)
  {
    return 0;
  }

  v5 = MEMORY[0x1E695DEC8];

  return [v5 arrayWithObject:@"JOIN ABMultiValue abv ON abp.ROWID = abv.record_id"];
}

- (id)queryWhereStringForPredicateIdentifier:(int)a3
{
  if ((ABPersonGetTypeOfProperty(self->_property) & 0x100) != 0)
  {
    return @"abv.property = ?";
  }

  v4 = ABPersonNameForProperty(self->_property);

  return [(__CFString *)v4 stringByAppendingString:@" is not NULL"];
}

- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)a3 withBindingOffset:(int *)a4 predicateIdentifier:(int)a5
{
  if ((ABPersonGetTypeOfProperty(self->_property) & 0x100) != 0)
  {
    sqlite3_bind_int(a3->var1, *a4, self->_property);
    ++*a4;
  }
}

@end