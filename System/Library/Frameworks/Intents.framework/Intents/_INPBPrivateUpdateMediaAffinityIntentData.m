@interface _INPBPrivateUpdateMediaAffinityIntentData
- (BOOL)isEqual:(id)a3;
- (_INPBPrivateUpdateMediaAffinityIntentData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInternalSignal:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setInternalSignals:(id)a3;
- (void)setPegasusMetaData:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPrivateUpdateMediaAffinityIntentData

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_internalSignals)
  {
    v4 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self internalSignals];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"internalSignal"];
  }

  if (self->_pegasusMetaData)
  {
    v6 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self pegasusMetaData];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"pegasusMetaData"];
  }

  v8 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self privateMediaIntentData];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"privateMediaIntentData"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_internalSignals hash];
  v4 = [(NSData *)self->_pegasusMetaData hash]^ v3;
  return v4 ^ [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self internalSignals];
  v6 = [v4 internalSignals];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self internalSignals];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self internalSignals];
    v10 = [v4 internalSignals];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self pegasusMetaData];
  v6 = [v4 pegasusMetaData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self pegasusMetaData];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self pegasusMetaData];
    v15 = [v4 pegasusMetaData];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self privateMediaIntentData];
  v6 = [v4 privateMediaIntentData];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self privateMediaIntentData];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self privateMediaIntentData];
    v20 = [v4 privateMediaIntentData];
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
  v5 = [+[_INPBPrivateUpdateMediaAffinityIntentData allocWithZone:](_INPBPrivateUpdateMediaAffinityIntentData init];
  v6 = [(NSArray *)self->_internalSignals copyWithZone:a3];
  [(_INPBPrivateUpdateMediaAffinityIntentData *)v5 setInternalSignals:v6];

  v7 = [(NSData *)self->_pegasusMetaData copyWithZone:a3];
  [(_INPBPrivateUpdateMediaAffinityIntentData *)v5 setPegasusMetaData:v7];

  v8 = [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData copyWithZone:a3];
  [(_INPBPrivateUpdateMediaAffinityIntentData *)v5 setPrivateMediaIntentData:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPrivateUpdateMediaAffinityIntentData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPrivateUpdateMediaAffinityIntentData *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self pegasusMetaData];

  if (v11)
  {
    pegasusMetaData = self->_pegasusMetaData;
    PBDataWriterWriteDataField();
  }

  v13 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self privateMediaIntentData];

  if (v13)
  {
    v14 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self privateMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  v15 = *MEMORY[0x1E69E9840];
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

@end