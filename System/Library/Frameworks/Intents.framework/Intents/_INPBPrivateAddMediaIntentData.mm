@interface _INPBPrivateAddMediaIntentData
- (BOOL)isEqual:(id)a3;
- (_INPBPrivateAddMediaIntentData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAudioSearchResults:(id)a3;
- (void)addInternalSignal:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioSearchResults:(id)a3;
- (void)setInternalSignals:(id)a3;
- (void)setPegasusMetaData:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPrivateAddMediaIntentData

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_audioSearchResults count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_audioSearchResults;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"audioSearchResults"];
  }

  if (self->_internalSignals)
  {
    v11 = [(_INPBPrivateAddMediaIntentData *)self internalSignals];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"internalSignal"];
  }

  if (self->_pegasusMetaData)
  {
    v13 = [(_INPBPrivateAddMediaIntentData *)self pegasusMetaData];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"pegasusMetaData"];
  }

  v15 = [(_INPBPrivateAddMediaIntentData *)self privateMediaIntentData];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"privateMediaIntentData"];

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_audioSearchResults hash];
  v4 = [(NSArray *)self->_internalSignals hash]^ v3;
  v5 = [(NSData *)self->_pegasusMetaData hash];
  return v4 ^ v5 ^ [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBPrivateAddMediaIntentData *)self audioSearchResults];
  v6 = [v4 audioSearchResults];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBPrivateAddMediaIntentData *)self audioSearchResults];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPrivateAddMediaIntentData *)self audioSearchResults];
    v10 = [v4 audioSearchResults];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBPrivateAddMediaIntentData *)self internalSignals];
  v6 = [v4 internalSignals];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBPrivateAddMediaIntentData *)self internalSignals];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBPrivateAddMediaIntentData *)self internalSignals];
    v15 = [v4 internalSignals];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBPrivateAddMediaIntentData *)self pegasusMetaData];
  v6 = [v4 pegasusMetaData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBPrivateAddMediaIntentData *)self pegasusMetaData];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBPrivateAddMediaIntentData *)self pegasusMetaData];
    v20 = [v4 pegasusMetaData];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBPrivateAddMediaIntentData *)self privateMediaIntentData];
  v6 = [v4 privateMediaIntentData];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBPrivateAddMediaIntentData *)self privateMediaIntentData];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBPrivateAddMediaIntentData *)self privateMediaIntentData];
    v25 = [v4 privateMediaIntentData];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPrivateAddMediaIntentData allocWithZone:](_INPBPrivateAddMediaIntentData init];
  v6 = [(NSArray *)self->_audioSearchResults copyWithZone:a3];
  [(_INPBPrivateAddMediaIntentData *)v5 setAudioSearchResults:v6];

  v7 = [(NSArray *)self->_internalSignals copyWithZone:a3];
  [(_INPBPrivateAddMediaIntentData *)v5 setInternalSignals:v7];

  v8 = [(NSData *)self->_pegasusMetaData copyWithZone:a3];
  [(_INPBPrivateAddMediaIntentData *)v5 setPegasusMetaData:v8];

  v9 = [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData copyWithZone:a3];
  [(_INPBPrivateAddMediaIntentData *)v5 setPrivateMediaIntentData:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPrivateAddMediaIntentData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPrivateAddMediaIntentData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPrivateAddMediaIntentData *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_audioSearchResults;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = self->_internalSignals;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v13);
  }

  v17 = [(_INPBPrivateAddMediaIntentData *)self pegasusMetaData];

  if (v17)
  {
    pegasusMetaData = self->_pegasusMetaData;
    PBDataWriterWriteDataField();
  }

  v19 = [(_INPBPrivateAddMediaIntentData *)self privateMediaIntentData];

  if (v19)
  {
    v20 = [(_INPBPrivateAddMediaIntentData *)self privateMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setPegasusMetaData:(id)a3
{
  v4 = [a3 copy];
  pegasusMetaData = self->_pegasusMetaData;
  self->_pegasusMetaData = v4;

  MEMORY[0x1EEE66BB8](v4, pegasusMetaData);
}

- (void)addInternalSignal:(id)a3
{
  v4 = a3;
  internalSignals = self->_internalSignals;
  v8 = v4;
  if (!internalSignals)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_internalSignals;
    self->_internalSignals = v6;

    v4 = v8;
    internalSignals = self->_internalSignals;
  }

  [(NSArray *)internalSignals addObject:v4];
}

- (void)setInternalSignals:(id)a3
{
  v4 = [a3 mutableCopy];
  internalSignals = self->_internalSignals;
  self->_internalSignals = v4;

  MEMORY[0x1EEE66BB8](v4, internalSignals);
}

- (void)addAudioSearchResults:(id)a3
{
  v4 = a3;
  audioSearchResults = self->_audioSearchResults;
  v8 = v4;
  if (!audioSearchResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioSearchResults;
    self->_audioSearchResults = v6;

    v4 = v8;
    audioSearchResults = self->_audioSearchResults;
  }

  [(NSArray *)audioSearchResults addObject:v4];
}

- (void)setAudioSearchResults:(id)a3
{
  v4 = [a3 mutableCopy];
  audioSearchResults = self->_audioSearchResults;
  self->_audioSearchResults = v4;

  MEMORY[0x1EEE66BB8](v4, audioSearchResults);
}

@end