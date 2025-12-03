@interface _INPBMediaItemValue
- (BOOL)isEqual:(id)equal;
- (_INPBMediaItemValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)addNamedEntities:(id)entities;
- (void)addTopics:(id)topics;
- (void)encodeWithCoder:(id)coder;
- (void)setArtist:(id)artist;
- (void)setAssetInfo:(id)info;
- (void)setIdentifier:(id)identifier;
- (void)setNamedEntities:(id)entities;
- (void)setTitle:(id)title;
- (void)setTopics:(id)topics;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBMediaItemValue

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_artist)
  {
    artist = [(_INPBMediaItemValue *)self artist];
    v5 = [artist copy];
    [dictionary setObject:v5 forKeyedSubscript:@"artist"];
  }

  artwork = [(_INPBMediaItemValue *)self artwork];
  dictionaryRepresentation = [artwork dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"artwork"];

  if (self->_assetInfo)
  {
    assetInfo = [(_INPBMediaItemValue *)self assetInfo];
    v9 = [assetInfo copy];
    [dictionary setObject:v9 forKeyedSubscript:@"assetInfo"];
  }

  if (self->_identifier)
  {
    identifier = [(_INPBMediaItemValue *)self identifier];
    v11 = [identifier copy];
    [dictionary setObject:v11 forKeyedSubscript:@"identifier"];
  }

  if ([(NSArray *)self->_namedEntities count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array forKeyedSubscript:@"namedEntities"];
  }

  privateMediaItemValueData = [(_INPBMediaItemValue *)self privateMediaItemValueData];
  dictionaryRepresentation3 = [privateMediaItemValueData dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"privateMediaItemValueData"];

  if (self->_title)
  {
    title = [(_INPBMediaItemValue *)self title];
    v22 = [title copy];
    [dictionary setObject:v22 forKeyedSubscript:@"title"];
  }

  if ([(NSArray *)self->_topics count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v36 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation4];
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v26);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"topics"];
  }

  if ([(_INPBMediaItemValue *)self hasType])
  {
    type = [(_INPBMediaItemValue *)self type];
    if (type >= 0x15)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v31 = off_1E7285CF0[type];
    }

    [dictionary setObject:v31 forKeyedSubscript:@"type"];
  }

  valueMetadata = [(_INPBMediaItemValue *)self valueMetadata];
  dictionaryRepresentation5 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"valueMetadata"];

  v34 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  artist = [(_INPBMediaItemValue *)self artist];
  artist2 = [equalCopy artist];
  if ((artist != 0) == (artist2 == 0))
  {
    goto LABEL_50;
  }

  artist3 = [(_INPBMediaItemValue *)self artist];
  if (artist3)
  {
    v8 = artist3;
    artist4 = [(_INPBMediaItemValue *)self artist];
    artist5 = [equalCopy artist];
    v11 = [artist4 isEqual:artist5];

    if (!v11)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  artist = [(_INPBMediaItemValue *)self artwork];
  artist2 = [equalCopy artwork];
  if ((artist != 0) == (artist2 == 0))
  {
    goto LABEL_50;
  }

  artwork = [(_INPBMediaItemValue *)self artwork];
  if (artwork)
  {
    v13 = artwork;
    artwork2 = [(_INPBMediaItemValue *)self artwork];
    artwork3 = [equalCopy artwork];
    v16 = [artwork2 isEqual:artwork3];

    if (!v16)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  artist = [(_INPBMediaItemValue *)self assetInfo];
  artist2 = [equalCopy assetInfo];
  if ((artist != 0) == (artist2 == 0))
  {
    goto LABEL_50;
  }

  assetInfo = [(_INPBMediaItemValue *)self assetInfo];
  if (assetInfo)
  {
    v18 = assetInfo;
    assetInfo2 = [(_INPBMediaItemValue *)self assetInfo];
    assetInfo3 = [equalCopy assetInfo];
    v21 = [assetInfo2 isEqual:assetInfo3];

    if (!v21)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  artist = [(_INPBMediaItemValue *)self identifier];
  artist2 = [equalCopy identifier];
  if ((artist != 0) == (artist2 == 0))
  {
    goto LABEL_50;
  }

  identifier = [(_INPBMediaItemValue *)self identifier];
  if (identifier)
  {
    v23 = identifier;
    identifier2 = [(_INPBMediaItemValue *)self identifier];
    identifier3 = [equalCopy identifier];
    v26 = [identifier2 isEqual:identifier3];

    if (!v26)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  artist = [(_INPBMediaItemValue *)self namedEntities];
  artist2 = [equalCopy namedEntities];
  if ((artist != 0) == (artist2 == 0))
  {
    goto LABEL_50;
  }

  namedEntities = [(_INPBMediaItemValue *)self namedEntities];
  if (namedEntities)
  {
    v28 = namedEntities;
    namedEntities2 = [(_INPBMediaItemValue *)self namedEntities];
    namedEntities3 = [equalCopy namedEntities];
    v31 = [namedEntities2 isEqual:namedEntities3];

    if (!v31)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  artist = [(_INPBMediaItemValue *)self privateMediaItemValueData];
  artist2 = [equalCopy privateMediaItemValueData];
  if ((artist != 0) == (artist2 == 0))
  {
    goto LABEL_50;
  }

  privateMediaItemValueData = [(_INPBMediaItemValue *)self privateMediaItemValueData];
  if (privateMediaItemValueData)
  {
    v33 = privateMediaItemValueData;
    privateMediaItemValueData2 = [(_INPBMediaItemValue *)self privateMediaItemValueData];
    privateMediaItemValueData3 = [equalCopy privateMediaItemValueData];
    v36 = [privateMediaItemValueData2 isEqual:privateMediaItemValueData3];

    if (!v36)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  artist = [(_INPBMediaItemValue *)self title];
  artist2 = [equalCopy title];
  if ((artist != 0) == (artist2 == 0))
  {
    goto LABEL_50;
  }

  title = [(_INPBMediaItemValue *)self title];
  if (title)
  {
    v38 = title;
    title2 = [(_INPBMediaItemValue *)self title];
    title3 = [equalCopy title];
    v41 = [title2 isEqual:title3];

    if (!v41)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  artist = [(_INPBMediaItemValue *)self topics];
  artist2 = [equalCopy topics];
  if ((artist != 0) == (artist2 == 0))
  {
    goto LABEL_50;
  }

  topics = [(_INPBMediaItemValue *)self topics];
  if (topics)
  {
    v43 = topics;
    topics2 = [(_INPBMediaItemValue *)self topics];
    topics3 = [equalCopy topics];
    v46 = [topics2 isEqual:topics3];

    if (!v46)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  hasType = [(_INPBMediaItemValue *)self hasType];
  if (hasType != [equalCopy hasType])
  {
    goto LABEL_51;
  }

  if ([(_INPBMediaItemValue *)self hasType])
  {
    if ([equalCopy hasType])
    {
      type = self->_type;
      if (type != [equalCopy type])
      {
        goto LABEL_51;
      }
    }
  }

  artist = [(_INPBMediaItemValue *)self valueMetadata];
  artist2 = [equalCopy valueMetadata];
  if ((artist != 0) != (artist2 == 0))
  {
    valueMetadata = [(_INPBMediaItemValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_54:
      v54 = 1;
      goto LABEL_52;
    }

    v50 = valueMetadata;
    valueMetadata2 = [(_INPBMediaItemValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v53 = [valueMetadata2 isEqual:valueMetadata3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBMediaItemValue allocWithZone:](_INPBMediaItemValue init];
  v6 = [(NSString *)self->_artist copyWithZone:zone];
  [(_INPBMediaItemValue *)v5 setArtist:v6];

  v7 = [(_INPBImageValue *)self->_artwork copyWithZone:zone];
  [(_INPBMediaItemValue *)v5 setArtwork:v7];

  v8 = [(NSString *)self->_assetInfo copyWithZone:zone];
  [(_INPBMediaItemValue *)v5 setAssetInfo:v8];

  v9 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBMediaItemValue *)v5 setIdentifier:v9];

  v10 = [(NSArray *)self->_namedEntities copyWithZone:zone];
  [(_INPBMediaItemValue *)v5 setNamedEntities:v10];

  v11 = [(_INPBPrivateMediaItemValueData *)self->_privateMediaItemValueData copyWithZone:zone];
  [(_INPBMediaItemValue *)v5 setPrivateMediaItemValueData:v11];

  v12 = [(NSString *)self->_title copyWithZone:zone];
  [(_INPBMediaItemValue *)v5 setTitle:v12];

  v13 = [(NSArray *)self->_topics copyWithZone:zone];
  [(_INPBMediaItemValue *)v5 setTopics:v13];

  if ([(_INPBMediaItemValue *)self hasType])
  {
    [(_INPBMediaItemValue *)v5 setType:[(_INPBMediaItemValue *)self type]];
  }

  v14 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBMediaItemValue *)v5 setValueMetadata:v14];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBMediaItemValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBMediaItemValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBMediaItemValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v43 = *MEMORY[0x1E69E9840];
  toCopy = to;
  artist = [(_INPBMediaItemValue *)self artist];

  if (artist)
  {
    artist = self->_artist;
    PBDataWriterWriteStringField();
  }

  artwork = [(_INPBMediaItemValue *)self artwork];

  if (artwork)
  {
    artwork2 = [(_INPBMediaItemValue *)self artwork];
    PBDataWriterWriteSubmessage();
  }

  assetInfo = [(_INPBMediaItemValue *)self assetInfo];

  if (assetInfo)
  {
    assetInfo = self->_assetInfo;
    PBDataWriterWriteStringField();
  }

  identifier = [(_INPBMediaItemValue *)self identifier];

  if (identifier)
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

  privateMediaItemValueData = [(_INPBMediaItemValue *)self privateMediaItemValueData];

  if (privateMediaItemValueData)
  {
    privateMediaItemValueData2 = [(_INPBMediaItemValue *)self privateMediaItemValueData];
    PBDataWriterWriteSubmessage();
  }

  title = [(_INPBMediaItemValue *)self title];

  if (title)
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

  valueMetadata = [(_INPBMediaItemValue *)self valueMetadata];

  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBMediaItemValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_MEDIA_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"SONG"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ALBUM"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ARTIST"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"GENRE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"PLAYLIST"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"PODCAST_SHOW"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"PODCAST_EPISODE"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"PODCAST_PLAYLIST"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"MUSIC_STATION"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"AUDIO_BOOK"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"MOVIE"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"TV_SHOW"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"TV_SHOW_EPISODE"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"MUSIC_VIDEO"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"PODCAST_STATION"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"RADIO_STATION"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"STATION"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"MUSIC"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"ALGORITHMIC_RADIO_STATION"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"NEWS"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = type;
  }
}

- (void)addTopics:(id)topics
{
  topicsCopy = topics;
  topics = self->_topics;
  v8 = topicsCopy;
  if (!topics)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_topics;
    self->_topics = array;

    topicsCopy = v8;
    topics = self->_topics;
  }

  [(NSArray *)topics addObject:topicsCopy];
}

- (void)setTopics:(id)topics
{
  v4 = [topics mutableCopy];
  topics = self->_topics;
  self->_topics = v4;

  MEMORY[0x1EEE66BB8](v4, topics);
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (void)addNamedEntities:(id)entities
{
  entitiesCopy = entities;
  namedEntities = self->_namedEntities;
  v8 = entitiesCopy;
  if (!namedEntities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_namedEntities;
    self->_namedEntities = array;

    entitiesCopy = v8;
    namedEntities = self->_namedEntities;
  }

  [(NSArray *)namedEntities addObject:entitiesCopy];
}

- (void)setNamedEntities:(id)entities
{
  v4 = [entities mutableCopy];
  namedEntities = self->_namedEntities;
  self->_namedEntities = v4;

  MEMORY[0x1EEE66BB8](v4, namedEntities);
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (void)setAssetInfo:(id)info
{
  v4 = [info copy];
  assetInfo = self->_assetInfo;
  self->_assetInfo = v4;

  MEMORY[0x1EEE66BB8](v4, assetInfo);
}

- (void)setArtist:(id)artist
{
  v4 = [artist copy];
  artist = self->_artist;
  self->_artist = v4;

  MEMORY[0x1EEE66BB8](v4, artist);
}

@end