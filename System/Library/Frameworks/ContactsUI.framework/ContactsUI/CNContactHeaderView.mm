@interface CNContactHeaderView
+ (CGSize)defaultPhotoSize;
+ (id)descriptorForRequiredKeysIncludingAvatarViewDescriptors:(BOOL)descriptors;
+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)action shouldAllowImageDrops:(BOOL)drops monogramOnly:(BOOL)only;
- (BOOL)isOrientationPhoneLandscape;
- (BOOL)isPad;
- (BOOL)isPadCompactHorizontalSize;
- (BOOL)isPadRegularHorizontalSize;
- (BOOL)isPhotoLowQuality;
- (CNContactHeaderView)initWithContact:(id)contact frame:(CGRect)frame shouldAllowTakePhotoAction:(BOOL)action shouldAllowImageDrops:(BOOL)drops showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate;
- (CNContactHeaderViewDelegate)delegate;
- (CNPresenterDelegate)presenterDelegate;
- (double)currentHeightPercentMaximized;
- (double)currentHeightPercentMaximizedForMaxHeight:(double)height;
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
- (id)dataForBackgroundColorService:(id)service;
- (id)descriptorForRequiredKeys;
- (id)viewControllerForPhotoView:(id)view;
- (void)dealloc;
- (void)layoutSubviews;
- (void)photoView:(id)view didAcceptDropOfImageData:(id)data;
- (void)photoViewDidUpdate:(id)update;
- (void)reloadDataIfNeeded;
- (void)reloadDataPreservingChanges:(BOOL)changes;
- (void)setConstrainedMaxHeight:(double)height enabled:(BOOL)enabled;
- (void)setNeedsReload;
- (void)setPresenterDelegate:(id)delegate;
- (void)updateConstraints;
- (void)updateFontSizes;
- (void)updateForShowingNavBar:(BOOL)bar;
- (void)updateSizeDependentAttributes;
- (void)updateWithContacts:(id)contacts;
- (void)updateWithNewContact:(id)contact;
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
  contacts = [(CNContactHeaderView *)self contacts];
  firstObject = [contacts firstObject];
  hasLowQualityImage = [firstObject hasLowQualityImage];

  return hasLowQualityImage;
}

- (BOOL)isOrientationPhoneLandscape
{
  delegate = [(CNContactHeaderView *)self delegate];
  isOrientationPhoneLandscape = [delegate isOrientationPhoneLandscape];

  return isOrientationPhoneLandscape;
}

- (BOOL)isPad
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return userInterfaceIdiom == 1;
}

- (BOOL)isPadCompactHorizontalSize
{
  traitCollection = [(CNContactHeaderView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  result = [(CNContactHeaderView *)self isPad];
  if (horizontalSizeClass != 1)
  {
    return 0;
  }

  return result;
}

- (BOOL)isPadRegularHorizontalSize
{
  traitCollection = [(CNContactHeaderView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  result = [(CNContactHeaderView *)self isPad];
  if (horizontalSizeClass == 1)
  {
    return 0;
  }

  return result;
}

- (id)contactViewCache
{
  delegate = [(CNContactHeaderView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNContactHeaderView *)self delegate];
    contactViewCache = [delegate2 contactViewCache];
  }

  else
  {
    contactViewCache = 0;
  }

  return contactViewCache;
}

- (id)viewControllerForPhotoView:(id)view
{
  delegate = [(CNContactHeaderView *)self delegate];
  v5 = [delegate viewControllerForHeaderView:self];

  return v5;
}

- (void)photoView:(id)view didAcceptDropOfImageData:(id)data
{
  dataCopy = data;
  delegate = [(CNContactHeaderView *)self delegate];
  [delegate headerView:self didAcceptDropOfImageData:dataCopy];
}

- (void)photoViewDidUpdate:(id)update
{
  delegate = [(CNContactHeaderView *)self delegate];
  [delegate headerPhotoDidUpdate];
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
      sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
      [sizeAttributes navbarTitleOffsetWithPercentMax:v5];
      v6 = v8;
    }

    isSiri = [(CNContactHeaderView *)self isSiri];
    [(CNContactHeaderView *)self safeAreaPhotoOffset];
    v11 = v6 + v10;
    sizeAttributes2 = [(CNContactHeaderView *)self sizeAttributes];
    v13 = sizeAttributes2;
    if (isSiri)
    {
      [sizeAttributes2 photoMinTopMargin];
      v15 = v11 + v14;
      photoTopConstraint = [(CNContactHeaderView *)self photoTopConstraint];
      [photoTopConstraint setConstant:v15];
    }

    else
    {
      [sizeAttributes2 photoTopMarginWithPercentMax:v5];
      v18 = v11 + v17;
      photoTopConstraint = [(CNContactHeaderView *)self sizeAttributes];
      [photoTopConstraint photoMinTopMargin];
      v20 = v18 - v19;
      photoTopConstraint2 = [(CNContactHeaderView *)self photoTopConstraint];
      [photoTopConstraint2 setConstant:v20];
    }

    sizeAttributes3 = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes3 photoHeightWithPercentMax:v5];
    v24 = v23;
    photoHeightConstraint = [(CNContactHeaderView *)self photoHeightConstraint];
    [photoHeightConstraint setConstant:v24];

    v26 = pow(v5, 3.0);
    photoView = [(CNContactHeaderView *)self photoView];
    [photoView setLabelAlpha:v26];
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

- (double)currentHeightPercentMaximizedForMaxHeight:(double)height
{
  [(CNContactHeaderView *)self minHeight];
  v6 = v5;
  result = 1.0;
  if (v6 < height)
  {
    [(CNContactHeaderView *)self bounds];
    v9 = v8;
    [(CNContactHeaderView *)self minHeight];
    v11 = v9 - v10;
    [(CNContactHeaderView *)self minHeight];
    result = v11 / (height - v12);
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

- (void)reloadDataPreservingChanges:(BOOL)changes
{
  photoView = self->_photoView;
  if (changes)
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
  traitCollection = [(CNContactHeaderView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
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

- (id)dataForBackgroundColorService:(id)service
{
  serviceCopy = service;
  v4 = mmap(0, [serviceCopy length], 3, 4097, -1, 0);
  [serviceCopy getBytes:v4 length:{objc_msgSend(serviceCopy, "length")}];
  v5 = [serviceCopy length];

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

- (void)updateWithContacts:(id)contacts
{
  v20 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  if (([(NSArray *)self->_contacts _cn_isIdenticalToArray:contactsCopy]& 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = contactsCopy;
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
          descriptorForRequiredKeys = [objc_opt_class() descriptorForRequiredKeys];
          v18 = descriptorForRequiredKeys;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
          [v11 assertKeysAreAvailable:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_contacts, contacts);
    [(CNContactPhotoView *)self->_photoView setContacts:v6];
    -[CNContactHeaderView setHidden:](self, "setHidden:", [v6 count] == 0);
    [(CNContactHeaderView *)self setNeedsReload];
  }
}

- (void)updateWithNewContact:(id)contact
{
  v7[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = contactCopy;
  if (contactCopy)
  {
    v7[0] = contactCopy;
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
  activatedConstraints = [(CNContactHeaderView *)self activatedConstraints];
  [v3 deactivateConstraints:activatedConstraints];

  array = [MEMORY[0x1E695DF70] array];
  photoView = [(CNContactHeaderView *)self photoView];
  topAnchor = [photoView topAnchor];
  safeAreaLayoutGuide = [(CNContactHeaderView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  [(CNContactHeaderView *)self safeAreaPhotoOffset];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [(CNContactHeaderView *)self setPhotoTopConstraint:v10];

  photoTopConstraint = [(CNContactHeaderView *)self photoTopConstraint];
  LODWORD(v12) = 1148829696;
  [photoTopConstraint setPriority:v12];

  photoTopConstraint2 = [(CNContactHeaderView *)self photoTopConstraint];
  [array addObject:photoTopConstraint2];

  photoView2 = [(CNContactHeaderView *)self photoView];
  heightAnchor = [photoView2 heightAnchor];
  sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
  [sizeAttributes photoMinHeight];
  v17 = [heightAnchor constraintEqualToConstant:?];
  [(CNContactHeaderView *)self setPhotoHeightConstraint:v17];

  photoHeightConstraint = [(CNContactHeaderView *)self photoHeightConstraint];
  [array addObject:photoHeightConstraint];

  [(CNContactHeaderView *)self setActivatedConstraints:array];
  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)setConstrainedMaxHeight:(double)height enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(CNContactHeaderView *)self setConstrainedMaxHeight:height];
  [(CNContactHeaderView *)self setShouldUseConstrainedMaxHeight:enabledCopy];

  [(CNContactHeaderView *)self setNeedsLayout];
}

- (double)defaultMaxBaseHeight
{
  v3 = 0.0;
  if ([(CNContactHeaderView *)self shouldShowBelowNavigationTitle])
  {
    sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes maxNavbarTitleOffset];
    v3 = v5;
  }

  sizeAttributes2 = [(CNContactHeaderView *)self sizeAttributes];
  [sizeAttributes2 maxHeight];
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

  sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
  [sizeAttributes minNavbarTitleOffset];
  v5 = v4;

  return v5;
}

- (double)minHeight
{
  [(CNContactHeaderView *)self minTitleOffset];
  v4 = v3;
  sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
  [sizeAttributes minHeight];
  v7 = v4 + v6;
  [(CNContactHeaderView *)self safeAreaTop];
  v9 = v7 + v8;

  return v9;
}

- (double)safeAreaPhotoOffset
{
  [(CNContactHeaderView *)self safeAreaInsets];
  v4 = v3;
  sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
  [sizeAttributes photoMinHeight];
  v7 = v6;
  sizeAttributes2 = [(CNContactHeaderView *)self sizeAttributes];
  [sizeAttributes2 photoMinTopMargin];
  v10 = v7 + v9;

  sizeAttributes3 = [(CNContactHeaderView *)self sizeAttributes];
  v12 = sizeAttributes3;
  if (v4 >= v10)
  {
    [sizeAttributes3 photoMinHeight];
    v16 = -v15;
    sizeAttributes4 = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes4 photoMinTopMargin];
    v14 = v16 - v18;
  }

  else
  {
    [sizeAttributes3 photoMinTopMargin];
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

- (void)setPresenterDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_presenterDelegate, delegateCopy);
  [(CNContactPhotoView *)self->_photoView setPresenterDelegate:delegateCopy];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContactHeaderView;
  [(CNContactHeaderView *)&v4 dealloc];
}

- (void)updateForShowingNavBar:(BOOL)bar
{
  barCopy = bar;
  [(CNContactHeaderView *)self setShouldShowBelowNavigationTitle:?];
  v5 = [objc_opt_class() sizeAttributesShowingNavBar:barCopy];
  [(CNContactHeaderView *)self setSizeAttributes:v5];

  [(CNContactHeaderView *)self updateSizeDependentAttributes];
}

- (CNContactHeaderView)initWithContact:(id)contact frame:(CGRect)frame shouldAllowTakePhotoAction:(BOOL)action shouldAllowImageDrops:(BOOL)drops showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate
{
  onlyCopy = only;
  barCopy = bar;
  dropsCopy = drops;
  actionCopy = action;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v41[2] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = CNContactHeaderView;
  delegateCopy = delegate;
  contactCopy = contact;
  height = [(CNContactHeaderView *)&v39 initWithFrame:x, y, width, height];
  objc_storeWeak(&height->_delegate, delegateCopy);

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    height->_useDualSimParity = [featureFlags isFeatureEnabled:15];
  }

  else
  {
    height->_useDualSimParity = 0;
  }

  [(CNContactHeaderView *)height setShowMonogramsOnly:onlyCopy];
  [(CNContactHeaderView *)height setShouldShowBelowNavigationTitle:barCopy];
  v24 = [objc_opt_class() sizeAttributesShowingNavBar:barCopy];
  [(CNContactHeaderView *)height setSizeAttributes:v24];

  v25 = dispatch_queue_create("com.apple.contact.backgroundColorCaching", 0);
  backgroundColorCacheQueue = height->_backgroundColorCacheQueue;
  height->_backgroundColorCacheQueue = v25;

  v27 = [objc_opt_class() makePhotoViewWithShouldAllowTakePhotoAction:actionCopy shouldAllowImageDrops:dropsCopy monogramOnly:onlyCopy];
  photoView = height->_photoView;
  height->_photoView = v27;

  [(CNContactPhotoView *)height->_photoView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNContactPhotoView *)height->_photoView setDelegate:height];
  [(CNContactHeaderView *)height addSubview:height->_photoView];
  v41[0] = *MEMORY[0x1E69DDDB8];
  v29 = v41[0];
  v30 = *MEMORY[0x1E69DB650];
  v40[0] = @"ABTextStyleAttributeName";
  v40[1] = v30;
  contactStyle = [(CNContactHeaderView *)height contactStyle];
  textColor = [contactStyle textColor];
  v41[1] = textColor;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  [(CNContactHeaderView *)height setNameTextAttributes:v33];

  v34 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v29];
  v35 = sCurrentNameFont;
  sCurrentNameFont = v34;

  v36 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD78]];
  v37 = sCurrentTaglineFont;
  sCurrentTaglineFont = v36;

  [(CNContactHeaderView *)height setNeedsUpdateConstraints];
  [(CNContactHeaderView *)height setNeedsLayout];
  [(CNContactHeaderView *)height updateWithNewContact:contactCopy];

  return height;
}

- (id)descriptorForRequiredKeys
{
  v2 = objc_opt_class();

  return [v2 descriptorForRequiredKeys];
}

+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)action shouldAllowImageDrops:(BOOL)drops monogramOnly:(BOOL)only
{
  selfCopy = self;
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

+ (id)descriptorForRequiredKeysIncludingAvatarViewDescriptors:(BOOL)descriptors
{
  descriptorsCopy = descriptors;
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
  descriptorForRequiredKeys = [MEMORY[0x1E695CEB0] descriptorForRequiredKeys];
  v19 = *MEMORY[0x1E695C200];
  v30[24] = descriptorForRequiredKeys;
  v30[25] = v19;
  descriptorForRequiredKeys2 = [MEMORY[0x1E695CDB0] descriptorForRequiredKeys];
  v21 = *MEMORY[0x1E695C1D0];
  v30[26] = descriptorForRequiredKeys2;
  v30[27] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:28];

  if (descriptorsCopy)
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