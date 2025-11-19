@interface _INPBSearchForMediaIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSearchForMediaIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMediaItems:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMediaItems:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSearchForMediaIntent

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSearchForMediaIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_mediaItems count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"mediaItems"];
  }

  v13 = [(_INPBSearchForMediaIntent *)self mediaSearch];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"mediaSearch"];

  v15 = [(_INPBSearchForMediaIntent *)self privateSearchForMediaIntentData];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"privateSearchForMediaIntentData"];

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(NSArray *)self->_mediaItems hash]^ v3;
  v5 = [(_INPBMediaSearch *)self->_mediaSearch hash];
  return v4 ^ v5 ^ [(_INPBPrivateSearchForMediaIntentData *)self->_privateSearchForMediaIntentData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBSearchForMediaIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBSearchForMediaIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSearchForMediaIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMediaIntent *)self mediaItems];
  v6 = [v4 mediaItems];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBSearchForMediaIntent *)self mediaItems];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSearchForMediaIntent *)self mediaItems];
    v15 = [v4 mediaItems];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMediaIntent *)self mediaSearch];
  v6 = [v4 mediaSearch];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBSearchForMediaIntent *)self mediaSearch];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBSearchForMediaIntent *)self mediaSearch];
    v20 = [v4 mediaSearch];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMediaIntent *)self privateSearchForMediaIntentData];
  v6 = [v4 privateSearchForMediaIntentData];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBSearchForMediaIntent *)self privateSearchForMediaIntentData];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBSearchForMediaIntent *)self privateSearchForMediaIntentData];
    v25 = [v4 privateSearchForMediaIntentData];
    v26 = [v24 isEqual:v25];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSearchForMediaIntent allocWithZone:](_INPBSearchForMediaIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSearchForMediaIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSArray *)self->_mediaItems copyWithZone:a3];
  [(_INPBSearchForMediaIntent *)v5 setMediaItems:v7];

  v8 = [(_INPBMediaSearch *)self->_mediaSearch copyWithZone:a3];
  [(_INPBSearchForMediaIntent *)v5 setMediaSearch:v8];

  v9 = [(_INPBPrivateSearchForMediaIntentData *)self->_privateSearchForMediaIntentData copyWithZone:a3];
  [(_INPBSearchForMediaIntent *)v5 setPrivateSearchForMediaIntentData:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchForMediaIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchForMediaIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchForMediaIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBSearchForMediaIntent *)self intentMetadata];

  if (v5)
  {
    v6 = [(_INPBSearchForMediaIntent *)self intentMetadata];
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

  v13 = [(_INPBSearchForMediaIntent *)self mediaSearch];

  if (v13)
  {
    v14 = [(_INPBSearchForMediaIntent *)self mediaSearch];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBSearchForMediaIntent *)self privateSearchForMediaIntentData];

  if (v15)
  {
    v16 = [(_INPBSearchForMediaIntent *)self privateSearchForMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  v17 = *MEMORY[0x1E69E9840];
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