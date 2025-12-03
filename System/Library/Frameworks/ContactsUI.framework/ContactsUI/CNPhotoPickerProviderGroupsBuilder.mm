@interface CNPhotoPickerProviderGroupsBuilder
+ (id)builderWithVisualIdentity:(id)identity avatarStore:(id)store environment:(id)environment contactViewCache:(id)cache photoPickerConfiguration:(id)configuration;
- (BOOL)includesAnyPhotoContent;
- (CNPhotoPickerProviderGroupsBuilder)initWithVisualIdentity:(id)identity avatarStore:(id)store environment:(id)environment contactViewCache:(id)cache;
- (id)addItemsContentGroup;
- (id)animojiContentGroup;
- (id)build;
- (id)emojiContentGroup;
- (id)injectedItemsGroup;
- (id)photoContentGroup;
@end

@implementation CNPhotoPickerProviderGroupsBuilder

- (id)build
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeTakePhotoItem]|| [(CNPhotoPickerProviderGroupsBuilder *)self includePhotoFromLibraryItem]|| [(CNPhotoPickerProviderGroupsBuilder *)self includeMonograms]&& [(CNPhotoPickerProviderGroupsBuilder *)self includesEmojiContent])
  {
    addItemsContentGroup = [(CNPhotoPickerProviderGroupsBuilder *)self addItemsContentGroup];
    [array addObject:addItemsContentGroup];
  }

  if ([(CNPhotoPickerProviderGroupsBuilder *)self includesAnyPhotoContent])
  {
    photoContentGroup = [(CNPhotoPickerProviderGroupsBuilder *)self photoContentGroup];
    [array addObject:photoContentGroup];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeAnimoji])
  {
    animojiContentGroup = [(CNPhotoPickerProviderGroupsBuilder *)self animojiContentGroup];
    [array2 addObject:animojiContentGroup];
  }

  if ([(CNPhotoPickerProviderGroupsBuilder *)self includesEmojiContent])
  {
    emojiContentGroup = [(CNPhotoPickerProviderGroupsBuilder *)self emojiContentGroup];
    [array2 addObject:emojiContentGroup];
  }

  if ([(CNPhotoPickerProviderGroupsBuilder *)self shouldOrderEmojiBeforeAnimoji])
  {
    _cn_reversed = [array2 _cn_reversed];
    [array addObjectsFromArray:_cn_reversed];
  }

  else
  {
    [array addObjectsFromArray:array2];
  }

  return array;
}

- (id)emojiContentGroup
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [CNPhotoPickerEmojiProvider alloc];
  visualIdentity = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
  v5 = [(CNPhotoPickerEmojiProvider *)v3 initWithVisualIdentity:visualIdentity];

  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  environment = [(CNPhotoPickerProviderGroupsBuilder *)self environment];
  v8 = [CNPhotoPickerProviderGroup emojiGroupWithProviders:v6 environment:environment allowAddItem:[(CNPhotoPickerProviderGroupsBuilder *)self includeAddEmojiItem]];

  return v8;
}

- (id)animojiContentGroup
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [CNPhotoPickerAnimojiProvider alloc];
  visualIdentity = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
  avatarStore = [(CNPhotoPickerProviderGroupsBuilder *)self avatarStore];
  v6 = [(CNPhotoPickerAnimojiProvider *)v3 initWithVisualIdentity:visualIdentity avatarStore:avatarStore];

  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  environment = [(CNPhotoPickerProviderGroupsBuilder *)self environment];
  v9 = [CNPhotoPickerProviderGroup animojiGroupWithProviders:v7 environment:environment allowAddItem:[(CNPhotoPickerProviderGroupsBuilder *)self includeAddAnimojiItem]];

  return v9;
}

- (id)photoContentGroup
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeMonograms])
  {
    v4 = [CNPhotoPickerMonogramProvider alloc];
    visualIdentity = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
    v6 = [(CNPhotoPickerMonogramProvider *)v4 initWithVisualIdentity:visualIdentity];
    [array addObject:v6];
  }

  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeContactImage])
  {
    v7 = [CNPhotoPickerAccountPhotoProvider alloc];
    visualIdentity2 = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
    v9 = [(CNPhotoPickerAccountPhotoProvider *)v7 initWithVisualIdentity:visualIdentity2 includeUnifiedContactImages:[(CNPhotoPickerProviderGroupsBuilder *)self includeUnifiedContactImages]];
    [array addObject:v9];
  }

  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeRecents])
  {
    v10 = [CNPhotoPickerRecentsProvider alloc];
    visualIdentity3 = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
    v12 = [(CNPhotoPickerRecentsProvider *)v10 initWithVisualIdentity:visualIdentity3];
    [array addObject:v12];
  }

  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeFaces])
  {
    v13 = [CNPhotoPickerPhotoFacesProvider alloc];
    visualIdentity4 = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
    v15 = [(CNPhotoPickerPhotoFacesProvider *)v13 initWithVisualIdentity:visualIdentity4];
    [array addObject:v15];
  }

  environment = [(CNPhotoPickerProviderGroupsBuilder *)self environment];
  v17 = [CNPhotoPickerProviderGroup suggestionsGroupWithProviders:array environment:environment allowAddItem:0];

  return v17;
}

- (id)injectedItemsGroup
{
  environment = [(CNPhotoPickerProviderGroupsBuilder *)self environment];
  v3 = [CNPhotoPickerProviderGroup injectedItemsGroupWithEnvironment:environment];

  return v3;
}

- (id)addItemsContentGroup
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [CNPhotoPickerAddItemsProvider alloc];
  visualIdentity = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
  v5 = [(CNPhotoPickerAddItemsProvider *)v3 initWithVisualIdentity:visualIdentity allowsTakePhotoItem:[(CNPhotoPickerProviderGroupsBuilder *)self includeTakePhotoItem] allowsPhotoFromLibraryItem:[(CNPhotoPickerProviderGroupsBuilder *)self includePhotoFromLibraryItem] allowsMonograms:[(CNPhotoPickerProviderGroupsBuilder *)self includeMonograms] allowsEmoji:[(CNPhotoPickerProviderGroupsBuilder *)self includesEmojiContent]];

  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  environment = [(CNPhotoPickerProviderGroupsBuilder *)self environment];
  v8 = [CNPhotoPickerProviderGroup addItemsGroupWithProviders:v6 environment:environment];

  return v8;
}

- (BOOL)includesAnyPhotoContent
{
  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeTakePhotoItem]|| [(CNPhotoPickerProviderGroupsBuilder *)self includePhotoFromLibraryItem]|| [(CNPhotoPickerProviderGroupsBuilder *)self includeContactImage]|| [(CNPhotoPickerProviderGroupsBuilder *)self includeUnifiedContactImages]|| [(CNPhotoPickerProviderGroupsBuilder *)self includeFaces])
  {
    return 1;
  }

  return [(CNPhotoPickerProviderGroupsBuilder *)self includeMonograms];
}

- (CNPhotoPickerProviderGroupsBuilder)initWithVisualIdentity:(id)identity avatarStore:(id)store environment:(id)environment contactViewCache:(id)cache
{
  identityCopy = identity;
  storeCopy = store;
  environmentCopy = environment;
  cacheCopy = cache;
  v19.receiver = self;
  v19.super_class = CNPhotoPickerProviderGroupsBuilder;
  v15 = [(CNPhotoPickerProviderGroupsBuilder *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_visualIdentity, identity);
    objc_storeStrong(&v16->_avatarStore, store);
    objc_storeStrong(&v16->_environment, environment);
    objc_storeStrong(&v16->_contactViewCache, cache);
    v17 = v16;
  }

  return v16;
}

+ (id)builderWithVisualIdentity:(id)identity avatarStore:(id)store environment:(id)environment contactViewCache:(id)cache photoPickerConfiguration:(id)configuration
{
  identityCopy = identity;
  configurationCopy = configuration;
  cacheCopy = cache;
  environmentCopy = environment;
  storeCopy = store;
  v16 = [[CNPhotoPickerProviderGroupsBuilder alloc] initWithVisualIdentity:identityCopy avatarStore:storeCopy environment:environmentCopy contactViewCache:cacheCopy];

  -[CNPhotoPickerProviderGroupsBuilder setIncludeContactImage:](v16, "setIncludeContactImage:", [configurationCopy includeContactImage]);
  -[CNPhotoPickerProviderGroupsBuilder setIncludeUnifiedContactImages:](v16, "setIncludeUnifiedContactImages:", [configurationCopy includeUnifiedContactImages]);
  if ([configurationCopy allowPhotoCapture])
  {
    v17 = +[CNPhotoPickerCapabilities allowsCameraAccess];
  }

  else
  {
    v17 = 0;
  }

  [(CNPhotoPickerProviderGroupsBuilder *)v16 setIncludeTakePhotoItem:v17];
  if ([configurationCopy allowPhotoFromLibrary])
  {
    v18 = +[CNPhotoPickerCapabilities allowsPhotoLibraryAccess];
  }

  else
  {
    v18 = 0;
  }

  [(CNPhotoPickerProviderGroupsBuilder *)v16 setIncludePhotoFromLibraryItem:v18];
  -[CNPhotoPickerProviderGroupsBuilder setIncludeMonograms:](v16, "setIncludeMonograms:", [configurationCopy includeMonograms]);
  if ([configurationCopy includeFaces])
  {
    v19 = +[CNPhotoPickerCapabilities allowsPhotoLibraryAccess];
  }

  else
  {
    v19 = 0;
  }

  [(CNPhotoPickerProviderGroupsBuilder *)v16 setIncludeFaces:v19];
  if ([configurationCopy includeAnimoji])
  {
    v20 = +[CNPhotoPickerCapabilities allowsAvatarUI];
    if (storeCopy)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  [(CNPhotoPickerProviderGroupsBuilder *)v16 setIncludeAnimoji:v21];
  v22 = -[CNPhotoPickerProviderGroupsBuilder includeAnimoji](v16, "includeAnimoji") && [configurationCopy allowAnimojiCreation] && +[CNPhotoPickerCapabilities allowsAvatarStoreAccess](CNPhotoPickerCapabilities, "allowsAvatarStoreAccess");
  [(CNPhotoPickerProviderGroupsBuilder *)v16 setIncludeAddAnimojiItem:v22];
  -[CNPhotoPickerProviderGroupsBuilder setIncludeRecents:](v16, "setIncludeRecents:", [configurationCopy includeRecents]);
  -[CNPhotoPickerProviderGroupsBuilder setIncludesEmojiContent:](v16, "setIncludesEmojiContent:", [configurationCopy includeEmoji]);
  -[CNPhotoPickerProviderGroupsBuilder setIncludeAddEmojiItem:](v16, "setIncludeAddEmojiItem:", [configurationCopy includeEmoji]);
  -[CNPhotoPickerProviderGroupsBuilder setShouldOrderEmojiBeforeAnimoji:](v16, "setShouldOrderEmojiBeforeAnimoji:", [identityCopy identityType] == 1);

  return v16;
}

@end