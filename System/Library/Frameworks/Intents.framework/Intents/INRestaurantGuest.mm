@interface INRestaurantGuest
- (BOOL)isEqual:(id)equal;
- (INRestaurantGuest)initWithCoder:(id)coder;
- (INRestaurantGuest)initWithNameComponents:(NSPersonNameComponents *)nameComponents phoneNumber:(NSString *)phoneNumber emailAddress:(NSString *)emailAddress;
- (INRestaurantGuest)initWithPersonHandle:(id)handle nameComponents:(id)components displayName:(id)name image:(id)image contactIdentifier:(id)identifier customIdentifier:(id)customIdentifier isMe:(BOOL)me;
- (id)_dictionaryRepresentation;
- (id)_initWithUserInput:(id)input personHandle:(id)handle nameComponents:(id)components displayName:(id)name image:(id)image contactIdentifier:(id)identifier customIdentifier:(id)customIdentifier relationship:(id)self0 aliases:(id)self1 suggestionType:(int64_t)self2 isMe:(BOOL)self3 scoredAlternatives:(id)self4 sourceAppBundleIdentifier:(id)self5 phonemeData:(id)self6;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INRestaurantGuest

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"phoneNumber";
  phoneNumber = self->_phoneNumber;
  null = phoneNumber;
  if (!phoneNumber)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"emailAddress";
  v11[0] = null;
  emailAddress = self->_emailAddress;
  null2 = emailAddress;
  if (!emailAddress)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (emailAddress)
  {
    if (phoneNumber)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (phoneNumber)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_initWithUserInput:(id)input personHandle:(id)handle nameComponents:(id)components displayName:(id)name image:(id)image contactIdentifier:(id)identifier customIdentifier:(id)customIdentifier relationship:(id)self0 aliases:(id)self1 suggestionType:(int64_t)self2 isMe:(BOOL)self3 scoredAlternatives:(id)self4 sourceAppBundleIdentifier:(id)self5 phonemeData:(id)self6
{
  handleCopy = handle;
  componentsCopy = components;
  type = [handleCopy type];
  if (type == 2)
  {
    value = [handleCopy value];
  }

  else
  {
    value = 0;
  }

  if ([handleCopy type] == 1)
  {
    value2 = [handleCopy value];
    v23 = [(INRestaurantGuest *)self initWithNameComponents:componentsCopy phoneNumber:value emailAddress:value2];
  }

  else
  {
    v23 = [(INRestaurantGuest *)self initWithNameComponents:componentsCopy phoneNumber:value emailAddress:0];
  }

  if (type == 2)
  {
  }

  return v23;
}

- (INRestaurantGuest)initWithPersonHandle:(id)handle nameComponents:(id)components displayName:(id)name image:(id)image contactIdentifier:(id)identifier customIdentifier:(id)customIdentifier isMe:(BOOL)me
{
  handleCopy = handle;
  componentsCopy = components;
  type = [handleCopy type];
  if (type == 2)
  {
    value = [handleCopy value];
  }

  else
  {
    value = 0;
  }

  if ([handleCopy type] == 1)
  {
    value2 = [handleCopy value];
    v16 = [(INRestaurantGuest *)self initWithNameComponents:componentsCopy phoneNumber:value emailAddress:value2];
  }

  else
  {
    v16 = [(INRestaurantGuest *)self initWithNameComponents:componentsCopy phoneNumber:value emailAddress:0];
  }

  if (type == 2)
  {
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_21;
  }

  v6 = equalCopy;
  phoneNumber = [(INRestaurantGuest *)v6 phoneNumber];
  if (!phoneNumber)
  {
    phoneNumber2 = [(INRestaurantGuest *)self phoneNumber];
    if (!phoneNumber2)
    {
      v10 = 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  phoneNumber3 = [(INRestaurantGuest *)v6 phoneNumber];
  phoneNumber4 = [(INRestaurantGuest *)self phoneNumber];
  v10 = [phoneNumber3 isEqualToString:phoneNumber4];

  if (!phoneNumber)
  {
    goto LABEL_10;
  }

LABEL_11:

  emailAddress = [(INRestaurantGuest *)v6 emailAddress];
  if (!emailAddress)
  {
    phoneNumber2 = [(INRestaurantGuest *)self emailAddress];
    if (!phoneNumber2)
    {
      v15 = 1;
LABEL_16:

      goto LABEL_17;
    }
  }

  emailAddress2 = [(INRestaurantGuest *)v6 emailAddress];
  emailAddress3 = [(INRestaurantGuest *)self emailAddress];
  v15 = [emailAddress2 isEqualToString:emailAddress3];

  if (!emailAddress)
  {
    goto LABEL_16;
  }

LABEL_17:

  if ((v10 & v15) == 1)
  {
    v17.receiver = self;
    v17.super_class = INRestaurantGuest;
    v11 = [(INPerson *)&v17 isEqual:v6];
  }

  else
  {
    v11 = 0;
  }

LABEL_21:
  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = INRestaurantGuest;
  v4 = [(INPerson *)&v8 copyWithZone:zone];
  phoneNumber = [(INRestaurantGuest *)self phoneNumber];
  [v4 setPhoneNumber:phoneNumber];

  emailAddress = [(INRestaurantGuest *)self emailAddress];
  [v4 setEmailAddress:emailAddress];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INRestaurantGuest;
  coderCopy = coder;
  [(INPerson *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_phoneNumber forKey:{@"phoneNumber", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_emailAddress forKey:@"emailAddress"];
}

- (INRestaurantGuest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = INRestaurantGuest;
  v5 = [(INPerson *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v8;
  }

  return v5;
}

- (INRestaurantGuest)initWithNameComponents:(NSPersonNameComponents *)nameComponents phoneNumber:(NSString *)phoneNumber emailAddress:(NSString *)emailAddress
{
  v8 = phoneNumber;
  v9 = emailAddress;
  v10 = nameComponents;
  v11 = [[INPersonHandle alloc] initWithValue:&stru_1F01E0850 type:0];
  v20.receiver = self;
  v20.super_class = INRestaurantGuest;
  v19 = 0;
  v18 = 0;
  v12 = [(INPerson *)&v20 _initWithUserInput:0 personHandle:v11 nameComponents:v10 displayName:0 image:0 contactIdentifier:0 customIdentifier:0 relationship:0 aliases:0 suggestionType:0 isMe:v18 scoredAlternatives:0 sourceAppBundleIdentifier:0 phonemeData:0 isContactSuggestion:v19 searchProvider:0];

  if (v12)
  {
    v13 = [(NSString *)v8 copy];
    v14 = v12->_phoneNumber;
    v12->_phoneNumber = v13;

    v15 = [(NSString *)v9 copy];
    v16 = v12->_emailAddress;
    v12->_emailAddress = v15;
  }

  return v12;
}

@end