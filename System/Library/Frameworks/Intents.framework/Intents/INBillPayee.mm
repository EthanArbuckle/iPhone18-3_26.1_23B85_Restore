@interface INBillPayee
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INBillPayee)initWithCoder:(id)coder;
- (INBillPayee)initWithNickname:(INSpeakableString *)nickname number:(NSString *)number organizationName:(INSpeakableString *)organizationName;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INBillPayee

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  nickname = [(INBillPayee *)self nickname];

  if (nickname)
  {
    nickname2 = [(INBillPayee *)self nickname];
LABEL_3:
    v8 = nickname2;
    accountNumber2 = [nickname2 _intents_readableTitleWithLocalizer:localizerCopy];

    goto LABEL_6;
  }

  accountNumber = [(INBillPayee *)self accountNumber];

  if (!accountNumber)
  {
    nickname2 = [(INBillPayee *)self organizationName];
    goto LABEL_3;
  }

  accountNumber2 = [(INBillPayee *)self accountNumber];
LABEL_6:

  return accountNumber2;
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"nickname";
  nickname = self->_nickname;
  null = nickname;
  if (!nickname)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"accountNumber";
  accountNumber = self->_accountNumber;
  null2 = accountNumber;
  if (!accountNumber)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"organizationName";
  organizationName = self->_organizationName;
  null3 = organizationName;
  if (!organizationName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (organizationName)
  {
    if (accountNumber)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (nickname)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!accountNumber)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (nickname)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INBillPayee;
  v6 = [(INBillPayee *)&v11 description];
  _dictionaryRepresentation = [(INBillPayee *)self _dictionaryRepresentation];
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

  v10 = [encoderCopy encodeObject:self->_organizationName];

  [dictionary if_setObjectIfNonNil:v10 forKey:@"organizationName"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  nickname = self->_nickname;
  coderCopy = coder;
  [coderCopy encodeObject:nickname forKey:@"nickname"];
  [coderCopy encodeObject:self->_accountNumber forKey:@"accountNumber"];
  [coderCopy encodeObject:self->_organizationName forKey:@"organizationName"];
}

- (INBillPayee)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nickname"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"accountNumber"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];

  v11 = [(INBillPayee *)self initWithNickname:v5 number:v9 organizationName:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      nickname = self->_nickname;
      v9 = 0;
      if (nickname == v5->_nickname || [(INSpeakableString *)nickname isEqual:?])
      {
        accountNumber = self->_accountNumber;
        if (accountNumber == v5->_accountNumber || [(NSString *)accountNumber isEqual:?])
        {
          organizationName = self->_organizationName;
          if (organizationName == v5->_organizationName || [(INSpeakableString *)organizationName isEqual:?])
          {
            v9 = 1;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(INSpeakableString *)self->_nickname hash];
  v4 = [(NSString *)self->_accountNumber hash]^ v3;
  return v4 ^ [(INSpeakableString *)self->_organizationName hash];
}

- (INBillPayee)initWithNickname:(INSpeakableString *)nickname number:(NSString *)number organizationName:(INSpeakableString *)organizationName
{
  v8 = nickname;
  v9 = number;
  v10 = organizationName;
  v19.receiver = self;
  v19.super_class = INBillPayee;
  v11 = [(INBillPayee *)&v19 init];
  if (v11)
  {
    v12 = [(INSpeakableString *)v8 copy];
    v13 = v11->_nickname;
    v11->_nickname = v12;

    v14 = [(NSString *)v9 copy];
    accountNumber = v11->_accountNumber;
    v11->_accountNumber = v14;

    v16 = [(INSpeakableString *)v10 copy];
    v17 = v11->_organizationName;
    v11->_organizationName = v16;
  }

  return v11;
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
    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"organizationName"];
    v15 = [decoderCopy decodeObjectOfClass:v13 from:v14];

    v16 = [[self alloc] initWithNickname:v11 number:v12 organizationName:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end