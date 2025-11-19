@interface CNPhotoPickerEmojiProvider
- (CNPhotoPickerEmojiProvider)initWithVisualIdentity:(id)a3;
- (id)loadItemsForSize:(CGSize)a3 scale:(double)a4 RTL:(BOOL)a5 renderingQueue:(id)a6 callbackQueue:(id)a7 itemDelegate:(id)a8;
@end

@implementation CNPhotoPickerEmojiProvider

- (id)loadItemsForSize:(CGSize)a3 scale:(double)a4 RTL:(BOOL)a5 renderingQueue:(id)a6 callbackQueue:(id)a7 itemDelegate:(id)a8
{
  height = a3.height;
  width = a3.width;
  v29 = *MEMORY[0x1E69E9840];
  v11 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [(CNPhotoPickerEmojiProvider *)self variantsManager];
  v13 = [v12 defaultEmojis];

  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [CNPhotoPickerEmojiProviderItem alloc];
        v20 = [v18 emojiString];
        v21 = [v18 colorVariant];
        v22 = [(CNPhotoPickerEmojiProviderItem *)v19 initWithStringRepresentation:v20 backgroundColorVariant:v21 size:width, height];

        [v11 addObject:v22];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  return v11;
}

- (CNPhotoPickerEmojiProvider)initWithVisualIdentity:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CNPhotoPickerEmojiProvider;
  v6 = [(CNPhotoPickerEmojiProvider *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualIdentity, a3);
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = v9;

    v11 = objc_alloc_init(CNPhotoPickerVariantsManager);
    variantsManager = v7->_variantsManager;
    v7->_variantsManager = v11;

    v13 = v7;
  }

  return v7;
}

@end