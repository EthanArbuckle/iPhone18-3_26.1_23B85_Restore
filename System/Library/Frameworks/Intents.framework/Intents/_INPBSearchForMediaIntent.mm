@interface _INPBSearchForMediaIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForMediaIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMediaItems:(id)items;
- (void)encodeWithCoder:(id)coder;
- (void)setMediaItems:(id)items;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForMediaIntent

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBSearchForMediaIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_mediaItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_mediaItems;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"mediaItems"];
  }

  mediaSearch = [(_INPBSearchForMediaIntent *)self mediaSearch];
  dictionaryRepresentation3 = [mediaSearch dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"mediaSearch"];

  privateSearchForMediaIntentData = [(_INPBSearchForMediaIntent *)self privateSearchForMediaIntentData];
  dictionaryRepresentation4 = [privateSearchForMediaIntentData dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"privateSearchForMediaIntentData"];

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(NSArray *)self->_mediaItems hash]^ v3;
  v5 = [(_INPBMediaSearch *)self->_mediaSearch hash];
  return v4 ^ v5 ^ [(_INPBPrivateSearchForMediaIntentData *)self->_privateSearchForMediaIntentData hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  intentMetadata = [(_INPBSearchForMediaIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_21;
  }

  intentMetadata3 = [(_INPBSearchForMediaIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBSearchForMediaIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSearchForMediaIntent *)self mediaItems];
  intentMetadata2 = [equalCopy mediaItems];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_21;
  }

  mediaItems = [(_INPBSearchForMediaIntent *)self mediaItems];
  if (mediaItems)
  {
    v13 = mediaItems;
    mediaItems2 = [(_INPBSearchForMediaIntent *)self mediaItems];
    mediaItems3 = [equalCopy mediaItems];
    v16 = [mediaItems2 isEqual:mediaItems3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSearchForMediaIntent *)self mediaSearch];
  intentMetadata2 = [equalCopy mediaSearch];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_21;
  }

  mediaSearch = [(_INPBSearchForMediaIntent *)self mediaSearch];
  if (mediaSearch)
  {
    v18 = mediaSearch;
    mediaSearch2 = [(_INPBSearchForMediaIntent *)self mediaSearch];
    mediaSearch3 = [equalCopy mediaSearch];
    v21 = [mediaSearch2 isEqual:mediaSearch3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSearchForMediaIntent *)self privateSearchForMediaIntentData];
  intentMetadata2 = [equalCopy privateSearchForMediaIntentData];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    privateSearchForMediaIntentData = [(_INPBSearchForMediaIntent *)self privateSearchForMediaIntentData];
    if (!privateSearchForMediaIntentData)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = privateSearchForMediaIntentData;
    privateSearchForMediaIntentData2 = [(_INPBSearchForMediaIntent *)self privateSearchForMediaIntentData];
    privateSearchForMediaIntentData3 = [equalCopy privateSearchForMediaIntentData];
    v26 = [privateSearchForMediaIntentData2 isEqual:privateSearchForMediaIntentData3];

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
  v5 = [+[_INPBSearchForMediaIntent allocWithZone:](_INPBSearchForMediaIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSearchForMediaIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSArray *)self->_mediaItems copyWithZone:zone];
  [(_INPBSearchForMediaIntent *)v5 setMediaItems:v7];

  v8 = [(_INPBMediaSearch *)self->_mediaSearch copyWithZone:zone];
  [(_INPBSearchForMediaIntent *)v5 setMediaSearch:v8];

  v9 = [(_INPBPrivateSearchForMediaIntentData *)self->_privateSearchForMediaIntentData copyWithZone:zone];
  [(_INPBSearchForMediaIntent *)v5 setPrivateSearchForMediaIntentData:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForMediaIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForMediaIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForMediaIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  intentMetadata = [(_INPBSearchForMediaIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSearchForMediaIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_mediaItems;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  mediaSearch = [(_INPBSearchForMediaIntent *)self mediaSearch];

  if (mediaSearch)
  {
    mediaSearch2 = [(_INPBSearchForMediaIntent *)self mediaSearch];
    PBDataWriterWriteSubmessage();
  }

  privateSearchForMediaIntentData = [(_INPBSearchForMediaIntent *)self privateSearchForMediaIntentData];

  if (privateSearchForMediaIntentData)
  {
    privateSearchForMediaIntentData2 = [(_INPBSearchForMediaIntent *)self privateSearchForMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  v17 = *MEMORY[0x1E69E9840];
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