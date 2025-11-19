@interface INBillPayee
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INBillPayee)initWithCoder:(id)a3;
- (INBillPayee)initWithNickname:(INSpeakableString *)nickname number:(NSString *)number organizationName:(INSpeakableString *)organizationName;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INBillPayee

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = [(INBillPayee *)self nickname];

  if (v6)
  {
    v7 = [(INBillPayee *)self nickname];
LABEL_3:
    v8 = v7;
    v9 = [v7 _intents_readableTitleWithLocalizer:v5];

    goto LABEL_6;
  }

  v10 = [(INBillPayee *)self accountNumber];

  if (!v10)
  {
    v7 = [(INBillPayee *)self organizationName];
    goto LABEL_3;
  }

  v9 = [(INBillPayee *)self accountNumber];
LABEL_6:

  return v9;
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"nickname";
  nickname = self->_nickname;
  v4 = nickname;
  if (!nickname)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"accountNumber";
  accountNumber = self->_accountNumber;
  v6 = accountNumber;
  if (!accountNumber)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"organizationName";
  organizationName = self->_organizationName;
  v8 = organizationName;
  if (!organizationName)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INBillPayee;
  v6 = [(INBillPayee *)&v11 description];
  v7 = [(INBillPayee *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_nickname];
  [v7 if_setObjectIfNonNil:v8 forKey:@"nickname"];

  v9 = [v6 encodeObject:self->_accountNumber];
  [v7 if_setObjectIfNonNil:v9 forKey:@"accountNumber"];

  v10 = [v6 encodeObject:self->_organizationName];

  [v7 if_setObjectIfNonNil:v10 forKey:@"organizationName"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  nickname = self->_nickname;
  v5 = a3;
  [v5 encodeObject:nickname forKey:@"nickname"];
  [v5 encodeObject:self->_accountNumber forKey:@"accountNumber"];
  [v5 encodeObject:self->_organizationName forKey:@"organizationName"];
}

- (INBillPayee)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nickname"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"accountNumber"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];

  v11 = [(INBillPayee *)self initWithNickname:v5 number:v9 organizationName:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"nickname"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"accountNumber"];
    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"organizationName"];
    v15 = [v7 decodeObjectOfClass:v13 from:v14];

    v16 = [[a1 alloc] initWithNickname:v11 number:v12 organizationName:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end