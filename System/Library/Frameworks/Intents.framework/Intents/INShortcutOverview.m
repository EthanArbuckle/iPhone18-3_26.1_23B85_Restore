@interface INShortcutOverview
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INShortcutOverview)initWithCoder:(id)a3;
- (INShortcutOverview)initWithName:(id)a3 voiceCommand:(id)a4 icon:(id)a5 descriptiveText:(id)a6 steps:(id)a7;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INShortcutOverview

- (void)_intents_updateContainerWithCache:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INShortcutOverview *)self icon];
  if (v5)
  {
    v6 = v5;
    v7 = [(INShortcutOverview *)self icon];
    v8 = [v7 _identifier];
    v9 = [v4 cacheableObjectForIdentifier:v8];

    if (v9)
    {
      v10 = [(INShortcutOverview *)self icon];
      v11 = [v10 _identifier];
      v12 = [v4 cacheableObjectForIdentifier:v11];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [(INShortcutOverview *)self icon];
        [v12 _imageSize];
        [v13 _setImageSize:?];
      }
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [(INShortcutOverview *)self steps];
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = [v19 _identifier];
        v21 = [v4 cacheableObjectForIdentifier:v20];

        if (v21)
        {
          v22 = [v19 _identifier];
          v23 = [v4 cacheableObjectForIdentifier:v22];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v23 _imageSize];
            [v19 _setImageSize:?];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(INShortcutOverview *)self icon];

  if (v4)
  {
    v5 = [(INShortcutOverview *)self icon];
    [v3 addObject:v5];
  }

  v6 = [(INShortcutOverview *)self steps];

  if (v6)
  {
    v7 = [(INShortcutOverview *)self steps];
    [v3 addObjectsFromArray:v7];
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
  v4 = name;
  if (!name)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v4;
  v23[0] = v4;
  v19 = @"voiceCommand";
  voiceCommand = self->_voiceCommand;
  v6 = voiceCommand;
  if (!voiceCommand)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v6;
  v20 = @"icon";
  icon = self->_icon;
  v8 = icon;
  if (!icon)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v8;
  v21 = @"descriptiveText";
  descriptiveText = self->_descriptiveText;
  v10 = descriptiveText;
  if (!descriptiveText)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v10;
  v22 = @"steps";
  steps = self->_steps;
  v12 = steps;
  if (!steps)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INShortcutOverview;
  v6 = [(INShortcutOverview *)&v11 description];
  v7 = [(INShortcutOverview *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_name];
  [v7 if_setObjectIfNonNil:v8 forKey:@"name"];

  v9 = [v6 encodeObject:self->_voiceCommand];
  [v7 if_setObjectIfNonNil:v9 forKey:@"voiceCommand"];

  v10 = [v6 encodeObject:self->_icon];
  [v7 if_setObjectIfNonNil:v10 forKey:@"icon"];

  v11 = [v6 encodeObject:self->_descriptiveText];
  [v7 if_setObjectIfNonNil:v11 forKey:@"descriptiveText"];

  v12 = [v6 encodeObject:self->_steps];

  [v7 if_setObjectIfNonNil:v12 forKey:@"steps"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_voiceCommand forKey:@"voiceCommand"];
  [v5 encodeObject:self->_icon forKey:@"icon"];
  [v5 encodeObject:self->_descriptiveText forKey:@"descriptiveText"];
  [v5 encodeObject:self->_steps forKey:@"steps"];
}

- (INShortcutOverview)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voiceCommand"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptiveText"];
  v9 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"steps"];

  v13 = [(INShortcutOverview *)self initWithName:v5 voiceCommand:v6 icon:v7 descriptiveText:v8 steps:v12];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INShortcutOverview)initWithName:(id)a3 voiceCommand:(id)a4 icon:(id)a5 descriptiveText:(id)a6 steps:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = INShortcutOverview;
  v17 = [(INShortcutOverview *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    name = v17->_name;
    v17->_name = v18;

    v20 = [v13 copy];
    voiceCommand = v17->_voiceCommand;
    v17->_voiceCommand = v20;

    v22 = [v14 copy];
    icon = v17->_icon;
    v17->_icon = v22;

    v24 = [v15 copy];
    descriptiveText = v17->_descriptiveText;
    v17->_descriptiveText = v24;

    v26 = [v16 copy];
    steps = v17->_steps;
    v17->_steps = v26;
  }

  return v17;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"name"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"voiceCommand"];
    v14 = [v7 decodeObjectOfClass:v12 from:v13];

    v15 = objc_opt_class();
    v16 = [v8 objectForKeyedSubscript:@"icon"];
    v17 = [v7 decodeObjectOfClass:v15 from:v16];

    v18 = objc_opt_class();
    v19 = [v8 objectForKeyedSubscript:@"descriptiveText"];
    v20 = [v7 decodeObjectOfClass:v18 from:v19];

    v21 = objc_opt_class();
    v22 = [v8 objectForKeyedSubscript:@"steps"];
    v23 = [v7 decodeObjectsOfClass:v21 from:v22];

    v24 = [[a1 alloc] initWithName:v11 voiceCommand:v14 icon:v17 descriptiveText:v20 steps:v23];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end