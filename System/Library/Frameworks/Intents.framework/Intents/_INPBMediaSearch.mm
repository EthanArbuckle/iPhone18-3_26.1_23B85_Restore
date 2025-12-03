@interface _INPBMediaSearch
- (BOOL)isEqual:(id)equal;
- (_INPBMediaSearch)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsMediaType:(id)type;
- (int)StringAsReference:(id)reference;
- (int)StringAsSortOrder:(id)order;
- (unint64_t)hash;
- (void)addGenreNames:(id)names;
- (void)addMoodNames:(id)names;
- (void)encodeWithCoder:(id)coder;
- (void)setGenreNames:(id)names;
- (void)setHasReference:(BOOL)reference;
- (void)setHasSortOrder:(BOOL)order;
- (void)setMediaType:(int)type;
- (void)setMoodNames:(id)names;
- (void)setReference:(int)reference;
- (void)setSortOrder:(int)order;
- (void)writeTo:(id)to;
@end

@implementation _INPBMediaSearch

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  albumName = [(_INPBMediaSearch *)self albumName];
  dictionaryRepresentation = [albumName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"albumName"];

  artistName = [(_INPBMediaSearch *)self artistName];
  dictionaryRepresentation2 = [artistName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"artistName"];

  if ([(NSArray *)self->_genreNames count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = self->_genreNames;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation3 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"genreNames"];
  }

  mediaIdentifier = [(_INPBMediaSearch *)self mediaIdentifier];
  dictionaryRepresentation4 = [mediaIdentifier dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"mediaIdentifier"];

  mediaName = [(_INPBMediaSearch *)self mediaName];
  dictionaryRepresentation5 = [mediaName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"mediaName"];

  if ([(_INPBMediaSearch *)self hasMediaType])
  {
    mediaType = [(_INPBMediaSearch *)self mediaType];
    if (mediaType >= 0x15)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", mediaType];
    }

    else
    {
      v20 = off_1E7286670[mediaType];
    }

    [dictionary setObject:v20 forKeyedSubscript:@"mediaType"];
  }

  if ([(NSArray *)self->_moodNames count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v22 = self->_moodNames;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v37;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation6 = [*(*(&v36 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation6];
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"moodNames"];
  }

  if ([(_INPBMediaSearch *)self hasReference])
  {
    reference = [(_INPBMediaSearch *)self reference];
    if (reference >= 3)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", reference];
    }

    else
    {
      v29 = off_1E7286718[reference];
    }

    [dictionary setObject:v29 forKeyedSubscript:@"reference"];
  }

  releaseDate = [(_INPBMediaSearch *)self releaseDate];
  dictionaryRepresentation7 = [releaseDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"releaseDate"];

  if ([(_INPBMediaSearch *)self hasSortOrder])
  {
    sortOrder = [(_INPBMediaSearch *)self sortOrder];
    if (sortOrder >= 9)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sortOrder];
    }

    else
    {
      v33 = off_1E7286730[sortOrder];
    }

    [dictionary setObject:v33 forKeyedSubscript:@"sortOrder"];
  }

  v34 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v13 = [(_INPBString *)self->_albumName hash];
  v3 = [(_INPBString *)self->_artistName hash];
  v4 = [(NSArray *)self->_genreNames hash];
  v5 = [(_INPBString *)self->_mediaIdentifier hash];
  v6 = [(_INPBString *)self->_mediaName hash];
  if ([(_INPBMediaSearch *)self hasMediaType])
  {
    v7 = 2654435761 * self->_mediaType;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSArray *)self->_moodNames hash];
  if ([(_INPBMediaSearch *)self hasReference])
  {
    v9 = 2654435761 * self->_reference;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(_INPBDateTimeRange *)self->_releaseDate hash];
  if ([(_INPBMediaSearch *)self hasSortOrder])
  {
    v11 = 2654435761 * self->_sortOrder;
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v13 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  albumName = [(_INPBMediaSearch *)self albumName];
  albumName2 = [equalCopy albumName];
  if ((albumName != 0) == (albumName2 == 0))
  {
    goto LABEL_44;
  }

  albumName3 = [(_INPBMediaSearch *)self albumName];
  if (albumName3)
  {
    v8 = albumName3;
    albumName4 = [(_INPBMediaSearch *)self albumName];
    albumName5 = [equalCopy albumName];
    v11 = [albumName4 isEqual:albumName5];

    if (!v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  albumName = [(_INPBMediaSearch *)self artistName];
  albumName2 = [equalCopy artistName];
  if ((albumName != 0) == (albumName2 == 0))
  {
    goto LABEL_44;
  }

  artistName = [(_INPBMediaSearch *)self artistName];
  if (artistName)
  {
    v13 = artistName;
    artistName2 = [(_INPBMediaSearch *)self artistName];
    artistName3 = [equalCopy artistName];
    v16 = [artistName2 isEqual:artistName3];

    if (!v16)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  albumName = [(_INPBMediaSearch *)self genreNames];
  albumName2 = [equalCopy genreNames];
  if ((albumName != 0) == (albumName2 == 0))
  {
    goto LABEL_44;
  }

  genreNames = [(_INPBMediaSearch *)self genreNames];
  if (genreNames)
  {
    v18 = genreNames;
    genreNames2 = [(_INPBMediaSearch *)self genreNames];
    genreNames3 = [equalCopy genreNames];
    v21 = [genreNames2 isEqual:genreNames3];

    if (!v21)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  albumName = [(_INPBMediaSearch *)self mediaIdentifier];
  albumName2 = [equalCopy mediaIdentifier];
  if ((albumName != 0) == (albumName2 == 0))
  {
    goto LABEL_44;
  }

  mediaIdentifier = [(_INPBMediaSearch *)self mediaIdentifier];
  if (mediaIdentifier)
  {
    v23 = mediaIdentifier;
    mediaIdentifier2 = [(_INPBMediaSearch *)self mediaIdentifier];
    mediaIdentifier3 = [equalCopy mediaIdentifier];
    v26 = [mediaIdentifier2 isEqual:mediaIdentifier3];

    if (!v26)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  albumName = [(_INPBMediaSearch *)self mediaName];
  albumName2 = [equalCopy mediaName];
  if ((albumName != 0) == (albumName2 == 0))
  {
    goto LABEL_44;
  }

  mediaName = [(_INPBMediaSearch *)self mediaName];
  if (mediaName)
  {
    v28 = mediaName;
    mediaName2 = [(_INPBMediaSearch *)self mediaName];
    mediaName3 = [equalCopy mediaName];
    v31 = [mediaName2 isEqual:mediaName3];

    if (!v31)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  hasMediaType = [(_INPBMediaSearch *)self hasMediaType];
  if (hasMediaType != [equalCopy hasMediaType])
  {
    goto LABEL_45;
  }

  if ([(_INPBMediaSearch *)self hasMediaType])
  {
    if ([equalCopy hasMediaType])
    {
      mediaType = self->_mediaType;
      if (mediaType != [equalCopy mediaType])
      {
        goto LABEL_45;
      }
    }
  }

  albumName = [(_INPBMediaSearch *)self moodNames];
  albumName2 = [equalCopy moodNames];
  if ((albumName != 0) == (albumName2 == 0))
  {
    goto LABEL_44;
  }

  moodNames = [(_INPBMediaSearch *)self moodNames];
  if (moodNames)
  {
    v35 = moodNames;
    moodNames2 = [(_INPBMediaSearch *)self moodNames];
    moodNames3 = [equalCopy moodNames];
    v38 = [moodNames2 isEqual:moodNames3];

    if (!v38)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  hasReference = [(_INPBMediaSearch *)self hasReference];
  if (hasReference != [equalCopy hasReference])
  {
    goto LABEL_45;
  }

  if ([(_INPBMediaSearch *)self hasReference])
  {
    if ([equalCopy hasReference])
    {
      reference = self->_reference;
      if (reference != [equalCopy reference])
      {
        goto LABEL_45;
      }
    }
  }

  albumName = [(_INPBMediaSearch *)self releaseDate];
  albumName2 = [equalCopy releaseDate];
  if ((albumName != 0) == (albumName2 == 0))
  {
LABEL_44:

    goto LABEL_45;
  }

  releaseDate = [(_INPBMediaSearch *)self releaseDate];
  if (releaseDate)
  {
    v42 = releaseDate;
    releaseDate2 = [(_INPBMediaSearch *)self releaseDate];
    releaseDate3 = [equalCopy releaseDate];
    v45 = [releaseDate2 isEqual:releaseDate3];

    if (!v45)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  hasSortOrder = [(_INPBMediaSearch *)self hasSortOrder];
  if (hasSortOrder == [equalCopy hasSortOrder])
  {
    if (!-[_INPBMediaSearch hasSortOrder](self, "hasSortOrder") || ![equalCopy hasSortOrder] || (sortOrder = self->_sortOrder, sortOrder == objc_msgSend(equalCopy, "sortOrder")))
    {
      v46 = 1;
      goto LABEL_46;
    }
  }

LABEL_45:
  v46 = 0;
LABEL_46:

  return v46;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBMediaSearch allocWithZone:](_INPBMediaSearch init];
  v6 = [(_INPBString *)self->_albumName copyWithZone:zone];
  [(_INPBMediaSearch *)v5 setAlbumName:v6];

  v7 = [(_INPBString *)self->_artistName copyWithZone:zone];
  [(_INPBMediaSearch *)v5 setArtistName:v7];

  v8 = [(NSArray *)self->_genreNames copyWithZone:zone];
  [(_INPBMediaSearch *)v5 setGenreNames:v8];

  v9 = [(_INPBString *)self->_mediaIdentifier copyWithZone:zone];
  [(_INPBMediaSearch *)v5 setMediaIdentifier:v9];

  v10 = [(_INPBString *)self->_mediaName copyWithZone:zone];
  [(_INPBMediaSearch *)v5 setMediaName:v10];

  if ([(_INPBMediaSearch *)self hasMediaType])
  {
    [(_INPBMediaSearch *)v5 setMediaType:[(_INPBMediaSearch *)self mediaType]];
  }

  v11 = [(NSArray *)self->_moodNames copyWithZone:zone];
  [(_INPBMediaSearch *)v5 setMoodNames:v11];

  if ([(_INPBMediaSearch *)self hasReference])
  {
    [(_INPBMediaSearch *)v5 setReference:[(_INPBMediaSearch *)self reference]];
  }

  v12 = [(_INPBDateTimeRange *)self->_releaseDate copyWithZone:zone];
  [(_INPBMediaSearch *)v5 setReleaseDate:v12];

  if ([(_INPBMediaSearch *)self hasSortOrder])
  {
    [(_INPBMediaSearch *)v5 setSortOrder:[(_INPBMediaSearch *)self sortOrder]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBMediaSearch *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBMediaSearch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBMediaSearch *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v41 = *MEMORY[0x1E69E9840];
  toCopy = to;
  albumName = [(_INPBMediaSearch *)self albumName];

  if (albumName)
  {
    albumName2 = [(_INPBMediaSearch *)self albumName];
    PBDataWriterWriteSubmessage();
  }

  artistName = [(_INPBMediaSearch *)self artistName];

  if (artistName)
  {
    artistName2 = [(_INPBMediaSearch *)self artistName];
    PBDataWriterWriteSubmessage();
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = self->_genreNames;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      v13 = 0;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  mediaIdentifier = [(_INPBMediaSearch *)self mediaIdentifier];

  if (mediaIdentifier)
  {
    mediaIdentifier2 = [(_INPBMediaSearch *)self mediaIdentifier];
    PBDataWriterWriteSubmessage();
  }

  mediaName = [(_INPBMediaSearch *)self mediaName];

  if (mediaName)
  {
    mediaName2 = [(_INPBMediaSearch *)self mediaName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBMediaSearch *)self hasMediaType])
  {
    mediaType = self->_mediaType;
    PBDataWriterWriteInt32Field();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = self->_moodNames;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      v24 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v31 + 1) + 8 * v24);
        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

  if ([(_INPBMediaSearch *)self hasReference])
  {
    reference = self->_reference;
    PBDataWriterWriteInt32Field();
  }

  releaseDate = [(_INPBMediaSearch *)self releaseDate];

  if (releaseDate)
  {
    releaseDate2 = [(_INPBMediaSearch *)self releaseDate];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBMediaSearch *)self hasSortOrder])
  {
    sortOrder = self->_sortOrder;
    PBDataWriterWriteInt32Field();
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (int)StringAsSortOrder:(id)order
{
  orderCopy = order;
  if ([orderCopy isEqualToString:@"UNKNOWN_SORT_ORDER"])
  {
    v4 = 0;
  }

  else if ([orderCopy isEqualToString:@"NEWEST"])
  {
    v4 = 1;
  }

  else if ([orderCopy isEqualToString:@"OLDEST"])
  {
    v4 = 2;
  }

  else if ([orderCopy isEqualToString:@"BEST"])
  {
    v4 = 3;
  }

  else if ([orderCopy isEqualToString:@"WORST"])
  {
    v4 = 4;
  }

  else if ([orderCopy isEqualToString:@"POPULAR"])
  {
    v4 = 5;
  }

  else if ([orderCopy isEqualToString:@"UNPOPULAR"])
  {
    v4 = 6;
  }

  else if ([orderCopy isEqualToString:@"TRENDING"])
  {
    v4 = 7;
  }

  else if ([orderCopy isEqualToString:@"RECOMMENDED"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSortOrder:(BOOL)order
{
  if (order)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setSortOrder:(int)order
{
  has = self->_has;
  if (order == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_sortOrder = order;
  }
}

- (int)StringAsReference:(id)reference
{
  referenceCopy = reference;
  if ([referenceCopy isEqualToString:@"UNKNOWN_REFERENCE"])
  {
    v4 = 0;
  }

  else if ([referenceCopy isEqualToString:@"CURRENTLY_PLAYING"])
  {
    v4 = 1;
  }

  else if ([referenceCopy isEqualToString:@"MY"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasReference:(BOOL)reference
{
  if (reference)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setReference:(int)reference
{
  has = self->_has;
  if (reference == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_reference = reference;
  }
}

- (void)addMoodNames:(id)names
{
  namesCopy = names;
  moodNames = self->_moodNames;
  v8 = namesCopy;
  if (!moodNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_moodNames;
    self->_moodNames = array;

    namesCopy = v8;
    moodNames = self->_moodNames;
  }

  [(NSArray *)moodNames addObject:namesCopy];
}

- (void)setMoodNames:(id)names
{
  v4 = [names mutableCopy];
  moodNames = self->_moodNames;
  self->_moodNames = v4;

  MEMORY[0x1EEE66BB8](v4, moodNames);
}

- (int)StringAsMediaType:(id)type
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

- (void)setMediaType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_mediaType = type;
  }
}

- (void)addGenreNames:(id)names
{
  namesCopy = names;
  genreNames = self->_genreNames;
  v8 = namesCopy;
  if (!genreNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_genreNames;
    self->_genreNames = array;

    namesCopy = v8;
    genreNames = self->_genreNames;
  }

  [(NSArray *)genreNames addObject:namesCopy];
}

- (void)setGenreNames:(id)names
{
  v4 = [names mutableCopy];
  genreNames = self->_genreNames;
  self->_genreNames = v4;

  MEMORY[0x1EEE66BB8](v4, genreNames);
}

@end