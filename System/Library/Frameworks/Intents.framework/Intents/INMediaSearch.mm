@interface INMediaSearch
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INMediaSearch)initWithCoder:(id)coder;
- (INMediaSearch)initWithMediaType:(INMediaItemType)mediaType sortOrder:(INMediaSortOrder)sortOrder mediaName:(NSString *)mediaName artistName:(NSString *)artistName albumName:(NSString *)albumName genreNames:(NSArray *)genreNames moodNames:(NSArray *)moodNames releaseDate:(INDateComponentsRange *)releaseDate reference:(INMediaReference)reference mediaIdentifier:(NSString *)mediaIdentifier;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  null = albumName;
  if (!albumName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v29[4] = null;
  v28[5] = @"genreNames";
  genreNames = self->_genreNames;
  null2 = genreNames;
  if (!genreNames)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null2;
  v29[5] = null2;
  v28[6] = @"moodNames";
  moodNames = self->_moodNames;
  null3 = moodNames;
  if (!moodNames)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null3;
  v28[7] = @"releaseDate";
  releaseDate = self->_releaseDate;
  null4 = releaseDate;
  if (!releaseDate)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = null4;
  v28[8] = @"reference";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{self->_reference, v19}];
  v29[8] = v13;
  v28[9] = @"mediaIdentifier";
  mediaIdentifier = self->_mediaIdentifier;
  null5 = mediaIdentifier;
  if (!mediaIdentifier)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29[9] = null5;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INMediaSearch;
  v6 = [(INMediaSearch *)&v11 description];
  _dictionaryRepresentation = [(INMediaSearch *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
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
  [dictionary if_setObjectIfNonNil:v10 forKey:@"mediaType"];

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
  [dictionary if_setObjectIfNonNil:v13 forKey:@"sortOrder"];

  v14 = [encoderCopy encodeObject:self->_mediaName];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"mediaName"];

  v15 = [encoderCopy encodeObject:self->_artistName];
  [dictionary if_setObjectIfNonNil:v15 forKey:@"artistName"];

  v16 = [encoderCopy encodeObject:self->_albumName];
  [dictionary if_setObjectIfNonNil:v16 forKey:@"albumName"];

  v17 = [encoderCopy encodeObject:self->_genreNames];
  [dictionary if_setObjectIfNonNil:v17 forKey:@"genreNames"];

  v18 = [encoderCopy encodeObject:self->_moodNames];
  [dictionary if_setObjectIfNonNil:v18 forKey:@"moodNames"];

  v19 = [encoderCopy encodeObject:self->_releaseDate];
  [dictionary if_setObjectIfNonNil:v19 forKey:@"releaseDate"];

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
  [dictionary if_setObjectIfNonNil:v23 forKey:@"reference"];

  v24 = [encoderCopy encodeObject:self->_mediaIdentifier];

  [dictionary if_setObjectIfNonNil:v24 forKey:@"mediaIdentifier"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  mediaType = self->_mediaType;
  coderCopy = coder;
  [coderCopy encodeInteger:mediaType forKey:@"mediaType"];
  [coderCopy encodeInteger:self->_sortOrder forKey:@"sortOrder"];
  [coderCopy encodeObject:self->_mediaName forKey:@"mediaName"];
  [coderCopy encodeObject:self->_artistName forKey:@"artistName"];
  [coderCopy encodeObject:self->_albumName forKey:@"albumName"];
  [coderCopy encodeObject:self->_genreNames forKey:@"genreNames"];
  [coderCopy encodeObject:self->_moodNames forKey:@"moodNames"];
  [coderCopy encodeObject:self->_releaseDate forKey:@"releaseDate"];
  [coderCopy encodeInteger:self->_reference forKey:@"reference"];
  [coderCopy encodeObject:self->_mediaIdentifier forKey:@"mediaIdentifier"];
}

- (INMediaSearch)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22 = [coderCopy decodeIntegerForKey:@"mediaType"];
  v21 = [coderCopy decodeIntegerForKey:@"sortOrder"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaName"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artistName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"albumName"];
  v7 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"genreNames"];

  v11 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v13 = [v11 setWithArray:v12];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"moodNames"];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
  v16 = [coderCopy decodeIntegerForKey:@"reference"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaIdentifier"];

  v18 = [(INMediaSearch *)self initWithMediaType:v22 sortOrder:v21 mediaName:v4 artistName:v5 albumName:v6 genreNames:v10 moodNames:v14 releaseDate:v15 reference:v16 mediaIdentifier:v17];
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"mediaType"];
    v37 = INMediaItemTypeWithString(v9);

    v10 = [fromCopy objectForKeyedSubscript:@"sortOrder"];
    v36 = INMediaSortOrderWithString(v10);

    v11 = objc_opt_class();
    v12 = [fromCopy objectForKeyedSubscript:@"mediaName"];
    v35 = [decoderCopy decodeObjectOfClass:v11 from:v12];

    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"artistName"];
    v34 = [decoderCopy decodeObjectOfClass:v13 from:v14];

    v15 = objc_opt_class();
    v16 = [fromCopy objectForKeyedSubscript:@"albumName"];
    v17 = [decoderCopy decodeObjectOfClass:v15 from:v16];

    v18 = objc_opt_class();
    v19 = [fromCopy objectForKeyedSubscript:@"genreNames"];
    v20 = [decoderCopy decodeObjectsOfClass:v18 from:v19];

    v21 = objc_opt_class();
    v22 = [fromCopy objectForKeyedSubscript:@"moodNames"];
    v23 = [decoderCopy decodeObjectsOfClass:v21 from:v22];

    v24 = objc_opt_class();
    v25 = [fromCopy objectForKeyedSubscript:@"releaseDate"];
    v26 = [decoderCopy decodeObjectOfClass:v24 from:v25];

    v27 = [fromCopy objectForKeyedSubscript:@"reference"];
    v28 = INMediaReferenceWithString(v27);

    v29 = objc_opt_class();
    v30 = [fromCopy objectForKeyedSubscript:@"mediaIdentifier"];
    v31 = [decoderCopy decodeObjectOfClass:v29 from:v30];

    v32 = [[self alloc] initWithMediaType:v37 sortOrder:v36 mediaName:v35 artistName:v34 albumName:v17 genreNames:v20 moodNames:v23 releaseDate:v26 reference:v28 mediaIdentifier:v31];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

@end