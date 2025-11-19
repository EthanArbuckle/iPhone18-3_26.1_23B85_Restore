@interface MPMediaPlaylistCreationMetadata
- (MPMediaPlaylistCreationMetadata)initWithName:(NSString *)name;
- (NSString)authorDisplayName;
@end

@implementation MPMediaPlaylistCreationMetadata

- (NSString)authorDisplayName
{
  v3 = [(NSString *)self->_authorDisplayName copy];
  if (![v3 length])
  {
    v4 = [(NSString *)self->_defaultAuthorDisplayName copy];

    v3 = v4;
  }

  return v3;
}

- (MPMediaPlaylistCreationMetadata)initWithName:(NSString *)name
{
  v4 = name;
  if ([(NSString *)v4 length])
  {
    v28.receiver = self;
    v28.super_class = MPMediaPlaylistCreationMetadata;
    v5 = [(MPMediaPlaylistCreationMetadata *)&v28 init];
    if (v5)
    {
      v6 = [(NSString *)v4 copy];
      v7 = v5->_name;
      v5->_name = v6;

      v8 = [MEMORY[0x1E696AAE8] mainBundle];
      v9 = [v8 localizedInfoDictionary];
      v10 = [v9 objectForKey:@"CFBundleDisplayName"];
      defaultAuthorDisplayName = v5->_defaultAuthorDisplayName;
      v5->_defaultAuthorDisplayName = v10;

      if (![(NSString *)v5->_defaultAuthorDisplayName length])
      {
        v12 = [v8 localizedInfoDictionary];
        v13 = [v12 objectForKey:@"CFBundleExecutable"];
        v14 = v5->_defaultAuthorDisplayName;
        v5->_defaultAuthorDisplayName = v13;
      }

      if (![(NSString *)v5->_defaultAuthorDisplayName length])
      {
        v15 = [v8 infoDictionary];
        v16 = [v15 objectForKey:@"CFBundleDisplayName"];
        v17 = v5->_defaultAuthorDisplayName;
        v5->_defaultAuthorDisplayName = v16;
      }

      v18 = [MEMORY[0x1E696AAE8] mainBundle];
      v19 = [v18 infoDictionary];
      v20 = [v19 objectForKey:@"CFBundleExecutable"];
      v21 = v5->_defaultAuthorDisplayName;
      v5->_defaultAuthorDisplayName = v20;

      if (![(NSString *)v5->_defaultAuthorDisplayName length])
      {
        v22 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_ERROR, "Could not resolve default author display name", buf, 2u);
        }

        v23 = v5->_defaultAuthorDisplayName;
        v5->_defaultAuthorDisplayName = &stru_1F149ECA8;
      }

      descriptionText = v5->_descriptionText;
      v5->_descriptionText = &stru_1F149ECA8;
    }

    self = v5;
    v25 = self;
  }

  else
  {
    v26 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_ERROR, "Cannot create playlist with an empty name", buf, 2u);
    }

    v25 = 0;
  }

  return v25;
}

@end