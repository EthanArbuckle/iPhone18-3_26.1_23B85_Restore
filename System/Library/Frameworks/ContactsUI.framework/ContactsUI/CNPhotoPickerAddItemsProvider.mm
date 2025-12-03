@interface CNPhotoPickerAddItemsProvider
- (CNPhotoPickerAddItemsProvider)initWithVisualIdentity:(id)identity;
- (CNPhotoPickerAddItemsProvider)initWithVisualIdentity:(id)identity allowsTakePhotoItem:(BOOL)item allowsPhotoFromLibraryItem:(BOOL)libraryItem allowsMonograms:(BOOL)monograms allowsEmoji:(BOOL)emoji;
- (id)addItemOfType:(unint64_t)type;
- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate;
- (id)symbolImageNameForAddItemType:(unint64_t)type;
@end

@implementation CNPhotoPickerAddItemsProvider

- (id)symbolImageNameForAddItemType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return @"camera";
  }

  else
  {
    return off_1E74E6738[type - 1];
  }
}

- (id)addItemOfType:(unint64_t)type
{
  v4 = [(CNPhotoPickerAddItemsProvider *)self symbolImageNameForAddItemType:?];
  v5 = [[CNPhotoPickerGlyphProviderItem alloc] initWithSymbolImageNamed:v4 withAddItemType:type];

  return v5;
}

- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(CNPhotoPickerAddItemsProvider *)self allowsTakePhotoItem])
  {
    v10 = [(CNPhotoPickerAddItemsProvider *)self addItemOfType:0];
    [array addObject:v10];
  }

  if ([(CNPhotoPickerAddItemsProvider *)self allowsPhotoFromLibraryItem])
  {
    v11 = [(CNPhotoPickerAddItemsProvider *)self addItemOfType:1];
    [array addObject:v11];
  }

  if ([(CNPhotoPickerAddItemsProvider *)self allowsMonograms])
  {
    v12 = [(CNPhotoPickerAddItemsProvider *)self addItemOfType:2];
    [array addObject:v12];
  }

  if ([(CNPhotoPickerAddItemsProvider *)self allowsEmoji])
  {
    v13 = [(CNPhotoPickerAddItemsProvider *)self addItemOfType:3];
    [array addObject:v13];
  }

  v14 = [array copy];

  return v14;
}

- (CNPhotoPickerAddItemsProvider)initWithVisualIdentity:(id)identity
{
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = CNPhotoPickerAddItemsProvider;
  v6 = [(CNPhotoPickerAddItemsProvider *)&v13 init];
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

- (CNPhotoPickerAddItemsProvider)initWithVisualIdentity:(id)identity allowsTakePhotoItem:(BOOL)item allowsPhotoFromLibraryItem:(BOOL)libraryItem allowsMonograms:(BOOL)monograms allowsEmoji:(BOOL)emoji
{
  v11 = [(CNPhotoPickerAddItemsProvider *)self initWithVisualIdentity:identity];
  v12 = v11;
  if (v11)
  {
    v11->_allowsTakePhotoItem = item;
    v11->_allowsPhotoFromLibraryItem = libraryItem;
    v11->_allowsMonograms = monograms;
    v11->_allowsEmoji = emoji;
    v13 = v11;
  }

  return v12;
}

@end