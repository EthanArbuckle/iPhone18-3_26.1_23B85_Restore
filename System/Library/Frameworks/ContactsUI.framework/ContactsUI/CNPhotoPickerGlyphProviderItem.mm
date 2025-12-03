@interface CNPhotoPickerGlyphProviderItem
+ (id)thumbnailViewForImage:(id)image;
- (CNPhotoPickerGlyphProviderItem)initWithSymbolImageNamed:(id)named;
- (CNPhotoPickerGlyphProviderItem)initWithSymbolImageNamed:(id)named withAddItemType:(unint64_t)type;
- (UIView)symbolImageView;
- (id)backgroundColorWithTintColor:(id)color;
- (id)imageForImageNamed:(id)named withTintColor:(id)color;
- (int64_t)scaleForImageNamed:(id)named;
- (void)setupSymbolImageView;
- (void)thumbnailViewWithCompletion:(id)completion;
- (void)updateTintColorIfNeeded:(id)needed;
@end

@implementation CNPhotoPickerGlyphProviderItem

+ (id)thumbnailViewForImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v5 = fmax(v4, 90.0);
  v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v5, v5}];
  [v6 setAutoresizingMask:18];
  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v5, v5}];
  [v6 center];
  [v7 setCenter:?];
  [v7 setAutoresizingMask:18];
  [v7 setContentMode:4];
  [v7 setImage:imageCopy];

  [v6 addSubview:v7];

  return v6;
}

- (void)updateTintColorIfNeeded:(id)needed
{
  neededCopy = needed;
  tintColor = [(CNPhotoPickerGlyphProviderItem *)self tintColor];

  if (tintColor != neededCopy)
  {
    [(CNPhotoPickerGlyphProviderItem *)self setTintColor:neededCopy];
    v5 = objc_opt_class();
    symbolImageName = [(CNPhotoPickerGlyphProviderItem *)self symbolImageName];
    v7 = [(CNPhotoPickerGlyphProviderItem *)self imageForImageNamed:symbolImageName withTintColor:neededCopy];
    v8 = [v5 thumbnailViewForImage:v7];
    [(CNPhotoPickerGlyphProviderItem *)self setSymbolImageView:v8];

    v9 = [(CNPhotoPickerGlyphProviderItem *)self backgroundColorWithTintColor:neededCopy];
    symbolImageView = [(CNPhotoPickerGlyphProviderItem *)self symbolImageView];
    [symbolImageView setBackgroundColor:v9];
  }
}

- (id)backgroundColorWithTintColor:(id)color
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DD1B8];
  colorCopy = color;
  v5 = [v3 traitCollectionWithUserInterfaceStyle:0];
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v12[0] = v5;
  v7 = [colorCopy colorWithAlphaComponent:0.15];
  v12[1] = v6;
  v13[0] = v7;
  v8 = [colorCopy colorWithAlphaComponent:0.3];

  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [MEMORY[0x1E69DC888] _dynamicColorWithColorsByTraitCollection:v9];

  return v10;
}

- (id)imageForImageNamed:(id)named withTintColor:(id)color
{
  v6 = *MEMORY[0x1E69DDDB8];
  v7 = MEMORY[0x1E69DCAB8];
  colorCopy = color;
  namedCopy = named;
  v10 = [v7 cnui_symbolImageNamed:namedCopy scale:-[CNPhotoPickerGlyphProviderItem scaleForImageNamed:](self weight:"scaleForImageNamed:" withColor:namedCopy) useFixedSize:5 compatibleWithTextStyle:{colorCopy, 1, v6}];

  return v10;
}

- (int64_t)scaleForImageNamed:(id)named
{
  v3 = [named isEqualToString:@"plus"];
  v4 = MEMORY[0x1E69DDE40];
  if (!v3)
  {
    v4 = MEMORY[0x1E69DDE48];
  }

  return *v4;
}

- (void)thumbnailViewWithCompletion:(id)completion
{
  completionCopy = completion;
  symbolImageView = [(CNPhotoPickerGlyphProviderItem *)self symbolImageView];
  (*(completion + 2))(completionCopy, symbolImageView);
}

- (void)setupSymbolImageView
{
  callbackQueue = [(CNPhotoPickerProviderItem *)self callbackQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__CNPhotoPickerGlyphProviderItem_setupSymbolImageView__block_invoke;
  v4[3] = &unk_1E74E6A88;
  v4[4] = self;
  [callbackQueue performBlock:v4];
}

void __54__CNPhotoPickerGlyphProviderItem_setupSymbolImageView__block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 32);
  v4 = [v3 symbolImageName];
  v5 = +[CNUIColorRepository photoPickerSymbolImageColor];
  v6 = [v3 imageForImageNamed:v4 withTintColor:v5];
  v7 = [v2 thumbnailViewForImage:v6];
  v8 = *(a1 + 32);
  v9 = *(v8 + 184);
  *(v8 + 184) = v7;

  v10 = *(a1 + 32);
  v12 = [v10[23] tintColor];
  v11 = [v10 backgroundColorWithTintColor:v12];
  [*(*(a1 + 32) + 184) setBackgroundColor:v11];
}

- (UIView)symbolImageView
{
  symbolImageView = self->_symbolImageView;
  if (!symbolImageView)
  {
    [(CNPhotoPickerGlyphProviderItem *)self setupSymbolImageView];
    symbolImageView = self->_symbolImageView;
  }

  v4 = symbolImageView;

  return v4;
}

- (CNPhotoPickerGlyphProviderItem)initWithSymbolImageNamed:(id)named
{
  namedCopy = named;
  v6 = [(CNPhotoPickerProviderItem *)self initWithImageData:0 thumbnailImageData:0 fullscreenImageData:0 cropRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_symbolImageName, named);
    v7->_addItemType = 4;
    v8 = v7;
  }

  return v7;
}

- (CNPhotoPickerGlyphProviderItem)initWithSymbolImageNamed:(id)named withAddItemType:(unint64_t)type
{
  v5 = [(CNPhotoPickerGlyphProviderItem *)self initWithSymbolImageNamed:named];
  v6 = v5;
  if (v5)
  {
    v5->_addItemType = type;
    v7 = v5;
  }

  return v6;
}

@end