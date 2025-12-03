@interface _INPBDeleteHealthSampleIntent
- (BOOL)isEqual:(id)equal;
- (_INPBDeleteHealthSampleIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addSampleUuids:(id)uuids;
- (void)encodeWithCoder:(id)coder;
- (void)setSampleUuids:(id)uuids;
- (void)writeTo:(id)to;
@end

@implementation _INPBDeleteHealthSampleIntent

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBDeleteHealthSampleIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_sampleUuids count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"sampleUuids"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  intentMetadata = [(_INPBDeleteHealthSampleIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_11;
  }

  intentMetadata3 = [(_INPBDeleteHealthSampleIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBDeleteHealthSampleIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBDeleteHealthSampleIntent *)self sampleUuids];
  intentMetadata2 = [equalCopy sampleUuids];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    sampleUuids = [(_INPBDeleteHealthSampleIntent *)self sampleUuids];
    if (!sampleUuids)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = sampleUuids;
    sampleUuids2 = [(_INPBDeleteHealthSampleIntent *)self sampleUuids];
    sampleUuids3 = [equalCopy sampleUuids];
    v16 = [sampleUuids2 isEqual:sampleUuids3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBDeleteHealthSampleIntent allocWithZone:](_INPBDeleteHealthSampleIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBDeleteHealthSampleIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSArray *)self->_sampleUuids copyWithZone:zone];
  [(_INPBDeleteHealthSampleIntent *)v5 setSampleUuids:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDeleteHealthSampleIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDeleteHealthSampleIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDeleteHealthSampleIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  intentMetadata = [(_INPBDeleteHealthSampleIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBDeleteHealthSampleIntent *)self intentMetadata];
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

- (void)addSampleUuids:(id)uuids
{
  uuidsCopy = uuids;
  sampleUuids = self->_sampleUuids;
  v8 = uuidsCopy;
  if (!sampleUuids)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sampleUuids;
    self->_sampleUuids = array;

    uuidsCopy = v8;
    sampleUuids = self->_sampleUuids;
  }

  [(NSArray *)sampleUuids addObject:uuidsCopy];
}

- (void)setSampleUuids:(id)uuids
{
  v4 = [uuids mutableCopy];
  sampleUuids = self->_sampleUuids;
  self->_sampleUuids = v4;

  MEMORY[0x1EEE66BB8](v4, sampleUuids);
}

@end