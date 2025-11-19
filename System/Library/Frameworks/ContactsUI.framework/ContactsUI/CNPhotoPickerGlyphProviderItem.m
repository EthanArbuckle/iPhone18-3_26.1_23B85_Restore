@interface CNPhotoPickerGlyphProviderItem
+ (id)thumbnailViewForImage:(id)a3;
- (CNPhotoPickerGlyphProviderItem)initWithSymbolImageNamed:(id)a3;
- (CNPhotoPickerGlyphProviderItem)initWithSymbolImageNamed:(id)a3 withAddItemType:(unint64_t)a4;
- (UIView)symbolImageView;
- (id)backgroundColorWithTintColor:(id)a3;
- (id)imageForImageNamed:(id)a3 withTintColor:(id)a4;
- (int64_t)scaleForImageNamed:(id)a3;
- (void)setupSymbolImageView;
- (void)thumbnailViewWithCompletion:(id)a3;
- (void)updateTintColorIfNeeded:(id)a3;
@end

@implementation CNPhotoPickerGlyphProviderItem

+ (id)thumbnailViewForImage:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = fmax(v4, 90.0);
  v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v5, v5}];
  [v6 setAutoresizingMask:18];
  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v5, v5}];
  [v6 center];
  [v7 setCenter:?];
  [v7 setAutoresizingMask:18];
  [v7 setContentMode:4];
  [v7 setImage:v3];

  [v6 addSubview:v7];

  return v6;
}

- (void)updateTintColorIfNeeded:(id)a3
{
  v11 = a3;
  v4 = [(CNPhotoPickerGlyphProviderItem *)self tintColor];

  if (v4 != v11)
  {
    [(CNPhotoPickerGlyphProviderItem *)self setTintColor:v11];
    v5 = objc_opt_class();
    v6 = [(CNPhotoPickerGlyphProviderItem *)self symbolImageName];
    v7 = [(CNPhotoPickerGlyphProviderItem *)self imageForImageNamed:v6 withTintColor:v11];
    v8 = [v5 thumbnailViewForImage:v7];
    [(CNPhotoPickerGlyphProviderItem *)self setSymbolImageView:v8];

    v9 = [(CNPhotoPickerGlyphProviderItem *)self backgroundColorWithTintColor:v11];
    v10 = [(CNPhotoPickerGlyphProviderItem *)self symbolImageView];
    [v10 setBackgroundColor:v9];
  }
}

- (id)backgroundColorWithTintColor:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DD1B8];
  v4 = a3;
  v5 = [v3 traitCollectionWithUserInterfaceStyle:0];
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v12[0] = v5;
  v7 = [v4 colorWithAlphaComponent:0.15];
  v12[1] = v6;
  v13[0] = v7;
  v8 = [v4 colorWithAlphaComponent:0.3];

  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [MEMORY[0x1E69DC888] _dynamicColorWithColorsByTraitCollection:v9];

  return v10;
}

- (id)imageForImageNamed:(id)a3 withTintColor:(id)a4
{
  v6 = *MEMORY[0x1E69DDDB8];
  v7 = MEMORY[0x1E69DCAB8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 cnui_symbolImageNamed:v9 scale:-[CNPhotoPickerGlyphProviderItem scaleForImageNamed:](self weight:"scaleForImageNamed:" withColor:v9) useFixedSize:5 compatibleWithTextStyle:{v8, 1, v6}];

  return v10;
}

- (int64_t)scaleForImageNamed:(id)a3
{
  v3 = [a3 isEqualToString:@"plus"];
  v4 = MEMORY[0x1E69DDE40];
  if (!v3)
  {
    v4 = MEMORY[0x1E69DDE48];
  }

  return *v4;
}

- (void)thumbnailViewWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(CNPhotoPickerGlyphProviderItem *)self symbolImageView];
  (*(a3 + 2))(v5, v6);
}

- (void)setupSymbolImageView
{
  v3 = [(CNPhotoPickerProviderItem *)self callbackQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__CNPhotoPickerGlyphProviderItem_setupSymbolImageView__block_invoke;
  v4[3] = &unk_1E74E6A88;
  v4[4] = self;
  [v3 performBlock:v4];
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

- (CNPhotoPickerGlyphProviderItem)initWithSymbolImageNamed:(id)a3
{
  v5 = a3;
  v6 = [(CNPhotoPickerProviderItem *)self initWithImageData:0 thumbnailImageData:0 fullscreenImageData:0 cropRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_symbolImageName, a3);
    v7->_addItemType = 4;
    v8 = v7;
  }

  return v7;
}

- (CNPhotoPickerGlyphProviderItem)initWithSymbolImageNamed:(id)a3 withAddItemType:(unint64_t)a4
{
  v5 = [(CNPhotoPickerGlyphProviderItem *)self initWithSymbolImageNamed:a3];
  v6 = v5;
  if (v5)
  {
    v5->_addItemType = a4;
    v7 = v5;
  }

  return v6;
}

@end