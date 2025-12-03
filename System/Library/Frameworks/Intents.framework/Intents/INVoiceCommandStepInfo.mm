@interface INVoiceCommandStepInfo
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INVoiceCommandStepInfo)initWithApplicationIdentifier:(id)identifier category:(int64_t)category name:(id)name;
- (INVoiceCommandStepInfo)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INVoiceCommandStepInfo

- (id)_dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"applicationIdentifier";
  applicationIdentifier = self->_applicationIdentifier;
  null = applicationIdentifier;
  if (!applicationIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"category";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_category];
  v12[1] = v5;
  v11[2] = @"name";
  name = self->_name;
  null2 = name;
  if (!name)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = null2;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INVoiceCommandStepInfo;
  v6 = [(INVoiceCommandStepInfo *)&v11 description];
  _dictionaryRepresentation = [(INVoiceCommandStepInfo *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_applicationIdentifier];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"applicationIdentifier"];

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
  [dictionary if_setObjectIfNonNil:v11 forKey:@"category"];

  v12 = [encoderCopy encodeObject:self->_name];

  [dictionary if_setObjectIfNonNil:v12 forKey:@"name"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  applicationIdentifier = self->_applicationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];
  [coderCopy encodeInteger:self->_category forKey:@"category"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
}

- (INVoiceCommandStepInfo)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"applicationIdentifier"];

  v9 = [coderCopy decodeIntegerForKey:@"category"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"name"];

  v14 = [(INVoiceCommandStepInfo *)self initWithApplicationIdentifier:v8 category:v9 name:v13];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INVoiceCommandStepInfo)initWithApplicationIdentifier:(id)identifier category:(int64_t)category name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = INVoiceCommandStepInfo;
  v10 = [(INVoiceCommandStepInfo *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    applicationIdentifier = v10->_applicationIdentifier;
    v10->_applicationIdentifier = v11;

    v10->_category = category;
    v13 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v13;
  }

  return v10;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"applicationIdentifier"];
    v8 = [fromCopy objectForKeyedSubscript:@"category"];
    v9 = INIntentCategoryWithString(v8);

    v10 = [fromCopy objectForKeyedSubscript:@"name"];
    v11 = [[self alloc] initWithApplicationIdentifier:v7 category:v9 name:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end