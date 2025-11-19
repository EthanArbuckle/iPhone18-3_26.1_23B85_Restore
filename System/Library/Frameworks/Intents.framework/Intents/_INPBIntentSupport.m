@interface _INPBIntentSupport
- (BOOL)isEqual:(id)a3;
- (_INPBIntentSupport)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIntentsRestrictedWhileLocked:(id)a3;
- (void)addIntentsSupported:(id)a3;
- (void)addSupportedMediaCategories:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setIntentsRestrictedWhileLockeds:(id)a3;
- (void)setIntentsSupporteds:(id)a3;
- (void)setSupportedMediaCategories:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBIntentSupport

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_intentsRestrictedWhileLockeds count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = self->_intentsRestrictedWhileLockeds;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"intents_restricted_while_locked"];
  }

  if ([(NSArray *)self->_intentsSupporteds count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = self->_intentsSupporteds;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"intents_supported"];
  }

  if (self->_supportedMediaCategories)
  {
    v18 = [(_INPBIntentSupport *)self supportedMediaCategories];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"supported_media_categories"];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_intentsRestrictedWhileLockeds hash];
  v4 = [(NSArray *)self->_intentsSupporteds hash]^ v3;
  return v4 ^ [(NSArray *)self->_supportedMediaCategories hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBIntentSupport *)self intentsRestrictedWhileLockeds];
  v6 = [v4 intentsRestrictedWhileLockeds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBIntentSupport *)self intentsRestrictedWhileLockeds];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBIntentSupport *)self intentsRestrictedWhileLockeds];
    v10 = [v4 intentsRestrictedWhileLockeds];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentSupport *)self intentsSupporteds];
  v6 = [v4 intentsSupporteds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBIntentSupport *)self intentsSupporteds];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBIntentSupport *)self intentsSupporteds];
    v15 = [v4 intentsSupporteds];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentSupport *)self supportedMediaCategories];
  v6 = [v4 supportedMediaCategories];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBIntentSupport *)self supportedMediaCategories];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBIntentSupport *)self supportedMediaCategories];
    v20 = [v4 supportedMediaCategories];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBIntentSupport allocWithZone:](_INPBIntentSupport init];
  v6 = [(NSArray *)self->_intentsRestrictedWhileLockeds copyWithZone:a3];
  [(_INPBIntentSupport *)v5 setIntentsRestrictedWhileLockeds:v6];

  v7 = [(NSArray *)self->_intentsSupporteds copyWithZone:a3];
  [(_INPBIntentSupport *)v5 setIntentsSupporteds:v7];

  v8 = [(NSArray *)self->_supportedMediaCategories copyWithZone:a3];
  [(_INPBIntentSupport *)v5 setSupportedMediaCategories:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIntentSupport *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIntentSupport)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIntentSupport *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_intentsRestrictedWhileLockeds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_intentsSupporteds;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_supportedMediaCategories;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)addSupportedMediaCategories:(id)a3
{
  v4 = a3;
  supportedMediaCategories = self->_supportedMediaCategories;
  v8 = v4;
  if (!supportedMediaCategories)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_supportedMediaCategories;
    self->_supportedMediaCategories = v6;

    v4 = v8;
    supportedMediaCategories = self->_supportedMediaCategories;
  }

  [(NSArray *)supportedMediaCategories addObject:v4];
}

- (void)setSupportedMediaCategories:(id)a3
{
  v4 = [a3 mutableCopy];
  supportedMediaCategories = self->_supportedMediaCategories;
  self->_supportedMediaCategories = v4;

  MEMORY[0x1EEE66BB8](v4, supportedMediaCategories);
}

- (void)addIntentsSupported:(id)a3
{
  v4 = a3;
  intentsSupporteds = self->_intentsSupporteds;
  v8 = v4;
  if (!intentsSupporteds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentsSupporteds;
    self->_intentsSupporteds = v6;

    v4 = v8;
    intentsSupporteds = self->_intentsSupporteds;
  }

  [(NSArray *)intentsSupporteds addObject:v4];
}

- (void)setIntentsSupporteds:(id)a3
{
  v4 = [a3 mutableCopy];
  intentsSupporteds = self->_intentsSupporteds;
  self->_intentsSupporteds = v4;

  MEMORY[0x1EEE66BB8](v4, intentsSupporteds);
}

- (void)addIntentsRestrictedWhileLocked:(id)a3
{
  v4 = a3;
  intentsRestrictedWhileLockeds = self->_intentsRestrictedWhileLockeds;
  v8 = v4;
  if (!intentsRestrictedWhileLockeds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentsRestrictedWhileLockeds;
    self->_intentsRestrictedWhileLockeds = v6;

    v4 = v8;
    intentsRestrictedWhileLockeds = self->_intentsRestrictedWhileLockeds;
  }

  [(NSArray *)intentsRestrictedWhileLockeds addObject:v4];
}

- (void)setIntentsRestrictedWhileLockeds:(id)a3
{
  v4 = [a3 mutableCopy];
  intentsRestrictedWhileLockeds = self->_intentsRestrictedWhileLockeds;
  self->_intentsRestrictedWhileLockeds = v4;

  MEMORY[0x1EEE66BB8](v4, intentsRestrictedWhileLockeds);
}

@end