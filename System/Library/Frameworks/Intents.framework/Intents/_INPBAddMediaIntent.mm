@interface _INPBAddMediaIntent
- (BOOL)isEqual:(id)a3;
- (_INPBAddMediaIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMediaItems:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMediaItems:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAddMediaIntent

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBAddMediaIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  v6 = [(_INPBAddMediaIntent *)self mediaDestination];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"mediaDestination"];

  if ([(NSArray *)self->_mediaItems count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
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

          v14 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"mediaItems"];
  }

  v15 = [(_INPBAddMediaIntent *)self mediaSearch];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"mediaSearch"];

  v17 = [(_INPBAddMediaIntent *)self privateAddMediaIntentData];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"privateAddMediaIntentData"];

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(_INPBMediaDestination *)self->_mediaDestination hash]^ v3;
  v5 = [(NSArray *)self->_mediaItems hash];
  v6 = v4 ^ v5 ^ [(_INPBMediaSearch *)self->_mediaSearch hash];
  return v6 ^ [(_INPBPrivateAddMediaIntentData *)self->_privateAddMediaIntentData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_INPBAddMediaIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_INPBAddMediaIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBAddMediaIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBAddMediaIntent *)self mediaDestination];
  v6 = [v4 mediaDestination];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_INPBAddMediaIntent *)self mediaDestination];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBAddMediaIntent *)self mediaDestination];
    v15 = [v4 mediaDestination];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBAddMediaIntent *)self mediaItems];
  v6 = [v4 mediaItems];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_INPBAddMediaIntent *)self mediaItems];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBAddMediaIntent *)self mediaItems];
    v20 = [v4 mediaItems];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBAddMediaIntent *)self mediaSearch];
  v6 = [v4 mediaSearch];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_INPBAddMediaIntent *)self mediaSearch];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBAddMediaIntent *)self mediaSearch];
    v25 = [v4 mediaSearch];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBAddMediaIntent *)self privateAddMediaIntentData];
  v6 = [v4 privateAddMediaIntentData];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBAddMediaIntent *)self privateAddMediaIntentData];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_INPBAddMediaIntent *)self privateAddMediaIntentData];
    v30 = [v4 privateAddMediaIntentData];
    v31 = [v29 isEqual:v30];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBAddMediaIntent allocWithZone:](_INPBAddMediaIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBAddMediaIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBMediaDestination *)self->_mediaDestination copyWithZone:a3];
  [(_INPBAddMediaIntent *)v5 setMediaDestination:v7];

  v8 = [(NSArray *)self->_mediaItems copyWithZone:a3];
  [(_INPBAddMediaIntent *)v5 setMediaItems:v8];

  v9 = [(_INPBMediaSearch *)self->_mediaSearch copyWithZone:a3];
  [(_INPBAddMediaIntent *)v5 setMediaSearch:v9];

  v10 = [(_INPBPrivateAddMediaIntentData *)self->_privateAddMediaIntentData copyWithZone:a3];
  [(_INPBAddMediaIntent *)v5 setPrivateAddMediaIntentData:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAddMediaIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAddMediaIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAddMediaIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBAddMediaIntent *)self intentMetadata];

  if (v5)
  {
    v6 = [(_INPBAddMediaIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBAddMediaIntent *)self mediaDestination];

  if (v7)
  {
    v8 = [(_INPBAddMediaIntent *)self mediaDestination];
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

  v15 = [(_INPBAddMediaIntent *)self mediaSearch];

  if (v15)
  {
    v16 = [(_INPBAddMediaIntent *)self mediaSearch];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_INPBAddMediaIntent *)self privateAddMediaIntentData];

  if (v17)
  {
    v18 = [(_INPBAddMediaIntent *)self privateAddMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)addMediaItems:(id)a3
{
  v4 = a3;
  mediaItems = self->_mediaItems;
  v8 = v4;
  if (!mediaItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_mediaItems;
    self->_mediaItems = v6;

    v4 = v8;
    mediaItems = self->_mediaItems;
  }

  [(NSArray *)mediaItems addObject:v4];
}

- (void)setMediaItems:(id)a3
{
  v4 = [a3 mutableCopy];
  mediaItems = self->_mediaItems;
  self->_mediaItems = v4;

  MEMORY[0x1EEE66BB8](v4, mediaItems);
}

@end