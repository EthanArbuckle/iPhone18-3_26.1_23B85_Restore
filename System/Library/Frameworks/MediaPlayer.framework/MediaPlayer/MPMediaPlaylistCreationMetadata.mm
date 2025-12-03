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

      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      localizedInfoDictionary = [mainBundle localizedInfoDictionary];
      v10 = [localizedInfoDictionary objectForKey:@"CFBundleDisplayName"];
      defaultAuthorDisplayName = v5->_defaultAuthorDisplayName;
      v5->_defaultAuthorDisplayName = v10;

      if (![(NSString *)v5->_defaultAuthorDisplayName length])
      {
        localizedInfoDictionary2 = [mainBundle localizedInfoDictionary];
        v13 = [localizedInfoDictionary2 objectForKey:@"CFBundleExecutable"];
        v14 = v5->_defaultAuthorDisplayName;
        v5->_defaultAuthorDisplayName = v13;
      }

      if (![(NSString *)v5->_defaultAuthorDisplayName length])
      {
        infoDictionary = [mainBundle infoDictionary];
        v16 = [infoDictionary objectForKey:@"CFBundleDisplayName"];
        v17 = v5->_defaultAuthorDisplayName;
        v5->_defaultAuthorDisplayName = v16;
      }

      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      infoDictionary2 = [mainBundle2 infoDictionary];
      v20 = [infoDictionary2 objectForKey:@"CFBundleExecutable"];
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
    selfCopy = self;
  }

  else
  {
    v26 = os_log_create("com.apple.amp.mediaplayer", "SDKLibrary");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_ERROR, "Cannot create playlist with an empty name", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end