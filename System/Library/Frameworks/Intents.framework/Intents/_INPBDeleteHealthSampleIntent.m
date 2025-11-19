@interface _INPBDeleteHealthSampleIntent
- (BOOL)isEqual:(id)a3;
- (_INPBDeleteHealthSampleIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)addSampleUuids:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setSampleUuids:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDeleteHealthSampleIntent

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBDeleteHealthSampleIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_sampleUuids count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_sampleUuids;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"sampleUuids"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBDeleteHealthSampleIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBDeleteHealthSampleIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBDeleteHealthSampleIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBDeleteHealthSampleIntent *)self sampleUuids];
  v6 = [v4 sampleUuids];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBDeleteHealthSampleIntent *)self sampleUuids];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBDeleteHealthSampleIntent *)self sampleUuids];
    v15 = [v4 sampleUuids];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBDeleteHealthSampleIntent allocWithZone:](_INPBDeleteHealthSampleIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBDeleteHealthSampleIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSArray *)self->_sampleUuids copyWithZone:a3];
  [(_INPBDeleteHealthSampleIntent *)v5 setSampleUuids:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDeleteHealthSampleIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDeleteHealthSampleIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDeleteHealthSampleIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBDeleteHealthSampleIntent *)self intentMetadata];

  if (v5)
  {
    v6 = [(_INPBDeleteHealthSampleIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_sampleUuids;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addSampleUuids:(id)a3
{
  v4 = a3;
  sampleUuids = self->_sampleUuids;
  v8 = v4;
  if (!sampleUuids)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_sampleUuids;
    self->_sampleUuids = v6;

    v4 = v8;
    sampleUuids = self->_sampleUuids;
  }

  [(NSArray *)sampleUuids addObject:v4];
}

- (void)setSampleUuids:(id)a3
{
  v4 = [a3 mutableCopy];
  sampleUuids = self->_sampleUuids;
  self->_sampleUuids = v4;

  MEMORY[0x1EEE66BB8](v4, sampleUuids);
}

@end