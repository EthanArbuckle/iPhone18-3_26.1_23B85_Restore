@interface INShortcutOverview
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INShortcutOverview)initWithCoder:(id)coder;
- (INShortcutOverview)initWithName:(id)name voiceCommand:(id)command icon:(id)icon descriptiveText:(id)text steps:(id)steps;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INShortcutOverview

- (void)_intents_updateContainerWithCache:(id)cache
{
  v30 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  icon = [(INShortcutOverview *)self icon];
  if (icon)
  {
    v6 = icon;
    icon2 = [(INShortcutOverview *)self icon];
    _identifier = [icon2 _identifier];
    v9 = [cacheCopy cacheableObjectForIdentifier:_identifier];

    if (v9)
    {
      icon3 = [(INShortcutOverview *)self icon];
      _identifier2 = [icon3 _identifier];
      v12 = [cacheCopy cacheableObjectForIdentifier:_identifier2];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        icon4 = [(INShortcutOverview *)self icon];
        [v12 _imageSize];
        [icon4 _setImageSize:?];
      }
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  steps = [(INShortcutOverview *)self steps];
  v15 = [steps countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(steps);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        _identifier3 = [v19 _identifier];
        v21 = [cacheCopy cacheableObjectForIdentifier:_identifier3];

        if (v21)
        {
          _identifier4 = [v19 _identifier];
          v23 = [cacheCopy cacheableObjectForIdentifier:_identifier4];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v23 _imageSize];
            [v19 _setImageSize:?];
          }
        }
      }

      v16 = [steps countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  icon = [(INShortcutOverview *)self icon];

  if (icon)
  {
    icon2 = [(INShortcutOverview *)self icon];
    [v3 addObject:icon2];
  }

  steps = [(INShortcutOverview *)self steps];

  if (steps)
  {
    steps2 = [(INShortcutOverview *)self steps];
    [v3 addObjectsFromArray:steps2];
  }

  if ([v3 count])
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)_dictionaryRepresentation
{
  v23[5] = *MEMORY[0x1E69E9840];
  v18 = @"name";
  name = self->_name;
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"voiceCommand";
  voiceCommand = self->_voiceCommand;
  null2 = voiceCommand;
  if (!voiceCommand)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"icon";
  icon = self->_icon;
  null3 = icon;
  if (!icon)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"descriptiveText";
  descriptiveText = self->_descriptiveText;
  null4 = descriptiveText;
  if (!descriptiveText)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"steps";
  steps = self->_steps;
  null5 = steps;
  if (!steps)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (steps)
  {
    if (descriptiveText)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (descriptiveText)
    {
LABEL_13:
      if (icon)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (icon)
  {
LABEL_14:
    if (voiceCommand)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (name)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!voiceCommand)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (name)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INShortcutOverview;
  v6 = [(INShortcutOverview *)&v11 description];
  _dictionaryRepresentation = [(INShortcutOverview *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_name];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"name"];

  v9 = [encoderCopy encodeObject:self->_voiceCommand];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"voiceCommand"];

  v10 = [encoderCopy encodeObject:self->_icon];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"icon"];

  v11 = [encoderCopy encodeObject:self->_descriptiveText];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"descriptiveText"];

  v12 = [encoderCopy encodeObject:self->_steps];

  [dictionary if_setObjectIfNonNil:v12 forKey:@"steps"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_voiceCommand forKey:@"voiceCommand"];
  [coderCopy encodeObject:self->_icon forKey:@"icon"];
  [coderCopy encodeObject:self->_descriptiveText forKey:@"descriptiveText"];
  [coderCopy encodeObject:self->_steps forKey:@"steps"];
}

- (INShortcutOverview)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voiceCommand"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptiveText"];
  v9 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"steps"];

  v13 = [(INShortcutOverview *)self initWithName:v5 voiceCommand:v6 icon:v7 descriptiveText:v8 steps:v12];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
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
      name = self->_name;
      v11 = 0;
      if (name == v5->_name || [(INSpeakableString *)name isEqual:?])
      {
        voiceCommand = self->_voiceCommand;
        if (voiceCommand == v5->_voiceCommand || [(INSpeakableString *)voiceCommand isEqual:?])
        {
          icon = self->_icon;
          if (icon == v5->_icon || [(INImage *)icon isEqual:?])
          {
            descriptiveText = self->_descriptiveText;
            if (descriptiveText == v5->_descriptiveText || [(INSpeakableString *)descriptiveText isEqual:?])
            {
              steps = self->_steps;
              if (steps == v5->_steps || [(NSArray *)steps isEqual:?])
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
  v3 = [(INSpeakableString *)self->_name hash];
  v4 = [(INSpeakableString *)self->_voiceCommand hash]^ v3;
  v5 = [(INImage *)self->_icon hash];
  v6 = v4 ^ v5 ^ [(INSpeakableString *)self->_descriptiveText hash];
  return v6 ^ [(NSArray *)self->_steps hash];
}

- (INShortcutOverview)initWithName:(id)name voiceCommand:(id)command icon:(id)icon descriptiveText:(id)text steps:(id)steps
{
  nameCopy = name;
  commandCopy = command;
  iconCopy = icon;
  textCopy = text;
  stepsCopy = steps;
  v29.receiver = self;
  v29.super_class = INShortcutOverview;
  v17 = [(INShortcutOverview *)&v29 init];
  if (v17)
  {
    v18 = [nameCopy copy];
    name = v17->_name;
    v17->_name = v18;

    v20 = [commandCopy copy];
    voiceCommand = v17->_voiceCommand;
    v17->_voiceCommand = v20;

    v22 = [iconCopy copy];
    icon = v17->_icon;
    v17->_icon = v22;

    v24 = [textCopy copy];
    descriptiveText = v17->_descriptiveText;
    v17->_descriptiveText = v24;

    v26 = [stepsCopy copy];
    steps = v17->_steps;
    v17->_steps = v26;
  }

  return v17;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"name"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"voiceCommand"];
    v14 = [decoderCopy decodeObjectOfClass:v12 from:v13];

    v15 = objc_opt_class();
    v16 = [fromCopy objectForKeyedSubscript:@"icon"];
    v17 = [decoderCopy decodeObjectOfClass:v15 from:v16];

    v18 = objc_opt_class();
    v19 = [fromCopy objectForKeyedSubscript:@"descriptiveText"];
    v20 = [decoderCopy decodeObjectOfClass:v18 from:v19];

    v21 = objc_opt_class();
    v22 = [fromCopy objectForKeyedSubscript:@"steps"];
    v23 = [decoderCopy decodeObjectsOfClass:v21 from:v22];

    v24 = [[self alloc] initWithName:v11 voiceCommand:v14 icon:v17 descriptiveText:v20 steps:v23];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end