@interface _INPBMediaSearch
- (BOOL)isEqual:(id)a3;
- (_INPBMediaSearch)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsMediaType:(id)a3;
- (int)StringAsReference:(id)a3;
- (int)StringAsSortOrder:(id)a3;
- (unint64_t)hash;
- (void)addGenreNames:(id)a3;
- (void)addMoodNames:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setGenreNames:(id)a3;
- (void)setHasReference:(BOOL)a3;
- (void)setHasSortOrder:(BOOL)a3;
- (void)setMediaType:(int)a3;
- (void)setMoodNames:(id)a3;
- (void)setReference:(int)a3;
- (void)setSortOrder:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBMediaSearch

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBMediaSearch *)self albumName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"albumName"];

  v6 = [(_INPBMediaSearch *)self artistName];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"artistName"];

  if ([(NSArray *)self->_genreNames count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
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

          v14 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"genreNames"];
  }

  v15 = [(_INPBMediaSearch *)self mediaIdentifier];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"mediaIdentifier"];

  v17 = [(_INPBMediaSearch *)self mediaName];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"mediaName"];

  if ([(_INPBMediaSearch *)self hasMediaType])
  {
    v19 = [(_INPBMediaSearch *)self mediaType];
    if (v19 >= 0x15)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v19];
    }

    else
    {
      v20 = off_1E7286670[v19];
    }

    [v3 setObject:v20 forKeyedSubscript:@"mediaType"];
  }

  if ([(NSArray *)self->_moodNames count])
  {
    v21 = [MEMORY[0x1E695DF70] array];
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

          v27 = [*(*(&v36 + 1) + 8 * j) dictionaryRepresentation];
          [v21 addObject:v27];
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKeyedSubscript:@"moodNames"];
  }

  if ([(_INPBMediaSearch *)self hasReference])
  {
    v28 = [(_INPBMediaSearch *)self reference];
    if (v28 >= 3)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v28];
    }

    else
    {
      v29 = off_1E7286718[v28];
    }

    [v3 setObject:v29 forKeyedSubscript:@"reference"];
  }

  v30 = [(_INPBMediaSearch *)self releaseDate];
  v31 = [v30 dictionaryRepresentation];
  [v3 setObject:v31 forKeyedSubscript:@"releaseDate"];

  if ([(_INPBMediaSearch *)self hasSortOrder])
  {
    v32 = [(_INPBMediaSearch *)self sortOrder];
    if (v32 >= 9)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v32];
    }

    else
    {
      v33 = off_1E7286730[v32];
    }

    [v3 setObject:v33 forKeyedSubscript:@"sortOrder"];
  }

  v34 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  v5 = [(_INPBMediaSearch *)self albumName];
  v6 = [v4 albumName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v7 = [(_INPBMediaSearch *)self albumName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBMediaSearch *)self albumName];
    v10 = [v4 albumName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(_INPBMediaSearch *)self artistName];
  v6 = [v4 artistName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v12 = [(_INPBMediaSearch *)self artistName];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBMediaSearch *)self artistName];
    v15 = [v4 artistName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(_INPBMediaSearch *)self genreNames];
  v6 = [v4 genreNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v17 = [(_INPBMediaSearch *)self genreNames];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBMediaSearch *)self genreNames];
    v20 = [v4 genreNames];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(_INPBMediaSearch *)self mediaIdentifier];
  v6 = [v4 mediaIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v22 = [(_INPBMediaSearch *)self mediaIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBMediaSearch *)self mediaIdentifier];
    v25 = [v4 mediaIdentifier];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(_INPBMediaSearch *)self mediaName];
  v6 = [v4 mediaName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v27 = [(_INPBMediaSearch *)self mediaName];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBMediaSearch *)self mediaName];
    v30 = [v4 mediaName];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v32 = [(_INPBMediaSearch *)self hasMediaType];
  if (v32 != [v4 hasMediaType])
  {
    goto LABEL_45;
  }

  if ([(_INPBMediaSearch *)self hasMediaType])
  {
    if ([v4 hasMediaType])
    {
      mediaType = self->_mediaType;
      if (mediaType != [v4 mediaType])
      {
        goto LABEL_45;
      }
    }
  }

  v5 = [(_INPBMediaSearch *)self moodNames];
  v6 = [v4 moodNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v34 = [(_INPBMediaSearch *)self moodNames];
  if (v34)
  {
    v35 = v34;
    v36 = [(_INPBMediaSearch *)self moodNames];
    v37 = [v4 moodNames];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v39 = [(_INPBMediaSearch *)self hasReference];
  if (v39 != [v4 hasReference])
  {
    goto LABEL_45;
  }

  if ([(_INPBMediaSearch *)self hasReference])
  {
    if ([v4 hasReference])
    {
      reference = self->_reference;
      if (reference != [v4 reference])
      {
        goto LABEL_45;
      }
    }
  }

  v5 = [(_INPBMediaSearch *)self releaseDate];
  v6 = [v4 releaseDate];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_44:

    goto LABEL_45;
  }

  v41 = [(_INPBMediaSearch *)self releaseDate];
  if (v41)
  {
    v42 = v41;
    v43 = [(_INPBMediaSearch *)self releaseDate];
    v44 = [v4 releaseDate];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v48 = [(_INPBMediaSearch *)self hasSortOrder];
  if (v48 == [v4 hasSortOrder])
  {
    if (!-[_INPBMediaSearch hasSortOrder](self, "hasSortOrder") || ![v4 hasSortOrder] || (sortOrder = self->_sortOrder, sortOrder == objc_msgSend(v4, "sortOrder")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBMediaSearch allocWithZone:](_INPBMediaSearch init];
  v6 = [(_INPBString *)self->_albumName copyWithZone:a3];
  [(_INPBMediaSearch *)v5 setAlbumName:v6];

  v7 = [(_INPBString *)self->_artistName copyWithZone:a3];
  [(_INPBMediaSearch *)v5 setArtistName:v7];

  v8 = [(NSArray *)self->_genreNames copyWithZone:a3];
  [(_INPBMediaSearch *)v5 setGenreNames:v8];

  v9 = [(_INPBString *)self->_mediaIdentifier copyWithZone:a3];
  [(_INPBMediaSearch *)v5 setMediaIdentifier:v9];

  v10 = [(_INPBString *)self->_mediaName copyWithZone:a3];
  [(_INPBMediaSearch *)v5 setMediaName:v10];

  if ([(_INPBMediaSearch *)self hasMediaType])
  {
    [(_INPBMediaSearch *)v5 setMediaType:[(_INPBMediaSearch *)self mediaType]];
  }

  v11 = [(NSArray *)self->_moodNames copyWithZone:a3];
  [(_INPBMediaSearch *)v5 setMoodNames:v11];

  if ([(_INPBMediaSearch *)self hasReference])
  {
    [(_INPBMediaSearch *)v5 setReference:[(_INPBMediaSearch *)self reference]];
  }

  v12 = [(_INPBDateTimeRange *)self->_releaseDate copyWithZone:a3];
  [(_INPBMediaSearch *)v5 setReleaseDate:v12];

  if ([(_INPBMediaSearch *)self hasSortOrder])
  {
    [(_INPBMediaSearch *)v5 setSortOrder:[(_INPBMediaSearch *)self sortOrder]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBMediaSearch *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBMediaSearch)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBMediaSearch *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBMediaSearch *)self albumName];

  if (v5)
  {
    v6 = [(_INPBMediaSearch *)self albumName];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBMediaSearch *)self artistName];

  if (v7)
  {
    v8 = [(_INPBMediaSearch *)self artistName];
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

  v15 = [(_INPBMediaSearch *)self mediaIdentifier];

  if (v15)
  {
    v16 = [(_INPBMediaSearch *)self mediaIdentifier];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_INPBMediaSearch *)self mediaName];

  if (v17)
  {
    v18 = [(_INPBMediaSearch *)self mediaName];
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

  v27 = [(_INPBMediaSearch *)self releaseDate];

  if (v27)
  {
    v28 = [(_INPBMediaSearch *)self releaseDate];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBMediaSearch *)self hasSortOrder])
  {
    sortOrder = self->_sortOrder;
    PBDataWriterWriteInt32Field();
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (int)StringAsSortOrder:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_SORT_ORDER"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NEWEST"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OLDEST"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BEST"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"WORST"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"POPULAR"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"UNPOPULAR"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"TRENDING"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RECOMMENDED"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSortOrder:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setSortOrder:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_sortOrder = a3;
  }
}

- (int)StringAsReference:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_REFERENCE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CURRENTLY_PLAYING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MY"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasReference:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setReference:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_reference = a3;
  }
}

- (void)addMoodNames:(id)a3
{
  v4 = a3;
  moodNames = self->_moodNames;
  v8 = v4;
  if (!moodNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_moodNames;
    self->_moodNames = v6;

    v4 = v8;
    moodNames = self->_moodNames;
  }

  [(NSArray *)moodNames addObject:v4];
}

- (void)setMoodNames:(id)a3
{
  v4 = [a3 mutableCopy];
  moodNames = self->_moodNames;
  self->_moodNames = v4;

  MEMORY[0x1EEE66BB8](v4, moodNames);
}

- (int)StringAsMediaType:(id)a3
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

- (void)setMediaType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_mediaType = a3;
  }
}

- (void)addGenreNames:(id)a3
{
  v4 = a3;
  genreNames = self->_genreNames;
  v8 = v4;
  if (!genreNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_genreNames;
    self->_genreNames = v6;

    v4 = v8;
    genreNames = self->_genreNames;
  }

  [(NSArray *)genreNames addObject:v4];
}

- (void)setGenreNames:(id)a3
{
  v4 = [a3 mutableCopy];
  genreNames = self->_genreNames;
  self->_genreNames = v4;

  MEMORY[0x1EEE66BB8](v4, genreNames);
}

@end