@interface INMediaSearch
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INMediaSearch)initWithCoder:(id)a3;
- (INMediaSearch)initWithMediaType:(INMediaItemType)mediaType sortOrder:(INMediaSortOrder)sortOrder mediaName:(NSString *)mediaName artistName:(NSString *)artistName albumName:(NSString *)albumName genreNames:(NSArray *)genreNames moodNames:(NSArray *)moodNames releaseDate:(INDateComponentsRange *)releaseDate reference:(INMediaReference)reference mediaIdentifier:(NSString *)mediaIdentifier;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INMediaSearch

- (id)_dictionaryRepresentation
{
  v29[10] = *MEMORY[0x1E69E9840];
  v28[0] = @"mediaType";
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:self->_mediaType];
  v29[0] = v27;
  v28[1] = @"sortOrder";
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sortOrder];
  v29[1] = v26;
  v28[2] = @"mediaName";
  mediaName = self->_mediaName;
  v25 = mediaName;
  if (!mediaName)
  {
    mediaName = [MEMORY[0x1E695DFB0] null];
  }

  v23 = mediaName;
  v29[2] = mediaName;
  v28[3] = @"artistName";
  artistName = self->_artistName;
  v24 = artistName;
  if (!artistName)
  {
    artistName = [MEMORY[0x1E695DFB0] null];
  }

  v22 = artistName;
  v29[3] = artistName;
  v28[4] = @"albumName";
  albumName = self->_albumName;
  v6 = albumName;
  if (!albumName)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v6;
  v29[4] = v6;
  v28[5] = @"genreNames";
  genreNames = self->_genreNames;
  v8 = genreNames;
  if (!genreNames)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v8;
  v29[5] = v8;
  v28[6] = @"moodNames";
  moodNames = self->_moodNames;
  v10 = moodNames;
  if (!moodNames)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = v10;
  v28[7] = @"releaseDate";
  releaseDate = self->_releaseDate;
  v12 = releaseDate;
  if (!releaseDate)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = v12;
  v28[8] = @"reference";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{self->_reference, v19}];
  v29[8] = v13;
  v28[9] = @"mediaIdentifier";
  mediaIdentifier = self->_mediaIdentifier;
  v15 = mediaIdentifier;
  if (!mediaIdentifier)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v29[9] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:10];
  if (!mediaIdentifier)
  {
  }

  if (releaseDate)
  {
    if (moodNames)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (moodNames)
    {
LABEL_19:
      if (genreNames)
      {
        goto LABEL_20;
      }

LABEL_30:

      if (albumName)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }
  }

  if (!genreNames)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (albumName)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!v24)
  {
  }

  if (!v25)
  {
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INMediaSearch;
  v6 = [(INMediaSearch *)&v11 description];
  v7 = [(INMediaSearch *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = self->_mediaType - 1;
  if (v8 > 0x13)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = *(&off_1E7285F00 + v8);
  }

  v10 = v9;
  [v7 if_setObjectIfNonNil:v10 forKey:@"mediaType"];

  v11 = self->_sortOrder - 1;
  if (v11 > 7)
  {
    v12 = @"unknown";
  }

  else
  {
    v12 = off_1E7286838[v11];
  }

  v13 = v12;
  [v7 if_setObjectIfNonNil:v13 forKey:@"sortOrder"];

  v14 = [v6 encodeObject:self->_mediaName];
  [v7 if_setObjectIfNonNil:v14 forKey:@"mediaName"];

  v15 = [v6 encodeObject:self->_artistName];
  [v7 if_setObjectIfNonNil:v15 forKey:@"artistName"];

  v16 = [v6 encodeObject:self->_albumName];
  [v7 if_setObjectIfNonNil:v16 forKey:@"albumName"];

  v17 = [v6 encodeObject:self->_genreNames];
  [v7 if_setObjectIfNonNil:v17 forKey:@"genreNames"];

  v18 = [v6 encodeObject:self->_moodNames];
  [v7 if_setObjectIfNonNil:v18 forKey:@"moodNames"];

  v19 = [v6 encodeObject:self->_releaseDate];
  [v7 if_setObjectIfNonNil:v19 forKey:@"releaseDate"];

  reference = self->_reference;
  v21 = @"unknown";
  if (reference == 2)
  {
    v21 = @"my";
  }

  if (reference == 1)
  {
    v22 = @"currentlyPlaying";
  }

  else
  {
    v22 = v21;
  }

  v23 = v22;
  [v7 if_setObjectIfNonNil:v23 forKey:@"reference"];

  v24 = [v6 encodeObject:self->_mediaIdentifier];

  [v7 if_setObjectIfNonNil:v24 forKey:@"mediaIdentifier"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  mediaType = self->_mediaType;
  v5 = a3;
  [v5 encodeInteger:mediaType forKey:@"mediaType"];
  [v5 encodeInteger:self->_sortOrder forKey:@"sortOrder"];
  [v5 encodeObject:self->_mediaName forKey:@"mediaName"];
  [v5 encodeObject:self->_artistName forKey:@"artistName"];
  [v5 encodeObject:self->_albumName forKey:@"albumName"];
  [v5 encodeObject:self->_genreNames forKey:@"genreNames"];
  [v5 encodeObject:self->_moodNames forKey:@"moodNames"];
  [v5 encodeObject:self->_releaseDate forKey:@"releaseDate"];
  [v5 encodeInteger:self->_reference forKey:@"reference"];
  [v5 encodeObject:self->_mediaIdentifier forKey:@"mediaIdentifier"];
}

- (INMediaSearch)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v22 = [v3 decodeIntegerForKey:@"mediaType"];
  v21 = [v3 decodeIntegerForKey:@"sortOrder"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mediaName"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"artistName"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"albumName"];
  v7 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v3 decodeObjectOfClasses:v9 forKey:@"genreNames"];

  v11 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v13 = [v11 setWithArray:v12];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"moodNames"];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
  v16 = [v3 decodeIntegerForKey:@"reference"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mediaIdentifier"];

  v18 = [(INMediaSearch *)self initWithMediaType:v22 sortOrder:v21 mediaName:v4 artistName:v5 albumName:v6 genreNames:v10 moodNames:v14 releaseDate:v15 reference:v16 mediaIdentifier:v17];
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      v14 = 0;
      if (self->_mediaType == v5->_mediaType && self->_sortOrder == v5->_sortOrder)
      {
        mediaName = self->_mediaName;
        if (mediaName == v6->_mediaName || [(NSString *)mediaName isEqual:?])
        {
          artistName = self->_artistName;
          if (artistName == v6->_artistName || [(NSString *)artistName isEqual:?])
          {
            albumName = self->_albumName;
            if (albumName == v6->_albumName || [(NSString *)albumName isEqual:?])
            {
              genreNames = self->_genreNames;
              if (genreNames == v6->_genreNames || [(NSArray *)genreNames isEqual:?])
              {
                moodNames = self->_moodNames;
                if (moodNames == v6->_moodNames || [(NSArray *)moodNames isEqual:?])
                {
                  releaseDate = self->_releaseDate;
                  if ((releaseDate == v6->_releaseDate || [(INDateComponentsRange *)releaseDate isEqual:?]) && self->_reference == v6->_reference)
                  {
                    mediaIdentifier = self->_mediaIdentifier;
                    if (mediaIdentifier == v6->_mediaIdentifier || [(NSString *)mediaIdentifier isEqual:?])
                    {
                      v14 = 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_mediaType];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sortOrder];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSString *)self->_mediaName hash];
  v8 = v7 ^ [(NSString *)self->_artistName hash];
  v9 = v8 ^ [(NSString *)self->_albumName hash];
  v10 = v6 ^ v9 ^ [(NSArray *)self->_genreNames hash];
  v11 = [(NSArray *)self->_moodNames hash];
  v12 = v11 ^ [(INDateComponentsRange *)self->_releaseDate hash];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reference];
  v14 = v12 ^ [v13 hash];
  v15 = v14 ^ [(NSString *)self->_mediaIdentifier hash];

  return v10 ^ v15;
}

- (INMediaSearch)initWithMediaType:(INMediaItemType)mediaType sortOrder:(INMediaSortOrder)sortOrder mediaName:(NSString *)mediaName artistName:(NSString *)artistName albumName:(NSString *)albumName genreNames:(NSArray *)genreNames moodNames:(NSArray *)moodNames releaseDate:(INDateComponentsRange *)releaseDate reference:(INMediaReference)reference mediaIdentifier:(NSString *)mediaIdentifier
{
  v18 = mediaName;
  v19 = artistName;
  v20 = albumName;
  v21 = genreNames;
  v22 = moodNames;
  v23 = releaseDate;
  v24 = mediaIdentifier;
  v42.receiver = self;
  v42.super_class = INMediaSearch;
  v25 = [(INMediaSearch *)&v42 init];
  v26 = v25;
  if (v25)
  {
    v25->_mediaType = mediaType;
    v25->_sortOrder = sortOrder;
    v27 = [(NSString *)v18 copy];
    v28 = v26->_mediaName;
    v26->_mediaName = v27;

    v29 = [(NSString *)v19 copy];
    v30 = v26->_artistName;
    v26->_artistName = v29;

    v31 = [(NSString *)v20 copy];
    v32 = v26->_albumName;
    v26->_albumName = v31;

    v33 = [(NSArray *)v21 copy];
    v34 = v26->_genreNames;
    v26->_genreNames = v33;

    v35 = [(NSArray *)v22 copy];
    v36 = v26->_moodNames;
    v26->_moodNames = v35;

    v37 = [(INDateComponentsRange *)v23 copy];
    v38 = v26->_releaseDate;
    v26->_releaseDate = v37;

    v26->_reference = reference;
    v39 = [(NSString *)v24 copy];
    v40 = v26->_mediaIdentifier;
    v26->_mediaIdentifier = v39;
  }

  return v26;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"mediaType"];
    v37 = INMediaItemTypeWithString(v9);

    v10 = [v8 objectForKeyedSubscript:@"sortOrder"];
    v36 = INMediaSortOrderWithString(v10);

    v11 = objc_opt_class();
    v12 = [v8 objectForKeyedSubscript:@"mediaName"];
    v35 = [v7 decodeObjectOfClass:v11 from:v12];

    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"artistName"];
    v34 = [v7 decodeObjectOfClass:v13 from:v14];

    v15 = objc_opt_class();
    v16 = [v8 objectForKeyedSubscript:@"albumName"];
    v17 = [v7 decodeObjectOfClass:v15 from:v16];

    v18 = objc_opt_class();
    v19 = [v8 objectForKeyedSubscript:@"genreNames"];
    v20 = [v7 decodeObjectsOfClass:v18 from:v19];

    v21 = objc_opt_class();
    v22 = [v8 objectForKeyedSubscript:@"moodNames"];
    v23 = [v7 decodeObjectsOfClass:v21 from:v22];

    v24 = objc_opt_class();
    v25 = [v8 objectForKeyedSubscript:@"releaseDate"];
    v26 = [v7 decodeObjectOfClass:v24 from:v25];

    v27 = [v8 objectForKeyedSubscript:@"reference"];
    v28 = INMediaReferenceWithString(v27);

    v29 = objc_opt_class();
    v30 = [v8 objectForKeyedSubscript:@"mediaIdentifier"];
    v31 = [v7 decodeObjectOfClass:v29 from:v30];

    v32 = [[a1 alloc] initWithMediaType:v37 sortOrder:v36 mediaName:v35 artistName:v34 albumName:v17 genreNames:v20 moodNames:v23 releaseDate:v26 reference:v28 mediaIdentifier:v31];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

@end