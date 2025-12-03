@interface CNPhotoPickerEmojiProvider
- (CNPhotoPickerEmojiProvider)initWithVisualIdentity:(id)identity;
- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate;
@end

@implementation CNPhotoPickerEmojiProvider

- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate
{
  height = size.height;
  width = size.width;
  v29 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  variantsManager = [(CNPhotoPickerEmojiProvider *)self variantsManager];
  defaultEmojis = [variantsManager defaultEmojis];

  v14 = [defaultEmojis countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(defaultEmojis);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [CNPhotoPickerEmojiProviderItem alloc];
        emojiString = [v18 emojiString];
        colorVariant = [v18 colorVariant];
        height = [(CNPhotoPickerEmojiProviderItem *)v19 initWithStringRepresentation:emojiString backgroundColorVariant:colorVariant size:width, height];

        [array addObject:height];
      }

      v15 = [defaultEmojis countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  return array;
}

- (CNPhotoPickerEmojiProvider)initWithVisualIdentity:(id)identity
{
  identityCopy = identity;
  v15.receiver = self;
  v15.super_class = CNPhotoPickerEmojiProvider;
  v6 = [(CNPhotoPickerEmojiProvider *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualIdentity, identity);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = uUIDString;

    v11 = objc_alloc_init(CNPhotoPickerVariantsManager);
    variantsManager = v7->_variantsManager;
    v7->_variantsManager = v11;

    v13 = v7;
  }

  return v7;
}

@end