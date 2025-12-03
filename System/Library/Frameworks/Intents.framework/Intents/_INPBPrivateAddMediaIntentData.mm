@interface _INPBPrivateAddMediaIntentData
- (BOOL)isEqual:(id)equal;
- (_INPBPrivateAddMediaIntentData)initWithCoder:(id)coder;
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

@implementation _INPBPrivateAddMediaIntentData

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_audioSearchResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"audioSearchResults"];
  }

  if (self->_internalSignals)
  {
    internalSignals = [(_INPBPrivateAddMediaIntentData *)self internalSignals];
    v12 = [internalSignals copy];
    [dictionary setObject:v12 forKeyedSubscript:@"internalSignal"];
  }

  if (self->_pegasusMetaData)
  {
    pegasusMetaData = [(_INPBPrivateAddMediaIntentData *)self pegasusMetaData];
    v14 = [pegasusMetaData copy];
    [dictionary setObject:v14 forKeyedSubscript:@"pegasusMetaData"];
  }

  privateMediaIntentData = [(_INPBPrivateAddMediaIntentData *)self privateMediaIntentData];
  dictionaryRepresentation2 = [privateMediaIntentData dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"privateMediaIntentData"];

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_audioSearchResults hash];
  v4 = [(NSArray *)self->_internalSignals hash]^ v3;
  v5 = [(NSData *)self->_pegasusMetaData hash];
  return v4 ^ v5 ^ [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  audioSearchResults = [(_INPBPrivateAddMediaIntentData *)self audioSearchResults];
  audioSearchResults2 = [equalCopy audioSearchResults];
  if ((audioSearchResults != 0) == (audioSearchResults2 == 0))
  {
    goto LABEL_21;
  }

  audioSearchResults3 = [(_INPBPrivateAddMediaIntentData *)self audioSearchResults];
  if (audioSearchResults3)
  {
    v8 = audioSearchResults3;
    audioSearchResults4 = [(_INPBPrivateAddMediaIntentData *)self audioSearchResults];
    audioSearchResults5 = [equalCopy audioSearchResults];
    v11 = [audioSearchResults4 isEqual:audioSearchResults5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  audioSearchResults = [(_INPBPrivateAddMediaIntentData *)self internalSignals];
  audioSearchResults2 = [equalCopy internalSignals];
  if ((audioSearchResults != 0) == (audioSearchResults2 == 0))
  {
    goto LABEL_21;
  }

  internalSignals = [(_INPBPrivateAddMediaIntentData *)self internalSignals];
  if (internalSignals)
  {
    v13 = internalSignals;
    internalSignals2 = [(_INPBPrivateAddMediaIntentData *)self internalSignals];
    internalSignals3 = [equalCopy internalSignals];
    v16 = [internalSignals2 isEqual:internalSignals3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  audioSearchResults = [(_INPBPrivateAddMediaIntentData *)self pegasusMetaData];
  audioSearchResults2 = [equalCopy pegasusMetaData];
  if ((audioSearchResults != 0) == (audioSearchResults2 == 0))
  {
    goto LABEL_21;
  }

  pegasusMetaData = [(_INPBPrivateAddMediaIntentData *)self pegasusMetaData];
  if (pegasusMetaData)
  {
    v18 = pegasusMetaData;
    pegasusMetaData2 = [(_INPBPrivateAddMediaIntentData *)self pegasusMetaData];
    pegasusMetaData3 = [equalCopy pegasusMetaData];
    v21 = [pegasusMetaData2 isEqual:pegasusMetaData3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  audioSearchResults = [(_INPBPrivateAddMediaIntentData *)self privateMediaIntentData];
  audioSearchResults2 = [equalCopy privateMediaIntentData];
  if ((audioSearchResults != 0) != (audioSearchResults2 == 0))
  {
    privateMediaIntentData = [(_INPBPrivateAddMediaIntentData *)self privateMediaIntentData];
    if (!privateMediaIntentData)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = privateMediaIntentData;
    privateMediaIntentData2 = [(_INPBPrivateAddMediaIntentData *)self privateMediaIntentData];
    privateMediaIntentData3 = [equalCopy privateMediaIntentData];
    v26 = [privateMediaIntentData2 isEqual:privateMediaIntentData3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPrivateAddMediaIntentData allocWithZone:](_INPBPrivateAddMediaIntentData init];
  v6 = [(NSArray *)self->_audioSearchResults copyWithZone:zone];
  [(_INPBPrivateAddMediaIntentData *)v5 setAudioSearchResults:v6];

  v7 = [(NSArray *)self->_internalSignals copyWithZone:zone];
  [(_INPBPrivateAddMediaIntentData *)v5 setInternalSignals:v7];

  v8 = [(NSData *)self->_pegasusMetaData copyWithZone:zone];
  [(_INPBPrivateAddMediaIntentData *)v5 setPegasusMetaData:v8];

  v9 = [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData copyWithZone:zone];
  [(_INPBPrivateAddMediaIntentData *)v5 setPrivateMediaIntentData:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPrivateAddMediaIntentData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPrivateAddMediaIntentData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPrivateAddMediaIntentData *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v32 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  pegasusMetaData = [(_INPBPrivateAddMediaIntentData *)self pegasusMetaData];

  if (pegasusMetaData)
  {
    pegasusMetaData = self->_pegasusMetaData;
    PBDataWriterWriteDataField();
  }

  privateMediaIntentData = [(_INPBPrivateAddMediaIntentData *)self privateMediaIntentData];

  if (privateMediaIntentData)
  {
    privateMediaIntentData2 = [(_INPBPrivateAddMediaIntentData *)self privateMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  v21 = *MEMORY[0x1E69E9840];
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