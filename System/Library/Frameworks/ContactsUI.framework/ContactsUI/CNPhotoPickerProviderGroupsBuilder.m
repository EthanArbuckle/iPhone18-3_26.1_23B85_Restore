@interface CNPhotoPickerProviderGroupsBuilder
+ (id)builderWithVisualIdentity:(id)a3 avatarStore:(id)a4 environment:(id)a5 contactViewCache:(id)a6 photoPickerConfiguration:(id)a7;
- (BOOL)includesAnyPhotoContent;
- (CNPhotoPickerProviderGroupsBuilder)initWithVisualIdentity:(id)a3 avatarStore:(id)a4 environment:(id)a5 contactViewCache:(id)a6;
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
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeTakePhotoItem]|| [(CNPhotoPickerProviderGroupsBuilder *)self includePhotoFromLibraryItem]|| [(CNPhotoPickerProviderGroupsBuilder *)self includeMonograms]&& [(CNPhotoPickerProviderGroupsBuilder *)self includesEmojiContent])
  {
    v4 = [(CNPhotoPickerProviderGroupsBuilder *)self addItemsContentGroup];
    [v3 addObject:v4];
  }

  if ([(CNPhotoPickerProviderGroupsBuilder *)self includesAnyPhotoContent])
  {
    v5 = [(CNPhotoPickerProviderGroupsBuilder *)self photoContentGroup];
    [v3 addObject:v5];
  }

  v6 = [MEMORY[0x1E695DF70] array];
  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeAnimoji])
  {
    v7 = [(CNPhotoPickerProviderGroupsBuilder *)self animojiContentGroup];
    [v6 addObject:v7];
  }

  if ([(CNPhotoPickerProviderGroupsBuilder *)self includesEmojiContent])
  {
    v8 = [(CNPhotoPickerProviderGroupsBuilder *)self emojiContentGroup];
    [v6 addObject:v8];
  }

  if ([(CNPhotoPickerProviderGroupsBuilder *)self shouldOrderEmojiBeforeAnimoji])
  {
    v9 = [v6 _cn_reversed];
    [v3 addObjectsFromArray:v9];
  }

  else
  {
    [v3 addObjectsFromArray:v6];
  }

  return v3;
}

- (id)emojiContentGroup
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [CNPhotoPickerEmojiProvider alloc];
  v4 = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
  v5 = [(CNPhotoPickerEmojiProvider *)v3 initWithVisualIdentity:v4];

  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [(CNPhotoPickerProviderGroupsBuilder *)self environment];
  v8 = [CNPhotoPickerProviderGroup emojiGroupWithProviders:v6 environment:v7 allowAddItem:[(CNPhotoPickerProviderGroupsBuilder *)self includeAddEmojiItem]];

  return v8;
}

- (id)animojiContentGroup
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [CNPhotoPickerAnimojiProvider alloc];
  v4 = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
  v5 = [(CNPhotoPickerProviderGroupsBuilder *)self avatarStore];
  v6 = [(CNPhotoPickerAnimojiProvider *)v3 initWithVisualIdentity:v4 avatarStore:v5];

  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [(CNPhotoPickerProviderGroupsBuilder *)self environment];
  v9 = [CNPhotoPickerProviderGroup animojiGroupWithProviders:v7 environment:v8 allowAddItem:[(CNPhotoPickerProviderGroupsBuilder *)self includeAddAnimojiItem]];

  return v9;
}

- (id)photoContentGroup
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeMonograms])
  {
    v4 = [CNPhotoPickerMonogramProvider alloc];
    v5 = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
    v6 = [(CNPhotoPickerMonogramProvider *)v4 initWithVisualIdentity:v5];
    [v3 addObject:v6];
  }

  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeContactImage])
  {
    v7 = [CNPhotoPickerAccountPhotoProvider alloc];
    v8 = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
    v9 = [(CNPhotoPickerAccountPhotoProvider *)v7 initWithVisualIdentity:v8 includeUnifiedContactImages:[(CNPhotoPickerProviderGroupsBuilder *)self includeUnifiedContactImages]];
    [v3 addObject:v9];
  }

  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeRecents])
  {
    v10 = [CNPhotoPickerRecentsProvider alloc];
    v11 = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
    v12 = [(CNPhotoPickerRecentsProvider *)v10 initWithVisualIdentity:v11];
    [v3 addObject:v12];
  }

  if ([(CNPhotoPickerProviderGroupsBuilder *)self includeFaces])
  {
    v13 = [CNPhotoPickerPhotoFacesProvider alloc];
    v14 = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
    v15 = [(CNPhotoPickerPhotoFacesProvider *)v13 initWithVisualIdentity:v14];
    [v3 addObject:v15];
  }

  v16 = [(CNPhotoPickerProviderGroupsBuilder *)self environment];
  v17 = [CNPhotoPickerProviderGroup suggestionsGroupWithProviders:v3 environment:v16 allowAddItem:0];

  return v17;
}

- (id)injectedItemsGroup
{
  v2 = [(CNPhotoPickerProviderGroupsBuilder *)self environment];
  v3 = [CNPhotoPickerProviderGroup injectedItemsGroupWithEnvironment:v2];

  return v3;
}

- (id)addItemsContentGroup
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [CNPhotoPickerAddItemsProvider alloc];
  v4 = [(CNPhotoPickerProviderGroupsBuilder *)self visualIdentity];
  v5 = [(CNPhotoPickerAddItemsProvider *)v3 initWithVisualIdentity:v4 allowsTakePhotoItem:[(CNPhotoPickerProviderGroupsBuilder *)self includeTakePhotoItem] allowsPhotoFromLibraryItem:[(CNPhotoPickerProviderGroupsBuilder *)self includePhotoFromLibraryItem] allowsMonograms:[(CNPhotoPickerProviderGroupsBuilder *)self includeMonograms] allowsEmoji:[(CNPhotoPickerProviderGroupsBuilder *)self includesEmojiContent]];

  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [(CNPhotoPickerProviderGroupsBuilder *)self environment];
  v8 = [CNPhotoPickerProviderGroup addItemsGroupWithProviders:v6 environment:v7];

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

- (CNPhotoPickerProviderGroupsBuilder)initWithVisualIdentity:(id)a3 avatarStore:(id)a4 environment:(id)a5 contactViewCache:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = CNPhotoPickerProviderGroupsBuilder;
  v15 = [(CNPhotoPickerProviderGroupsBuilder *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_visualIdentity, a3);
    objc_storeStrong(&v16->_avatarStore, a4);
    objc_storeStrong(&v16->_environment, a5);
    objc_storeStrong(&v16->_contactViewCache, a6);
    v17 = v16;
  }

  return v16;
}

+ (id)builderWithVisualIdentity:(id)a3 avatarStore:(id)a4 environment:(id)a5 contactViewCache:(id)a6 photoPickerConfiguration:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [[CNPhotoPickerProviderGroupsBuilder alloc] initWithVisualIdentity:v11 avatarStore:v15 environment:v14 contactViewCache:v13];

  -[CNPhotoPickerProviderGroupsBuilder setIncludeContactImage:](v16, "setIncludeContactImage:", [v12 includeContactImage]);
  -[CNPhotoPickerProviderGroupsBuilder setIncludeUnifiedContactImages:](v16, "setIncludeUnifiedContactImages:", [v12 includeUnifiedContactImages]);
  if ([v12 allowPhotoCapture])
  {
    v17 = +[CNPhotoPickerCapabilities allowsCameraAccess];
  }

  else
  {
    v17 = 0;
  }

  [(CNPhotoPickerProviderGroupsBuilder *)v16 setIncludeTakePhotoItem:v17];
  if ([v12 allowPhotoFromLibrary])
  {
    v18 = +[CNPhotoPickerCapabilities allowsPhotoLibraryAccess];
  }

  else
  {
    v18 = 0;
  }

  [(CNPhotoPickerProviderGroupsBuilder *)v16 setIncludePhotoFromLibraryItem:v18];
  -[CNPhotoPickerProviderGroupsBuilder setIncludeMonograms:](v16, "setIncludeMonograms:", [v12 includeMonograms]);
  if ([v12 includeFaces])
  {
    v19 = +[CNPhotoPickerCapabilities allowsPhotoLibraryAccess];
  }

  else
  {
    v19 = 0;
  }

  [(CNPhotoPickerProviderGroupsBuilder *)v16 setIncludeFaces:v19];
  if ([v12 includeAnimoji])
  {
    v20 = +[CNPhotoPickerCapabilities allowsAvatarUI];
    if (v15)
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
  v22 = -[CNPhotoPickerProviderGroupsBuilder includeAnimoji](v16, "includeAnimoji") && [v12 allowAnimojiCreation] && +[CNPhotoPickerCapabilities allowsAvatarStoreAccess](CNPhotoPickerCapabilities, "allowsAvatarStoreAccess");
  [(CNPhotoPickerProviderGroupsBuilder *)v16 setIncludeAddAnimojiItem:v22];
  -[CNPhotoPickerProviderGroupsBuilder setIncludeRecents:](v16, "setIncludeRecents:", [v12 includeRecents]);
  -[CNPhotoPickerProviderGroupsBuilder setIncludesEmojiContent:](v16, "setIncludesEmojiContent:", [v12 includeEmoji]);
  -[CNPhotoPickerProviderGroupsBuilder setIncludeAddEmojiItem:](v16, "setIncludeAddEmojiItem:", [v12 includeEmoji]);
  -[CNPhotoPickerProviderGroupsBuilder setShouldOrderEmojiBeforeAnimoji:](v16, "setShouldOrderEmojiBeforeAnimoji:", [v11 identityType] == 1);

  return v16;
}

@end