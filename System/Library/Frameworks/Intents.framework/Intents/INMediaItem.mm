@interface INMediaItem
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INMediaItem)initWithCoder:(id)coder;
- (INMediaItem)initWithIdentifier:(NSString *)identifier title:(NSString *)title type:(INMediaItemType)type artwork:(INImage *)artwork artist:(NSString *)artist;
- (INMediaItem)initWithIdentifier:(id)identifier title:(id)title type:(int64_t)type artwork:(id)artwork artist:(id)artist topics:(id)topics namedEntities:(id)entities privateMediaItemValueData:(id)self0;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)spokenPhrase;
- (unint64_t)hash;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INMediaItem

- (id)_dictionaryRepresentation
{
  v16[5] = *MEMORY[0x1E69E9840];
  v15[0] = @"identifier";
  identifier = self->_identifier;
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"title";
  title = self->_title;
  null2 = title;
  if (!title)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"type";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v16[2] = v7;
  v15[3] = @"artwork";
  artwork = self->_artwork;
  null3 = artwork;
  if (!artwork)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null3;
  v15[4] = @"artist";
  artist = self->_artist;
  null4 = artist;
  if (!artist)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[4] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  if (artist)
  {
    if (artwork)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (artwork)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  if (title)
  {
    if (identifier)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (identifier)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INMediaItem;
  v6 = [(INMediaItem *)&v11 description];
  _dictionaryRepresentation = [(INMediaItem *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_identifier];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"identifier"];

  v9 = [encoderCopy encodeObject:self->_title];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"title"];

  v10 = self->_type - 1;
  if (v10 > 0x13)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = *(&off_1E7285F00 + v10);
  }

  v12 = v11;
  [dictionary if_setObjectIfNonNil:v12 forKey:@"type"];

  v13 = [encoderCopy encodeObject:self->_artwork];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"artwork"];

  v14 = [encoderCopy encodeObject:self->_artist];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"artist"];

  [dictionary if_setObjectIfNonNil:self->_topics forKey:@"topics"];
  [dictionary if_setObjectIfNonNil:self->_namedEntities forKey:@"namedEntities"];
  v15 = [encoderCopy encodeObject:self->_privateMediaItemValueData];

  [dictionary if_setObjectIfNonNil:v15 forKey:@"privateMediaItemValueData"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_artwork forKey:@"artwork"];
  [coderCopy encodeObject:self->_artist forKey:@"artist"];
  [coderCopy encodeObject:self->_topics forKey:@"topics"];
  [coderCopy encodeObject:self->_namedEntities forKey:@"namedEntities"];
  [coderCopy encodeObject:self->_privateMediaItemValueData forKey:@"privateMediaItemValueData"];
}

- (INMediaItem)initWithCoder:(id)coder
{
  v29[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v25 = [coderCopy decodeObjectOfClasses:v6 forKey:@"title"];

  v24 = [coderCopy decodeIntegerForKey:@"type"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artwork"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"artist"];

  v11 = MEMORY[0x1E695DFD8];
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v29[2] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  v13 = [v11 setWithArray:v12];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"topics"];

  v15 = MEMORY[0x1E695DFD8];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v17 = [v15 setWithArray:v16];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"namedEntities"];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateMediaItemValueData"];

  v20 = [(INMediaItem *)self initWithIdentifier:v26 title:v25 type:v24 artwork:v23 artist:v10 topics:v14 namedEntities:v18 privateMediaItemValueData:v19];
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      v9 = 0;
      if (identifier == v5->_identifier || [(NSString *)identifier isEqual:?])
      {
        title = self->_title;
        if ((title == v5->_title || [(NSString *)title isEqual:?]) && self->_type == v5->_type)
        {
          artist = self->_artist;
          if (artist == v5->_artist || [(NSString *)artist isEqual:?])
          {
            v9 = 1;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_title hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v6 = [v5 hash];
  v7 = v4 ^ [(NSString *)self->_artist hash];

  return v7 ^ v6;
}

- (INMediaItem)initWithIdentifier:(id)identifier title:(id)title type:(int64_t)type artwork:(id)artwork artist:(id)artist topics:(id)topics namedEntities:(id)entities privateMediaItemValueData:(id)self0
{
  identifierCopy = identifier;
  titleCopy = title;
  artworkCopy = artwork;
  artistCopy = artist;
  topicsCopy = topics;
  entitiesCopy = entities;
  dataCopy = data;
  v39.receiver = self;
  v39.super_class = INMediaItem;
  v23 = [(INMediaItem *)&v39 init];
  if (v23)
  {
    v24 = [identifierCopy copy];
    identifier = v23->_identifier;
    v23->_identifier = v24;

    v26 = [titleCopy copy];
    title = v23->_title;
    v23->_title = v26;

    v23->_type = type;
    v28 = [artworkCopy copy];
    artwork = v23->_artwork;
    v23->_artwork = v28;

    v30 = [artistCopy copy];
    artist = v23->_artist;
    v23->_artist = v30;

    v32 = [topicsCopy copy];
    topics = v23->_topics;
    v23->_topics = v32;

    v34 = [entitiesCopy copy];
    namedEntities = v23->_namedEntities;
    v23->_namedEntities = v34;

    v36 = [dataCopy copy];
    privateMediaItemValueData = v23->_privateMediaItemValueData;
    v23->_privateMediaItemValueData = v36;
  }

  return v23;
}

- (INMediaItem)initWithIdentifier:(NSString *)identifier title:(NSString *)title type:(INMediaItemType)type artwork:(INImage *)artwork artist:(NSString *)artist
{
  v12 = identifier;
  v13 = title;
  v14 = artwork;
  v15 = artist;
  v26.receiver = self;
  v26.super_class = INMediaItem;
  v16 = [(INMediaItem *)&v26 init];
  if (v16)
  {
    v17 = [(NSString *)v12 copy];
    v18 = v16->_identifier;
    v16->_identifier = v17;

    v19 = [(NSString *)v13 copy];
    v20 = v16->_title;
    v16->_title = v19;

    v16->_type = type;
    v21 = [(INImage *)v14 copy];
    v22 = v16->_artwork;
    v16->_artwork = v21;

    v23 = [(NSString *)v15 copy];
    v24 = v16->_artist;
    v16->_artist = v23;
  }

  return v16;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  decoderCopy = decoder;
  v9 = [fromCopy objectForKeyedSubscript:@"identifier"];
  v10 = [fromCopy objectForKeyedSubscript:@"title"];
  v11 = [fromCopy objectForKeyedSubscript:@"type"];
  v12 = INMediaItemTypeWithString(v11);

  v13 = objc_opt_class();
  v14 = [fromCopy objectForKeyedSubscript:@"artwork"];
  v15 = [decoderCopy decodeObjectOfClass:v13 from:v14];

  v16 = [fromCopy objectForKeyedSubscript:@"artist"];
  v17 = [fromCopy objectForKeyedSubscript:@"topics"];
  v18 = [fromCopy objectForKeyedSubscript:@"topics"];
  v19 = [fromCopy objectForKeyedSubscript:@"privateMediaItemValueData"];

  v20 = [[self alloc] initWithIdentifier:v9 title:v10 type:v12 artwork:v15 artist:v16 topics:v17 namedEntities:v18 privateMediaItemValueData:v19];

  return v20;
}

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [(INMediaItem *)self copy];
    artwork = [(INMediaItem *)self artwork];
    if (artwork)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __73__INMediaItem_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      v10[3] = &unk_1E7285CD0;
      v10[4] = v8;
      v11 = completionCopy;
      imagesCopy[2](imagesCopy, artwork, v10);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v8);
    }
  }
}

uint64_t __73__INMediaItem_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setArtwork:a2];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)spokenPhrase
{
  title = [(INMediaItem *)self title];
  artist = [(INMediaItem *)self artist];
  if ([title length] && objc_msgSend(artist, "length"))
  {
    v5 = MEMORY[0x1E696AEC0];
    identifier = +[INStringLocalizer siriLocalizer];
    v7 = INLocalizedStringWithLocalizer(@"%1$@ by %2$@", 0, identifier);
    v8 = [v5 stringWithFormat:v7, title, artist];

LABEL_4:
    goto LABEL_10;
  }

  if ([title length])
  {
    v9 = title;
  }

  else
  {
    if (![artist length])
    {
      identifier = [(INMediaItem *)self identifier];
      v11 = [(__CFString *)identifier length];
      v12 = &stru_1F01E0850;
      if (v11)
      {
        v12 = identifier;
      }

      v8 = v12;
      goto LABEL_4;
    }

    v9 = artist;
  }

  v8 = v9;
LABEL_10:

  return v8;
}

- (void)_intents_updateContainerWithCache:(id)cache
{
  cacheCopy = cache;
  artwork = [(INMediaItem *)self artwork];
  if (artwork)
  {
    v5 = artwork;
    artwork2 = [(INMediaItem *)self artwork];
    _identifier = [artwork2 _identifier];
    v8 = [cacheCopy cacheableObjectForIdentifier:_identifier];

    if (v8)
    {
      artwork3 = [(INMediaItem *)self artwork];
      _identifier2 = [artwork3 _identifier];
      v11 = [cacheCopy cacheableObjectForIdentifier:_identifier2];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        artwork4 = [(INMediaItem *)self artwork];
        [v11 _imageSize];
        [artwork4 _setImageSize:?];
      }
    }
  }
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  artwork = [(INMediaItem *)self artwork];

  if (artwork)
  {
    artwork2 = [(INMediaItem *)self artwork];
    [v3 addObject:artwork2];
  }

  if ([v3 count])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

@end