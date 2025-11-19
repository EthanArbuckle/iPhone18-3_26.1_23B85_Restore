@interface CNPhotoPickerAddItemsProvider
- (CNPhotoPickerAddItemsProvider)initWithVisualIdentity:(id)a3;
- (CNPhotoPickerAddItemsProvider)initWithVisualIdentity:(id)a3 allowsTakePhotoItem:(BOOL)a4 allowsPhotoFromLibraryItem:(BOOL)a5 allowsMonograms:(BOOL)a6 allowsEmoji:(BOOL)a7;
- (id)addItemOfType:(unint64_t)a3;
- (id)loadItemsForSize:(CGSize)a3 scale:(double)a4 RTL:(BOOL)a5 renderingQueue:(id)a6 callbackQueue:(id)a7 itemDelegate:(id)a8;
- (id)symbolImageNameForAddItemType:(unint64_t)a3;
@end

@implementation CNPhotoPickerAddItemsProvider

- (id)symbolImageNameForAddItemType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"camera";
  }

  else
  {
    return off_1E74E6738[a3 - 1];
  }
}

- (id)addItemOfType:(unint64_t)a3
{
  v4 = [(CNPhotoPickerAddItemsProvider *)self symbolImageNameForAddItemType:?];
  v5 = [[CNPhotoPickerGlyphProviderItem alloc] initWithSymbolImageNamed:v4 withAddItemType:a3];

  return v5;
}

- (id)loadItemsForSize:(CGSize)a3 scale:(double)a4 RTL:(BOOL)a5 renderingQueue:(id)a6 callbackQueue:(id)a7 itemDelegate:(id)a8
{
  v9 = [MEMORY[0x1E695DF70] array];
  if ([(CNPhotoPickerAddItemsProvider *)self allowsTakePhotoItem])
  {
    v10 = [(CNPhotoPickerAddItemsProvider *)self addItemOfType:0];
    [v9 addObject:v10];
  }

  if ([(CNPhotoPickerAddItemsProvider *)self allowsPhotoFromLibraryItem])
  {
    v11 = [(CNPhotoPickerAddItemsProvider *)self addItemOfType:1];
    [v9 addObject:v11];
  }

  if ([(CNPhotoPickerAddItemsProvider *)self allowsMonograms])
  {
    v12 = [(CNPhotoPickerAddItemsProvider *)self addItemOfType:2];
    [v9 addObject:v12];
  }

  if ([(CNPhotoPickerAddItemsProvider *)self allowsEmoji])
  {
    v13 = [(CNPhotoPickerAddItemsProvider *)self addItemOfType:3];
    [v9 addObject:v13];
  }

  v14 = [v9 copy];

  return v14;
}

- (CNPhotoPickerAddItemsProvider)initWithVisualIdentity:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CNPhotoPickerAddItemsProvider;
  v6 = [(CNPhotoPickerAddItemsProvider *)&v13 init];
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

- (CNPhotoPickerAddItemsProvider)initWithVisualIdentity:(id)a3 allowsTakePhotoItem:(BOOL)a4 allowsPhotoFromLibraryItem:(BOOL)a5 allowsMonograms:(BOOL)a6 allowsEmoji:(BOOL)a7
{
  v11 = [(CNPhotoPickerAddItemsProvider *)self initWithVisualIdentity:a3];
  v12 = v11;
  if (v11)
  {
    v11->_allowsTakePhotoItem = a4;
    v11->_allowsPhotoFromLibraryItem = a5;
    v11->_allowsMonograms = a6;
    v11->_allowsEmoji = a7;
    v13 = v11;
  }

  return v12;
}

@end