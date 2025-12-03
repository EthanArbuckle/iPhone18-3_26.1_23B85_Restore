@interface ABPhonePredicate
- (id)homeCountryCode;
- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)statement withBindingOffset:(int *)offset predicateIdentifier:(int)identifier;
- (void)dealloc;
- (void)evaluateCallbackWithSqliteContext:(sqlite3_context *)context predicateContext:(id)predicateContext values:(sqlite3_value *)values count:(int)count;
@end

@implementation ABPhonePredicate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ABPhonePredicate;
  [(ABPredicate *)&v3 dealloc];
}

- (id)homeCountryCode
{
  result = self->_homeCountryCode;
  if (!result)
  {
    result = CPPhoneNumberCopyHomeCountryCode();
    self->_homeCountryCode = result;
  }

  return result;
}

- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)statement withBindingOffset:(int *)offset predicateIdentifier:(int)identifier
{
  sqlite3_bind_int(statement->var1, *offset, identifier);
  ++*offset;
  [(ABPredicate *)self bindString:self->_phoneNumber toStatement:statement withBindingOffset:offset];
  sqlite3_bind_int(statement->var1, *offset, kABPersonPhoneProperty);
  ++*offset;
}

- (void)evaluateCallbackWithSqliteContext:(sqlite3_context *)context predicateContext:(id)predicateContext values:(sqlite3_value *)values count:(int)count
{
  if (count == 3)
  {
    v9 = sqlite3_value_text(values[1]);
    v10 = sqlite3_value_text(values[2]);
    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      if ([(ABPhonePredicate *)self country])
      {
        [(ABPhonePredicate *)self country];
      }

      else
      {
        [(ABPhonePredicate *)self homeCountryCode];
      }

      [(ABPhonePredicate *)self homeCountryCode];
      v12 = CPPhoneNumbersEqualWithCountries();
    }

    sqlite3_result_int(context, v12);
  }

  else
  {

    sqlite3_result_error(context, "CPSqlitePhoneNumberContainsAlphaCharacters: wrong number of arguments", -1);
  }
}

@end