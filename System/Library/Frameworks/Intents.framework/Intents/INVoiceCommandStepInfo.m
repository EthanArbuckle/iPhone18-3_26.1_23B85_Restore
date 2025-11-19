@interface INVoiceCommandStepInfo
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INVoiceCommandStepInfo)initWithApplicationIdentifier:(id)a3 category:(int64_t)a4 name:(id)a5;
- (INVoiceCommandStepInfo)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INVoiceCommandStepInfo

- (id)_dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"applicationIdentifier";
  applicationIdentifier = self->_applicationIdentifier;
  v4 = applicationIdentifier;
  if (!applicationIdentifier)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v4;
  v11[1] = @"category";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_category];
  v12[1] = v5;
  v11[2] = @"name";
  name = self->_name;
  v7 = name;
  if (!name)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (!name)
  {
  }

  if (!applicationIdentifier)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INVoiceCommandStepInfo;
  v6 = [(INVoiceCommandStepInfo *)&v11 description];
  v7 = [(INVoiceCommandStepInfo *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_applicationIdentifier];
  [v7 if_setObjectIfNonNil:v8 forKey:@"applicationIdentifier"];

  v9 = self->_category - 1;
  if (v9 > 0x13)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E7286400[v9];
  }

  v11 = v10;
  [v7 if_setObjectIfNonNil:v11 forKey:@"category"];

  v12 = [v6 encodeObject:self->_name];

  [v7 if_setObjectIfNonNil:v12 forKey:@"name"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  applicationIdentifier = self->_applicationIdentifier;
  v5 = a3;
  [v5 encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];
  [v5 encodeInteger:self->_category forKey:@"category"];
  [v5 encodeObject:self->_name forKey:@"name"];
}

- (INVoiceCommandStepInfo)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"applicationIdentifier"];

  v9 = [v5 decodeIntegerForKey:@"category"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v5 decodeObjectOfClasses:v12 forKey:@"name"];

  v14 = [(INVoiceCommandStepInfo *)self initWithApplicationIdentifier:v8 category:v9 name:v13];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      applicationIdentifier = self->_applicationIdentifier;
      v8 = 0;
      if ((applicationIdentifier == v5->_applicationIdentifier || [(NSString *)applicationIdentifier isEqual:?]) && self->_category == v5->_category)
      {
        name = self->_name;
        if (name == v5->_name || [(NSString *)name isEqual:?])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_applicationIdentifier hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_category];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSString *)self->_name hash];

  return v5 ^ v6;
}

- (INVoiceCommandStepInfo)initWithApplicationIdentifier:(id)a3 category:(int64_t)a4 name:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = INVoiceCommandStepInfo;
  v10 = [(INVoiceCommandStepInfo *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    applicationIdentifier = v10->_applicationIdentifier;
    v10->_applicationIdentifier = v11;

    v10->_category = a4;
    v13 = [v9 copy];
    name = v10->_name;
    v10->_name = v13;
  }

  return v10;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"applicationIdentifier"];
    v8 = [v6 objectForKeyedSubscript:@"category"];
    v9 = INIntentCategoryWithString(v8);

    v10 = [v6 objectForKeyedSubscript:@"name"];
    v11 = [[a1 alloc] initWithApplicationIdentifier:v7 category:v9 name:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end