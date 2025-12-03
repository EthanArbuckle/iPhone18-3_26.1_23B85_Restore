@interface _INPBPrivateSearchForMediaIntentData
- (BOOL)isEqual:(id)equal;
- (_INPBPrivateSearchForMediaIntentData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAudioSearchResults:(id)results;
- (void)addInternalSignal:(id)signal;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioSearchResults:(id)results;
- (void)setInternalSignals:(id)signals;
- (void)setPegasusMetaData:(id)data;
- (void)writeTo:(id)to;
@end

@implementation _INPBPrivateSearchForMediaIntentData

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPrivateSearchForMediaIntentData *)self hasAppInferred])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateSearchForMediaIntentData appInferred](self, "appInferred")}];
    [dictionary setObject:v4 forKeyedSubscript:@"appInferred"];
  }

  if ([(NSArray *)self->_audioSearchResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    [dictionary setObject:array forKeyedSubscript:@"audioSearchResults"];
  }

  if (self->_internalSignals)
  {
    internalSignals = [(_INPBPrivateSearchForMediaIntentData *)self internalSignals];
    v13 = [internalSignals copy];
    [dictionary setObject:v13 forKeyedSubscript:@"internalSignal"];
  }

  if (self->_pegasusMetaData)
  {
    pegasusMetaData = [(_INPBPrivateSearchForMediaIntentData *)self pegasusMetaData];
    v15 = [pegasusMetaData copy];
    [dictionary setObject:v15 forKeyedSubscript:@"pegasusMetaData"];
  }

  privateMediaIntentData = [(_INPBPrivateSearchForMediaIntentData *)self privateMediaIntentData];
  dictionaryRepresentation2 = [privateMediaIntentData dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"privateMediaIntentData"];

  v18 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  hasAppInferred = [(_INPBPrivateSearchForMediaIntentData *)self hasAppInferred];
  if (hasAppInferred != [equalCopy hasAppInferred])
  {
    goto LABEL_26;
  }

  if ([(_INPBPrivateSearchForMediaIntentData *)self hasAppInferred])
  {
    if ([equalCopy hasAppInferred])
    {
      appInferred = self->_appInferred;
      if (appInferred != [equalCopy appInferred])
      {
        goto LABEL_26;
      }
    }
  }

  audioSearchResults = [(_INPBPrivateSearchForMediaIntentData *)self audioSearchResults];
  audioSearchResults2 = [equalCopy audioSearchResults];
  if ((audioSearchResults != 0) == (audioSearchResults2 == 0))
  {
    goto LABEL_25;
  }

  audioSearchResults3 = [(_INPBPrivateSearchForMediaIntentData *)self audioSearchResults];
  if (audioSearchResults3)
  {
    v10 = audioSearchResults3;
    audioSearchResults4 = [(_INPBPrivateSearchForMediaIntentData *)self audioSearchResults];
    audioSearchResults5 = [equalCopy audioSearchResults];
    v13 = [audioSearchResults4 isEqual:audioSearchResults5];

    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  audioSearchResults = [(_INPBPrivateSearchForMediaIntentData *)self internalSignals];
  audioSearchResults2 = [equalCopy internalSignals];
  if ((audioSearchResults != 0) == (audioSearchResults2 == 0))
  {
    goto LABEL_25;
  }

  internalSignals = [(_INPBPrivateSearchForMediaIntentData *)self internalSignals];
  if (internalSignals)
  {
    v15 = internalSignals;
    internalSignals2 = [(_INPBPrivateSearchForMediaIntentData *)self internalSignals];
    internalSignals3 = [equalCopy internalSignals];
    v18 = [internalSignals2 isEqual:internalSignals3];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  audioSearchResults = [(_INPBPrivateSearchForMediaIntentData *)self pegasusMetaData];
  audioSearchResults2 = [equalCopy pegasusMetaData];
  if ((audioSearchResults != 0) == (audioSearchResults2 == 0))
  {
    goto LABEL_25;
  }

  pegasusMetaData = [(_INPBPrivateSearchForMediaIntentData *)self pegasusMetaData];
  if (pegasusMetaData)
  {
    v20 = pegasusMetaData;
    pegasusMetaData2 = [(_INPBPrivateSearchForMediaIntentData *)self pegasusMetaData];
    pegasusMetaData3 = [equalCopy pegasusMetaData];
    v23 = [pegasusMetaData2 isEqual:pegasusMetaData3];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  audioSearchResults = [(_INPBPrivateSearchForMediaIntentData *)self privateMediaIntentData];
  audioSearchResults2 = [equalCopy privateMediaIntentData];
  if ((audioSearchResults != 0) != (audioSearchResults2 == 0))
  {
    privateMediaIntentData = [(_INPBPrivateSearchForMediaIntentData *)self privateMediaIntentData];
    if (!privateMediaIntentData)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = privateMediaIntentData;
    privateMediaIntentData2 = [(_INPBPrivateSearchForMediaIntentData *)self privateMediaIntentData];
    privateMediaIntentData3 = [equalCopy privateMediaIntentData];
    v28 = [privateMediaIntentData2 isEqual:privateMediaIntentData3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPrivateSearchForMediaIntentData allocWithZone:](_INPBPrivateSearchForMediaIntentData init];
  if ([(_INPBPrivateSearchForMediaIntentData *)self hasAppInferred])
  {
    [(_INPBPrivateSearchForMediaIntentData *)v5 setAppInferred:[(_INPBPrivateSearchForMediaIntentData *)self appInferred]];
  }

  v6 = [(NSArray *)self->_audioSearchResults copyWithZone:zone];
  [(_INPBPrivateSearchForMediaIntentData *)v5 setAudioSearchResults:v6];

  v7 = [(NSArray *)self->_internalSignals copyWithZone:zone];
  [(_INPBPrivateSearchForMediaIntentData *)v5 setInternalSignals:v7];

  v8 = [(NSData *)self->_pegasusMetaData copyWithZone:zone];
  [(_INPBPrivateSearchForMediaIntentData *)v5 setPegasusMetaData:v8];

  v9 = [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData copyWithZone:zone];
  [(_INPBPrivateSearchForMediaIntentData *)v5 setPrivateMediaIntentData:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPrivateSearchForMediaIntentData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPrivateSearchForMediaIntentData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPrivateSearchForMediaIntentData *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v33 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  pegasusMetaData = [(_INPBPrivateSearchForMediaIntentData *)self pegasusMetaData];

  if (pegasusMetaData)
  {
    pegasusMetaData = self->_pegasusMetaData;
    PBDataWriterWriteDataField();
  }

  privateMediaIntentData = [(_INPBPrivateSearchForMediaIntentData *)self privateMediaIntentData];

  if (privateMediaIntentData)
  {
    privateMediaIntentData2 = [(_INPBPrivateSearchForMediaIntentData *)self privateMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setPegasusMetaData:(id)data
{
  v4 = [data copy];
  pegasusMetaData = self->_pegasusMetaData;
  self->_pegasusMetaData = v4;

  MEMORY[0x1EEE66BB8](v4, pegasusMetaData);
}

- (void)addInternalSignal:(id)signal
{
  signalCopy = signal;
  internalSignals = self->_internalSignals;
  v8 = signalCopy;
  if (!internalSignals)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_internalSignals;
    self->_internalSignals = array;

    signalCopy = v8;
    internalSignals = self->_internalSignals;
  }

  [(NSArray *)internalSignals addObject:signalCopy];
}

- (void)setInternalSignals:(id)signals
{
  v4 = [signals mutableCopy];
  internalSignals = self->_internalSignals;
  self->_internalSignals = v4;

  MEMORY[0x1EEE66BB8](v4, internalSignals);
}

- (void)addAudioSearchResults:(id)results
{
  resultsCopy = results;
  audioSearchResults = self->_audioSearchResults;
  v8 = resultsCopy;
  if (!audioSearchResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioSearchResults;
    self->_audioSearchResults = array;

    resultsCopy = v8;
    audioSearchResults = self->_audioSearchResults;
  }

  [(NSArray *)audioSearchResults addObject:resultsCopy];
}

- (void)setAudioSearchResults:(id)results
{
  v4 = [results mutableCopy];
  audioSearchResults = self->_audioSearchResults;
  self->_audioSearchResults = v4;

  MEMORY[0x1EEE66BB8](v4, audioSearchResults);
}

@end