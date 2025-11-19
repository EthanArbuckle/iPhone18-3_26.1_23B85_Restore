@interface AVTStickerConfigurationProvider
- (AVTStickerConfigurationProvider)initWithEnvironment:(id)a3 forStickerPacks:(id)a4 stickerConfigurationNames:(id)a5;
- (id)availableStickerNamesForAvatarRecord:(id)a3;
- (id)filteredStickerConfigurations:(id)a3;
- (id)stickerConfigurationForAvatarRecord:(id)a3 stickerName:(id)a4;
- (id)stickerConfigurationsForAvatarRecord:(id)a3;
@end

@implementation AVTStickerConfigurationProvider

- (AVTStickerConfigurationProvider)initWithEnvironment:(id)a3 forStickerPacks:(id)a4 stickerConfigurationNames:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AVTStickerConfigurationProvider;
  v12 = [(AVTStickerConfigurationProvider *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_environment, a3);
    objc_storeStrong(&v13->_stickerPacks, a4);
    v14 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    stickerConfigurationCache = v13->_stickerConfigurationCache;
    v13->_stickerConfigurationCache = v14;

    [(NSCache *)v13->_stickerConfigurationCache setCountLimit:3];
    objc_storeStrong(&v13->_stickerConfigurationNames, a5);
  }

  return v13;
}

- (id)stickerConfigurationsForAvatarRecord:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEditable])
  {
    v5 = @"memoji";
  }

  else
  {
    v5 = [v4 identifier];
    if (!v5)
    {
      v18 = 0;
      goto LABEL_17;
    }
  }

  v6 = [(NSCache *)self->_stickerConfigurationCache objectForKey:v5];
  if (!v6)
  {
    v20 = v5;
    v7 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [(AVTStickerConfigurationProvider *)self stickerPacks];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v4 isEditable];
          v15 = MEMORY[0x1E698E2C0];
          if (v14)
          {
            v16 = [MEMORY[0x1E698E2C0] stickerConfigurationsForMemojiInStickerPack:v13];
            [v7 addObjectsFromArray:v16];
          }

          else
          {
            v16 = [v4 identifier];
            v17 = [v15 stickerConfigurationsForAnimojiNamed:v16 inStickerPack:v13];
            [v7 addObjectsFromArray:v17];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v6 = [(AVTStickerConfigurationProvider *)self filteredStickerConfigurations:v7];

    v5 = v20;
    [(NSCache *)self->_stickerConfigurationCache setObject:v6 forKey:v20];
  }

  v18 = v6;

LABEL_17:

  return v18;
}

- (id)stickerConfigurationForAvatarRecord:(id)a3 stickerName:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    [(AVTStickerConfigurationProvider *)self stickerConfigurationsForAvatarRecord:a3];
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
          v12 = [v11 name];
          v13 = [v6 isEqualToString:v12];

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

- (id)availableStickerNamesForAvatarRecord:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(AVTStickerConfigurationProvider *)self stickerPacks];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v4 isEditable];
        v13 = MEMORY[0x1E698E2C0];
        if (v12)
        {
          v14 = [MEMORY[0x1E698E2C0] availableStickerNamesForMemojiInStickerPack:v11];
          [v5 addObjectsFromArray:v14];
        }

        else
        {
          v14 = [v4 identifier];
          v15 = [v13 availableStickerNamesForAnimojiNamed:v14 inStickerPack:v11];
          [v5 addObjectsFromArray:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)filteredStickerConfigurations:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AVTStickerConfigurationProvider *)self stickerConfigurationNames];
  v21 = self;
  if (v5)
  {
    v6 = [(AVTStickerConfigurationProvider *)self stickerConfigurationNames];
    v7 = [v6 count] != 0;
  }

  else
  {
    v7 = 0;
  }

  v20 = [MEMORY[0x1E695DF70] array];
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v4;
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
        v15 = [v14 name];
        v16 = [v15 lowercaseString];

        if (!v7 || (-[AVTStickerConfigurationProvider stickerConfigurationNames](v21, "stickerConfigurationNames"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 containsObject:v16], v17, v18))
        {
          if (([v8 containsObject:v16] & 1) == 0)
          {
            [v20 addObject:v14];
            [v8 addObject:v16];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  return v20;
}

@end