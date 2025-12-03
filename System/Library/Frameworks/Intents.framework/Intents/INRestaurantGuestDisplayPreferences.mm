@interface INRestaurantGuestDisplayPreferences
- (BOOL)isEqual:(id)equal;
- (INRestaurantGuestDisplayPreferences)init;
- (INRestaurantGuestDisplayPreferences)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRestaurantGuestDisplayPreferences;
  v6 = [(INRestaurantGuestDisplayPreferences *)&v11 description];
  _dictionaryRepresentation = [(INRestaurantGuestDisplayPreferences *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      nameFieldFirstNameOptional = [(INRestaurantGuestDisplayPreferences *)v5 nameFieldFirstNameOptional];
      if (nameFieldFirstNameOptional == [(INRestaurantGuestDisplayPreferences *)self nameFieldFirstNameOptional]&& (v7 = [(INRestaurantGuestDisplayPreferences *)v5 nameFieldLastNameOptional], v7 == [(INRestaurantGuestDisplayPreferences *)self nameFieldLastNameOptional]) && (v8 = [(INRestaurantGuestDisplayPreferences *)v5 nameFieldShouldBeDisplayed], v8 == [(INRestaurantGuestDisplayPreferences *)self nameFieldShouldBeDisplayed]) && (v9 = [(INRestaurantGuestDisplayPreferences *)v5 emailAddressFieldShouldBeDisplayed], v9 == [(INRestaurantGuestDisplayPreferences *)self emailAddressFieldShouldBeDisplayed]) && (v10 = [(INRestaurantGuestDisplayPreferences *)v5 phoneNumberFieldShouldBeDisplayed], v10 == [(INRestaurantGuestDisplayPreferences *)self phoneNumberFieldShouldBeDisplayed]) && (v11 = [(INRestaurantGuestDisplayPreferences *)v5 nameEditable], v11 == [(INRestaurantGuestDisplayPreferences *)self nameEditable]) && (v12 = [(INRestaurantGuestDisplayPreferences *)v5 emailAddressEditable], v12 == [(INRestaurantGuestDisplayPreferences *)self emailAddressEditable]))
      {
        phoneNumberEditable = [(INRestaurantGuestDisplayPreferences *)v5 phoneNumberEditable];
        v13 = phoneNumberEditable ^ [(INRestaurantGuestDisplayPreferences *)self phoneNumberEditable]^ 1;
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  nameFieldFirstNameOptional = self->_nameFieldFirstNameOptional;
  coderCopy = coder;
  [coderCopy encodeBool:nameFieldFirstNameOptional forKey:@"nameFieldFirstNameOptional"];
  [coderCopy encodeBool:self->_nameFieldLastNameOptional forKey:@"nameFieldLastNameOptional"];
  [coderCopy encodeBool:self->_nameFieldShouldBeDisplayed forKey:@"nameFieldShouldBeDisplayed"];
  [coderCopy encodeBool:self->_emailAddressFieldShouldBeDisplayed forKey:@"emailAddressFieldShouldBeDisplayed"];
  [coderCopy encodeBool:self->_phoneNumberFieldShouldBeDisplayed forKey:@"phoneNumberFieldShouldBeDisplayed"];
  [coderCopy encodeBool:self->_nameEditable forKey:@"nameEditable"];
  [coderCopy encodeBool:self->_emailAddressEditable forKey:@"emailAddressEditable"];
  [coderCopy encodeBool:self->_phoneNumberEditable forKey:@"phoneNumberEditable"];
}

- (INRestaurantGuestDisplayPreferences)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(INRestaurantGuestDisplayPreferences *)self init];
  if (v5)
  {
    v5->_nameFieldFirstNameOptional = [coderCopy decodeBoolForKey:@"nameFieldFirstNameOptional"];
    v5->_nameFieldLastNameOptional = [coderCopy decodeBoolForKey:@"nameFieldLastNameOptional"];
    v5->_nameFieldShouldBeDisplayed = [coderCopy decodeBoolForKey:@"nameFieldShouldBeDisplayed"];
    v5->_emailAddressFieldShouldBeDisplayed = [coderCopy decodeBoolForKey:@"emailAddressFieldShouldBeDisplayed"];
    v5->_phoneNumberFieldShouldBeDisplayed = [coderCopy decodeBoolForKey:@"phoneNumberFieldShouldBeDisplayed"];
    v5->_nameEditable = [coderCopy decodeBoolForKey:@"nameEditable"];
    v5->_emailAddressEditable = [coderCopy decodeBoolForKey:@"emailAddressEditable"];
    v5->_phoneNumberEditable = [coderCopy decodeBoolForKey:@"phoneNumberEditable"];
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