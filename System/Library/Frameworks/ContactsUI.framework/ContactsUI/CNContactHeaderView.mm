@interface CNContactHeaderView
+ (CGSize)defaultPhotoSize;
+ (id)descriptorForRequiredKeysIncludingAvatarViewDescriptors:(BOOL)a3;
+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)a3 shouldAllowImageDrops:(BOOL)a4 monogramOnly:(BOOL)a5;
- (BOOL)isOrientationPhoneLandscape;
- (BOOL)isPad;
- (BOOL)isPadCompactHorizontalSize;
- (BOOL)isPadRegularHorizontalSize;
- (BOOL)isPhotoLowQuality;
- (CNContactHeaderView)initWithContact:(id)a3 frame:(CGRect)a4 shouldAllowTakePhotoAction:(BOOL)a5 shouldAllowImageDrops:(BOOL)a6 showingNavBar:(BOOL)a7 monogramOnly:(BOOL)a8 delegate:(id)a9;
- (CNContactHeaderViewDelegate)delegate;
- (CNPresenterDelegate)presenterDelegate;
- (double)currentHeightPercentMaximized;
- (double)currentHeightPercentMaximizedForMaxHeight:(double)a3;
- (double)currentHeightPercentMaximizedForPhoto;
- (double)defaultMaxBaseHeight;
- (double)maxHeight;
- (double)minHeight;
- (double)minTitleOffset;
- (double)safeAreaPhotoOffset;
- (double)safeAreaTop;
- (id)backgroundGradientDefaultGrayColors;
- (id)colorExtractionContext;
- (id)contactViewCache;
- (id)dataForBackgroundColorService:(id)a3;
- (id)descriptorForRequiredKeys;
- (id)viewControllerForPhotoView:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)photoView:(id)a3 didAcceptDropOfImageData:(id)a4;
- (void)photoViewDidUpdate:(id)a3;
- (void)reloadDataIfNeeded;
- (void)reloadDataPreservingChanges:(BOOL)a3;
- (void)setConstrainedMaxHeight:(double)a3 enabled:(BOOL)a4;
- (void)setNeedsReload;
- (void)setPresenterDelegate:(id)a3;
- (void)updateConstraints;
- (void)updateFontSizes;
- (void)updateForShowingNavBar:(BOOL)a3;
- (void)updateSizeDependentAttributes;
- (void)updateWithContacts:(id)a3;
- (void)updateWithNewContact:(id)a3;
@end

@implementation CNContactHeaderView

- (CNContactHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

  return WeakRetained;
}

- (BOOL)isPhotoLowQuality
{
  v2 = [(CNContactHeaderView *)self contacts];
  v3 = [v2 firstObject];
  v4 = [v3 hasLowQualityImage];

  return v4;
}

- (BOOL)isOrientationPhoneLandscape
{
  v2 = [(CNContactHeaderView *)self delegate];
  v3 = [v2 isOrientationPhoneLandscape];

  return v3;
}

- (BOOL)isPad
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 == 1;
}

- (BOOL)isPadCompactHorizontalSize
{
  v3 = [(CNContactHeaderView *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  result = [(CNContactHeaderView *)self isPad];
  if (v4 != 1)
  {
    return 0;
  }

  return result;
}

- (BOOL)isPadRegularHorizontalSize
{
  v3 = [(CNContactHeaderView *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  result = [(CNContactHeaderView *)self isPad];
  if (v4 == 1)
  {
    return 0;
  }

  return result;
}

- (id)contactViewCache
{
  v3 = [(CNContactHeaderView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNContactHeaderView *)self delegate];
    v6 = [v5 contactViewCache];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)viewControllerForPhotoView:(id)a3
{
  v4 = [(CNContactHeaderView *)self delegate];
  v5 = [v4 viewControllerForHeaderView:self];

  return v5;
}

- (void)photoView:(id)a3 didAcceptDropOfImageData:(id)a4
{
  v5 = a4;
  v6 = [(CNContactHeaderView *)self delegate];
  [v6 headerView:self didAcceptDropOfImageData:v5];
}

- (void)photoViewDidUpdate:(id)a3
{
  v3 = [(CNContactHeaderView *)self delegate];
  [v3 headerPhotoDidUpdate];
}

- (void)updateSizeDependentAttributes
{
  [(CNContactHeaderView *)self bounds];
  if (v3 > 0.0)
  {
    [(CNContactHeaderView *)self currentHeightPercentMaximizedForPhoto];
    v5 = v4;
    v6 = 0.0;
    if ([(CNContactHeaderView *)self shouldShowBelowNavigationTitle])
    {
      v7 = [(CNContactHeaderView *)self sizeAttributes];
      [v7 navbarTitleOffsetWithPercentMax:v5];
      v6 = v8;
    }

    v9 = [(CNContactHeaderView *)self isSiri];
    [(CNContactHeaderView *)self safeAreaPhotoOffset];
    v11 = v6 + v10;
    v12 = [(CNContactHeaderView *)self sizeAttributes];
    v13 = v12;
    if (v9)
    {
      [v12 photoMinTopMargin];
      v15 = v11 + v14;
      v16 = [(CNContactHeaderView *)self photoTopConstraint];
      [v16 setConstant:v15];
    }

    else
    {
      [v12 photoTopMarginWithPercentMax:v5];
      v18 = v11 + v17;
      v16 = [(CNContactHeaderView *)self sizeAttributes];
      [v16 photoMinTopMargin];
      v20 = v18 - v19;
      v21 = [(CNContactHeaderView *)self photoTopConstraint];
      [v21 setConstant:v20];
    }

    v22 = [(CNContactHeaderView *)self sizeAttributes];
    [v22 photoHeightWithPercentMax:v5];
    v24 = v23;
    v25 = [(CNContactHeaderView *)self photoHeightConstraint];
    [v25 setConstant:v24];

    v26 = pow(v5, 3.0);
    v27 = [(CNContactHeaderView *)self photoView];
    [v27 setLabelAlpha:v26];
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CNContactHeaderView;
  [(CNContactHeaderView *)&v9 layoutSubviews];
  [(CNContactHeaderView *)self frame];
  v4 = v3;
  v5 = MEMORY[0x1E69966F0];
  [(CNContactHeaderView *)self lastViewWidth];
  -[CNContactHeaderView setNeedsLabelSizeCalculation:](self, "setNeedsLabelSizeCalculation:", -[CNContactHeaderView needsLabelSizeCalculation](self, "needsLabelSizeCalculation") | [v5 isDouble:v4 equalToOther:v6 withAccuracy:0.5] ^ 1);
  [(CNContactHeaderView *)self setLastViewWidth:v4];
  [(CNContactHeaderView *)self maxHeight];
  if (v7 > 0.0)
  {
    [(CNContactHeaderView *)self minHeight];
    if (v8 > 0.0)
    {
      [(CNContactHeaderView *)self updateSizeDependentAttributes];
    }
  }
}

- (double)currentHeightPercentMaximizedForMaxHeight:(double)a3
{
  [(CNContactHeaderView *)self minHeight];
  v6 = v5;
  result = 1.0;
  if (v6 < a3)
  {
    [(CNContactHeaderView *)self bounds];
    v9 = v8;
    [(CNContactHeaderView *)self minHeight];
    v11 = v9 - v10;
    [(CNContactHeaderView *)self minHeight];
    result = v11 / (a3 - v12);
    if (result < 0.0)
    {
      result = 0.0;
    }

    if (result > 1.0)
    {
      return 1.0;
    }
  }

  return result;
}

- (double)currentHeightPercentMaximizedForPhoto
{
  [(CNContactHeaderView *)self defaultMaxHeight];

  [(CNContactHeaderView *)self currentHeightPercentMaximizedForMaxHeight:?];
  return result;
}

- (double)currentHeightPercentMaximized
{
  [(CNContactHeaderView *)self maxHeight];

  [(CNContactHeaderView *)self currentHeightPercentMaximizedForMaxHeight:?];
  return result;
}

- (void)reloadDataPreservingChanges:(BOOL)a3
{
  photoView = self->_photoView;
  if (a3)
  {
    [(CNContactPhotoView *)photoView updatePhoto];
  }

  else
  {
    [(CNContactPhotoView *)photoView resetPhoto];
  }

  self->_needsReload = 0;

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
}

- (void)reloadDataIfNeeded
{
  if (self->_needsReload)
  {
    [(CNContactHeaderView *)self reloadDataPreservingChanges:1];
  }
}

- (void)setNeedsReload
{
  if (!self->_needsReload)
  {
    block[7] = v2;
    block[8] = v3;
    self->_needsReload = 1;
    v4 = *MEMORY[0x1E695E480];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__CNContactHeaderView_setNeedsReload__block_invoke;
    block[3] = &unk_1E74E29D8;
    block[4] = self;
    v5 = CFRunLoopObserverCreateWithHandler(v4, 0x20uLL, 0, 0, block);
    if (v5)
    {
      v6 = v5;
      Main = CFRunLoopGetMain();
      CFRunLoopAddObserver(Main, v6, *MEMORY[0x1E695E8E0]);
      CFRelease(v6);
    }
  }
}

- (id)backgroundGradientDefaultGrayColors
{
  v2 = [(CNContactHeaderView *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    [MEMORY[0x1E6996B28] defaultDarkGrayColors];
  }

  else
  {
    [MEMORY[0x1E6996B28] defaultGrayColors];
  }
  v4 = ;

  return v4;
}

- (id)dataForBackgroundColorService:(id)a3
{
  v3 = a3;
  v4 = mmap(0, [v3 length], 3, 4097, -1, 0);
  [v3 getBytes:v4 length:{objc_msgSend(v3, "length")}];
  v5 = [v3 length];

  v6 = dispatch_get_global_queue(0, 0);
  v7 = dispatch_data_create(v4, v5, v6, *MEMORY[0x1E69E9650]);

  return v7;
}

- (id)colorExtractionContext
{
  colorExtractionContext = self->_colorExtractionContext;
  if (!colorExtractionContext)
  {
    v4 = [MEMORY[0x1E6996B28] ciContextWithHighPriority:1];
    v5 = self->_colorExtractionContext;
    self->_colorExtractionContext = v4;

    colorExtractionContext = self->_colorExtractionContext;
  }

  return colorExtractionContext;
}

- (void)updateFontSizes
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDB8]];
  v4 = sCurrentNameFont;
  sCurrentNameFont = v3;

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD78]];
  v6 = sCurrentTaglineFont;
  sCurrentTaglineFont = v5;

  v10 = *MEMORY[0x1E69DB648];
  v7 = sCurrentNameFont;
  [sCurrentNameFont _scaledValueForValue:30.0];
  v8 = [v7 fontWithSize:?];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [self cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v9];
}

- (void)updateWithContacts:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([(NSArray *)self->_contacts _cn_isIdenticalToArray:v5]& 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [objc_opt_class() descriptorForRequiredKeys];
          v18 = v12;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
          [v11 assertKeysAreAvailable:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_contacts, a3);
    [(CNContactPhotoView *)self->_photoView setContacts:v6];
    -[CNContactHeaderView setHidden:](self, "setHidden:", [v6 count] == 0);
    [(CNContactHeaderView *)self setNeedsReload];
  }
}

- (void)updateWithNewContact:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(CNContactHeaderView *)self updateWithContacts:v6];
  }

  else
  {
    [(CNContactHeaderView *)self updateWithContacts:MEMORY[0x1E695E0F0]];
  }
}

- (void)updateConstraints
{
  [(CNContactHeaderView *)self reloadDataIfNeeded];
  v19.receiver = self;
  v19.super_class = CNContactHeaderView;
  [(CNContactHeaderView *)&v19 updateConstraints];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(CNContactHeaderView *)self activatedConstraints];
  [v3 deactivateConstraints:v4];

  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(CNContactHeaderView *)self photoView];
  v7 = [v6 topAnchor];
  v8 = [(CNContactHeaderView *)self safeAreaLayoutGuide];
  v9 = [v8 topAnchor];
  [(CNContactHeaderView *)self safeAreaPhotoOffset];
  v10 = [v7 constraintEqualToAnchor:v9 constant:?];
  [(CNContactHeaderView *)self setPhotoTopConstraint:v10];

  v11 = [(CNContactHeaderView *)self photoTopConstraint];
  LODWORD(v12) = 1148829696;
  [v11 setPriority:v12];

  v13 = [(CNContactHeaderView *)self photoTopConstraint];
  [v5 addObject:v13];

  v14 = [(CNContactHeaderView *)self photoView];
  v15 = [v14 heightAnchor];
  v16 = [(CNContactHeaderView *)self sizeAttributes];
  [v16 photoMinHeight];
  v17 = [v15 constraintEqualToConstant:?];
  [(CNContactHeaderView *)self setPhotoHeightConstraint:v17];

  v18 = [(CNContactHeaderView *)self photoHeightConstraint];
  [v5 addObject:v18];

  [(CNContactHeaderView *)self setActivatedConstraints:v5];
  [MEMORY[0x1E696ACD8] activateConstraints:v5];
}

- (void)setConstrainedMaxHeight:(double)a3 enabled:(BOOL)a4
{
  v4 = a4;
  [(CNContactHeaderView *)self setConstrainedMaxHeight:a3];
  [(CNContactHeaderView *)self setShouldUseConstrainedMaxHeight:v4];

  [(CNContactHeaderView *)self setNeedsLayout];
}

- (double)defaultMaxBaseHeight
{
  v3 = 0.0;
  if ([(CNContactHeaderView *)self shouldShowBelowNavigationTitle])
  {
    v4 = [(CNContactHeaderView *)self sizeAttributes];
    [v4 maxNavbarTitleOffset];
    v3 = v5;
  }

  v6 = [(CNContactHeaderView *)self sizeAttributes];
  [v6 maxHeight];
  v8 = v3 + v7;
  [(CNContactHeaderView *)self safeAreaTop];
  v10 = v8 + v9;

  return v10;
}

- (double)maxHeight
{
  if ([(CNContactHeaderView *)self shouldUseConstrainedMaxHeight])
  {
    [(CNContactHeaderView *)self constrainedMaxHeight];
    v4 = v3;
    [(CNContactHeaderView *)self defaultMaxBaseHeight];
    if (v4 < result)
    {
      return v4;
    }
  }

  else
  {

    [(CNContactHeaderView *)self defaultMaxBaseHeight];
  }

  return result;
}

- (double)minTitleOffset
{
  if (![(CNContactHeaderView *)self shouldShowBelowNavigationTitle])
  {
    return 0.0;
  }

  v3 = [(CNContactHeaderView *)self sizeAttributes];
  [v3 minNavbarTitleOffset];
  v5 = v4;

  return v5;
}

- (double)minHeight
{
  [(CNContactHeaderView *)self minTitleOffset];
  v4 = v3;
  v5 = [(CNContactHeaderView *)self sizeAttributes];
  [v5 minHeight];
  v7 = v4 + v6;
  [(CNContactHeaderView *)self safeAreaTop];
  v9 = v7 + v8;

  return v9;
}

- (double)safeAreaPhotoOffset
{
  [(CNContactHeaderView *)self safeAreaInsets];
  v4 = v3;
  v5 = [(CNContactHeaderView *)self sizeAttributes];
  [v5 photoMinHeight];
  v7 = v6;
  v8 = [(CNContactHeaderView *)self sizeAttributes];
  [v8 photoMinTopMargin];
  v10 = v7 + v9;

  v11 = [(CNContactHeaderView *)self sizeAttributes];
  v12 = v11;
  if (v4 >= v10)
  {
    [v11 photoMinHeight];
    v16 = -v15;
    v17 = [(CNContactHeaderView *)self sizeAttributes];
    [v17 photoMinTopMargin];
    v14 = v16 - v18;
  }

  else
  {
    [v11 photoMinTopMargin];
    v14 = -(v4 - v13);
  }

  if (v4 + v14 >= 10.0)
  {
    return v14;
  }

  else
  {
    return -(v4 + -10.0);
  }
}

- (double)safeAreaTop
{
  [(CNContactHeaderView *)self safeAreaInsets];
  v4 = v3;
  [(CNContactHeaderView *)self safeAreaPhotoOffset];
  return v4 + v5;
}

- (void)setPresenterDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_presenterDelegate, v4);
  [(CNContactPhotoView *)self->_photoView setPresenterDelegate:v4];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContactHeaderView;
  [(CNContactHeaderView *)&v4 dealloc];
}

- (void)updateForShowingNavBar:(BOOL)a3
{
  v3 = a3;
  [(CNContactHeaderView *)self setShouldShowBelowNavigationTitle:?];
  v5 = [objc_opt_class() sizeAttributesShowingNavBar:v3];
  [(CNContactHeaderView *)self setSizeAttributes:v5];

  [(CNContactHeaderView *)self updateSizeDependentAttributes];
}

- (CNContactHeaderView)initWithContact:(id)a3 frame:(CGRect)a4 shouldAllowTakePhotoAction:(BOOL)a5 shouldAllowImageDrops:(BOOL)a6 showingNavBar:(BOOL)a7 monogramOnly:(BOOL)a8 delegate:(id)a9
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v12 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v41[2] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = CNContactHeaderView;
  v18 = a9;
  v19 = a3;
  v20 = [(CNContactHeaderView *)&v39 initWithFrame:x, y, width, height];
  objc_storeWeak(&v20->_delegate, v18);

  v21 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v21 userInterfaceIdiom])
  {
    v22 = [MEMORY[0x1E69966E8] currentEnvironment];
    v23 = [v22 featureFlags];
    v20->_useDualSimParity = [v23 isFeatureEnabled:15];
  }

  else
  {
    v20->_useDualSimParity = 0;
  }

  [(CNContactHeaderView *)v20 setShowMonogramsOnly:v9];
  [(CNContactHeaderView *)v20 setShouldShowBelowNavigationTitle:v10];
  v24 = [objc_opt_class() sizeAttributesShowingNavBar:v10];
  [(CNContactHeaderView *)v20 setSizeAttributes:v24];

  v25 = dispatch_queue_create("com.apple.contact.backgroundColorCaching", 0);
  backgroundColorCacheQueue = v20->_backgroundColorCacheQueue;
  v20->_backgroundColorCacheQueue = v25;

  v27 = [objc_opt_class() makePhotoViewWithShouldAllowTakePhotoAction:v12 shouldAllowImageDrops:v11 monogramOnly:v9];
  photoView = v20->_photoView;
  v20->_photoView = v27;

  [(CNContactPhotoView *)v20->_photoView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNContactPhotoView *)v20->_photoView setDelegate:v20];
  [(CNContactHeaderView *)v20 addSubview:v20->_photoView];
  v41[0] = *MEMORY[0x1E69DDDB8];
  v29 = v41[0];
  v30 = *MEMORY[0x1E69DB650];
  v40[0] = @"ABTextStyleAttributeName";
  v40[1] = v30;
  v31 = [(CNContactHeaderView *)v20 contactStyle];
  v32 = [v31 textColor];
  v41[1] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  [(CNContactHeaderView *)v20 setNameTextAttributes:v33];

  v34 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v29];
  v35 = sCurrentNameFont;
  sCurrentNameFont = v34;

  v36 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD78]];
  v37 = sCurrentTaglineFont;
  sCurrentTaglineFont = v36;

  [(CNContactHeaderView *)v20 setNeedsUpdateConstraints];
  [(CNContactHeaderView *)v20 setNeedsLayout];
  [(CNContactHeaderView *)v20 updateWithNewContact:v19];

  return v20;
}

- (id)descriptorForRequiredKeys
{
  v2 = objc_opt_class();

  return [v2 descriptorForRequiredKeys];
}

+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)a3 shouldAllowImageDrops:(BOOL)a4 monogramOnly:(BOOL)a5
{
  v5 = a1;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

+ (CGSize)defaultPhotoSize
{
  +[CNContactPhotoView defaultSize];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)descriptorForRequiredKeysIncludingAvatarViewDescriptors:(BOOL)a3
{
  v3 = a3;
  v30[28] = *MEMORY[0x1E69E9840];
  v4 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:1];
  v30[0] = v4;
  v5 = [CNContactPhotoView descriptorForRequiredKeysWithThreeDTouchEnabled:1];
  v30[1] = v5;
  v6 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:1];
  v7 = *MEMORY[0x1E695C300];
  v30[2] = v6;
  v30[3] = v7;
  v8 = *MEMORY[0x1E695C2F0];
  v30[4] = *MEMORY[0x1E695C240];
  v30[5] = v8;
  v9 = *MEMORY[0x1E695C390];
  v30[6] = *MEMORY[0x1E695C230];
  v30[7] = v9;
  v10 = *MEMORY[0x1E695C310];
  v30[8] = *MEMORY[0x1E695C308];
  v30[9] = v10;
  v11 = *MEMORY[0x1E695C350];
  v30[10] = *MEMORY[0x1E695C348];
  v30[11] = v11;
  v12 = *MEMORY[0x1E695C3A0];
  v30[12] = *MEMORY[0x1E695C340];
  v30[13] = v12;
  v13 = *MEMORY[0x1E695C1C0];
  v30[14] = *MEMORY[0x1E695C398];
  v30[15] = v13;
  v14 = *MEMORY[0x1E695C358];
  v30[16] = *MEMORY[0x1E695C328];
  v30[17] = v14;
  v15 = *MEMORY[0x1E695C1F8];
  v30[18] = *MEMORY[0x1E695C410];
  v30[19] = v15;
  v16 = *MEMORY[0x1E695C270];
  v30[20] = *MEMORY[0x1E695C2C8];
  v30[21] = v16;
  v17 = *MEMORY[0x1E695C3C8];
  v30[22] = *MEMORY[0x1E695C400];
  v30[23] = v17;
  v18 = [MEMORY[0x1E695CEB0] descriptorForRequiredKeys];
  v19 = *MEMORY[0x1E695C200];
  v30[24] = v18;
  v30[25] = v19;
  v20 = [MEMORY[0x1E695CDB0] descriptorForRequiredKeys];
  v21 = *MEMORY[0x1E695C1D0];
  v30[26] = v20;
  v30[27] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:28];

  if (v3)
  {
    v23 = [CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:1];
    v24 = [v22 arrayByAddingObject:v23];

    v25 = +[CNUIVisualIdentityEditorViewController descriptorForRequiredKeys];
    v22 = [v24 arrayByAddingObject:v25];
  }

  v26 = MEMORY[0x1E695CD58];
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactHeaderView descriptorForRequiredKeysIncludingAvatarViewDescriptors:]"];
  v28 = [v26 descriptorWithKeyDescriptors:v22 description:v27];

  return v28;
}

@end