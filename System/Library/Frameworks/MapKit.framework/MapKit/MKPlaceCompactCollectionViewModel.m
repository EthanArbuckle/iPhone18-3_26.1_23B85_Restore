@interface MKPlaceCompactCollectionViewModel
- (BOOL)isEqual:(id)a3;
- (CGSize)photoSize;
- (MKPlaceCompactCollectionViewModel)initWithGuideLocation:(id)a3 context:(int64_t)a4 useBorderHighlight:(BOOL)a5;
- (NSAttributedString)subTitle;
- (NSAttributedString)title;
- (UIColor)backgroundColor;
- (id)description;
- (void)compactCollectionImageForSize:(CGSize)a3 onCompletion:(id)a4;
- (void)contentCategorySizeDidChange:(id)a3;
- (void)initializeFonts;
@end

@implementation MKPlaceCompactCollectionViewModel

- (CGSize)photoSize
{
  width = self->_photoSize.width;
  height = self->_photoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(MKPlaceCompactCollectionViewModel *)self title];
  v4 = [v3 string];
  v5 = [v2 stringWithFormat:@"Guide Location: %@", v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(MKPlaceCompactCollectionViewModel *)self guideLocation];
    v8 = [(MKPlaceCompactCollectionViewModel *)v6 guideLocation];

    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UIColor)backgroundColor
{
  backgroundColor = self->_backgroundColor;
  if (!backgroundColor)
  {
    v4 = +[MKPlaceCollectionImageProvider sharedInstance];
    v5 = [(MKPlaceCompactCollectionViewModel *)self guideLocation];
    v6 = [v4 joeColorForCompactCollection:v5 usingCarouselContext:{-[MKPlaceCompactCollectionViewModel context](self, "context")}];
    v7 = self->_backgroundColor;
    self->_backgroundColor = v6;

    backgroundColor = self->_backgroundColor;
  }

  v8 = backgroundColor;

  return v8;
}

- (NSAttributedString)subTitle
{
  v16[1] = *MEMORY[0x1E69E9840];
  subTitle = self->_subTitle;
  if (subTitle)
  {
    goto LABEL_2;
  }

  v5 = [(MKPlaceCompactCollectionViewModel *)self guideLocation];
  v6 = [v5 country];

  if (!v6)
  {
    subTitle = self->_subTitle;
LABEL_2:
    v3 = subTitle;
    goto LABEL_5;
  }

  v15 = *MEMORY[0x1E69DB648];
  v7 = [(MKPlaceCompactCollectionViewModel *)self subTitleFont];
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  v10 = [(MKPlaceCompactCollectionViewModel *)self guideLocation];
  v11 = [v10 country];
  v12 = [v9 initWithString:v11 attributes:v8];
  v13 = self->_subTitle;
  self->_subTitle = v12;

  v3 = self->_subTitle;
LABEL_5:

  return v3;
}

- (NSAttributedString)title
{
  v18[2] = *MEMORY[0x1E69E9840];
  title = self->_title;
  if (title)
  {
    goto LABEL_2;
  }

  v5 = [(MKPlaceCompactCollectionViewModel *)self guideLocation];
  v6 = [v5 title];

  if (!v6)
  {
    title = self->_title;
LABEL_2:
    v3 = title;
    goto LABEL_5;
  }

  v17[0] = *MEMORY[0x1E69DB648];
  v7 = [(MKPlaceCompactCollectionViewModel *)self titleFont];
  v18[0] = v7;
  v17[1] = *MEMORY[0x1E69DB660];
  LODWORD(v8) = 1045220557;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12 = [(MKPlaceCompactCollectionViewModel *)self guideLocation];
  v13 = [v12 title];
  v14 = [v11 initWithString:v13 attributes:v10];
  v15 = self->_title;
  self->_title = v14;

  v3 = self->_title;
LABEL_5:

  return v3;
}

- (void)contentCategorySizeDidChange:(id)a3
{
  v8 = a3;
  v4 = [(MKPlaceCompactCollectionViewModel *)self preferredSizeCategory];

  v5 = v8;
  if (v4 != v8)
  {
    [(MKPlaceCompactCollectionViewModel *)self setPreferredSizeCategory:v8];
    title = self->_title;
    self->_title = 0;

    subTitle = self->_subTitle;
    self->_subTitle = 0;

    [(MKPlaceCompactCollectionViewModel *)self initializeFonts];
    v5 = v8;
  }
}

- (void)initializeFonts
{
  v7 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
  [v7 pointSize];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontMenuTitleFontType|0x60, v3, 0);
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
  CFRelease(UIFontForLanguage);
  [(MKPlaceCompactCollectionViewModel *)self setTitleFont:CopyOfSystemUIFontWithGrade];

  v6 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80]];
  [(MKPlaceCompactCollectionViewModel *)self setSubTitleFont:v6];
}

- (MKPlaceCompactCollectionViewModel)initWithGuideLocation:(id)a3 context:(int64_t)a4 useBorderHighlight:(BOOL)a5
{
  v9 = a3;
  v16.receiver = self;
  v16.super_class = MKPlaceCompactCollectionViewModel;
  v10 = [(MKPlaceCompactCollectionViewModel *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_guideLocation, a3);
    v11->_context = a4;
    v11->_useBorderHighlight = a5;
    v12 = objc_alloc(MEMORY[0x1E695DEC8]);
    v13 = [v12 initWithObjects:{*MEMORY[0x1E69DDC68], *MEMORY[0x1E69DDC88], *MEMORY[0x1E69DDC78], *MEMORY[0x1E69DDC70], *MEMORY[0x1E69DDC60], 0}];
    supportedSizeCategories = v11->_supportedSizeCategories;
    v11->_supportedSizeCategories = v13;

    [(MKPlaceCompactCollectionViewModel *)v11 initializeFonts];
  }

  return v11;
}

- (void)compactCollectionImageForSize:(CGSize)a3 onCompletion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(MKPlaceCompactCollectionViewModel *)self setPhotoSize:width, height];
  v8 = [(MKPlaceCompactCollectionViewModel *)self image];

  if (v8)
  {
    v9 = [(MKPlaceCompactCollectionViewModel *)self image];
    v7[2](v7, v9, 0, 1, 1);
  }

  else
  {
    objc_initWeak(&location, self);
    v10 = dispatch_get_global_queue(25, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__MKPlaceCompactCollectionViewModel_ImageUtilities__compactCollectionImageForSize_onCompletion___block_invoke;
    v11[3] = &unk_1E76CA0E0;
    v11[4] = self;
    v13[1] = *&width;
    v13[2] = *&height;
    objc_copyWeak(v13, &location);
    v12 = v7;
    dispatch_async(v10, v11);

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __96__MKPlaceCompactCollectionViewModel_ImageUtilities__compactCollectionImageForSize_onCompletion___block_invoke(uint64_t a1)
{
  v2 = +[MKPlaceCollectionImageProvider sharedInstance];
  v3 = [*(a1 + 32) guideLocation];
  v4 = [*(a1 + 32) context];
  if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4 == 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__MKPlaceCompactCollectionViewModel_ImageUtilities__compactCollectionImageForSize_onCompletion___block_invoke_2;
  v6[3] = &unk_1E76CAA10;
  objc_copyWeak(&v8, (a1 + 48));
  v7 = *(a1 + 40);
  [v2 loadCoverImageWithGuideLocation:v3 size:v5 usingImageSource:v6 completion:{*(a1 + 56), *(a1 + 64)}];

  objc_destroyWeak(&v8);
}

void __96__MKPlaceCompactCollectionViewModel_ImageUtilities__compactCollectionImageForSize_onCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v12 = a2;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v12 && !v9 && a5)
    {
      objc_storeStrong(WeakRetained + 10, a2);
      v11 = *(*(a1 + 32) + 16);
    }

    else
    {
      v11 = *(*(a1 + 32) + 16);
    }

    v11();
  }
}

@end