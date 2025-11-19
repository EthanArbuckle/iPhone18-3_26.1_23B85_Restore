@interface _INPBShortcutOverview
- (BOOL)isEqual:(id)a3;
- (_INPBShortcutOverview)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSteps:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setSteps:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBShortcutOverview

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBShortcutOverview *)self descriptiveText];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"descriptiveText"];

  v6 = [(_INPBShortcutOverview *)self icon];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"icon"];

  v8 = [(_INPBShortcutOverview *)self name];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"name"];

  if ([(NSArray *)self->_steps count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = self->_steps;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"steps"];
  }

  v17 = [(_INPBShortcutOverview *)self voiceCommand];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"voiceCommand"];

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_descriptiveText hash];
  v4 = [(_INPBImageValue *)self->_icon hash]^ v3;
  v5 = [(_INPBDataString *)self->_name hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_steps hash];
  return v6 ^ [(_INPBDataString *)self->_voiceCommand hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_INPBShortcutOverview *)self descriptiveText];
  v6 = [v4 descriptiveText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_INPBShortcutOverview *)self descriptiveText];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBShortcutOverview *)self descriptiveText];
    v10 = [v4 descriptiveText];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBShortcutOverview *)self icon];
  v6 = [v4 icon];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_INPBShortcutOverview *)self icon];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBShortcutOverview *)self icon];
    v15 = [v4 icon];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBShortcutOverview *)self name];
  v6 = [v4 name];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_INPBShortcutOverview *)self name];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBShortcutOverview *)self name];
    v20 = [v4 name];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBShortcutOverview *)self steps];
  v6 = [v4 steps];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_INPBShortcutOverview *)self steps];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBShortcutOverview *)self steps];
    v25 = [v4 steps];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBShortcutOverview *)self voiceCommand];
  v6 = [v4 voiceCommand];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBShortcutOverview *)self voiceCommand];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_INPBShortcutOverview *)self voiceCommand];
    v30 = [v4 voiceCommand];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBShortcutOverview allocWithZone:](_INPBShortcutOverview init];
  v6 = [(_INPBDataString *)self->_descriptiveText copyWithZone:a3];
  [(_INPBShortcutOverview *)v5 setDescriptiveText:v6];

  v7 = [(_INPBImageValue *)self->_icon copyWithZone:a3];
  [(_INPBShortcutOverview *)v5 setIcon:v7];

  v8 = [(_INPBDataString *)self->_name copyWithZone:a3];
  [(_INPBShortcutOverview *)v5 setName:v8];

  v9 = [(NSArray *)self->_steps copyWithZone:a3];
  [(_INPBShortcutOverview *)v5 setSteps:v9];

  v10 = [(_INPBDataString *)self->_voiceCommand copyWithZone:a3];
  [(_INPBShortcutOverview *)v5 setVoiceCommand:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBShortcutOverview *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBShortcutOverview)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBShortcutOverview *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBShortcutOverview *)self descriptiveText];

  if (v5)
  {
    v6 = [(_INPBShortcutOverview *)self descriptiveText];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBShortcutOverview *)self icon];

  if (v7)
  {
    v8 = [(_INPBShortcutOverview *)self icon];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBShortcutOverview *)self name];

  if (v9)
  {
    v10 = [(_INPBShortcutOverview *)self name];
    PBDataWriterWriteSubmessage();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_steps;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [(_INPBShortcutOverview *)self voiceCommand];

  if (v17)
  {
    v18 = [(_INPBShortcutOverview *)self voiceCommand];
    PBDataWriterWriteSubmessage();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)addSteps:(id)a3
{
  v4 = a3;
  steps = self->_steps;
  v8 = v4;
  if (!steps)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_steps;
    self->_steps = v6;

    v4 = v8;
    steps = self->_steps;
  }

  [(NSArray *)steps addObject:v4];
}

- (void)setSteps:(id)a3
{
  v4 = [a3 mutableCopy];
  steps = self->_steps;
  self->_steps = v4;

  MEMORY[0x1EEE66BB8](v4, steps);
}

@end