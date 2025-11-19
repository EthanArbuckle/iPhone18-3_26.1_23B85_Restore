@interface MKPlaceCollectionViewModel
- (BOOL)isSaved;
- (CGSize)photoSize;
- (MKPlaceCollectionViewModel)initWithGEOPlaceCollection:(id)a3 usingSyncCoordinator:(id)a4 inContext:(int64_t)a5 usingTitleFont:(id)a6;
- (NSAttributedString)collectionLongTitle;
- (NSAttributedString)collectionTitle;
- (NSAttributedString)secondaryCollectionTitle;
- (UIColor)backgroundColor;
- (id)description;
- (void)_publisherImageWithIdentifier:(unsigned int)a3 completion:(id)a4;
- (void)collectionImageForSize:(CGSize)a3 onCompletion:(id)a4;
- (void)contentCategorySizeDidChange;
- (void)initializeFonts;
- (void)publisherIconImageWithCompletion:(id)a3;
- (void)publisherLogoImageWithCompletion:(id)a3;
@end

@implementation MKPlaceCollectionViewModel

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
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GEOPlaceCollection *)self->_placeCollection collectionLongTitle];
  v5 = v4;
  if (!v4)
  {
    v5 = [(GEOPlaceCollection *)self->_placeCollection collectionTitle];
  }

  v6 = [(GEOPlaceCollection *)self->_placeCollection collectionIdentifier];
  v7 = [v3 stringWithFormat:@"Guide: %@, MUID: %llu", v5, objc_msgSend(v6, "muid")];

  if (!v4)
  {
  }

  return v7;
}

- (void)publisherLogoImageWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  imageLoadingQueue = self->_imageLoadingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MKPlaceCollectionViewModel_publisherLogoImageWithCompletion___block_invoke;
  block[3] = &unk_1E76CA9E8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(imageLoadingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__MKPlaceCollectionViewModel_publisherLogoImageWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained placeCollection];
    v4 = [v3 publisherAttribution];

    if ([v4 logoWithoutPaddingIdentifier])
    {
      v5 = [v4 logoWithoutPaddingIdentifier];
    }

    else
    {
      v5 = [v4 logoIdentifier];
    }

    [v6 _publisherImageWithIdentifier:v5 completion:*(a1 + 32)];

    WeakRetained = v6;
  }
}

- (void)publisherIconImageWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  imageLoadingQueue = self->_imageLoadingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MKPlaceCollectionViewModel_publisherIconImageWithCompletion___block_invoke;
  block[3] = &unk_1E76CA9E8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(imageLoadingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__MKPlaceCollectionViewModel_publisherIconImageWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = [v3 placeCollection];
    v5 = [v4 publisherAttribution];
    v6 = [v5 iconIdentifier];

    [v7 _publisherImageWithIdentifier:v6 completion:*(a1 + 32)];
    WeakRetained = v7;
  }
}

- (void)_publisherImageWithIdentifier:(unsigned int)a3 completion:(id)a4
{
  v6 = a4;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __71__MKPlaceCollectionViewModel__publisherImageWithIdentifier_completion___block_invoke;
  v24[3] = &unk_1E76CA970;
  v7 = v6;
  v25 = v7;
  v8 = MEMORY[0x1A58E9F30](v24);
  v9 = v8;
  context = self->_context;
  if (context <= 9)
  {
    if (context == 2)
    {
      (*(v8 + 16))(v8, 0);
    }

    else
    {
      v11 = [(MKPlaceCollectionViewModel *)self publisherLogoImage];
      if (v11)
      {
        (v9)[2](v9, v11);
      }

      else
      {
        v12 = [(MKPlaceCollectionViewModel *)self placeCollection];
        v13 = [v12 publisherAttribution];
        v14 = [v13 displayName];

        objc_initWeak(&location, self);
        imageLoadingQueue = self->_imageLoadingQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__MKPlaceCollectionViewModel__publisherImageWithIdentifier_completion___block_invoke_3;
        block[3] = &unk_1E76CA9C0;
        v22 = a3;
        v18 = v14;
        v19 = self;
        v16 = v14;
        objc_copyWeak(&v21, &location);
        v20 = v9;
        dispatch_async(imageLoadingQueue, block);

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __71__MKPlaceCollectionViewModel__publisherImageWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __71__MKPlaceCollectionViewModel__publisherImageWithIdentifier_completion___block_invoke_2;
      v4[3] = &unk_1E76CDA20;
      v6 = *(a1 + 32);
      v5 = v3;
      dispatch_async(MEMORY[0x1E69E96A0], v4);
    }
  }
}

void __71__MKPlaceCollectionViewModel__publisherImageWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  v2 = +[MKPlaceCollectionsPublisherIconManager sharedInstance];
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 24);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__MKPlaceCollectionViewModel__publisherImageWithIdentifier_completion___block_invoke_4;
  v6[3] = &unk_1E76CA998;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 48);
  [v2 iconForPublisherNamed:v4 usingId:v3 contentScale:v6 onCompletion:v5];

  objc_destroyWeak(&v8);
}

void __71__MKPlaceCollectionViewModel__publisherImageWithIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setPublisherLogoImage:v5];
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)isSaved
{
  v2 = self;
  v3 = [(MKPlaceCollectionViewModel *)self syncCoordinator];
  LOBYTE(v2) = [v3 collectionIsSaved:v2->_placeCollection];

  return v2;
}

- (NSAttributedString)secondaryCollectionTitle
{
  v23[1] = *MEMORY[0x1E69E9840];
  secondaryCollectionTitle = self->_secondaryCollectionTitle;
  if (secondaryCollectionTitle)
  {
    v3 = secondaryCollectionTitle;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = _MKLocalizedStringFromThisBundle(@"[Guides Home] Place Count In Collection List Cell");
    v7 = [(MKPlaceCollectionViewModel *)self placeCollection];
    v8 = [v5 localizedStringWithFormat:v6, objc_msgSend(v7, "numberOfItems")];

    v9 = [MEMORY[0x1E69DC668] sharedApplication];
    v10 = [v9 userInterfaceLayoutDirection];

    v11 = MEMORY[0x1E696AEC0];
    v12 = [(MKPlaceCollectionViewModel *)self placeCollection];
    v13 = [v12 publisherAttribution];
    v14 = [v13 displayName];
    v15 = v14;
    if (v10 == 1)
    {
      [v11 localizedStringWithFormat:@"%@ · %@", v8, v14];
    }

    else
    {
      [v11 localizedStringWithFormat:@"%@ · %@", v14, v8];
    }
    v16 = ;

    v22 = *MEMORY[0x1E69DB648];
    v17 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80]];
    v23[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

    v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16 attributes:v18];
    v20 = self->_secondaryCollectionTitle;
    self->_secondaryCollectionTitle = v19;

    v3 = self->_secondaryCollectionTitle;
  }

  return v3;
}

- (NSAttributedString)collectionLongTitle
{
  v15[1] = *MEMORY[0x1E69E9840];
  collectionLongTitle = self->_collectionLongTitle;
  if (!collectionLongTitle)
  {
    v4 = [(MKPlaceCollectionViewModel *)self placeCollection];
    v5 = [v4 collectionLongTitle];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E696AAB0]);
      v7 = [(MKPlaceCollectionViewModel *)self placeCollection];
      v8 = [v7 collectionLongTitle];
      titleFont = self->_titleFont;
      v14 = *MEMORY[0x1E69DB648];
      v15[0] = titleFont;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v6 initWithString:v8 attributes:v10];
      v12 = self->_collectionLongTitle;
      self->_collectionLongTitle = v11;
    }

    collectionLongTitle = self->_collectionLongTitle;
  }

  return collectionLongTitle;
}

- (NSAttributedString)collectionTitle
{
  v15[1] = *MEMORY[0x1E69E9840];
  collectionTitle = self->_collectionTitle;
  if (!collectionTitle)
  {
    v4 = [(MKPlaceCollectionViewModel *)self placeCollection];
    v5 = [v4 collectionTitle];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E696AAB0]);
      v7 = [(MKPlaceCollectionViewModel *)self placeCollection];
      v8 = [v7 collectionTitle];
      titleFont = self->_titleFont;
      v14 = *MEMORY[0x1E69DB648];
      v15[0] = titleFont;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v6 initWithString:v8 attributes:v10];
      v12 = self->_collectionTitle;
      self->_collectionTitle = v11;
    }

    collectionTitle = self->_collectionTitle;
  }

  return collectionTitle;
}

- (UIColor)backgroundColor
{
  backgroundColor = self->_backgroundColor;
  if (!backgroundColor)
  {
    v4 = +[MKPlaceCollectionImageProvider sharedInstance];
    v5 = [v4 joeColorForCuratedCollection:self->_placeCollection];
    v6 = self->_backgroundColor;
    self->_backgroundColor = v5;

    backgroundColor = self->_backgroundColor;
  }

  v7 = backgroundColor;

  return v7;
}

- (void)initializeFonts
{
  v3 = *MEMORY[0x1E69DDCF8];
  if (self->_context == 9)
  {
    v4 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:v3 weight:*MEMORY[0x1E69DB980]];
    titleFont = self->_titleFont;
    self->_titleFont = v4;
  }

  else
  {
    v10 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v3 maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
    [(UIFont *)v10 pointSize];
    UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontMenuTitleFontType|0x60, v6, 0);
    CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
    CFRelease(UIFontForLanguage);
    v9 = self->_titleFont;
    self->_titleFont = CopyOfSystemUIFontWithGrade;

    titleFont = v10;
  }
}

- (void)contentCategorySizeDidChange
{
  collectionTitle = self->_collectionTitle;
  self->_collectionTitle = 0;

  collectionLongTitle = self->_collectionLongTitle;
  self->_collectionLongTitle = 0;

  secondaryCollectionTitle = self->_secondaryCollectionTitle;
  self->_secondaryCollectionTitle = 0;

  if (!self->_isUsingInjectedFont)
  {

    [(MKPlaceCollectionViewModel *)self initializeFonts];
  }
}

- (MKPlaceCollectionViewModel)initWithGEOPlaceCollection:(id)a3 usingSyncCoordinator:(id)a4 inContext:(int64_t)a5 usingTitleFont:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = MKPlaceCollectionViewModel;
  v14 = [(MKPlaceCollectionViewModel *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_placeCollection, a3);
    v16 = geo_dispatch_queue_create_with_qos();
    imageLoadingQueue = v15->_imageLoadingQueue;
    v15->_imageLoadingQueue = v16;

    v18 = +[MKSystemController sharedInstance];
    [v18 screenScale];
    v15->_screenScale = v19;

    v20 = [MEMORY[0x1E696AAE8] mainBundle];
    v21 = [v20 bundleIdentifier];
    [v21 isEqualToString:@"com.apple.Maps"];

    objc_storeStrong(&v15->_syncCoordinator, a4);
    v15->_context = a5;
    if (v13)
    {
      v15->_isUsingInjectedFont = 1;
      objc_storeStrong(&v15->_titleFont, a6);
    }

    else
    {
      [(MKPlaceCollectionViewModel *)v15 initializeFonts];
      v15->_isUsingInjectedFont = 0;
    }
  }

  return v15;
}

- (void)collectionImageForSize:(CGSize)a3 onCompletion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(MKPlaceCollectionViewModel *)self setPhotoSize:width, height];
  collectionImage = self->_collectionImage;
  if (collectionImage)
  {
    v7[2](v7, collectionImage, 0, 1, 1);
  }

  else
  {
    imageLoadingQueue = self->_imageLoadingQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__MKPlaceCollectionViewModel_ImageUtilities__collectionImageForSize_onCompletion___block_invoke;
    v10[3] = &unk_1E76CAA38;
    v10[4] = self;
    v12 = width;
    v13 = height;
    v11 = v7;
    dispatch_async(imageLoadingQueue, v10);
  }
}

void __82__MKPlaceCollectionViewModel_ImageUtilities__collectionImageForSize_onCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = +[MKPlaceCollectionImageProvider sharedInstance];
  v3 = [*(a1 + 32) placeCollection];
  v4 = *(*(a1 + 32) + 8) - 1;
  if (v4 > 9)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A30F7CE8[v4];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__MKPlaceCollectionViewModel_ImageUtilities__collectionImageForSize_onCompletion___block_invoke_2;
  v6[3] = &unk_1E76CAA10;
  objc_copyWeak(&v8, &location);
  v7 = *(a1 + 40);
  [v2 loadGradientCoverImageWithCuratedCollection:v3 size:0 contentSizeCategory:v5 usingImageSource:v6 completion:{*(a1 + 48), *(a1 + 56)}];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __82__MKPlaceCollectionViewModel_ImageUtilities__collectionImageForSize_onCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v12 = a2;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v12 && !v9 && a5)
    {
      objc_storeStrong(WeakRetained + 4, a2);
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