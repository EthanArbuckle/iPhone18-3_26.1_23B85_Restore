@interface INPaymentAccount
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INPaymentAccount)initWithCoder:(id)coder;
- (INPaymentAccount)initWithNickname:(INSpeakableString *)nickname number:(NSString *)number accountType:(INAccountType)accountType organizationName:(INSpeakableString *)organizationName balance:(INBalanceAmount *)balance secondaryBalance:(INBalanceAmount *)secondaryBalance;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INPaymentAccount

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  nickname = [(INPaymentAccount *)self nickname];

  if (nickname)
  {
    nickname2 = [(INPaymentAccount *)self nickname];
    v8 = [nickname2 _intents_readableTitleWithLocalizer:localizerCopy];
  }

  else
  {
    accountNumber = [(INPaymentAccount *)self accountNumber];

    if (accountNumber)
    {
      [(INPaymentAccount *)self accountNumber];
    }

    else
    {
      INAccountTypeGetLocalizedName([(INPaymentAccount *)self accountType], localizerCopy);
    }
    v8 = ;
  }

  return v8;
}

- (id)_dictionaryRepresentation
{
  v20[6] = *MEMORY[0x1E69E9840];
  v19[0] = @"nickname";
  nickname = self->_nickname;
  null = nickname;
  if (!nickname)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null;
  v20[0] = null;
  v19[1] = @"accountNumber";
  accountNumber = self->_accountNumber;
  null2 = accountNumber;
  if (!accountNumber)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null2;
  v20[1] = null2;
  v19[2] = @"accountType";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_accountType];
  v20[2] = v7;
  v19[3] = @"organizationName";
  organizationName = self->_organizationName;
  null3 = organizationName;
  if (!organizationName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v20[3] = null3;
  v19[4] = @"balance";
  balance = self->_balance;
  null4 = balance;
  if (!balance)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v20[4] = null4;
  v19[5] = @"secondaryBalance";
  secondaryBalance = self->_secondaryBalance;
  null5 = secondaryBalance;
  if (!secondaryBalance)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v20[5] = null5;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:6];
  if (secondaryBalance)
  {
    if (balance)
    {
      goto LABEL_13;
    }

LABEL_20:

    if (organizationName)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (!balance)
  {
    goto LABEL_20;
  }

LABEL_13:
  if (organizationName)
  {
    goto LABEL_14;
  }

LABEL_21:

LABEL_14:
  if (accountNumber)
  {
    if (nickname)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (nickname)
    {
      goto LABEL_16;
    }
  }

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPaymentAccount;
  v6 = [(INPaymentAccount *)&v11 description];
  _dictionaryRepresentation = [(INPaymentAccount *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_nickname];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"nickname"];

  v9 = [encoderCopy encodeObject:self->_accountNumber];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"accountNumber"];

  v10 = self->_accountType - 1;
  if (v10 > 6)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E7280DB8[v10];
  }

  v12 = v11;
  [dictionary if_setObjectIfNonNil:v12 forKey:@"accountType"];

  v13 = [encoderCopy encodeObject:self->_organizationName];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"organizationName"];

  v14 = [encoderCopy encodeObject:self->_balance];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"balance"];

  v15 = [encoderCopy encodeObject:self->_secondaryBalance];

  [dictionary if_setObjectIfNonNil:v15 forKey:@"secondaryBalance"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  nickname = self->_nickname;
  coderCopy = coder;
  [coderCopy encodeObject:nickname forKey:@"nickname"];
  [coderCopy encodeObject:self->_accountNumber forKey:@"accountNumber"];
  [coderCopy encodeInteger:self->_accountType forKey:@"accountType"];
  [coderCopy encodeObject:self->_organizationName forKey:@"organizationName"];
  [coderCopy encodeObject:self->_balance forKey:@"balance"];
  [coderCopy encodeObject:self->_secondaryBalance forKey:@"secondaryBalance"];
}

- (INPaymentAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nickname"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"accountNumber"];

  v10 = [coderCopy decodeIntegerForKey:@"accountType"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryBalance"];

  v14 = [(INPaymentAccount *)self initWithNickname:v5 number:v9 accountType:v10 organizationName:v11 balance:v12 secondaryBalance:v13];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      nickname = self->_nickname;
      v11 = 0;
      if (nickname == v5->_nickname || [(INSpeakableString *)nickname isEqual:?])
      {
        accountNumber = self->_accountNumber;
        if ((accountNumber == v5->_accountNumber || [(NSString *)accountNumber isEqual:?]) && self->_accountType == v5->_accountType)
        {
          organizationName = self->_organizationName;
          if (organizationName == v5->_organizationName || [(INSpeakableString *)organizationName isEqual:?])
          {
            balance = self->_balance;
            if (balance == v5->_balance || [(INBalanceAmount *)balance isEqual:?])
            {
              secondaryBalance = self->_secondaryBalance;
              if (secondaryBalance == v5->_secondaryBalance || [(INBalanceAmount *)secondaryBalance isEqual:?])
              {
                v11 = 1;
              }
            }
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(INSpeakableString *)self->_nickname hash];
  v4 = [(NSString *)self->_accountNumber hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_accountType];
  v6 = [v5 hash];
  v7 = v4 ^ [(INSpeakableString *)self->_organizationName hash]^ v6;
  v8 = [(INBalanceAmount *)self->_balance hash];
  v9 = v8 ^ [(INBalanceAmount *)self->_secondaryBalance hash];

  return v7 ^ v9;
}

- (INPaymentAccount)initWithNickname:(INSpeakableString *)nickname number:(NSString *)number accountType:(INAccountType)accountType organizationName:(INSpeakableString *)organizationName balance:(INBalanceAmount *)balance secondaryBalance:(INBalanceAmount *)secondaryBalance
{
  v14 = nickname;
  v15 = number;
  v16 = organizationName;
  v17 = balance;
  v18 = secondaryBalance;
  v31.receiver = self;
  v31.super_class = INPaymentAccount;
  v19 = [(INPaymentAccount *)&v31 init];
  if (v19)
  {
    v20 = [(INSpeakableString *)v14 copy];
    v21 = v19->_nickname;
    v19->_nickname = v20;

    v22 = [(NSString *)v15 copy];
    accountNumber = v19->_accountNumber;
    v19->_accountNumber = v22;

    v19->_accountType = accountType;
    v24 = [(INSpeakableString *)v16 copy];
    v25 = v19->_organizationName;
    v19->_organizationName = v24;

    v26 = [(INBalanceAmount *)v17 copy];
    v27 = v19->_balance;
    v19->_balance = v26;

    v28 = [(INBalanceAmount *)v18 copy];
    v29 = v19->_secondaryBalance;
    v19->_secondaryBalance = v28;
  }

  return v19;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"nickname"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"accountNumber"];
    v13 = [fromCopy objectForKeyedSubscript:@"accountType"];
    v14 = INAccountTypeWithString(v13);

    v15 = objc_opt_class();
    v16 = [fromCopy objectForKeyedSubscript:@"organizationName"];
    v17 = [decoderCopy decodeObjectOfClass:v15 from:v16];

    v18 = objc_opt_class();
    v19 = [fromCopy objectForKeyedSubscript:@"balance"];
    v20 = [decoderCopy decodeObjectOfClass:v18 from:v19];

    v21 = objc_opt_class();
    v22 = [fromCopy objectForKeyedSubscript:@"secondaryBalance"];
    v23 = [decoderCopy decodeObjectOfClass:v21 from:v22];

    v24 = [[self alloc] initWithNickname:v11 number:v12 accountType:v14 organizationName:v17 balance:v20 secondaryBalance:v23];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end