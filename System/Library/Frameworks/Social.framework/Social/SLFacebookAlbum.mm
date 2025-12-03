@interface SLFacebookAlbum
+ (id)albumWithDataDictionary:(id)dictionary;
+ (id)albumsWithAlbumDataDictionaries:(id)dictionaries;
- (SLFacebookAlbum)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLFacebookAlbum

- (SLFacebookAlbum)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SLFacebookAlbum;
  v5 = [(SLFacebookAlbum *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(SLFacebookAlbum *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(SLFacebookAlbum *)v5 setName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coverPhotoIdentifier"];
    [(SLFacebookAlbum *)v5 setCoverPhotoIdentifier:v8];

    -[SLFacebookAlbum setCount:](v5, "setCount:", [coderCopy decodeIntegerForKey:@"count"]);
    -[SLFacebookAlbum setCanUpload:](v5, "setCanUpload:", [coderCopy decodeBoolForKey:@"canUpload"]);
    -[SLFacebookAlbum setIsDefaultAlbum:](v5, "setIsDefaultAlbum:", [coderCopy decodeBoolForKey:@"isDefaultAlbum"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SLFacebookAlbum *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  name = [(SLFacebookAlbum *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  coverPhotoIdentifier = [(SLFacebookAlbum *)self coverPhotoIdentifier];
  [coderCopy encodeObject:coverPhotoIdentifier forKey:@"coverPhotoIdentifier"];

  [coderCopy encodeInteger:-[SLFacebookAlbum count](self forKey:{"count"), @"count"}];
  [coderCopy encodeBool:-[SLFacebookAlbum canUpload](self forKey:{"canUpload"), @"canUpload"}];
  [coderCopy encodeBool:-[SLFacebookAlbum isDefaultAlbum](self forKey:{"isDefaultAlbum"), @"isDefaultAlbum"}];
}

+ (id)albumWithDataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy && ([dictionaryCopy objectForKeyedSubscript:@"id"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    _SLLog(v3, 6, @"Creating album with dict %@");
    v7 = objc_alloc_init(SLFacebookAlbum);
    v8 = [v5 objectForKeyedSubscript:{@"id", v5}];
    [(SLFacebookAlbum *)v7 setIdentifier:v8];

    v9 = [v5 objectForKeyedSubscript:@"name"];
    [(SLFacebookAlbum *)v7 setName:v9];

    v10 = [v5 objectForKeyedSubscript:@"photo_count"];
    -[SLFacebookAlbum setCount:](v7, "setCount:", [v10 intValue]);

    v11 = [v5 objectForKeyedSubscript:@"cover_photo"];
    [(SLFacebookAlbum *)v7 setCoverPhotoIdentifier:v11];

    v12 = [v5 objectForKeyedSubscript:@"can_upload"];

    if (v12)
    {
      v13 = [v5 objectForKeyedSubscript:@"can_upload"];
      -[SLFacebookAlbum setCanUpload:](v7, "setCanUpload:", [v13 BOOLValue]);

      [(SLFacebookAlbum *)v7 canUpload];
      _SLLog(v3, 6, @"Setting canUpload=%s");
    }

    else
    {
      _SLLog(v3, 6, @"Assuming can_upload");
      [(SLFacebookAlbum *)v7 setCanUpload:1];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)albumsWithAlbumDataDictionaries:(id)dictionaries
{
  v17 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [objc_opt_class() albumWithDataDictionary:{*(*(&v12 + 1) + 8 * i), v12}];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(SLFacebookAlbum *)self identifier];
  name = [(SLFacebookAlbum *)self name];
  isDefaultAlbum = [(SLFacebookAlbum *)self isDefaultAlbum];
  v7 = @"NO";
  if (isDefaultAlbum)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<SLFacebookAlbum: identifier=%@ name=%@ isDefaultAlbum=%@", identifier, name, v7];

  return v8;
}

@end