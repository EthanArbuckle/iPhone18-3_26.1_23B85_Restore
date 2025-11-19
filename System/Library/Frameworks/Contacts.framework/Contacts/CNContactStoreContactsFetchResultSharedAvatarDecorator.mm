@interface CNContactStoreContactsFetchResultSharedAvatarDecorator
+ (BOOL)enableSharedPhoto;
+ (CNKeyDescriptor)descriptorForRequiredKeys;
+ (id)allNicknamesForContact:(id)a3;
+ (id)log;
- (BOOL)doesKeysToFetchContainRequiredKeys;
- (CNContactStoreContactsFetchResultSharedAvatarDecorator)initWithContacts:(id)a3 keysToFetch:(id)a4 unifyContactsFromMainStore:(BOOL)a5;
- (CNContactStoreContactsFetchResultSharedAvatarDecorator)initWithContactsFetchResult:(id)a3 keysToFetch:(id)a4 unifyContactsFromMainStore:(BOOL)a5;
- (NSArray)decoratedValue;
- (id)decoratedContacts:(id)a3;
- (id)nicknameForContact:(id)a3;
- (id)sharedWallpaperForContact:(id)a3 withNickname:(id)a4;
- (id)sharedWatchWallpaperImageDataForContact:(id)a3 withNickname:(id)a4;
- (void)setValue:(id)a3;
@end

@implementation CNContactStoreContactsFetchResultSharedAvatarDecorator

- (NSArray)decoratedValue
{
  decoratedValue = self->_decoratedValue;
  if (!decoratedValue)
  {
    v4 = [(CNContactStoreContactsFetchResultSharedAvatarDecorator *)self value];
    v5 = [(CNContactStoreContactsFetchResultSharedAvatarDecorator *)self decoratedContacts:v4];
    v6 = self->_decoratedValue;
    self->_decoratedValue = v5;

    decoratedValue = self->_decoratedValue;
  }

  v7 = decoratedValue;

  return v7;
}

- (BOOL)doesKeysToFetchContainRequiredKeys
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CNContactStoreContactsFetchResultSharedAvatarDecorator *)self keysToFetch];
    *buf = 134217984;
    v31 = [v4 count];
    _os_log_impl(&dword_1954A0000, v3, OS_LOG_TYPE_DEFAULT, "Validating keys for %lu descriptors", buf, 0xCu);
  }

  v5 = objc_alloc_init(CNMutableContactKeyVector);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [(CNContactStoreContactsFetchResultSharedAvatarDecorator *)self keysToFetch];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 _cn_requiredKeys];
        v13 = [v11 _cn_optionalKeys];
        [(CNMutableContactKeyVector *)v5 unionKeyVector:v12];
        [(CNMutableContactKeyVector *)v5 unionKeyVector:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v14 = [objc_opt_class() log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v5;
    _os_log_impl(&dword_1954A0000, v14, OS_LOG_TYPE_DEFAULT, "Final keysToFetchVector: %@", buf, 0xCu);
  }

  v15 = [(CNContactKeyVector *)v5 containsKey:@"wallpaper"];
  v16 = [objc_opt_class() log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v31) = v15;
    _os_log_impl(&dword_1954A0000, v16, OS_LOG_TYPE_DEFAULT, "Contains wallpaper key: %d", buf, 8u);
  }

  if (v15)
  {
    v17 = [objc_opt_class() descriptorForRequiredKeys];
    v18 = [v17 _cn_requiredKeys];

    v19 = [objc_opt_class() log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v18;
      _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "Original required keys: %@", buf, 0xCu);
    }

    v28 = @"wallpaper";
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v21 = [v18 keyVectorByRemovingKeys:v20];

    v22 = [v21 isSubsetOfKeyVector:v5];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (BOOL)enableSharedPhoto
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:25];

  return v4;
}

+ (CNKeyDescriptor)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_0 != -1)
  {
    +[CNContactStoreContactsFetchResultSharedAvatarDecorator descriptorForRequiredKeys];
  }

  v3 = descriptorForRequiredKeys_cn_once_object_0;

  return v3;
}

void __83__CNContactStoreContactsFetchResultSharedAvatarDecorator_descriptorForRequiredKeys__block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"sharedPhotoDisplayPreference";
  v4[1] = @"wallpaper";
  v4[2] = @"phoneNumbers";
  v4[3] = @"emailAddresses";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactStoreContactsFetchResultSharedAvatarDecorator descriptorForRequiredKeys]_block_invoke"];
  v2 = [CNContact descriptorWithKeyDescriptors:v0 description:v1];
  v3 = descriptorForRequiredKeys_cn_once_object_0;
  descriptorForRequiredKeys_cn_once_object_0 = v2;
}

+ (id)log
{
  if (log_cn_once_token_1_0 != -1)
  {
    +[CNContactStoreContactsFetchResultSharedAvatarDecorator log];
  }

  v3 = log_cn_once_object_1_0;

  return v3;
}

uint64_t __61__CNContactStoreContactsFetchResultSharedAvatarDecorator_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "avatar-decorator");
  v1 = log_cn_once_object_1_0;
  log_cn_once_object_1_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNContactStoreContactsFetchResultSharedAvatarDecorator)initWithContacts:(id)a3 keysToFetch:(id)a4 unifyContactsFromMainStore:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = CNContactStoreContactsFetchResultSharedAvatarDecorator;
  v10 = [(CNContactStoreContactsFetchResultSharedAvatarDecorator *)&v15 init];
  if (v10)
  {
    v11 = [v8 copy];
    value = v10->_value;
    v10->_value = v11;

    objc_storeStrong(&v10->_keysToFetch, a4);
    v10->_unifyContactsFromMainStore = a5;
    v13 = v10;
  }

  return v10;
}

- (CNContactStoreContactsFetchResultSharedAvatarDecorator)initWithContactsFetchResult:(id)a3 keysToFetch:(id)a4 unifyContactsFromMainStore:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [a3 value];
  v10 = [(CNContactStoreContactsFetchResultSharedAvatarDecorator *)self initWithContacts:v9 keysToFetch:v8 unifyContactsFromMainStore:v5];

  return v10;
}

- (void)setValue:(id)a3
{
  v5 = a3;
  p_value = &self->_value;
  if (self->_value != v5)
  {
    v8 = v5;
    objc_storeStrong(p_value, a3);
    decoratedValue = self->_decoratedValue;
    self->_decoratedValue = 0;

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](p_value, v5);
}

- (id)decoratedContacts:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [v4 count];
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "decoratedContacts called with %lu contacts", buf, 0xCu);
  }

  if (([objc_opt_class() enableSharedPhoto] & 1) == 0)
  {
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Skipping: enableSharedPhoto=NO", buf, 2u);
    }

    goto LABEL_14;
  }

  v6 = [(CNContactStoreContactsFetchResultSharedAvatarDecorator *)self doesKeysToFetchContainRequiredKeys];
  v7 = [objc_opt_class() log];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "Skipping: required keys missing", buf, 2u);
    }

LABEL_14:
    v10 = v4;
    goto LABEL_15;
  }

  if (v8)
  {
    v9 = [v4 count];
    *buf = 134217984;
    v16 = v9;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "Processing %lu contacts for shared photo decoration", buf, 0xCu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__CNContactStoreContactsFetchResultSharedAvatarDecorator_decoratedContacts___block_invoke;
  v14[3] = &unk_1E7412EB0;
  v14[4] = self;
  v10 = [v4 _cn_map:v14];
LABEL_15:
  v12 = v10;

  return v12;
}

id __76__CNContactStoreContactsFetchResultSharedAvatarDecorator_decoratedContacts___block_invoke(uint64_t a1, void *a2)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [CNSharedProfileStateOracle contactIsInAutoUpdateState:v3];
  v5 = [objc_opt_class() log];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [v3 identifier];
      v29 = 138412290;
      v30 = v7;
      _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "Calling nicknameForContact for %@", &v29, 0xCu);
    }

    v8 = [*(a1 + 32) nicknameForContact:v3];
    if (v8)
    {
      v9 = [*(a1 + 32) sharedWatchWallpaperImageDataForContact:v3 withNickname:v8];
      v10 = [*(a1 + 32) sharedWallpaperForContact:v3 withNickname:v8];
      v11 = *MEMORY[0x1E6996540];
      if ((*(*MEMORY[0x1E6996540] + 16))(*MEMORY[0x1E6996540], v9) && ([(CNWallpaper *)v10 posterArchiveData], v12 = objc_claimAutoreleasedReturnValue(), v13 = (*(v11 + 16))(v11, v12), v12, v13))
      {
        v14 = v3;
      }

      else
      {
        v16 = objc_alloc_init(CNMutableContact);
        [(CNMutableContact *)v16 setImplicitAugmentation:1];
        v17 = [v8 wallpaper];
        v18 = [v17 metadata];

        if (v18)
        {
          if (!v10)
          {
            v10 = objc_alloc_init(CNWallpaper);
          }

          v19 = [(CNWallpaper *)v10 wallpaperIncludingIMWallpaperMetadata:v18];

          v10 = v19;
        }

        [(CNMutableContact *)v16 setWatchWallpaperImageData:v9];
        [(CNMutableContact *)v16 setWallpaper:v10];
        [(CNMutableContact *)v16 setIsUsingSharedPhoto:1];

        v20 = [v3 keyVector];
        [(CNMutableContact *)v16 setAvailableKeyDescriptor:v20];

        if ([v3 isUnified])
        {
          v21 = [v3 linkedContacts];
          v22 = [(CNMutableContact *)v16 freeze];
          v23 = [v21 arrayByAddingObject:v22];
        }

        else
        {
          v33[0] = v3;
          v21 = [(CNMutableContact *)v16 freeze];
          v33[1] = v21;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
        }

        v26 = [objc_opt_class() log];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v3 identifier];
          v29 = 138412546;
          v30 = v8;
          v31 = 2112;
          v32 = v27;
          _os_log_impl(&dword_1954A0000, v26, OS_LOG_TYPE_DEFAULT, "Applying nickname %@ to contact <%@>", &v29, 0x16u);
        }

        v14 = +[CN contactUnifyingContacts:includingMainStoreContacts:allowMutableContactFreeze:](CN, "contactUnifyingContacts:includingMainStoreContacts:allowMutableContactFreeze:", v23, [*(a1 + 32) unifyContactsFromMainStore], 1);
      }
    }

    else
    {
      v24 = [objc_opt_class() log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v3 shortDebugDescription];
        v29 = 138477827;
        v30 = v25;
        _os_log_impl(&dword_1954A0000, v24, OS_LOG_TYPE_DEFAULT, "No nickname found for auto-updating contact %{private}@", &v29, 0xCu);
      }

      v14 = v3;
    }
  }

  else
  {
    if (v6)
    {
      v15 = [v3 identifier];
      v29 = 138412290;
      v30 = v15;
      _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "Contact %@ not in auto-update state", &v29, 0xCu);
    }

    v14 = v3;
  }

  return v14;
}

- (id)sharedWallpaperForContact:(id)a3 withNickname:(id)a4
{
  v5 = a4;
  if ([CNSharedProfileStateOracle contactIsInAutoUpdateState:a3])
  {
    v6 = [MEMORY[0x1E69966E8] currentEnvironment];
    v7 = [v6 nicknameProvider];
    v8 = [v7 sharedWallpaperForNickname:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)sharedWatchWallpaperImageDataForContact:(id)a3 withNickname:(id)a4
{
  v5 = a4;
  if ([CNSharedProfileStateOracle contactIsInAutoUpdateState:a3])
  {
    v6 = [MEMORY[0x1E69966E8] currentEnvironment];
    v7 = [v6 nicknameProvider];
    v8 = [v7 sharedWatchWallpaperImageDataForNickname:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)allNicknamesForContact:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "allNicknamesForContact called for %@", &v17, 0xCu);
  }

  objc_opt_class();
  v7 = [MEMORY[0x1E69966E8] currentEnvironment];
  v8 = [v7 nicknameProvider];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [a1 log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Calling imNicknameProvider.allNicknamesForContact:contact", &v17, 2u);
  }

  v12 = [v10 imNicknameProvider];

  v13 = [v12 allNicknamesForContact:v4];

  v14 = [a1 log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 count];
    v17 = 134217984;
    v18 = v15;
    _os_log_impl(&dword_1954A0000, v14, OS_LOG_TYPE_DEFAULT, "IMNicknameProvider returned %lu nicknames", &v17, 0xCu);
  }

  return v13;
}

- (id)nicknameForContact:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 identifier];
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_DEFAULT, "nicknameForContact called for %@", buf, 0xCu);
  }

  v6 = [objc_opt_class() allNicknamesForContact:v3];
  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    v9 = [v6 allKeys];
    *buf = 134218242;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "Got %lu nicknames: %@", buf, 0x16u);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v10 = getIMNicknameCurrentSymbolLoc_ptr;
  v19 = getIMNicknameCurrentSymbolLoc_ptr;
  if (!getIMNicknameCurrentSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getIMNicknameCurrentSymbolLoc_block_invoke;
    v21 = &unk_1E7412110;
    v22 = &v16;
    __getIMNicknameCurrentSymbolLoc_block_invoke(buf);
    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v10)
  {
    getMDItemUniqueIdentifier_cold_1();
    __break(1u);
  }

  v11 = *v10;
  v12 = [v6 objectForKey:{v11, v16}];

  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"found";
    if (!v12)
    {
      v14 = @"nil";
    }

    *buf = 138412290;
    *&buf[4] = v14;
    _os_log_impl(&dword_1954A0000, v13, OS_LOG_TYPE_DEFAULT, "Current nickname: %@", buf, 0xCu);
  }

  return v12;
}

@end