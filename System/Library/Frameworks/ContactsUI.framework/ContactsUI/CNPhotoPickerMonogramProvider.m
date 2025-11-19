@interface CNPhotoPickerMonogramProvider
+ (id)generateMonogramItemForVisualIdentity:(id)a3 size:(CGSize)a4 scale:(double)a5 RTL:(BOOL)a6 isVariantOptionItem:(BOOL)a7 backgroundColor:(id)a8;
+ (id)providerItemForVisualIdentity:(id)a3 size:(CGSize)a4 RTL:(BOOL)a5;
+ (id)providerItemForVisualIdentity:(id)a3 size:(CGSize)a4 scale:(double)a5 RTL:(BOOL)a6 backgroundColor:(id)a7;
+ (id)providerItemWithRandomBackgroundColorForVisualIdentity:(id)a3 size:(CGSize)a4 RTL:(BOOL)a5;
- (CNPhotoPickerMonogramProvider)initWithVisualIdentity:(id)a3;
- (id)loadItemsForSize:(CGSize)a3 scale:(double)a4 RTL:(BOOL)a5 renderingQueue:(id)a6 callbackQueue:(id)a7 itemDelegate:(id)a8;
@end

@implementation CNPhotoPickerMonogramProvider

- (id)loadItemsForSize:(CGSize)a3 scale:(double)a4 RTL:(BOOL)a5 renderingQueue:(id)a6 callbackQueue:(id)a7 itemDelegate:(id)a8
{
  v8 = a5;
  height = a3.height;
  width = a3.width;
  v21[1] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E69BDC50];
  v14 = a8;
  v15 = [[v13 alloc] initWithRandomColor];
  v16 = objc_opt_class();
  v17 = [(CNPhotoPickerMonogramProvider *)self visualIdentity];
  v18 = [v16 providerItemForVisualIdentity:v17 size:v8 scale:v15 RTL:width backgroundColor:{height, a4}];

  [v18 setDelegate:v14];
  v21[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

  return v19;
}

- (CNPhotoPickerMonogramProvider)initWithVisualIdentity:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CNPhotoPickerMonogramProvider;
  v6 = [(CNPhotoPickerMonogramProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualIdentity, a3);
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = v9;

    v11 = v7;
  }

  return v7;
}

+ (id)generateMonogramItemForVisualIdentity:(id)a3 size:(CGSize)a4 scale:(double)a5 RTL:(BOOL)a6 isVariantOptionItem:(BOOL)a7 backgroundColor:(id)a8
{
  v8 = a7;
  v9 = a6;
  height = a4.height;
  width = a4.width;
  v14 = a8;
  v15 = a3;
  v16 = +[CNAvatarImageRendererSettings defaultSettings];
  v17 = [[CNAvatarImageRenderer alloc] initWithSettings:v16];
  v18 = [CNAvatarImageRenderingScope scopeWithPointSize:v9 scale:0 rightToLeft:v14 style:width color:height, a5];

  v19 = [CNPhotoPickerMonogramProviderItem alloc];
  v20 = [(CNPhotoPickerMonogramProviderItem *)v19 initWithImageData:0 thumbnailImageData:0 fullscreenImageData:0 cropRect:v18 renderingScope:v17 avatarRenderer:v8 isVariantOptionItem:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNPhotoPickerMonogramProviderItem *)v20 setVisualIdentity:v15];

  return v20;
}

+ (id)providerItemForVisualIdentity:(id)a3 size:(CGSize)a4 scale:(double)a5 RTL:(BOOL)a6 backgroundColor:(id)a7
{
  v7 = a6;
  height = a4.height;
  width = a4.width;
  v12 = a7;
  v13 = a3;
  v14 = [v13 abbreviatedName];
  v15 = [CNUIStringUtilities stringIsSingleEmoji:v14];

  if (v15)
  {
    v16 = [CNPhotoPickerEmojiProviderItem alloc];
    v17 = [v13 abbreviatedName];

    v18 = [(CNPhotoPickerEmojiProviderItem *)v16 initWithStringRepresentation:v17 backgroundColorVariant:0 size:width, height];
    v13 = v17;
  }

  else
  {
    v18 = [objc_opt_class() generateMonogramItemForVisualIdentity:v13 size:v7 scale:0 RTL:v12 isVariantOptionItem:width backgroundColor:{height, a5}];
  }

  return v18;
}

+ (id)providerItemWithRandomBackgroundColorForVisualIdentity:(id)a3 size:(CGSize)a4 RTL:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v9 = MEMORY[0x1E69BDC50];
  v10 = a3;
  v11 = [[v9 alloc] initWithRandomColor];
  v12 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v12 scale];
  v14 = [a1 providerItemForVisualIdentity:v10 size:v5 scale:v11 RTL:width backgroundColor:{height, v13}];

  return v14;
}

+ (id)providerItemForVisualIdentity:(id)a3 size:(CGSize)a4 RTL:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v9 = MEMORY[0x1E69DCEB0];
  v10 = a3;
  v11 = [v9 mainScreen];
  [v11 scale];
  v13 = [a1 providerItemForVisualIdentity:v10 size:v5 scale:0 RTL:width backgroundColor:{height, v12}];

  return v13;
}

@end