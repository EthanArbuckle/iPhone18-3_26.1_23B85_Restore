@interface _INPBMediaItemValue
- (BOOL)isEqual:(id)a3;
- (_INPBMediaItemValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)addNamedEntities:(id)a3;
- (void)addTopics:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setArtist:(id)a3;
- (void)setAssetInfo:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setNamedEntities:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTopics:(id)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBMediaItemValue

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_artist)
  {
    v4 = [(_INPBMediaItemValue *)self artist];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"artist"];
  }

  v6 = [(_INPBMediaItemValue *)self artwork];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"artwork"];

  if (self->_assetInfo)
  {
    v8 = [(_INPBMediaItemValue *)self assetInfo];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"assetInfo"];
  }

  if (self->_identifier)
  {
    v10 = [(_INPBMediaItemValue *)self identifier];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"identifier"];
  }

  if ([(NSArray *)self->_namedEntities count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v13 = self->_namedEntities;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"namedEntities"];
  }

  v19 = [(_INPBMediaItemValue *)self privateMediaItemValueData];
  v20 = [v19 dictionaryRepresentation];
  [v3 setObject:v20 forKeyedSubscript:@"privateMediaItemValueData"];

  if (self->_title)
  {
    v21 = [(_INPBMediaItemValue *)self title];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"title"];
  }

  if ([(NSArray *)self->_topics count])
  {
    v23 = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v24 = self->_topics;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v37;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v36 + 1) + 8 * j) dictionaryRepresentation];
          [v23 addObject:v29];
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKeyedSubscript:@"topics"];
  }

  if ([(_INPBMediaItemValue *)self hasType])
  {
    v30 = [(_INPBMediaItemValue *)self type];
    if (v30 >= 0x15)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v30];
    }

    else
    {
      v31 = off_1E7285CF0[v30];
    }

    [v3 setObject:v31 forKeyedSubscript:@"type"];
  }

  v32 = [(_INPBMediaItemValue *)self valueMetadata];
  v33 = [v32 dictionaryRepresentation];
  [v3 setObject:v33 forKeyedSubscript:@"valueMetadata"];

  v34 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_artist hash];
  v4 = [(_INPBImageValue *)self->_artwork hash];
  v5 = [(NSString *)self->_assetInfo hash];
  v6 = [(NSString *)self->_identifier hash];
  v7 = [(NSArray *)self->_namedEntities hash];
  v8 = [(_INPBPrivateMediaItemValueData *)self->_privateMediaItemValueData hash];
  v9 = [(NSString *)self->_title hash];
  v10 = [(NSArray *)self->_topics hash];
  if ([(_INPBMediaItemValue *)self hasType])
  {
    v11 = 2654435761 * self->_type;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  v5 = [(_INPBMediaItemValue *)self artist];
  v6 = [v4 artist];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v7 = [(_INPBMediaItemValue *)self artist];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBMediaItemValue *)self artist];
    v10 = [v4 artist];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_INPBMediaItemValue *)self artwork];
  v6 = [v4 artwork];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v12 = [(_INPBMediaItemValue *)self artwork];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBMediaItemValue *)self artwork];
    v15 = [v4 artwork];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_INPBMediaItemValue *)self assetInfo];
  v6 = [v4 assetInfo];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v17 = [(_INPBMediaItemValue *)self assetInfo];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBMediaItemValue *)self assetInfo];
    v20 = [v4 assetInfo];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_INPBMediaItemValue *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v22 = [(_INPBMediaItemValue *)self identifier];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBMediaItemValue *)self identifier];
    v25 = [v4 identifier];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_INPBMediaItemValue *)self namedEntities];
  v6 = [v4 namedEntities];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v27 = [(_INPBMediaItemValue *)self namedEntities];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBMediaItemValue *)self namedEntities];
    v30 = [v4 namedEntities];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_INPBMediaItemValue *)self privateMediaItemValueData];
  v6 = [v4 privateMediaItemValueData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v32 = [(_INPBMediaItemValue *)self privateMediaItemValueData];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBMediaItemValue *)self privateMediaItemValueData];
    v35 = [v4 privateMediaItemValueData];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_INPBMediaItemValue *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v37 = [(_INPBMediaItemValue *)self title];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBMediaItemValue *)self title];
    v40 = [v4 title];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_INPBMediaItemValue *)self topics];
  v6 = [v4 topics];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v42 = [(_INPBMediaItemValue *)self topics];
  if (v42)
  {
    v43 = v42;
    v44 = [(_INPBMediaItemValue *)self topics];
    v45 = [v4 topics];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v47 = [(_INPBMediaItemValue *)self hasType];
  if (v47 != [v4 hasType])
  {
    goto LABEL_51;
  }

  if ([(_INPBMediaItemValue *)self hasType])
  {
    if ([v4 hasType])
    {
      type = self->_type;
      if (type != [v4 type])
      {
        goto LABEL_51;
      }
    }
  }

  v5 = [(_INPBMediaItemValue *)self valueMetadata];
  v6 = [v4 valueMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v49 = [(_INPBMediaItemValue *)self valueMetadata];
    if (!v49)
    {

LABEL_54:
      v54 = 1;
      goto LABEL_52;
    }

    v50 = v49;
    v51 = [(_INPBMediaItemValue *)self valueMetadata];
    v52 = [v4 valueMetadata];
    v53 = [v51 isEqual:v52];

    if (v53)
    {
      goto LABEL_54;
    }
  }

  else
  {
LABEL_50:
  }

LABEL_51:
  v54 = 0;
LABEL_52:

  return v54;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBMediaItemValue allocWithZone:](_INPBMediaItemValue init];
  v6 = [(NSString *)self->_artist copyWithZone:a3];
  [(_INPBMediaItemValue *)v5 setArtist:v6];

  v7 = [(_INPBImageValue *)self->_artwork copyWithZone:a3];
  [(_INPBMediaItemValue *)v5 setArtwork:v7];

  v8 = [(NSString *)self->_assetInfo copyWithZone:a3];
  [(_INPBMediaItemValue *)v5 setAssetInfo:v8];

  v9 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBMediaItemValue *)v5 setIdentifier:v9];

  v10 = [(NSArray *)self->_namedEntities copyWithZone:a3];
  [(_INPBMediaItemValue *)v5 setNamedEntities:v10];

  v11 = [(_INPBPrivateMediaItemValueData *)self->_privateMediaItemValueData copyWithZone:a3];
  [(_INPBMediaItemValue *)v5 setPrivateMediaItemValueData:v11];

  v12 = [(NSString *)self->_title copyWithZone:a3];
  [(_INPBMediaItemValue *)v5 setTitle:v12];

  v13 = [(NSArray *)self->_topics copyWithZone:a3];
  [(_INPBMediaItemValue *)v5 setTopics:v13];

  if ([(_INPBMediaItemValue *)self hasType])
  {
    [(_INPBMediaItemValue *)v5 setType:[(_INPBMediaItemValue *)self type]];
  }

  v14 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBMediaItemValue *)v5 setValueMetadata:v14];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBMediaItemValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBMediaItemValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBMediaItemValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBMediaItemValue *)self artist];

  if (v5)
  {
    artist = self->_artist;
    PBDataWriterWriteStringField();
  }

  v7 = [(_INPBMediaItemValue *)self artwork];

  if (v7)
  {
    v8 = [(_INPBMediaItemValue *)self artwork];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBMediaItemValue *)self assetInfo];

  if (v9)
  {
    assetInfo = self->_assetInfo;
    PBDataWriterWriteStringField();
  }

  v11 = [(_INPBMediaItemValue *)self identifier];

  if (v11)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = self->_namedEntities;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      v17 = 0;
      do
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v37 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v15);
  }

  v19 = [(_INPBMediaItemValue *)self privateMediaItemValueData];

  if (v19)
  {
    v20 = [(_INPBMediaItemValue *)self privateMediaItemValueData];
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_INPBMediaItemValue *)self title];

  if (v21)
  {
    title = self->_title;
    PBDataWriterWriteStringField();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = self->_topics;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      v27 = 0;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v33 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v25);
  }

  if ([(_INPBMediaItemValue *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v30 = [(_INPBMediaItemValue *)self valueMetadata];

  if (v30)
  {
    v31 = [(_INPBMediaItemValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_MEDIA_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SONG"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ALBUM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ARTIST"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GENRE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PLAYLIST"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PODCAST_SHOW"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"PODCAST_EPISODE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"PODCAST_PLAYLIST"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"MUSIC_STATION"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"AUDIO_BOOK"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"MOVIE"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"TV_SHOW"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"TV_SHOW_EPISODE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"MUSIC_VIDEO"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"PODCAST_STATION"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"RADIO_STATION"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"STATION"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"MUSIC"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"ALGORITHMIC_RADIO_STATION"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"NEWS"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = a3;
  }
}

- (void)addTopics:(id)a3
{
  v4 = a3;
  topics = self->_topics;
  v8 = v4;
  if (!topics)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_topics;
    self->_topics = v6;

    v4 = v8;
    topics = self->_topics;
  }

  [(NSArray *)topics addObject:v4];
}

- (void)setTopics:(id)a3
{
  v4 = [a3 mutableCopy];
  topics = self->_topics;
  self->_topics = v4;

  MEMORY[0x1EEE66BB8](v4, topics);
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (void)addNamedEntities:(id)a3
{
  v4 = a3;
  namedEntities = self->_namedEntities;
  v8 = v4;
  if (!namedEntities)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_namedEntities;
    self->_namedEntities = v6;

    v4 = v8;
    namedEntities = self->_namedEntities;
  }

  [(NSArray *)namedEntities addObject:v4];
}

- (void)setNamedEntities:(id)a3
{
  v4 = [a3 mutableCopy];
  namedEntities = self->_namedEntities;
  self->_namedEntities = v4;

  MEMORY[0x1EEE66BB8](v4, namedEntities);
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (void)setAssetInfo:(id)a3
{
  v4 = [a3 copy];
  assetInfo = self->_assetInfo;
  self->_assetInfo = v4;

  MEMORY[0x1EEE66BB8](v4, assetInfo);
}

- (void)setArtist:(id)a3
{
  v4 = [a3 copy];
  artist = self->_artist;
  self->_artist = v4;

  MEMORY[0x1EEE66BB8](v4, artist);
}

@end