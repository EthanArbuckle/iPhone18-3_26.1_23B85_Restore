@interface AMSUIMessageView
- (AMSUIMessageView)initWithStyle:(unint64_t)style;
- (BOOL)isBannerStyle;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)footerButtons;
- (UIView)accessorySecondaryView;
- (UIView)accessoryView;
- (double)_amsCornerRadius;
- (double)_textViewParagraphSpacingBefore;
- (id)_makeSeparatorView;
- (id)focusItemsInRect:(CGRect)rect;
- (void)_endObservations;
- (void)_recordNewsDebugEventWithCategory:(id)category;
- (void)_setAccessibility;
- (void)_setAccessibilityIdentifier;
- (void)_setBackground;
- (void)_setBackgroundDefault;
- (void)_setMICAPlayerTintColor:(id)color;
- (void)_setShadow;
- (void)_setTextViewText;
- (void)_setupDefaults;
- (void)_setupExclusionPathVisual;
- (void)_setupImageView;
- (void)_setupImageViewDefault;
- (void)_setupInitialLayout;
- (void)_setupMICAAssetWithData:(id)data originalURL:(id)l;
- (void)_startObservations;
- (void)_syncRectsFromContext;
- (void)_updateCornerRadius;
- (void)_userInterfaceStyleDidChange;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeBubbleArrowMaskView;
- (void)setBodyDialogAction:(id)action target:(id)target action:(SEL)a5;
- (void)setButtons:(id)buttons;
- (void)setButtonsForDialogActions:(id)actions target:(id)target action:(SEL)action;
- (void)setIconColor:(id)color;
- (void)setNeedsLayout;
- (void)setSeparatorColor:(id)color;
- (void)set_ams_backgroundColor:(id)color;
- (void)setupBubbleArrowMaskView;
- (void)setupDebugButtonWithTarget:(id)target action:(SEL)action;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AMSUIMessageView

- (AMSUIMessageView)initWithStyle:(unint64_t)style
{
  v31.receiver = self;
  v31.super_class = AMSUIMessageView;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(AMSUICommonView *)&v31 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    [(AMSUIMessageView *)v8 setPreservesSuperviewLayoutMargins:0];
    v9->_imageStyle = 0;
    v9->_style = style;
    if (os_variant_has_internal_content() && ([MEMORY[0x1E698CBB0] isRunningUnitTests] & 1) == 0)
    {
      v10 = [[AMSUICommonButton alloc] initWithFrame:v4, v5, v6, v7];
      debugButton = v9->_debugButton;
      v9->_debugButton = v10;
    }

    v12 = objc_alloc_init(AMSUICommonVisualEffectView);
    backgroundVisualEffectView = v9->_backgroundVisualEffectView;
    v9->_backgroundVisualEffectView = v12;

    v14 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{v4, v5, v6, v7}];
    containerView = v9->_containerView;
    v9->_containerView = v14;

    v16 = [[AMSUICommonImageView alloc] initWithFrame:v4, v5, v6, v7];
    backgroundImageView = v9->_backgroundImageView;
    v9->_backgroundImageView = &v16->super;

    v18 = [[AMSUICommonImageView alloc] initWithFrame:v4, v5, v6, v7];
    imageView = v9->_imageView;
    v9->_imageView = v18;

    v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
    imageContainerView = v9->_imageContainerView;
    v9->_imageContainerView = v20;

    v9->_isImageSymbolImage = 0;
    separatorViews = v9->_separatorViews;
    v9->_separatorViews = MEMORY[0x1E695E0F0];

    v23 = [[AMSUIMessageViewSolariumLayoutContext alloc] initWithMessageView:v9];
    layoutContext = v9->_layoutContext;
    v9->_layoutContext = v23;

    traitCollection = [(AMSUIMessageView *)v9 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      v27 = [MEMORY[0x1E69DC730] effectWithStyle:18];
      [(AMSUICommonVisualEffectView *)v9->_backgroundVisualEffectView setEffect:v27];
    }

    v28 = [[AMSUICommonTextView alloc] initWithFrame:v4, v5, v6, v7];
    textView = v9->_textView;
    v9->_textView = v28;

    [(AMSUIMessageView *)v9 _setupInitialLayout];
    [(AMSUIMessageView *)v9 _setupDefaults];
    [(AMSUIMessageView *)v9 _startObservations];
  }

  return v9;
}

- (void)dealloc
{
  [(AMSUIMessageView *)self _endObservations];
  v3.receiver = self;
  v3.super_class = AMSUIMessageView;
  [(AMSUIMessageView *)&v3 dealloc];
}

- (void)didMoveToSuperview
{
  v6.receiver = self;
  v6.super_class = AMSUIMessageView;
  [(AMSUIMessageView *)&v6 didMoveToSuperview];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSUIMessageView style](self, "style")}];
  v5 = [v3 stringWithFormat:@"%@ didMoveToSuperview", v4];
  [(AMSUIMessageView *)self _recordNewsDebugEventWithCategory:v5];
}

- (void)_recordNewsDebugEventWithCategory:(id)category
{
  v20 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  bundleIdentifier = [currentProcess bundleIdentifier];

  if (os_variant_has_internal_content())
  {
    lowercaseString = [bundleIdentifier lowercaseString];
    v7 = [lowercaseString isEqualToString:@"com.apple.news"];

    if (v7)
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = AMSLogKey();
        v16 = 138543618;
        v17 = v10;
        v18 = 2114;
        v19 = v11;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Recording debug event for news", &v16, 0x16u);
      }

      v12 = [objc_alloc(MEMORY[0x1E698CA38]) initWithSubsystem:@"MessagingUI" category:categoryCopy error:0];
      [v12 setClientApp:bundleIdentifier];
      v13 = [MEMORY[0x1E698C7D8] bagForProfile:@"AppleNews" profileVersion:@"1"];
      v14 = [MEMORY[0x1E698CA00] internalInstanceUsingBag:v13];
      [v14 enqueueEvent:v12];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_setupDefaults
{
  containerView = [(AMSUIMessageView *)self containerView];
  [containerView setClipsToBounds:1];

  containerView2 = [(AMSUIMessageView *)self containerView];
  [containerView2 setContentInsetAdjustmentBehavior:2];

  [(AMSUIMessageView *)self _setBackgroundDefault];
  [(AMSUIMessageView *)self _setupImageViewDefault];
  [(AMSUIMessageView *)self _setupImageView];
  [(AMSUIMessageView *)self _setAccessibilityIdentifier];
  textView = [(AMSUIMessageView *)self textView];
  [textView setDataDetectorTypes:0];

  textView2 = [(AMSUIMessageView *)self textView];
  [textView2 setEditable:0];

  textView3 = [(AMSUIMessageView *)self textView];
  [textView3 setScrollEnabled:0];

  textView4 = [(AMSUIMessageView *)self textView];
  [textView4 setShowsHorizontalScrollIndicator:0];

  textView5 = [(AMSUIMessageView *)self textView];
  [textView5 setShowsVerticalScrollIndicator:0];

  textView6 = [(AMSUIMessageView *)self textView];
  [textView6 setAdjustsFontForContentSizeCategory:1];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  textView7 = [(AMSUIMessageView *)self textView];
  [textView7 setBackgroundColor:clearColor];

  textView8 = [(AMSUIMessageView *)self textView];
  textContainer = [textView8 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  textView9 = [(AMSUIMessageView *)self textView];
  textContainer2 = [textView9 textContainer];
  [textContainer2 setLineBreakMode:4];

  textView10 = [(AMSUIMessageView *)self textView];
  [textView10 setUserInteractionEnabled:0];

  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    textView11 = [(AMSUIMessageView *)self textView];
    [textView11 textContainerInset];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    textView12 = [(AMSUIMessageView *)self textView];
    [textView12 setTextContainerInset:{v20, 1.0, v22, v24}];
  }

  backgroundImageView = [(AMSUIMessageView *)self backgroundImageView];
  [backgroundImageView setClipsToBounds:1];

  v27 = +[AMSUIAppearance _defaultSeparatorColor];
  [(AMSUIMessageView *)self setSeparatorColor:v27];
}

- (void)_setupInitialLayout
{
  imageContainerView = [(AMSUIMessageView *)self imageContainerView];
  imageView = [(AMSUIMessageView *)self imageView];
  [imageContainerView addSubview:imageView];

  containerView = [(AMSUIMessageView *)self containerView];
  imageContainerView2 = [(AMSUIMessageView *)self imageContainerView];
  [containerView addSubview:imageContainerView2];

  containerView2 = [(AMSUIMessageView *)self containerView];
  textView = [(AMSUIMessageView *)self textView];
  [containerView2 addSubview:textView];

  backgroundImageView = [(AMSUIMessageView *)self backgroundImageView];
  [(AMSUIMessageView *)self addSubview:backgroundImageView];

  backgroundVisualEffectView = [(AMSUIMessageView *)self backgroundVisualEffectView];
  contentView = [backgroundVisualEffectView contentView];
  containerView3 = [(AMSUIMessageView *)self containerView];
  [contentView addSubview:containerView3];

  backgroundVisualEffectView2 = [(AMSUIMessageView *)self backgroundVisualEffectView];
  [(AMSUIMessageView *)self addSubview:backgroundVisualEffectView2];
}

- (void)setupDebugButtonWithTarget:(id)target action:(SEL)action
{
  v6 = MEMORY[0x1E69DCAD8];
  targetCopy = target;
  v35 = [v6 configurationWithPointSize:14.0];
  debugButton = [(AMSUIMessageView *)self debugButton];
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant.fill" withConfiguration:v35];
  [debugButton setImage:v9 forState:0];

  debugButton2 = [(AMSUIMessageView *)self debugButton];
  [debugButton2 setTitle:0 forState:0];

  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  debugButton3 = [(AMSUIMessageView *)self debugButton];
  [debugButton3 setTintColor:lightGrayColor];

  debugButton4 = [(AMSUIMessageView *)self debugButton];
  [debugButton4 sizeToFit];

  debugButton5 = [(AMSUIMessageView *)self debugButton];
  [debugButton5 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  debugButton6 = [(AMSUIMessageView *)self debugButton];
  [debugButton6 setFrame:{v16, v18, v20 + 8.0, v22 + 8.0}];

  debugButton7 = [(AMSUIMessageView *)self debugButton];
  [debugButton7 setContentHorizontalAlignment:1];

  debugButton8 = [(AMSUIMessageView *)self debugButton];
  [debugButton8 setContentVerticalAlignment:1];

  debugButton9 = [(AMSUIMessageView *)self debugButton];
  [debugButton9 addTarget:targetCopy action:action forControlEvents:64];

  debugButton10 = [(AMSUIMessageView *)self debugButton];
  [debugButton10 frame];
  v29 = v28;
  v31 = v30;
  layoutContext = [(AMSUIMessageView *)self layoutContext];
  [layoutContext setDebugButtonSize:{v29, v31}];

  containerView = [(AMSUIMessageView *)self containerView];
  debugButton11 = [(AMSUIMessageView *)self debugButton];
  [containerView addSubview:debugButton11];
}

- (void)_setShadow
{
  if ([(AMSUIMessageView *)self style]== 4)
  {
    traitCollection = [(AMSUIMessageView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      [MEMORY[0x1E69DC888] systemGray4Color];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v5 = ;
    cGColor = [v5 CGColor];
    layer = [(AMSUIMessageView *)self layer];
    [layer setShadowColor:cGColor];

    traitCollection2 = [(AMSUIMessageView *)self traitCollection];
    [traitCollection2 displayScale];
    v10 = 100.0 / v9;
    layer2 = [(AMSUIMessageView *)self layer];
    [layer2 setShadowRadius:v10];

    layer3 = [(AMSUIMessageView *)self layer];
    LODWORD(v13) = 1050253722;
    [layer3 setShadowOpacity:v13];

    layer4 = [(AMSUIMessageView *)self layer];
    [layer4 setShadowOffset:{0.0, 10.0}];

    layer5 = [(AMSUIMessageView *)self layer];
    [layer5 setMasksToBounds:0];

    layer6 = [(AMSUIMessageView *)self layer];
    [layer6 setShadowPath:0];
  }
}

- (void)_setupMICAAssetWithData:(id)data originalURL:(id)l
{
  lCopy = l;
  dataCopy = data;
  traitCollection = [(AMSUIMessageView *)self traitCollection];
  [traitCollection displayScale];
  v10 = v9;

  v11 = [[MicaPlayer alloc] initWithData:dataCopy url:lCopy retinaScale:v10];
  [(AMSUIMessageView *)self setMicaPlayer:v11];

  iconColor = [(AMSUIMessageView *)self iconColor];

  if (iconColor)
  {
    iconColor2 = [(AMSUIMessageView *)self iconColor];
    [(AMSUIMessageView *)self _setMICAPlayerTintColor:iconColor2];
  }

  micaPlayer = [(AMSUIMessageView *)self micaPlayer];
  imageContainerView = [(AMSUIMessageView *)self imageContainerView];
  layer = [imageContainerView layer];
  [micaPlayer addToLayer:layer onTop:0 gravity:*MEMORY[0x1E6979DF0]];

  [(AMSUIMessageView *)self setNeedsLayout];
  micaPlayer2 = [(AMSUIMessageView *)self micaPlayer];
  [micaPlayer2 setLoopDuringPlayback:1];
}

- (void)_setBackgroundDefault
{
  maskShapeView = [(AMSUIMessageView *)self maskShapeView];

  if (!maskShapeView)
  {
    [(AMSUIMessageView *)self _updateCornerRadius];
  }

  if ([(AMSUIMessageView *)self style]== 4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
    [(AMSUIMessageView *)self _setBackground:v4];
  }

  style = [(AMSUIMessageView *)self style];
  traitCollection = [(AMSUIMessageView *)self traitCollection];
  v7 = [AMSUIAppearance _defaultBackgroundColorForStyle:style withTraitCollection:traitCollection];

  if (v7)
  {
    [(AMSUIMessageView *)self set_ams_backgroundColor:v7];
  }

  [(AMSUIMessageView *)self setIsUsingCustomBackground:0];
}

- (void)_setBackground
{
  maskShapeView = [(AMSUIMessageView *)self maskShapeView];

  if (!maskShapeView)
  {
    [(AMSUIMessageView *)self _updateCornerRadius];
  }

  if (![(AMSUIMessageView *)self isUsingCustomBackground])
  {

    [(AMSUIMessageView *)self _setBackgroundDefault];
  }
}

- (void)_setupImageView
{
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  imageContainerView = [(AMSUIMessageView *)self imageContainerView];
  [imageContainerView setBackgroundColor:clearColor];

  if ([(AMSUIMessageView *)self isImageSymbolImage])
  {
    v5 = 4;
  }

  else
  {
    imageView = [(AMSUIMessageView *)self imageView];
    image = [imageView image];
    isSymbolImage = [image isSymbolImage];

    if (isSymbolImage)
    {
      v5 = 4;
    }

    else
    {
      v5 = 1;
    }
  }

  imageView2 = [(AMSUIMessageView *)self imageView];
  [imageView2 setContentMode:v5];

  if (![(AMSUIMessageView *)self style]&& (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0))
  {
    imageView3 = [(AMSUIMessageView *)self imageView];
    [imageView3 setContentMode:4];
LABEL_26:

    goto LABEL_27;
  }

  if ([(AMSUIMessageView *)self style]== 4 && (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0))
  {
    imageView4 = [(AMSUIMessageView *)self imageView];
    [imageView4 _setContinuousCornerRadius:6.0];

    if (-[AMSUIMessageView isImageSymbolImage](self, "isImageSymbolImage") || (-[AMSUIMessageView imageView](self, "imageView"), v14 = objc_claimAutoreleasedReturnValue(), [v14 image], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isSymbolImage"), v15, v14, (v16 & 1) != 0))
    {
      imageView5 = [(AMSUIMessageView *)self imageView];
      layer = [imageView5 layer];
      [layer setBorderWidth:0.0];

      imageContainerView2 = [(AMSUIMessageView *)self imageContainerView];
      layer2 = [imageContainerView2 layer];
      [layer2 setShadowColor:0];

      imageContainerView3 = [(AMSUIMessageView *)self imageContainerView];
      layer3 = [imageContainerView3 layer];
      [layer3 setShadowOpacity:0.0];

      imageView3 = [(AMSUIMessageView *)self imageContainerView];
      layer4 = [imageView3 layer];
      [layer4 setShadowPath:0];
    }

    else
    {
      traitCollection = [(AMSUIMessageView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle == 2)
      {
        [MEMORY[0x1E69DC888] whiteColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] blackColor];
      }
      imageView3 = ;
      v26 = [imageView3 colorWithAlphaComponent:0.1];
      cGColor = [v26 CGColor];
      imageView6 = [(AMSUIMessageView *)self imageView];
      layer5 = [imageView6 layer];
      [layer5 setBorderColor:cGColor];

      imageView7 = [(AMSUIMessageView *)self imageView];
      layer6 = [imageView7 layer];
      [layer6 setBorderWidth:0.5];

      blackColor = [MEMORY[0x1E69DC888] blackColor];
      cGColor2 = [blackColor CGColor];
      imageContainerView4 = [(AMSUIMessageView *)self imageContainerView];
      layer7 = [imageContainerView4 layer];
      [layer7 setShadowColor:cGColor2];

      traitCollection2 = [(AMSUIMessageView *)self traitCollection];
      [traitCollection2 displayScale];
      v38 = 5.0 / v37;
      imageContainerView5 = [(AMSUIMessageView *)self imageContainerView];
      layer8 = [imageContainerView5 layer];
      [layer8 setShadowRadius:v38];

      imageContainerView6 = [(AMSUIMessageView *)self imageContainerView];
      layer9 = [imageContainerView6 layer];
      [layer9 setShadowOffset:{0.0, 2.0}];

      imageContainerView7 = [(AMSUIMessageView *)self imageContainerView];
      layer10 = [imageContainerView7 layer];
      LODWORD(v45) = 1050253722;
      [layer10 setShadowOpacity:v45];

      imageContainerView8 = [(AMSUIMessageView *)self imageContainerView];
      layer11 = [imageContainerView8 layer];
      [layer11 setMasksToBounds:0];

      layer4 = [(AMSUIMessageView *)self imageContainerView];
      v23Layer = [layer4 layer];
      [v23Layer setShadowPath:0];
    }

    goto LABEL_26;
  }

  if ([(AMSUIMessageView *)self style]== 5)
  {
    imageView8 = [(AMSUIMessageView *)self imageView];
    imageView3 = imageView8;
    v12 = 4.0;
LABEL_20:
    [imageView8 _setContinuousCornerRadius:v12];
    goto LABEL_26;
  }

  if ([(AMSUIMessageView *)self imageStyle]== 2)
  {
    imageView8 = [(AMSUIMessageView *)self imageView];
    imageView3 = imageView8;
    v12 = 6.0;
    goto LABEL_20;
  }

LABEL_27:
  if (![(AMSUIMessageView *)self style]&& (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0))
  {
    imageView9 = [(AMSUIMessageView *)self imageView];
    [imageView9 _setOverrideUserInterfaceRenderingMode:1];
  }

  imageView10 = [(AMSUIMessageView *)self imageView];
  layer12 = [imageView10 layer];
  [layer12 setMasksToBounds:1];

  imageView11 = [(AMSUIMessageView *)self imageView];
  image2 = [imageView11 image];

  if (image2)
  {
    imageView12 = [(AMSUIMessageView *)self imageView];
    image3 = [imageView12 image];

    imageView13 = [(AMSUIMessageView *)self imageView];
    image4 = [imageView13 image];
    [image4 size];
    v58 = v57;
    v60 = v59;

    imageView14 = [(AMSUIMessageView *)self imageView];
    [imageView14 frame];
    v63 = v62;
    v65 = v64;

    if (v58 / v60 * v65 > v63)
    {
      imageView15 = [(AMSUIMessageView *)self imageView];
      [imageView15 setContentMode:1];
    }
  }
}

- (void)_setupExclusionPathVisual
{
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v4 = [systemBlueColor colorWithAlphaComponent:0.3];
  textView = [(AMSUIMessageView *)self textView];
  [textView setBackgroundColor:v4];

  v6 = objc_alloc(MEMORY[0x1E69DD250]);
  v15 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  systemTealColor = [MEMORY[0x1E69DC888] systemTealColor];
  v8 = [systemTealColor colorWithAlphaComponent:0.3];
  [v15 setBackgroundColor:v8];

  textView2 = [(AMSUIMessageView *)self textView];
  textContainer = [textView2 textContainer];
  exclusionPaths = [textContainer exclusionPaths];
  firstObject = [exclusionPaths firstObject];

  if (firstObject)
  {
    [firstObject bounds];
    [v15 setFrame:?];
    exclusionView = [(AMSUIMessageView *)self exclusionView];
    [exclusionView removeFromSuperview];

    [(AMSUIMessageView *)self setExclusionView:v15];
    textView3 = [(AMSUIMessageView *)self textView];
    [textView3 addSubview:v15];
  }
}

- (void)_setupImageViewDefault
{
  v7 = [AMSUIAppearance _defaultImageViewColorForStyle:[(AMSUIMessageView *)self style]];
  if (v7)
  {
    imageView = [(AMSUIMessageView *)self imageView];
    [imageView setTintColor:v7];
  }

  if ([(AMSUIMessageView *)self style]== 2 || [(AMSUIMessageView *)self style]== 3 || [(AMSUIMessageView *)self style]== 6)
  {
    v4 = *MEMORY[0x1E69DDC78];
    imageView2 = [(AMSUIMessageView *)self imageView];
    [imageView2 setMinimumContentSizeCategory:v4];

    imageView3 = [(AMSUIMessageView *)self imageView];
    [imageView3 setMaximumContentSizeCategory:v4];
  }
}

- (void)_setAccessibility
{
  v41 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  buttons = [(AMSUIMessageView *)self buttons];

  if (buttons)
  {
    buttons2 = [(AMSUIMessageView *)self buttons];
    [array addObjectsFromArray:buttons2];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  imageView = [(AMSUIMessageView *)self imageView];
  image = [imageView image];
  if (image)
  {
    v9 = image;
    imageView2 = [(AMSUIMessageView *)self imageView];
    accessibilityLabel = [imageView2 accessibilityLabel];

    if (!accessibilityLabel)
    {
      goto LABEL_7;
    }

    imageView = [(AMSUIMessageView *)self imageView];
    accessibilityLabel2 = [imageView accessibilityLabel];
    [array2 addObject:accessibilityLabel2];
  }

LABEL_7:
  textView = [(AMSUIMessageView *)self textView];
  if ([textView hasText])
  {
    textView2 = [(AMSUIMessageView *)self textView];
    accessibilityLabel3 = [textView2 accessibilityLabel];

    if (!accessibilityLabel3)
    {
      goto LABEL_11;
    }

    textView = [(AMSUIMessageView *)self textView];
    accessibilityLabel4 = [textView accessibilityLabel];
    [array2 addObject:accessibilityLabel4];
  }

LABEL_11:
  v17 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F3921360];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = array2;
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      v22 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v35 + 1) + 8 * v22);
        if ([v17 length])
        {
          [v17 appendString:{@", "}];
        }

        [v17 appendFormat:@"%@", v23];
        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v20);
  }

  if ([v17 length])
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithString:v17];
    [(AMSUIMessageView *)self setAccessibilityLabel:v24];
  }

  else
  {
    [(AMSUIMessageView *)self setAccessibilityLabel:0];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = array;
  v26 = [v25 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v32;
    do
    {
      v29 = 0;
      do
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v31 + 1) + 8 * v29++) setIsAccessibilityElement:1];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v27);
  }

  [(AMSUIMessageView *)self setAms_accessibilitySupplementaryFooterViews:v25];
  [(AMSUIMessageView *)self setIsAccessibilityElement:1];

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_setMICAPlayerTintColor:(id)color
{
  v26 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  micaPlayer = [(AMSUIMessageView *)self micaPlayer];

  if (micaPlayer)
  {
    micaPlayer2 = [(AMSUIMessageView *)self micaPlayer];
    publishedObjects = [micaPlayer2 publishedObjects];

    if (publishedObjects)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      micaPlayer3 = [(AMSUIMessageView *)self micaPlayer];
      publishedObjects2 = [micaPlayer3 publishedObjects];
      allValues = [publishedObjects2 allValues];

      v11 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(allValues);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v15;
            }

            else
            {
              v16 = 0;
            }

            if ([v16 fillColor] && CGColorGetAlpha(objc_msgSend(v16, "fillColor")) > 0.0)
            {
              [v16 setFillColor:{objc_msgSend(colorCopy, "CGColor")}];
            }

            if ([v16 strokeColor] && CGColorGetAlpha(objc_msgSend(v16, "strokeColor")) > 0.0)
            {
              [v16 setStrokeColor:{objc_msgSend(colorCopy, "CGColor")}];
            }
          }

          v12 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }
    }

    else
    {
      allValues = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!allValues)
      {
        allValues = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [allValues OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v25 = objc_opt_class();
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: No published objects to tint", buf, 0xCu);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_setAccessibilityIdentifier
{
  style = [(AMSUIMessageView *)self style];
  if (style > 5)
  {
    v4 = @"bubbleTip";
  }

  else
  {
    v4 = off_1E7F251A8[style];
  }

  [(AMSUIMessageView *)self setAccessibilityIdentifier:v4];
  imageView = [(AMSUIMessageView *)self imageView];
  [imageView setAccessibilityIdentifier:@"primaryImageView"];

  textView = [(AMSUIMessageView *)self textView];
  [textView setAccessibilityIdentifier:@"textView"];
}

- (void)_setTextViewText
{
  title = [(AMSUIMessageView *)self title];
  v4 = title;
  if (title)
  {
    message = title;
  }

  else
  {
    message = [(AMSUIMessageView *)self message];
  }

  v14 = message;

  title2 = [(AMSUIMessageView *)self title];
  if (title2)
  {
    v7 = title2;
    message2 = [(AMSUIMessageView *)self message];

    if (message2)
    {
      v9 = [v14 mutableCopy];
      v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
      [v9 appendAttributedString:v10];

      message3 = [(AMSUIMessageView *)self message];
      [v9 appendAttributedString:message3];

      v12 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
      [v12 setAlignment:4];
      [(AMSUIMessageView *)self _textViewParagraphSpacingBefore];
      [v12 setParagraphSpacingBefore:?];
      [v9 addAttribute:*MEMORY[0x1E69DB688] value:v12 range:{0, objc_msgSend(v9, "length")}];

      v14 = v9;
    }
  }

  textView = [(AMSUIMessageView *)self textView];
  [textView setAttributedText:v14];
}

- (void)setBodyDialogAction:(id)action target:(id)target action:(SEL)a5
{
  objc_storeStrong(&self->_bodyAction, action);
  actionCopy = action;
  targetCopy = target;
  v11 = objc_alloc(MEMORY[0x1E69DD060]);

  v12 = [v11 initWithTarget:targetCopy action:a5];
  [(AMSUIMessageView *)self addGestureRecognizer:v12];
}

- (void)setButtonsForDialogActions:(id)actions target:(id)target action:(SEL)action
{
  targetCopy = target;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AMSUIMessageView_setButtonsForDialogActions_target_action___block_invoke;
  v11[3] = &unk_1E7F25140;
  v11[4] = self;
  v12 = targetCopy;
  actionCopy = action;
  v9 = targetCopy;
  v10 = [actions ams_mapWithTransform:v11];
  [(AMSUIMessageView *)self setButtons:v10];
}

AMSUIMessageButton *__61__AMSUIMessageView_setButtonsForDialogActions_target_action___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = -[AMSUIMessageButton initWithDialogAction:messageStyle:]([AMSUIMessageButton alloc], "initWithDialogAction:messageStyle:", v3, [*(a1 + 32) style]);

  [(AMSUIMessageButton *)v4 addTarget:*(a1 + 40) action:*(a1 + 48) forControlEvents:64];

  return v4;
}

- (void)setupBubbleArrowMaskView
{
  maskShapeView = [(AMSUIMessageView *)self maskShapeView];

  if (!maskShapeView)
  {
    v4 = [AMSUIPopoverShapeLayerView alloc];
    v5 = [(AMSUIPopoverShapeLayerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(AMSUIPopoverShapeLayerView *)v5 setHidden:1];
    [(AMSUIPopoverShapeLayerView *)v5 setViewToMaskWhenContentExtendsOverArrow:self];
    [(AMSUIMessageView *)self addSubview:v5];
    [(AMSUIMessageView *)self setMaskShapeView:v5];
  }
}

- (void)removeBubbleArrowMaskView
{
  [(AMSUIMessageView *)self setMaskView:0];
  maskShapeView = [(AMSUIMessageView *)self maskShapeView];
  [maskShapeView removeFromSuperview];

  [(AMSUIMessageView *)self setMaskShapeView:0];
}

- (void)_startObservations
{
  v9[1] = *MEMORY[0x1E69E9840];
  imageView = [(AMSUIMessageView *)self imageView];
  [imageView addObserver:self forKeyPath:@"frame" options:1 context:0];

  imageView2 = [(AMSUIMessageView *)self imageView];
  [imageView2 addObserver:self forKeyPath:@"image" options:1 context:0];

  v5 = objc_opt_self();
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [(AMSUIMessageView *)self registerForTraitChanges:v6 withTarget:self action:sel__userInterfaceStyleDidChange];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_userInterfaceStyleDidChange
{
  [(AMSUIMessageView *)self _setBackground];

  [(AMSUIMessageView *)self _setTextViewText];
}

- (void)_endObservations
{
  imageView = [(AMSUIMessageView *)self imageView];
  [imageView removeObserver:self forKeyPath:@"image"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  imageView = [(AMSUIMessageView *)self imageView];

  if (imageView == objectCopy)
  {
    v10 = [pathCopy isEqualToString:@"frame"];

    if (v10)
    {
      goto LABEL_5;
    }

    [(AMSUIMessageView *)self _setupImageView];
    imageView = [(AMSUIMessageView *)self layoutContext];
    [imageView invalidate];
  }

LABEL_5:
}

- (id)focusItemsInRect:(CGRect)rect
{
  array = [MEMORY[0x1E695DF70] array];
  buttons = [(AMSUIMessageView *)self buttons];
  v6 = [buttons count];

  if (v6)
  {
    buttons2 = [(AMSUIMessageView *)self buttons];
    [array addObjectsFromArray:buttons2];
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v8;
}

- (void)setNeedsLayout
{
  v4.receiver = self;
  v4.super_class = AMSUIMessageView;
  [(AMSUIMessageView *)&v4 setNeedsLayout];
  layoutContext = [(AMSUIMessageView *)self layoutContext];
  [layoutContext invalidate];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = AMSUIMessageView;
  [(AMSUIMessageView *)&v7 layoutSubviews];
  [(AMSUIMessageView *)self _syncRectsFromContext];
  micaPlayer = [(AMSUIMessageView *)self micaPlayer];

  if (micaPlayer)
  {
    micaPlayer2 = [(AMSUIMessageView *)self micaPlayer];
    imageContainerView = [(AMSUIMessageView *)self imageContainerView];
    layer = [imageContainerView layer];
    [micaPlayer2 moveAndResizeWithinParentLayer:layer usingGravity:*MEMORY[0x1E6979DF0] animate:0];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(AMSUIMessageView *)self setIsSizing:1];
  layoutContext = [(AMSUIMessageView *)self layoutContext];
  [layoutContext sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  [(AMSUIMessageView *)self setIsSizing:0];
  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = AMSUIMessageView;
  changeCopy = change;
  [(AMSUIMessageView *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(AMSUIMessageView *)self traitCollection:v9.receiver];
  userInterfaceLevel = [v5 userInterfaceLevel];
  userInterfaceLevel2 = [changeCopy userInterfaceLevel];

  if (userInterfaceLevel != userInterfaceLevel2)
  {
    [(AMSUIMessageView *)self _setupImageView];
  }

  iconColor = [(AMSUIMessageView *)self iconColor];
  [(AMSUIMessageView *)self _setMICAPlayerTintColor:iconColor];

  [(AMSUIMessageView *)self _setShadow];
}

- (double)_amsCornerRadius
{
  if (![(AMSUIMessageView *)self style])
  {
    return 0.0;
  }

  v3 = 10.0;
  if (!_os_feature_enabled_impl())
  {
    return v3;
  }

  if (!_os_feature_enabled_impl())
  {
    return v3;
  }

  v3 = 26.0;
  if ([(AMSUIMessageView *)self style]== 5)
  {
    return v3;
  }

  if ([(AMSUIMessageView *)self style]== 1 || [(AMSUIMessageView *)self style]== 4)
  {
    layoutContext = [(AMSUIMessageView *)self layoutContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = layoutContext;
    }

    else
    {
      v5 = 0;
    }

    buttons = [(AMSUIMessageView *)self buttons];
    if (buttons)
    {

      if (!v5)
      {
        goto LABEL_26;
      }
    }

    else
    {
      traitCollection = [(AMSUIMessageView *)self traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

      if (!v5)
      {
        if (IsAccessibilityCategory)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    buttons2 = [(AMSUIMessageView *)self buttons];
    if (buttons2 && ([v5 isTopAlignedTextButtonAllowed] & 1) == 0)
    {

      goto LABEL_26;
    }

    traitCollection2 = [(AMSUIMessageView *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
    v14 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

    if (v14)
    {
      goto LABEL_26;
    }

LABEL_25:
    [(AMSUIMessageView *)self frame];
    if (v15 <= 52.0)
    {
      [(AMSUIMessageView *)self frame];
      v3 = v17 * 0.5;
      goto LABEL_27;
    }

LABEL_26:
    [(AMSUIMessageView *)self _amsBaseCornerRadius];
    v3 = v16;
LABEL_27:

    return v3;
  }

  [(AMSUIMessageView *)self _amsBaseCornerRadius];
  return result;
}

- (BOOL)isBannerStyle
{
  style = [(AMSUIMessageView *)self style];
  if (style != 1)
  {
    if ([(AMSUIMessageView *)self style])
    {
      LOBYTE(style) = [(AMSUIMessageView *)self style]== 4;
    }

    else
    {
      LOBYTE(style) = 1;
    }
  }

  return style;
}

- (void)_syncRectsFromContext
{
  layoutContext = [(AMSUIMessageView *)self layoutContext];
  [layoutContext layoutSubviewFrames];

  accessoryView = [(AMSUIMessageView *)self accessoryView];

  if (accessoryView)
  {
    layoutContext2 = [(AMSUIMessageView *)self layoutContext];
    [layoutContext2 contentLayoutMargins];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    layoutContext3 = [(AMSUIMessageView *)self layoutContext];
    [layoutContext3 accessorySpacing];
    v14 = -v13;

    v15 = -v7;
    v16 = -v9;
    if ([(AMSUIMessageView *)self style]== 4 && (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0))
    {
      traitCollection = [(AMSUIMessageView *)self traitCollection];
      layoutDirection = [traitCollection layoutDirection];

      if (layoutDirection == 1)
      {
        [(AMSUIMessageView *)self frame];
        v20 = v19;
        layoutContext4 = [(AMSUIMessageView *)self layoutContext];
        [layoutContext4 accessoryViewFrame];
        v23 = v20 - v22;
        layoutContext5 = [(AMSUIMessageView *)self layoutContext];
        [layoutContext5 accessoryViewFrame];
        v14 = -(v23 - v25);
      }

      else
      {
        layoutContext4 = [(AMSUIMessageView *)self layoutContext];
        [layoutContext4 accessoryViewFrame];
        v14 = -v26;
      }

      layoutContext6 = [(AMSUIMessageView *)self layoutContext];
      [layoutContext6 accessoryViewFrame];
      v15 = -v28;

      [(AMSUIMessageView *)self frame];
      v30 = v29;
      layoutContext7 = [(AMSUIMessageView *)self layoutContext];
      [layoutContext7 accessoryViewFrame];
      v33 = v30 - v32;
      layoutContext8 = [(AMSUIMessageView *)self layoutContext];
      [layoutContext8 accessoryViewFrame];
      v16 = -(v33 - v35);
    }

    accessoryView2 = [(AMSUIMessageView *)self accessoryView];
    [accessoryView2 setHitTestDirectionalInsets:{v15, v14, v16, -v11}];
  }

  imageView = [(AMSUIMessageView *)self imageView];
  image = [imageView image];
  if (image)
  {
    v39 = 0;
  }

  else
  {
    micaPlayer = [(AMSUIMessageView *)self micaPlayer];
    v39 = micaPlayer == 0;
  }

  layoutContext9 = [(AMSUIMessageView *)self layoutContext];
  [layoutContext9 contentSize];
  v43 = v42;
  v45 = v44;

  imageContainerView = [(AMSUIMessageView *)self imageContainerView];
  [imageContainerView setHidden:v39];

  imageContainerView2 = [(AMSUIMessageView *)self imageContainerView];
  layoutContext10 = [(AMSUIMessageView *)self layoutContext];
  [layoutContext10 imageViewFrame];
  [imageContainerView2 setFrame:?];

  imageView2 = [(AMSUIMessageView *)self imageView];
  imageContainerView3 = [(AMSUIMessageView *)self imageContainerView];
  [imageContainerView3 bounds];
  [imageView2 setFrame:?];

  textView = [(AMSUIMessageView *)self textView];
  layoutContext11 = [(AMSUIMessageView *)self layoutContext];
  [layoutContext11 textViewFrame];
  [textView setFrame:?];

  layoutContext12 = [(AMSUIMessageView *)self layoutContext];
  [layoutContext12 debugButtonFrame];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  debugButton = [(AMSUIMessageView *)self debugButton];
  [debugButton setFrame:{v55, v57, v59, v61}];

  [(AMSUIMessageView *)self bounds];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  if ([(AMSUIMessageView *)self style]== 2)
  {
    [(AMSUIMessageView *)self safeAreaInsets];
    v66 = v71;
    [(AMSUIMessageView *)self safeAreaInsets];
    v64 = v72;
  }

  containerView = [(AMSUIMessageView *)self containerView];
  [(AMSUIMessageView *)self bounds];
  [containerView setFrame:?];

  containerView2 = [(AMSUIMessageView *)self containerView];
  [containerView2 setContentSize:{v43, v45}];

  backgroundVisualEffectView = [(AMSUIMessageView *)self backgroundVisualEffectView];
  [backgroundVisualEffectView setFrame:{v64, v66, v68, v70}];

  separatorViews = [(AMSUIMessageView *)self separatorViews];
  v77 = [separatorViews count];
  layoutContext13 = [(AMSUIMessageView *)self layoutContext];
  separatorViewFrames = [layoutContext13 separatorViewFrames];
  v80 = [separatorViewFrames count];

  if (v77 < v80)
  {
    v81 = MEMORY[0x1E695DF70];
    separatorViews2 = [(AMSUIMessageView *)self separatorViews];
    v83 = [v81 arrayWithArray:separatorViews2];
    while (1)
    {

      v84 = [v83 count];
      layoutContext14 = [(AMSUIMessageView *)self layoutContext];
      separatorViewFrames2 = [layoutContext14 separatorViewFrames];
      v87 = [separatorViewFrames2 count];

      if (v84 >= v87)
      {
        break;
      }

      separatorViews2 = [(AMSUIMessageView *)self _makeSeparatorView];
      [v83 addObject:separatorViews2];
      containerView3 = [(AMSUIMessageView *)self containerView];
      [containerView3 addSubview:separatorViews2];
    }

    v89 = [MEMORY[0x1E695DEC8] arrayWithArray:v83];
    [(AMSUIMessageView *)self setSeparatorViews:v89];
  }

  layoutContext15 = [(AMSUIMessageView *)self layoutContext];
  separatorViewFrames3 = [layoutContext15 separatorViewFrames];
  v92 = [separatorViewFrames3 count];

  if (v92)
  {
    separatorViews3 = [(AMSUIMessageView *)self separatorViews];
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __41__AMSUIMessageView__syncRectsFromContext__block_invoke;
    v112[3] = &unk_1E7F25168;
    v112[4] = self;
    [separatorViews3 enumerateObjectsUsingBlock:v112];
  }

  buttons = [(AMSUIMessageView *)self buttons];
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __41__AMSUIMessageView__syncRectsFromContext__block_invoke_2;
  v111[3] = &unk_1E7F25168;
  v111[4] = self;
  [buttons enumerateObjectsUsingBlock:v111];

  backgroundImageView = [(AMSUIMessageView *)self backgroundImageView];
  backgroundImageView2 = [(AMSUIMessageView *)self backgroundImageView];
  image2 = [backgroundImageView2 image];
  [backgroundImageView setHidden:image2 == 0];

  backgroundImageView3 = [(AMSUIMessageView *)self backgroundImageView];
  [(AMSUIMessageView *)self bounds];
  [backgroundImageView3 setFrame:?];

  maskShapeView = [(AMSUIMessageView *)self maskShapeView];

  if (maskShapeView)
  {
    layoutContext16 = [(AMSUIMessageView *)self layoutContext];
    [layoutContext16 maskViewFrame];
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;
    maskShapeView2 = [(AMSUIMessageView *)self maskShapeView];
    [maskShapeView2 setFrame:{v102, v104, v106, v108}];

    maskShapeView3 = [(AMSUIMessageView *)self maskShapeView];
    [maskShapeView3 setNeedsLayout];
  }

  [(AMSUIMessageView *)self _setAccessibility];
  if ([(AMSUIMessageView *)self style]== 1 || [(AMSUIMessageView *)self style]== 4)
  {
    [(AMSUIMessageView *)self _updateCornerRadius];
  }
}

void __41__AMSUIMessageView__syncRectsFromContext__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v11 = a2;
  v5 = [*(a1 + 32) layoutContext];
  v6 = [v5 separatorViewFrames];
  v7 = [v6 count];

  if (v7 >= a3)
  {
    [v11 setHidden:0];
    v8 = [*(a1 + 32) layoutContext];
    v9 = [v8 separatorViewFrames];
    v10 = [v9 objectAtIndexedSubscript:a3];
    [v10 CGRectValue];
    [v11 setFrame:?];
  }

  else
  {
    [v11 setHidden:1];
  }
}

void __41__AMSUIMessageView__syncRectsFromContext__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) layoutContext];
  v7 = [v6 buttonFrames];
  v8 = [v7 count];

  if (v8 >= a3)
  {
    v15 = [*(a1 + 32) layoutContext];
    v16 = [v15 buttonFrames];
    v17 = [v16 objectAtIndexedSubscript:a3];
    [v17 CGRectValue];
    [v5 setFrame:?];
  }

  else
  {
    v9 = [MEMORY[0x1E698CBB0] isRunningUnitTests];
    v10 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    v11 = v10;
    if (v9)
    {
      if (!v10)
      {
        v11 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v21 = 138543362;
        v22 = objc_opt_class();
        _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Internal inconsistency there are less frames allocated for footer buttons", &v21, 0xCu);
      }

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v14 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      [v11 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v14 userInfo:0];
    }

    else
    {
      if (!v10)
      {
        v11 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v18 = [v11 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v19 = *(a1 + 32);
        v21 = 138543362;
        v22 = objc_opt_class();
        _os_log_impl(&dword_1BB036000, v18, OS_LOG_TYPE_FAULT, "%{public}@: Internal inconsistency there are less frames allocated for footer buttons", &v21, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_updateCornerRadius
{
  [(AMSUIMessageView *)self _amsCornerRadius];
  v4 = v3;
  [(AMSUIMessageView *)self _continuousCornerRadius];
  if (v5 != v4)
  {
    [(AMSUIMessageView *)self _setContinuousCornerRadius:v4];
    backgroundImageView = [(AMSUIMessageView *)self backgroundImageView];
    [backgroundImageView _setContinuousCornerRadius:v4];

    backgroundVisualEffectView = [(AMSUIMessageView *)self backgroundVisualEffectView];
    [backgroundVisualEffectView _setContinuousCornerRadius:v4];
  }
}

- (UIView)accessoryView
{
  buttons = [(AMSUIMessageView *)self buttons];
  lastObject = [buttons lastObject];

  return lastObject;
}

- (UIView)accessorySecondaryView
{
  if (-[AMSUIMessageView isBannerStyle](self, "isBannerStyle") && (-[AMSUIMessageView buttons](self, "buttons"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4 >= 2))
  {
    buttons = [(AMSUIMessageView *)self buttons];
    buttons2 = [(AMSUIMessageView *)self buttons];
    v7 = [buttons objectAtIndexedSubscript:{objc_msgSend(buttons2, "count") - 2}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)footerButtons
{
  isBannerStyle = [(AMSUIMessageView *)self isBannerStyle];
  buttons = [(AMSUIMessageView *)self buttons];
  v5 = buttons;
  if (isBannerStyle)
  {
    v6 = &__block_literal_global_9;
  }

  else
  {
    v6 = &__block_literal_global_109;
  }

  v7 = [buttons ams_filterUsingTest:v6];

  return v7;
}

- (void)set_ams_backgroundColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy;
  v10 = colorCopy;
  if (!colorCopy)
  {
    style = [(AMSUIMessageView *)self style];
    traitCollection = [(AMSUIMessageView *)self traitCollection];
    v5 = [AMSUIAppearance _defaultBackgroundColorForStyle:style withTraitCollection:traitCollection];

    colorCopy = 0;
  }

  [(AMSUIMessageView *)self setIsUsingCustomBackground:colorCopy != 0];
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    _background = [(AMSUIMessageView *)self _background];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = _background;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      [v9 setTintColor:v5];
      [(AMSUIMessageView *)self _setBackground:v9];
    }

    else
    {
      [(AMSUIMessageView *)self setBackgroundColor:v5];
    }
  }

  else
  {
    [(AMSUIMessageView *)self setBackgroundColor:v5];
  }
}

- (void)setButtons:(id)buttons
{
  v53 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  v35 = 432;
  buttons = self->_buttons;
  if (buttons)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    buttonsCopy2 = buttons;
    v7 = [(NSArray *)buttonsCopy2 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v47;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v47 != v9)
          {
            objc_enumerationMutation(buttonsCopy2);
          }

          [*(*(&v46 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [(NSArray *)buttonsCopy2 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v8);
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = buttonsCopy;
  v13 = [v12 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_25;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v43;
  do
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v43 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v42 + 1) + 8 * j);
      configuration = [v18 configuration];
      title = [configuration title];

      if (title)
      {
        v21 = array;
      }

      else
      {
        if ([v18 isDefaultCloseButton])
        {
          v22 = v18;

          v15 = v22;
          continue;
        }

        v21 = array2;
      }

      [v21 addObject:v18];
    }

    v14 = [v12 countByEnumeratingWithState:&v42 objects:v51 count:16];
  }

  while (v14);
LABEL_25:

  v23 = [array arrayByAddingObjectsFromArray:array2];
  v24 = v23;
  if (v15)
  {
    v25 = [v23 arrayByAddingObject:v15];

    v24 = v25;
  }

  objc_storeStrong(&v36[self], v24);
  v26 = *&v36[self];
  if (v26)
  {
    v36 = v24;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = v26;
    v28 = [v27 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v39;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v38 + 1) + 8 * k);
          containerView = [(AMSUIMessageView *)self containerView];
          [containerView addSubview:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v29);
    }

    v24 = v36;
  }

  [(AMSUIMessageView *)self setNeedsLayout];

  v34 = *MEMORY[0x1E69E9840];
}

- (void)setIconColor:(id)color
{
  colorCopy = color;
  imageView = [(AMSUIMessageView *)self imageView];
  [imageView setTintColor:colorCopy];

  [(AMSUIMessageView *)self _setMICAPlayerTintColor:colorCopy];
  iconColor = self->_iconColor;
  self->_iconColor = colorCopy;
}

- (void)setSeparatorColor:(id)color
{
  v17 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  objc_storeStrong(&self->_separatorColor, color);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  separatorViews = [(AMSUIMessageView *)self separatorViews];
  v7 = [separatorViews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(separatorViews);
        }

        [*(*(&v12 + 1) + 8 * v10++) setBackgroundColor:colorCopy];
      }

      while (v8 != v10);
      v8 = [separatorViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_makeSeparatorView
{
  v3 = objc_alloc_init(AMSUICommonView);
  separatorColor = [(AMSUIMessageView *)self separatorColor];
  [(AMSUICommonView *)v3 setBackgroundColor:separatorColor];

  [(AMSUICommonView *)v3 setIsAccessibilityElement:0];

  return v3;
}

- (double)_textViewParagraphSpacingBefore
{
  if ([(AMSUIMessageView *)self style]|| (v3 = 0.0, _os_feature_enabled_impl()) && _os_feature_enabled_impl())
  {
    if ([(AMSUIMessageView *)self style]!= 1 || !_os_feature_enabled_impl() || (v3 = 0.0, (_os_feature_enabled_impl() & 1) == 0))
    {
      if ([(AMSUIMessageView *)self style]|| !_os_feature_enabled_impl() || (v3 = 0.0, (_os_feature_enabled_impl() & 1) == 0))
      {
        if ([(AMSUIMessageView *)self style]!= 4 || !_os_feature_enabled_impl() || (v3 = 0.0, (_os_feature_enabled_impl() & 1) == 0))
        {
          if ([(AMSUIMessageView *)self style]!= 5 || !_os_feature_enabled_impl() || (v3 = 0.0, (_os_feature_enabled_impl() & 1) == 0))
          {
            v3 = 4.0;
            if ([(AMSUIMessageView *)self style]!= 2)
            {
              [(AMSUIMessageView *)self style];
            }
          }
        }
      }
    }
  }

  return v3;
}

@end