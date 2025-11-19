@interface ABPhonePredicate
- (id)homeCountryCode;
- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)a3 withBindingOffset:(int *)a4 predicateIdentifier:(int)a5;
- (void)dealloc;
- (void)evaluateCallbackWithSqliteContext:(sqlite3_context *)a3 predicateContext:(id)a4 values:(sqlite3_value *)a5 count:(int)a6;
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

- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)a3 withBindingOffset:(int *)a4 predicateIdentifier:(int)a5
{
  sqlite3_bind_int(a3->var1, *a4, a5);
  ++*a4;
  [(ABPredicate *)self bindString:self->_phoneNumber toStatement:a3 withBindingOffset:a4];
  sqlite3_bind_int(a3->var1, *a4, kABPersonPhoneProperty);
  ++*a4;
}

- (void)evaluateCallbackWithSqliteContext:(sqlite3_context *)a3 predicateContext:(id)a4 values:(sqlite3_value *)a5 count:(int)a6
{
  if (a6 == 3)
  {
    v9 = sqlite3_value_text(a5[1]);
    v10 = sqlite3_value_text(a5[2]);
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

    sqlite3_result_int(a3, v12);
  }

  else
  {

    sqlite3_result_error(a3, "CPSqlitePhoneNumberContainsAlphaCharacters: wrong number of arguments", -1);
  }
}

@end