@interface INRestaurantGuestDisplayPreferences
- (BOOL)isEqual:(id)a3;
- (INRestaurantGuestDisplayPreferences)init;
- (INRestaurantGuestDisplayPreferences)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INRestaurantGuestDisplayPreferences

- (id)_dictionaryRepresentation
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"nameFieldFirstNameOptional";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_nameFieldFirstNameOptional];
  v15[0] = v3;
  v14[1] = @"nameFieldLastNameOptional";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_nameFieldLastNameOptional];
  v15[1] = v4;
  v14[2] = @"nameFieldShouldBeDisplayed";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_nameFieldShouldBeDisplayed];
  v15[2] = v5;
  v14[3] = @"emailAddressFieldShouldBeDisplayed";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_emailAddressFieldShouldBeDisplayed];
  v15[3] = v6;
  v14[4] = @"phoneNumberFieldShouldBeDisplayed";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_phoneNumberFieldShouldBeDisplayed];
  v15[4] = v7;
  v14[5] = @"nameEditable";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_nameEditable];
  v15[5] = v8;
  v14[6] = @"emailAddressEditable";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_emailAddressEditable];
  v15[6] = v9;
  v14[7] = @"phoneNumberEditable";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_phoneNumberEditable];
  v15[7] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRestaurantGuestDisplayPreferences;
  v6 = [(INRestaurantGuestDisplayPreferences *)&v11 description];
  v7 = [(INRestaurantGuestDisplayPreferences *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(INRestaurantGuestDisplayPreferences *)v5 nameFieldFirstNameOptional];
      if (v6 == [(INRestaurantGuestDisplayPreferences *)self nameFieldFirstNameOptional]&& (v7 = [(INRestaurantGuestDisplayPreferences *)v5 nameFieldLastNameOptional], v7 == [(INRestaurantGuestDisplayPreferences *)self nameFieldLastNameOptional]) && (v8 = [(INRestaurantGuestDisplayPreferences *)v5 nameFieldShouldBeDisplayed], v8 == [(INRestaurantGuestDisplayPreferences *)self nameFieldShouldBeDisplayed]) && (v9 = [(INRestaurantGuestDisplayPreferences *)v5 emailAddressFieldShouldBeDisplayed], v9 == [(INRestaurantGuestDisplayPreferences *)self emailAddressFieldShouldBeDisplayed]) && (v10 = [(INRestaurantGuestDisplayPreferences *)v5 phoneNumberFieldShouldBeDisplayed], v10 == [(INRestaurantGuestDisplayPreferences *)self phoneNumberFieldShouldBeDisplayed]) && (v11 = [(INRestaurantGuestDisplayPreferences *)v5 nameEditable], v11 == [(INRestaurantGuestDisplayPreferences *)self nameEditable]) && (v12 = [(INRestaurantGuestDisplayPreferences *)v5 emailAddressEditable], v12 == [(INRestaurantGuestDisplayPreferences *)self emailAddressEditable]))
      {
        v15 = [(INRestaurantGuestDisplayPreferences *)v5 phoneNumberEditable];
        v13 = v15 ^ [(INRestaurantGuestDisplayPreferences *)self phoneNumberEditable]^ 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[INRestaurantGuestDisplayPreferences allocWithZone:?]];
  [(INRestaurantGuestDisplayPreferences *)v4 setNameFieldFirstNameOptional:[(INRestaurantGuestDisplayPreferences *)self nameFieldFirstNameOptional]];
  [(INRestaurantGuestDisplayPreferences *)v4 setNameFieldLastNameOptional:[(INRestaurantGuestDisplayPreferences *)self nameFieldLastNameOptional]];
  [(INRestaurantGuestDisplayPreferences *)v4 setNameFieldShouldBeDisplayed:[(INRestaurantGuestDisplayPreferences *)self nameFieldShouldBeDisplayed]];
  [(INRestaurantGuestDisplayPreferences *)v4 setEmailAddressFieldShouldBeDisplayed:[(INRestaurantGuestDisplayPreferences *)self emailAddressFieldShouldBeDisplayed]];
  [(INRestaurantGuestDisplayPreferences *)v4 setPhoneNumberFieldShouldBeDisplayed:[(INRestaurantGuestDisplayPreferences *)self phoneNumberFieldShouldBeDisplayed]];
  [(INRestaurantGuestDisplayPreferences *)v4 setNameEditable:[(INRestaurantGuestDisplayPreferences *)self nameEditable]];
  [(INRestaurantGuestDisplayPreferences *)v4 setEmailAddressEditable:[(INRestaurantGuestDisplayPreferences *)self emailAddressEditable]];
  [(INRestaurantGuestDisplayPreferences *)v4 setPhoneNumberEditable:[(INRestaurantGuestDisplayPreferences *)self phoneNumberEditable]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  nameFieldFirstNameOptional = self->_nameFieldFirstNameOptional;
  v5 = a3;
  [v5 encodeBool:nameFieldFirstNameOptional forKey:@"nameFieldFirstNameOptional"];
  [v5 encodeBool:self->_nameFieldLastNameOptional forKey:@"nameFieldLastNameOptional"];
  [v5 encodeBool:self->_nameFieldShouldBeDisplayed forKey:@"nameFieldShouldBeDisplayed"];
  [v5 encodeBool:self->_emailAddressFieldShouldBeDisplayed forKey:@"emailAddressFieldShouldBeDisplayed"];
  [v5 encodeBool:self->_phoneNumberFieldShouldBeDisplayed forKey:@"phoneNumberFieldShouldBeDisplayed"];
  [v5 encodeBool:self->_nameEditable forKey:@"nameEditable"];
  [v5 encodeBool:self->_emailAddressEditable forKey:@"emailAddressEditable"];
  [v5 encodeBool:self->_phoneNumberEditable forKey:@"phoneNumberEditable"];
}

- (INRestaurantGuestDisplayPreferences)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(INRestaurantGuestDisplayPreferences *)self init];
  if (v5)
  {
    v5->_nameFieldFirstNameOptional = [v4 decodeBoolForKey:@"nameFieldFirstNameOptional"];
    v5->_nameFieldLastNameOptional = [v4 decodeBoolForKey:@"nameFieldLastNameOptional"];
    v5->_nameFieldShouldBeDisplayed = [v4 decodeBoolForKey:@"nameFieldShouldBeDisplayed"];
    v5->_emailAddressFieldShouldBeDisplayed = [v4 decodeBoolForKey:@"emailAddressFieldShouldBeDisplayed"];
    v5->_phoneNumberFieldShouldBeDisplayed = [v4 decodeBoolForKey:@"phoneNumberFieldShouldBeDisplayed"];
    v5->_nameEditable = [v4 decodeBoolForKey:@"nameEditable"];
    v5->_emailAddressEditable = [v4 decodeBoolForKey:@"emailAddressEditable"];
    v5->_phoneNumberEditable = [v4 decodeBoolForKey:@"phoneNumberEditable"];
  }

  return v5;
}

- (INRestaurantGuestDisplayPreferences)init
{
  v3.receiver = self;
  v3.super_class = INRestaurantGuestDisplayPreferences;
  result = [(INRestaurantGuestDisplayPreferences *)&v3 init];
  if (result)
  {
    *&result->_nameFieldFirstNameOptional = 0;
    *&result->_nameFieldShouldBeDisplayed = 16843009;
    *&result->_emailAddressEditable = 257;
  }

  return result;
}

@end