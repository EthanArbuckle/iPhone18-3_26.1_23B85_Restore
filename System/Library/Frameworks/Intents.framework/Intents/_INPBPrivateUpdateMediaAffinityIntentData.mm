@interface _INPBPrivateUpdateMediaAffinityIntentData
- (BOOL)isEqual:(id)equal;
- (_INPBPrivateUpdateMediaAffinityIntentData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInternalSignal:(id)signal;
- (void)encodeWithCoder:(id)coder;
- (void)setInternalSignals:(id)signals;
- (void)setPegasusMetaData:(id)data;
- (void)writeTo:(id)to;
@end

@implementation _INPBPrivateUpdateMediaAffinityIntentData

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_internalSignals)
  {
    internalSignals = [(_INPBPrivateUpdateMediaAffinityIntentData *)self internalSignals];
    v5 = [internalSignals copy];
    [dictionary setObject:v5 forKeyedSubscript:@"internalSignal"];
  }

  if (self->_pegasusMetaData)
  {
    pegasusMetaData = [(_INPBPrivateUpdateMediaAffinityIntentData *)self pegasusMetaData];
    v7 = [pegasusMetaData copy];
    [dictionary setObject:v7 forKeyedSubscript:@"pegasusMetaData"];
  }

  privateMediaIntentData = [(_INPBPrivateUpdateMediaAffinityIntentData *)self privateMediaIntentData];
  dictionaryRepresentation = [privateMediaIntentData dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"privateMediaIntentData"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_internalSignals hash];
  v4 = [(NSData *)self->_pegasusMetaData hash]^ v3;
  return v4 ^ [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  internalSignals = [(_INPBPrivateUpdateMediaAffinityIntentData *)self internalSignals];
  internalSignals2 = [equalCopy internalSignals];
  if ((internalSignals != 0) == (internalSignals2 == 0))
  {
    goto LABEL_16;
  }

  internalSignals3 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self internalSignals];
  if (internalSignals3)
  {
    v8 = internalSignals3;
    internalSignals4 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self internalSignals];
    internalSignals5 = [equalCopy internalSignals];
    v11 = [internalSignals4 isEqual:internalSignals5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  internalSignals = [(_INPBPrivateUpdateMediaAffinityIntentData *)self pegasusMetaData];
  internalSignals2 = [equalCopy pegasusMetaData];
  if ((internalSignals != 0) == (internalSignals2 == 0))
  {
    goto LABEL_16;
  }

  pegasusMetaData = [(_INPBPrivateUpdateMediaAffinityIntentData *)self pegasusMetaData];
  if (pegasusMetaData)
  {
    v13 = pegasusMetaData;
    pegasusMetaData2 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self pegasusMetaData];
    pegasusMetaData3 = [equalCopy pegasusMetaData];
    v16 = [pegasusMetaData2 isEqual:pegasusMetaData3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  internalSignals = [(_INPBPrivateUpdateMediaAffinityIntentData *)self privateMediaIntentData];
  internalSignals2 = [equalCopy privateMediaIntentData];
  if ((internalSignals != 0) != (internalSignals2 == 0))
  {
    privateMediaIntentData = [(_INPBPrivateUpdateMediaAffinityIntentData *)self privateMediaIntentData];
    if (!privateMediaIntentData)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = privateMediaIntentData;
    privateMediaIntentData2 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self privateMediaIntentData];
    privateMediaIntentData3 = [equalCopy privateMediaIntentData];
    v21 = [privateMediaIntentData2 isEqual:privateMediaIntentData3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPrivateUpdateMediaAffinityIntentData allocWithZone:](_INPBPrivateUpdateMediaAffinityIntentData init];
  v6 = [(NSArray *)self->_internalSignals copyWithZone:zone];
  [(_INPBPrivateUpdateMediaAffinityIntentData *)v5 setInternalSignals:v6];

  v7 = [(NSData *)self->_pegasusMetaData copyWithZone:zone];
  [(_INPBPrivateUpdateMediaAffinityIntentData *)v5 setPegasusMetaData:v7];

  v8 = [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData copyWithZone:zone];
  [(_INPBPrivateUpdateMediaAffinityIntentData *)v5 setPrivateMediaIntentData:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPrivateUpdateMediaAffinityIntentData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPrivateUpdateMediaAffinityIntentData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPrivateUpdateMediaAffinityIntentData *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_internalSignals;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  pegasusMetaData = [(_INPBPrivateUpdateMediaAffinityIntentData *)self pegasusMetaData];

  if (pegasusMetaData)
  {
    pegasusMetaData = self->_pegasusMetaData;
    PBDataWriterWriteDataField();
  }

  privateMediaIntentData = [(_INPBPrivateUpdateMediaAffinityIntentData *)self privateMediaIntentData];

  if (privateMediaIntentData)
  {
    privateMediaIntentData2 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self privateMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  v15 = *MEMORY[0x1E69E9840];
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

@end