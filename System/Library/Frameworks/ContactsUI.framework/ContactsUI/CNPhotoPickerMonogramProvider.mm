@interface CNPhotoPickerMonogramProvider
+ (id)generateMonogramItemForVisualIdentity:(id)identity size:(CGSize)size scale:(double)scale RTL:(BOOL)l isVariantOptionItem:(BOOL)item backgroundColor:(id)color;
+ (id)providerItemForVisualIdentity:(id)identity size:(CGSize)size RTL:(BOOL)l;
+ (id)providerItemForVisualIdentity:(id)identity size:(CGSize)size scale:(double)scale RTL:(BOOL)l backgroundColor:(id)color;
+ (id)providerItemWithRandomBackgroundColorForVisualIdentity:(id)identity size:(CGSize)size RTL:(BOOL)l;
- (CNPhotoPickerMonogramProvider)initWithVisualIdentity:(id)identity;
- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate;
@end

@implementation CNPhotoPickerMonogramProvider

- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate
{
  lCopy = l;
  height = size.height;
  width = size.width;
  v21[1] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E69BDC50];
  delegateCopy = delegate;
  initWithRandomColor = [[v13 alloc] initWithRandomColor];
  v16 = objc_opt_class();
  visualIdentity = [(CNPhotoPickerMonogramProvider *)self visualIdentity];
  v18 = [v16 providerItemForVisualIdentity:visualIdentity size:lCopy scale:initWithRandomColor RTL:width backgroundColor:{height, scale}];

  [v18 setDelegate:delegateCopy];
  v21[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

  return v19;
}

- (CNPhotoPickerMonogramProvider)initWithVisualIdentity:(id)identity
{
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = CNPhotoPickerMonogramProvider;
  v6 = [(CNPhotoPickerMonogramProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualIdentity, identity);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = uUIDString;

    v11 = v7;
  }

  return v7;
}

+ (id)generateMonogramItemForVisualIdentity:(id)identity size:(CGSize)size scale:(double)scale RTL:(BOOL)l isVariantOptionItem:(BOOL)item backgroundColor:(id)color
{
  itemCopy = item;
  lCopy = l;
  height = size.height;
  width = size.width;
  colorCopy = color;
  identityCopy = identity;
  v16 = +[CNAvatarImageRendererSettings defaultSettings];
  v17 = [[CNAvatarImageRenderer alloc] initWithSettings:v16];
  scale = [CNAvatarImageRenderingScope scopeWithPointSize:lCopy scale:0 rightToLeft:colorCopy style:width color:height, scale];

  v19 = [CNPhotoPickerMonogramProviderItem alloc];
  v20 = [(CNPhotoPickerMonogramProviderItem *)v19 initWithImageData:0 thumbnailImageData:0 fullscreenImageData:0 cropRect:scale renderingScope:v17 avatarRenderer:itemCopy isVariantOptionItem:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNPhotoPickerMonogramProviderItem *)v20 setVisualIdentity:identityCopy];

  return v20;
}

+ (id)providerItemForVisualIdentity:(id)identity size:(CGSize)size scale:(double)scale RTL:(BOOL)l backgroundColor:(id)color
{
  lCopy = l;
  height = size.height;
  width = size.width;
  colorCopy = color;
  identityCopy = identity;
  abbreviatedName = [identityCopy abbreviatedName];
  v15 = [CNUIStringUtilities stringIsSingleEmoji:abbreviatedName];

  if (v15)
  {
    v16 = [CNPhotoPickerEmojiProviderItem alloc];
    abbreviatedName2 = [identityCopy abbreviatedName];

    height = [(CNPhotoPickerEmojiProviderItem *)v16 initWithStringRepresentation:abbreviatedName2 backgroundColorVariant:0 size:width, height];
    identityCopy = abbreviatedName2;
  }

  else
  {
    height = [objc_opt_class() generateMonogramItemForVisualIdentity:identityCopy size:lCopy scale:0 RTL:colorCopy isVariantOptionItem:width backgroundColor:{height, scale}];
  }

  return height;
}

+ (id)providerItemWithRandomBackgroundColorForVisualIdentity:(id)identity size:(CGSize)size RTL:(BOOL)l
{
  lCopy = l;
  height = size.height;
  width = size.width;
  v9 = MEMORY[0x1E69BDC50];
  identityCopy = identity;
  initWithRandomColor = [[v9 alloc] initWithRandomColor];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v14 = [self providerItemForVisualIdentity:identityCopy size:lCopy scale:initWithRandomColor RTL:width backgroundColor:{height, v13}];

  return v14;
}

+ (id)providerItemForVisualIdentity:(id)identity size:(CGSize)size RTL:(BOOL)l
{
  lCopy = l;
  height = size.height;
  width = size.width;
  v9 = MEMORY[0x1E69DCEB0];
  identityCopy = identity;
  mainScreen = [v9 mainScreen];
  [mainScreen scale];
  v13 = [self providerItemForVisualIdentity:identityCopy size:lCopy scale:0 RTL:width backgroundColor:{height, v12}];

  return v13;
}

@end