@interface _INPBAddMediaIntent
- (BOOL)isEqual:(id)equal;
- (_INPBAddMediaIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMediaItems:(id)items;
- (void)encodeWithCoder:(id)coder;
- (void)setMediaItems:(id)items;
- (void)writeTo:(id)to;
@end

@implementation _INPBAddMediaIntent

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBAddMediaIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  mediaDestination = [(_INPBAddMediaIntent *)self mediaDestination];
  dictionaryRepresentation2 = [mediaDestination dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"mediaDestination"];

  if ([(NSArray *)self->_mediaItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = self->_mediaItems;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation3 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"mediaItems"];
  }

  mediaSearch = [(_INPBAddMediaIntent *)self mediaSearch];
  dictionaryRepresentation4 = [mediaSearch dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"mediaSearch"];

  privateAddMediaIntentData = [(_INPBAddMediaIntent *)self privateAddMediaIntentData];
  dictionaryRepresentation5 = [privateAddMediaIntentData dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"privateAddMediaIntentData"];

  v19 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(_INPBMediaDestination *)self->_mediaDestination hash]^ v3;
  v5 = [(NSArray *)self->_mediaItems hash];
  v6 = v4 ^ v5 ^ [(_INPBMediaSearch *)self->_mediaSearch hash];
  return v6 ^ [(_INPBPrivateAddMediaIntentData *)self->_privateAddMediaIntentData hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  intentMetadata = [(_INPBAddMediaIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_26;
  }

  intentMetadata3 = [(_INPBAddMediaIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBAddMediaIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBAddMediaIntent *)self mediaDestination];
  intentMetadata2 = [equalCopy mediaDestination];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_26;
  }

  mediaDestination = [(_INPBAddMediaIntent *)self mediaDestination];
  if (mediaDestination)
  {
    v13 = mediaDestination;
    mediaDestination2 = [(_INPBAddMediaIntent *)self mediaDestination];
    mediaDestination3 = [equalCopy mediaDestination];
    v16 = [mediaDestination2 isEqual:mediaDestination3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBAddMediaIntent *)self mediaItems];
  intentMetadata2 = [equalCopy mediaItems];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_26;
  }

  mediaItems = [(_INPBAddMediaIntent *)self mediaItems];
  if (mediaItems)
  {
    v18 = mediaItems;
    mediaItems2 = [(_INPBAddMediaIntent *)self mediaItems];
    mediaItems3 = [equalCopy mediaItems];
    v21 = [mediaItems2 isEqual:mediaItems3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBAddMediaIntent *)self mediaSearch];
  intentMetadata2 = [equalCopy mediaSearch];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_26;
  }

  mediaSearch = [(_INPBAddMediaIntent *)self mediaSearch];
  if (mediaSearch)
  {
    v23 = mediaSearch;
    mediaSearch2 = [(_INPBAddMediaIntent *)self mediaSearch];
    mediaSearch3 = [equalCopy mediaSearch];
    v26 = [mediaSearch2 isEqual:mediaSearch3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBAddMediaIntent *)self privateAddMediaIntentData];
  intentMetadata2 = [equalCopy privateAddMediaIntentData];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    privateAddMediaIntentData = [(_INPBAddMediaIntent *)self privateAddMediaIntentData];
    if (!privateAddMediaIntentData)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = privateAddMediaIntentData;
    privateAddMediaIntentData2 = [(_INPBAddMediaIntent *)self privateAddMediaIntentData];
    privateAddMediaIntentData3 = [equalCopy privateAddMediaIntentData];
    v31 = [privateAddMediaIntentData2 isEqual:privateAddMediaIntentData3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAddMediaIntent allocWithZone:](_INPBAddMediaIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBAddMediaIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBMediaDestination *)self->_mediaDestination copyWithZone:zone];
  [(_INPBAddMediaIntent *)v5 setMediaDestination:v7];

  v8 = [(NSArray *)self->_mediaItems copyWithZone:zone];
  [(_INPBAddMediaIntent *)v5 setMediaItems:v8];

  v9 = [(_INPBMediaSearch *)self->_mediaSearch copyWithZone:zone];
  [(_INPBAddMediaIntent *)v5 setMediaSearch:v9];

  v10 = [(_INPBPrivateAddMediaIntentData *)self->_privateAddMediaIntentData copyWithZone:zone];
  [(_INPBAddMediaIntent *)v5 setPrivateAddMediaIntentData:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAddMediaIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAddMediaIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAddMediaIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  intentMetadata = [(_INPBAddMediaIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBAddMediaIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  mediaDestination = [(_INPBAddMediaIntent *)self mediaDestination];

  if (mediaDestination)
  {
    mediaDestination2 = [(_INPBAddMediaIntent *)self mediaDestination];
    PBDataWriterWriteSubmessage();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_mediaItems;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  mediaSearch = [(_INPBAddMediaIntent *)self mediaSearch];

  if (mediaSearch)
  {
    mediaSearch2 = [(_INPBAddMediaIntent *)self mediaSearch];
    PBDataWriterWriteSubmessage();
  }

  privateAddMediaIntentData = [(_INPBAddMediaIntent *)self privateAddMediaIntentData];

  if (privateAddMediaIntentData)
  {
    privateAddMediaIntentData2 = [(_INPBAddMediaIntent *)self privateAddMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)addMediaItems:(id)items
{
  itemsCopy = items;
  mediaItems = self->_mediaItems;
  v8 = itemsCopy;
  if (!mediaItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_mediaItems;
    self->_mediaItems = array;

    itemsCopy = v8;
    mediaItems = self->_mediaItems;
  }

  [(NSArray *)mediaItems addObject:itemsCopy];
}

- (void)setMediaItems:(id)items
{
  v4 = [items mutableCopy];
  mediaItems = self->_mediaItems;
  self->_mediaItems = v4;

  MEMORY[0x1EEE66BB8](v4, mediaItems);
}

@end