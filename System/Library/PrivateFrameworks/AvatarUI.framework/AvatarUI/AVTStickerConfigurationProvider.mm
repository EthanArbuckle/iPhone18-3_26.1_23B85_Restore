@interface AVTStickerConfigurationProvider
- (AVTStickerConfigurationProvider)initWithEnvironment:(id)environment forStickerPacks:(id)packs stickerConfigurationNames:(id)names;
- (id)availableStickerNamesForAvatarRecord:(id)record;
- (id)filteredStickerConfigurations:(id)configurations;
- (id)stickerConfigurationForAvatarRecord:(id)record stickerName:(id)name;
- (id)stickerConfigurationsForAvatarRecord:(id)record;
@end

@implementation AVTStickerConfigurationProvider

- (AVTStickerConfigurationProvider)initWithEnvironment:(id)environment forStickerPacks:(id)packs stickerConfigurationNames:(id)names
{
  environmentCopy = environment;
  packsCopy = packs;
  namesCopy = names;
  v17.receiver = self;
  v17.super_class = AVTStickerConfigurationProvider;
  v12 = [(AVTStickerConfigurationProvider *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_environment, environment);
    objc_storeStrong(&v13->_stickerPacks, packs);
    v14 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    stickerConfigurationCache = v13->_stickerConfigurationCache;
    v13->_stickerConfigurationCache = v14;

    [(NSCache *)v13->_stickerConfigurationCache setCountLimit:3];
    objc_storeStrong(&v13->_stickerConfigurationNames, names);
  }

  return v13;
}

- (id)stickerConfigurationsForAvatarRecord:(id)record
{
  v26 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  if ([recordCopy isEditable])
  {
    identifier = @"memoji";
  }

  else
  {
    identifier = [recordCopy identifier];
    if (!identifier)
    {
      v18 = 0;
      goto LABEL_17;
    }
  }

  v6 = [(NSCache *)self->_stickerConfigurationCache objectForKey:identifier];
  if (!v6)
  {
    v20 = identifier;
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    stickerPacks = [(AVTStickerConfigurationProvider *)self stickerPacks];
    v9 = [stickerPacks countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(stickerPacks);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          isEditable = [recordCopy isEditable];
          v15 = MEMORY[0x1E698E2C0];
          if (isEditable)
          {
            identifier2 = [MEMORY[0x1E698E2C0] stickerConfigurationsForMemojiInStickerPack:v13];
            [array addObjectsFromArray:identifier2];
          }

          else
          {
            identifier2 = [recordCopy identifier];
            v17 = [v15 stickerConfigurationsForAnimojiNamed:identifier2 inStickerPack:v13];
            [array addObjectsFromArray:v17];
          }
        }

        v10 = [stickerPacks countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v6 = [(AVTStickerConfigurationProvider *)self filteredStickerConfigurations:array];

    identifier = v20;
    [(NSCache *)self->_stickerConfigurationCache setObject:v6 forKey:v20];
  }

  v18 = v6;

LABEL_17:

  return v18;
}

- (id)stickerConfigurationForAvatarRecord:(id)record stickerName:(id)name
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    [(AVTStickerConfigurationProvider *)self stickerConfigurationsForAvatarRecord:record];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          name = [v11 name];
          v13 = [nameCopy isEqualToString:name];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)availableStickerNamesForAvatarRecord:(id)record
{
  v22 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  stickerPacks = [(AVTStickerConfigurationProvider *)self stickerPacks];
  v7 = [stickerPacks countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(stickerPacks);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        isEditable = [recordCopy isEditable];
        v13 = MEMORY[0x1E698E2C0];
        if (isEditable)
        {
          identifier = [MEMORY[0x1E698E2C0] availableStickerNamesForMemojiInStickerPack:v11];
          [array addObjectsFromArray:identifier];
        }

        else
        {
          identifier = [recordCopy identifier];
          v15 = [v13 availableStickerNamesForAnimojiNamed:identifier inStickerPack:v11];
          [array addObjectsFromArray:v15];
        }
      }

      v8 = [stickerPacks countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)filteredStickerConfigurations:(id)configurations
{
  v27 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  stickerConfigurationNames = [(AVTStickerConfigurationProvider *)self stickerConfigurationNames];
  selfCopy = self;
  if (stickerConfigurationNames)
  {
    stickerConfigurationNames2 = [(AVTStickerConfigurationProvider *)self stickerConfigurationNames];
    v7 = [stickerConfigurationNames2 count] != 0;
  }

  else
  {
    v7 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = configurationsCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        name = [v14 name];
        lowercaseString = [name lowercaseString];

        if (!v7 || (-[AVTStickerConfigurationProvider stickerConfigurationNames](selfCopy, "stickerConfigurationNames"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 containsObject:lowercaseString], v17, v18))
        {
          if (([v8 containsObject:lowercaseString] & 1) == 0)
          {
            [array addObject:v14];
            [v8 addObject:lowercaseString];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  return array;
}

@end