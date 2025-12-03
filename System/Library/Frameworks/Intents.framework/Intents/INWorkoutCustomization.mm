@interface INWorkoutCustomization
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INWorkoutCustomization)initWithCoder:(id)coder;
- (INWorkoutCustomization)initWithFocus:(id)focus environment:(id)environment;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INWorkoutCustomization

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"focus";
  focus = self->_focus;
  null = focus;
  if (!focus)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"environment";
  v11[0] = null;
  environment = self->_environment;
  null2 = environment;
  if (!environment)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (environment)
  {
    if (focus)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (focus)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INWorkoutCustomization;
  v6 = [(INWorkoutCustomization *)&v11 description];
  _dictionaryRepresentation = [(INWorkoutCustomization *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_focus];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"focus"];

  v9 = [encoderCopy encodeObject:self->_environment];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"environment"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  focus = self->_focus;
  coderCopy = coder;
  [coderCopy encodeObject:focus forKey:@"focus"];
  [coderCopy encodeObject:self->_environment forKey:@"environment"];
}

- (INWorkoutCustomization)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"focus"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"environment"];

  v13 = [(INWorkoutCustomization *)self initWithFocus:v8 environment:v12];
  return v13;
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
      focus = self->_focus;
      v8 = 0;
      if (focus == v5->_focus || [(NSString *)focus isEqual:?])
      {
        environment = self->_environment;
        if (environment == v5->_environment || [(NSString *)environment isEqual:?])
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

- (INWorkoutCustomization)initWithFocus:(id)focus environment:(id)environment
{
  focusCopy = focus;
  environmentCopy = environment;
  v14.receiver = self;
  v14.super_class = INWorkoutCustomization;
  v8 = [(INWorkoutCustomization *)&v14 init];
  if (v8)
  {
    v9 = [focusCopy copy];
    focus = v8->_focus;
    v8->_focus = v9;

    v11 = [environmentCopy copy];
    environment = v8->_environment;
    v8->_environment = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"focus"];
    v8 = [fromCopy objectForKeyedSubscript:@"environment"];
    v9 = [[self alloc] initWithFocus:v7 environment:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end