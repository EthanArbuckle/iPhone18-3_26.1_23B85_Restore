@interface _INPBUpdateMediaAffinityIntent
- (BOOL)isEqual:(id)a3;
- (_INPBUpdateMediaAffinityIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAffinityType:(id)a3;
- (unint64_t)hash;
- (void)addMediaItems:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAffinityType:(int)a3;
- (void)setMediaItems:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBUpdateMediaAffinityIntent

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBUpdateMediaAffinityIntent *)self hasAffinityType])
  {
    v4 = [(_INPBUpdateMediaAffinityIntent *)self affinityType];
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E72867E8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"affinityType"];
  }

  v6 = [(_INPBUpdateMediaAffinityIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

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

  v15 = [(_INPBUpdateMediaAffinityIntent *)self mediaSearch];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"mediaSearch"];

  v17 = [(_INPBUpdateMediaAffinityIntent *)self privateUpdateMediaAffinityIntentData];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"privateUpdateMediaAffinityIntentData"];

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBUpdateMediaAffinityIntent *)self hasAffinityType])
  {
    v3 = 2654435761 * self->_affinityType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(NSArray *)self->_mediaItems hash];
  v6 = v4 ^ v5 ^ [(_INPBMediaSearch *)self->_mediaSearch hash];
  return v6 ^ [(_INPBPrivateUpdateMediaAffinityIntentData *)self->_privateUpdateMediaAffinityIntentData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = [(_INPBUpdateMediaAffinityIntent *)self hasAffinityType];
  if (v5 != [v4 hasAffinityType])
  {
    goto LABEL_26;
  }

  if ([(_INPBUpdateMediaAffinityIntent *)self hasAffinityType])
  {
    if ([v4 hasAffinityType])
    {
      affinityType = self->_affinityType;
      if (affinityType != [v4 affinityType])
      {
        goto LABEL_26;
      }
    }
  }

  v7 = [(_INPBUpdateMediaAffinityIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v9 = [(_INPBUpdateMediaAffinityIntent *)self intentMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBUpdateMediaAffinityIntent *)self intentMetadata];
    v12 = [v4 intentMetadata];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(_INPBUpdateMediaAffinityIntent *)self mediaItems];
  v8 = [v4 mediaItems];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v14 = [(_INPBUpdateMediaAffinityIntent *)self mediaItems];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBUpdateMediaAffinityIntent *)self mediaItems];
    v17 = [v4 mediaItems];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(_INPBUpdateMediaAffinityIntent *)self mediaSearch];
  v8 = [v4 mediaSearch];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v19 = [(_INPBUpdateMediaAffinityIntent *)self mediaSearch];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBUpdateMediaAffinityIntent *)self mediaSearch];
    v22 = [v4 mediaSearch];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(_INPBUpdateMediaAffinityIntent *)self privateUpdateMediaAffinityIntentData];
  v8 = [v4 privateUpdateMediaAffinityIntentData];
  if ((v7 != 0) != (v8 == 0))
  {
    v24 = [(_INPBUpdateMediaAffinityIntent *)self privateUpdateMediaAffinityIntentData];
    if (!v24)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = v24;
    v26 = [(_INPBUpdateMediaAffinityIntent *)self privateUpdateMediaAffinityIntentData];
    v27 = [v4 privateUpdateMediaAffinityIntentData];
    v28 = [v26 isEqual:v27];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBUpdateMediaAffinityIntent allocWithZone:](_INPBUpdateMediaAffinityIntent init];
  if ([(_INPBUpdateMediaAffinityIntent *)self hasAffinityType])
  {
    [(_INPBUpdateMediaAffinityIntent *)v5 setAffinityType:[(_INPBUpdateMediaAffinityIntent *)self affinityType]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBUpdateMediaAffinityIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSArray *)self->_mediaItems copyWithZone:a3];
  [(_INPBUpdateMediaAffinityIntent *)v5 setMediaItems:v7];

  v8 = [(_INPBMediaSearch *)self->_mediaSearch copyWithZone:a3];
  [(_INPBUpdateMediaAffinityIntent *)v5 setMediaSearch:v8];

  v9 = [(_INPBPrivateUpdateMediaAffinityIntentData *)self->_privateUpdateMediaAffinityIntentData copyWithZone:a3];
  [(_INPBUpdateMediaAffinityIntent *)v5 setPrivateUpdateMediaAffinityIntentData:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBUpdateMediaAffinityIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBUpdateMediaAffinityIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBUpdateMediaAffinityIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBUpdateMediaAffinityIntent *)self hasAffinityType])
  {
    affinityType = self->_affinityType;
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_INPBUpdateMediaAffinityIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBUpdateMediaAffinityIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_mediaItems;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = [(_INPBUpdateMediaAffinityIntent *)self mediaSearch];

  if (v14)
  {
    v15 = [(_INPBUpdateMediaAffinityIntent *)self mediaSearch];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_INPBUpdateMediaAffinityIntent *)self privateUpdateMediaAffinityIntentData];

  if (v16)
  {
    v17 = [(_INPBUpdateMediaAffinityIntent *)self privateUpdateMediaAffinityIntentData];
    PBDataWriterWriteSubmessage();
  }

  v18 = *MEMORY[0x1E69E9840];
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

- (int)StringAsAffinityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_AFFINITY_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LIKE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DISLIKE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAffinityType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_affinityType = a3;
  }
}

@end