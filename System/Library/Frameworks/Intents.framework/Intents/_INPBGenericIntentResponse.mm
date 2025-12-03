@interface _INPBGenericIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBGenericIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addProperties:(id)properties;
- (void)encodeWithCoder:(id)coder;
- (void)setProperties:(id)properties;
- (void)writeTo:(id)to;
@end

@implementation _INPBGenericIntentResponse

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  metadata = [(_INPBGenericIntentResponse *)self metadata];
  dictionaryRepresentation = [metadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"metadata"];

  if ([(NSArray *)self->_properties count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_properties;
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

    [dictionary setObject:array forKeyedSubscript:@"properties"];
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

  metadata = [(_INPBGenericIntentResponse *)self metadata];
  metadata2 = [equalCopy metadata];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_11;
  }

  metadata3 = [(_INPBGenericIntentResponse *)self metadata];
  if (metadata3)
  {
    v8 = metadata3;
    metadata4 = [(_INPBGenericIntentResponse *)self metadata];
    metadata5 = [equalCopy metadata];
    v11 = [metadata4 isEqual:metadata5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  metadata = [(_INPBGenericIntentResponse *)self properties];
  metadata2 = [equalCopy properties];
  if ((metadata != 0) != (metadata2 == 0))
  {
    properties = [(_INPBGenericIntentResponse *)self properties];
    if (!properties)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = properties;
    properties2 = [(_INPBGenericIntentResponse *)self properties];
    properties3 = [equalCopy properties];
    v16 = [properties2 isEqual:properties3];

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
  v5 = [+[_INPBGenericIntentResponse allocWithZone:](_INPBGenericIntentResponse init];
  v6 = [(_INPBIntentMetadata *)self->_metadata copyWithZone:zone];
  [(_INPBGenericIntentResponse *)v5 setMetadata:v6];

  v7 = [(NSArray *)self->_properties copyWithZone:zone];
  [(_INPBGenericIntentResponse *)v5 setProperties:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGenericIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGenericIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGenericIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  metadata = [(_INPBGenericIntentResponse *)self metadata];

  if (metadata)
  {
    metadata2 = [(_INPBGenericIntentResponse *)self metadata];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_properties;
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

- (void)addProperties:(id)properties
{
  propertiesCopy = properties;
  properties = self->_properties;
  v8 = propertiesCopy;
  if (!properties)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_properties;
    self->_properties = array;

    propertiesCopy = v8;
    properties = self->_properties;
  }

  [(NSArray *)properties addObject:propertiesCopy];
}

- (void)setProperties:(id)properties
{
  v4 = [properties mutableCopy];
  properties = self->_properties;
  self->_properties = v4;

  MEMORY[0x1EEE66BB8](v4, properties);
}

@end