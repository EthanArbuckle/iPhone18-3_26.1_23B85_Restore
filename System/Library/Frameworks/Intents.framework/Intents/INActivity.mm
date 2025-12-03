@interface INActivity
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INActivity)initWithActivityType:(id)type activityDescriptors:(id)descriptors;
- (INActivity)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INActivity

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"activityType";
  activityType = self->_activityType;
  null = activityType;
  if (!activityType)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"activityDescriptors";
  v11[0] = null;
  activityDescriptors = self->_activityDescriptors;
  null2 = activityDescriptors;
  if (!activityDescriptors)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (activityDescriptors)
  {
    if (activityType)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (activityType)
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
  v11.super_class = INActivity;
  v6 = [(INActivity *)&v11 description];
  _dictionaryRepresentation = [(INActivity *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_activityType];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"activityType"];

  v9 = [encoderCopy encodeObject:self->_activityDescriptors];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"activityDescriptors"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  activityType = self->_activityType;
  coderCopy = coder;
  [coderCopy encodeObject:activityType forKey:@"activityType"];
  [coderCopy encodeObject:self->_activityDescriptors forKey:@"activityDescriptors"];
}

- (INActivity)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
  v6 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"activityDescriptors"];

  v10 = [(INActivity *)self initWithActivityType:v5 activityDescriptors:v9];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
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
      activityType = self->_activityType;
      v8 = 0;
      if (activityType == v5->_activityType || [(NSString *)activityType isEqual:?])
      {
        activityDescriptors = self->_activityDescriptors;
        if (activityDescriptors == v5->_activityDescriptors || [(NSArray *)activityDescriptors isEqual:?])
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

- (INActivity)initWithActivityType:(id)type activityDescriptors:(id)descriptors
{
  typeCopy = type;
  descriptorsCopy = descriptors;
  v14.receiver = self;
  v14.super_class = INActivity;
  v8 = [(INActivity *)&v14 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    activityType = v8->_activityType;
    v8->_activityType = v9;

    v11 = [descriptorsCopy copy];
    activityDescriptors = v8->_activityDescriptors;
    v8->_activityDescriptors = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"activityType"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"activityDescriptors"];
    v14 = [decoderCopy decodeObjectsOfClass:v12 from:v13];

    v15 = [[self alloc] initWithActivityType:v11 activityDescriptors:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end