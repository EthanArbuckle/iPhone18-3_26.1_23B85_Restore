@interface CNFavoritesEntry(ContactsUI)
- (void)performActionWithCompletion:()ContactsUI;
- (void)performActionWithContext:()ContactsUI completion:;
- (void)performActionWithExtensionContext:()ContactsUI completion:;
@end

@implementation CNFavoritesEntry(ContactsUI)

- (void)performActionWithExtensionContext:()ContactsUI completion:
{
  v6 = MEMORY[0x1E6996BD0];
  v7 = a4;
  v8 = [v6 contextWithExtensionContext:a3];
  [a1 performActionWithContext:v8 completion:v7];
}

- (void)performActionWithCompletion:()ContactsUI
{
  v4 = MEMORY[0x1E6996BD0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [a1 performActionWithContext:v6 completion:v5];
}

- (void)performActionWithContext:()ContactsUI completion:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6996BE0];
  v9 = [a1 contactProperty];
  v10 = [a1 actionType];
  v11 = [a1 bundleIdentifier];
  v12 = [v8 actionItemForContactProperty:v9 actionType:v10 bundleIdentifier:v11];

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695CEB0]);
    v14 = [v13 channelForFavoritesEntry:a1 error:0];

    v15 = [v14 channelIdentifier];
    [v6 setChannelIdentifier:v15];

    [v6 setIsOriginatingFromFavorites:1];
    v16 = [v12 performActionWithContext:v6];
    if (v7)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __68__CNFavoritesEntry_ContactsUI__performActionWithContext_completion___block_invoke;
      v20[3] = &unk_1E74E45F8;
      v17 = v7;
      v21 = v17;
      [v16 addSuccessBlock:v20];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __68__CNFavoritesEntry_ContactsUI__performActionWithContext_completion___block_invoke_2;
      v18[3] = &unk_1E74E4620;
      v19 = v17;
      [v16 addFailureBlock:v18];
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6996A70] code:204 userInfo:0];
    (*(v7 + 2))(v7, v14);
  }
}

@end