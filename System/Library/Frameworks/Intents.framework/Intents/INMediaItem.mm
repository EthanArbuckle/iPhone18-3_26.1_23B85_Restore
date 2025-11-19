@interface INMediaItem
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INMediaItem)initWithCoder:(id)a3;
- (INMediaItem)initWithIdentifier:(NSString *)identifier title:(NSString *)title type:(INMediaItemType)type artwork:(INImage *)artwork artist:(NSString *)artist;
- (INMediaItem)initWithIdentifier:(id)a3 title:(id)a4 type:(int64_t)a5 artwork:(id)a6 artist:(id)a7 topics:(id)a8 namedEntities:(id)a9 privateMediaItemValueData:(id)a10;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (id)spokenPhrase;
- (unint64_t)hash;
- (void)_injectProxiesForImages:(id)a3 completion:(id)a4;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INMediaItem

- (id)_dictionaryRepresentation
{
  v16[5] = *MEMORY[0x1E69E9840];
  v15[0] = @"identifier";
  identifier = self->_identifier;
  v4 = identifier;
  if (!identifier)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v4;
  v15[1] = @"title";
  title = self->_title;
  v6 = title;
  if (!title)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v6;
  v15[2] = @"type";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v16[2] = v7;
  v15[3] = @"artwork";
  artwork = self->_artwork;
  v9 = artwork;
  if (!artwork)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = v9;
  v15[4] = @"artist";
  artist = self->_artist;
  v11 = artist;
  if (!artist)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[4] = v11;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INMediaItem;
  v6 = [(INMediaItem *)&v11 description];
  v7 = [(INMediaItem *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_identifier];
  [v7 if_setObjectIfNonNil:v8 forKey:@"identifier"];

  v9 = [v6 encodeObject:self->_title];
  [v7 if_setObjectIfNonNil:v9 forKey:@"title"];

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
  [v7 if_setObjectIfNonNil:v12 forKey:@"type"];

  v13 = [v6 encodeObject:self->_artwork];
  [v7 if_setObjectIfNonNil:v13 forKey:@"artwork"];

  v14 = [v6 encodeObject:self->_artist];
  [v7 if_setObjectIfNonNil:v14 forKey:@"artist"];

  [v7 if_setObjectIfNonNil:self->_topics forKey:@"topics"];
  [v7 if_setObjectIfNonNil:self->_namedEntities forKey:@"namedEntities"];
  v15 = [v6 encodeObject:self->_privateMediaItemValueData];

  [v7 if_setObjectIfNonNil:v15 forKey:@"privateMediaItemValueData"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_artwork forKey:@"artwork"];
  [v5 encodeObject:self->_artist forKey:@"artist"];
  [v5 encodeObject:self->_topics forKey:@"topics"];
  [v5 encodeObject:self->_namedEntities forKey:@"namedEntities"];
  [v5 encodeObject:self->_privateMediaItemValueData forKey:@"privateMediaItemValueData"];
}

- (INMediaItem)initWithCoder:(id)a3
{
  v29[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v26 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v25 = [v3 decodeObjectOfClasses:v6 forKey:@"title"];

  v24 = [v3 decodeIntegerForKey:@"type"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"artwork"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v3 decodeObjectOfClasses:v9 forKey:@"artist"];

  v11 = MEMORY[0x1E695DFD8];
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v29[2] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  v13 = [v11 setWithArray:v12];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"topics"];

  v15 = MEMORY[0x1E695DFD8];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v17 = [v15 setWithArray:v16];
  v18 = [v3 decodeObjectOfClasses:v17 forKey:@"namedEntities"];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"privateMediaItemValueData"];

  v20 = [(INMediaItem *)self initWithIdentifier:v26 title:v25 type:v24 artwork:v23 artist:v10 topics:v14 namedEntities:v18 privateMediaItemValueData:v19];
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INMediaItem)initWithIdentifier:(id)a3 title:(id)a4 type:(int64_t)a5 artwork:(id)a6 artist:(id)a7 topics:(id)a8 namedEntities:(id)a9 privateMediaItemValueData:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v39.receiver = self;
  v39.super_class = INMediaItem;
  v23 = [(INMediaItem *)&v39 init];
  if (v23)
  {
    v24 = [v16 copy];
    identifier = v23->_identifier;
    v23->_identifier = v24;

    v26 = [v17 copy];
    title = v23->_title;
    v23->_title = v26;

    v23->_type = a5;
    v28 = [v18 copy];
    artwork = v23->_artwork;
    v23->_artwork = v28;

    v30 = [v19 copy];
    artist = v23->_artist;
    v23->_artist = v30;

    v32 = [v20 copy];
    topics = v23->_topics;
    v23->_topics = v32;

    v34 = [v21 copy];
    namedEntities = v23->_namedEntities;
    v23->_namedEntities = v34;

    v36 = [v22 copy];
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

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:@"identifier"];
  v10 = [v7 objectForKeyedSubscript:@"title"];
  v11 = [v7 objectForKeyedSubscript:@"type"];
  v12 = INMediaItemTypeWithString(v11);

  v13 = objc_opt_class();
  v14 = [v7 objectForKeyedSubscript:@"artwork"];
  v15 = [v8 decodeObjectOfClass:v13 from:v14];

  v16 = [v7 objectForKeyedSubscript:@"artist"];
  v17 = [v7 objectForKeyedSubscript:@"topics"];
  v18 = [v7 objectForKeyedSubscript:@"topics"];
  v19 = [v7 objectForKeyedSubscript:@"privateMediaItemValueData"];

  v20 = [[a1 alloc] initWithIdentifier:v9 title:v10 type:v12 artwork:v15 artist:v16 topics:v17 namedEntities:v18 privateMediaItemValueData:v19];

  return v20;
}

- (void)_injectProxiesForImages:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(INMediaItem *)self copy];
    v9 = [(INMediaItem *)self artwork];
    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __73__INMediaItem_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      v10[3] = &unk_1E7285CD0;
      v10[4] = v8;
      v11 = v7;
      v6[2](v6, v9, v10);
    }

    else
    {
      (*(v7 + 2))(v7, v8);
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
  v3 = [(INMediaItem *)self title];
  v4 = [(INMediaItem *)self artist];
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = +[INStringLocalizer siriLocalizer];
    v7 = INLocalizedStringWithLocalizer(@"%1$@ by %2$@", 0, v6);
    v8 = [v5 stringWithFormat:v7, v3, v4];

LABEL_4:
    goto LABEL_10;
  }

  if ([v3 length])
  {
    v9 = v3;
  }

  else
  {
    if (![v4 length])
    {
      v6 = [(INMediaItem *)self identifier];
      v11 = [(__CFString *)v6 length];
      v12 = &stru_1F01E0850;
      if (v11)
      {
        v12 = v6;
      }

      v8 = v12;
      goto LABEL_4;
    }

    v9 = v4;
  }

  v8 = v9;
LABEL_10:

  return v8;
}

- (void)_intents_updateContainerWithCache:(id)a3
{
  v13 = a3;
  v4 = [(INMediaItem *)self artwork];
  if (v4)
  {
    v5 = v4;
    v6 = [(INMediaItem *)self artwork];
    v7 = [v6 _identifier];
    v8 = [v13 cacheableObjectForIdentifier:v7];

    if (v8)
    {
      v9 = [(INMediaItem *)self artwork];
      v10 = [v9 _identifier];
      v11 = [v13 cacheableObjectForIdentifier:v10];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(INMediaItem *)self artwork];
        [v11 _imageSize];
        [v12 _setImageSize:?];
      }
    }
  }
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(INMediaItem *)self artwork];

  if (v4)
  {
    v5 = [(INMediaItem *)self artwork];
    [v3 addObject:v5];
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