@interface INHomeContent
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INHomeContent)initWithCoder:(id)coder;
- (INHomeContent)initWithFilter:(id)filter actions:(id)actions;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INHomeContent

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"filter";
  filter = self->_filter;
  null = filter;
  if (!filter)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"actions";
  v11[0] = null;
  actions = self->_actions;
  null2 = actions;
  if (!actions)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (actions)
  {
    if (filter)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (filter)
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
  v11.super_class = INHomeContent;
  v6 = [(INHomeContent *)&v11 description];
  _dictionaryRepresentation = [(INHomeContent *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_filter];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"filter"];

  v9 = [encoderCopy encodeObject:self->_actions];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"actions"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  filter = self->_filter;
  coderCopy = coder;
  [coderCopy encodeObject:filter forKey:@"filter"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
}

- (INHomeContent)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filter"];
  v6 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"actions"];

  v10 = [(INHomeContent *)self initWithFilter:v5 actions:v9];
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
      filter = self->_filter;
      v8 = 0;
      if (filter == v5->_filter || [(INHomeFilter *)filter isEqual:?])
      {
        actions = self->_actions;
        if (actions == v5->_actions || [(NSArray *)actions isEqual:?])
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

- (INHomeContent)initWithFilter:(id)filter actions:(id)actions
{
  filterCopy = filter;
  actionsCopy = actions;
  v14.receiver = self;
  v14.super_class = INHomeContent;
  v8 = [(INHomeContent *)&v14 init];
  if (v8)
  {
    v9 = [filterCopy copy];
    filter = v8->_filter;
    v8->_filter = v9;

    v11 = [actionsCopy copy];
    actions = v8->_actions;
    v8->_actions = v11;
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
    v10 = [fromCopy objectForKeyedSubscript:@"filter"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"actions"];
    v14 = [decoderCopy decodeObjectsOfClass:v12 from:v13];

    v15 = [[self alloc] initWithFilter:v11 actions:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end