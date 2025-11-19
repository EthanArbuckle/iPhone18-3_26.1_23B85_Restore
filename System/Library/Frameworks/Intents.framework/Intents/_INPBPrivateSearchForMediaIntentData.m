@interface _INPBPrivateSearchForMediaIntentData
- (BOOL)isEqual:(id)a3;
- (_INPBPrivateSearchForMediaIntentData)initWithCoder:(id)a3;
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

@implementation _INPBPrivateSearchForMediaIntentData

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPrivateSearchForMediaIntentData *)self hasAppInferred])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateSearchForMediaIntentData appInferred](self, "appInferred")}];
    [v3 setObject:v4 forKeyedSubscript:@"appInferred"];
  }

  if ([(NSArray *)self->_audioSearchResults count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = self->_audioSearchResults;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKeyedSubscript:@"audioSearchResults"];
  }

  if (self->_internalSignals)
  {
    v12 = [(_INPBPrivateSearchForMediaIntentData *)self internalSignals];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"internalSignal"];
  }

  if (self->_pegasusMetaData)
  {
    v14 = [(_INPBPrivateSearchForMediaIntentData *)self pegasusMetaData];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"pegasusMetaData"];
  }

  v16 = [(_INPBPrivateSearchForMediaIntentData *)self privateMediaIntentData];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"privateMediaIntentData"];

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBPrivateSearchForMediaIntentData *)self hasAppInferred])
  {
    v3 = 2654435761 * self->_appInferred;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_audioSearchResults hash]^ v3;
  v5 = [(NSArray *)self->_internalSignals hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_pegasusMetaData hash];
  return v6 ^ [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = [(_INPBPrivateSearchForMediaIntentData *)self hasAppInferred];
  if (v5 != [v4 hasAppInferred])
  {
    goto LABEL_26;
  }

  if ([(_INPBPrivateSearchForMediaIntentData *)self hasAppInferred])
  {
    if ([v4 hasAppInferred])
    {
      appInferred = self->_appInferred;
      if (appInferred != [v4 appInferred])
      {
        goto LABEL_26;
      }
    }
  }

  v7 = [(_INPBPrivateSearchForMediaIntentData *)self audioSearchResults];
  v8 = [v4 audioSearchResults];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v9 = [(_INPBPrivateSearchForMediaIntentData *)self audioSearchResults];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBPrivateSearchForMediaIntentData *)self audioSearchResults];
    v12 = [v4 audioSearchResults];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(_INPBPrivateSearchForMediaIntentData *)self internalSignals];
  v8 = [v4 internalSignals];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v14 = [(_INPBPrivateSearchForMediaIntentData *)self internalSignals];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBPrivateSearchForMediaIntentData *)self internalSignals];
    v17 = [v4 internalSignals];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(_INPBPrivateSearchForMediaIntentData *)self pegasusMetaData];
  v8 = [v4 pegasusMetaData];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v19 = [(_INPBPrivateSearchForMediaIntentData *)self pegasusMetaData];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBPrivateSearchForMediaIntentData *)self pegasusMetaData];
    v22 = [v4 pegasusMetaData];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(_INPBPrivateSearchForMediaIntentData *)self privateMediaIntentData];
  v8 = [v4 privateMediaIntentData];
  if ((v7 != 0) != (v8 == 0))
  {
    v24 = [(_INPBPrivateSearchForMediaIntentData *)self privateMediaIntentData];
    if (!v24)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = v24;
    v26 = [(_INPBPrivateSearchForMediaIntentData *)self privateMediaIntentData];
    v27 = [v4 privateMediaIntentData];
    v28 = [v26 isEqual:v27];

    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPrivateSearchForMediaIntentData allocWithZone:](_INPBPrivateSearchForMediaIntentData init];
  if ([(_INPBPrivateSearchForMediaIntentData *)self hasAppInferred])
  {
    [(_INPBPrivateSearchForMediaIntentData *)v5 setAppInferred:[(_INPBPrivateSearchForMediaIntentData *)self appInferred]];
  }

  v6 = [(NSArray *)self->_audioSearchResults copyWithZone:a3];
  [(_INPBPrivateSearchForMediaIntentData *)v5 setAudioSearchResults:v6];

  v7 = [(NSArray *)self->_internalSignals copyWithZone:a3];
  [(_INPBPrivateSearchForMediaIntentData *)v5 setInternalSignals:v7];

  v8 = [(NSData *)self->_pegasusMetaData copyWithZone:a3];
  [(_INPBPrivateSearchForMediaIntentData *)v5 setPegasusMetaData:v8];

  v9 = [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData copyWithZone:a3];
  [(_INPBPrivateSearchForMediaIntentData *)v5 setPrivateMediaIntentData:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPrivateSearchForMediaIntentData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPrivateSearchForMediaIntentData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPrivateSearchForMediaIntentData *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBPrivateSearchForMediaIntentData *)self hasAppInferred])
  {
    appInferred = self->_appInferred;
    PBDataWriterWriteBOOLField();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_audioSearchResults;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = self->_internalSignals;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  v18 = [(_INPBPrivateSearchForMediaIntentData *)self pegasusMetaData];

  if (v18)
  {
    pegasusMetaData = self->_pegasusMetaData;
    PBDataWriterWriteDataField();
  }

  v20 = [(_INPBPrivateSearchForMediaIntentData *)self privateMediaIntentData];

  if (v20)
  {
    v21 = [(_INPBPrivateSearchForMediaIntentData *)self privateMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x1E69E9840];
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