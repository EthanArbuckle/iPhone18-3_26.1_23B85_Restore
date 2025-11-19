@interface AMSUIMessageView
- (AMSUIMessageView)initWithStyle:(unint64_t)a3;
- (BOOL)isBannerStyle;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)footerButtons;
- (UIView)accessorySecondaryView;
- (UIView)accessoryView;
- (double)_amsCornerRadius;
- (double)_textViewParagraphSpacingBefore;
- (id)_makeSeparatorView;
- (id)focusItemsInRect:(CGRect)a3;
- (void)_endObservations;
- (void)_recordNewsDebugEventWithCategory:(id)a3;
- (void)_setAccessibility;
- (void)_setAccessibilityIdentifier;
- (void)_setBackground;
- (void)_setBackgroundDefault;
- (void)_setMICAPlayerTintColor:(id)a3;
- (void)_setShadow;
- (void)_setTextViewText;
- (void)_setupDefaults;
- (void)_setupExclusionPathVisual;
- (void)_setupImageView;
- (void)_setupImageViewDefault;
- (void)_setupInitialLayout;
- (void)_setupMICAAssetWithData:(id)a3 originalURL:(id)a4;
- (void)_startObservations;
- (void)_syncRectsFromContext;
- (void)_updateCornerRadius;
- (void)_userInterfaceStyleDidChange;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeBubbleArrowMaskView;
- (void)setBodyDialogAction:(id)a3 target:(id)a4 action:(SEL)a5;
- (void)setButtons:(id)a3;
- (void)setButtonsForDialogActions:(id)a3 target:(id)a4 action:(SEL)a5;
- (void)setIconColor:(id)a3;
- (void)setNeedsLayout;
- (void)setSeparatorColor:(id)a3;
- (void)set_ams_backgroundColor:(id)a3;
- (void)setupBubbleArrowMaskView;
- (void)setupDebugButtonWithTarget:(id)a3 action:(SEL)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AMSUIMessageView

- (AMSUIMessageView)initWithStyle:(unint64_t)a3
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
    v9->_style = a3;
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

    v25 = [(AMSUIMessageView *)v9 traitCollection];
    v26 = [v25 userInterfaceIdiom];

    if (v26 == 6)
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

- (void)_recordNewsDebugEventWithCategory:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E698CAC8] currentProcess];
  v5 = [v4 bundleIdentifier];

  if (os_variant_has_internal_content())
  {
    v6 = [v5 lowercaseString];
    v7 = [v6 isEqualToString:@"com.apple.news"];

    if (v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!v8)
      {
        v8 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = AMSLogKey();
        v16 = 138543618;
        v17 = v10;
        v18 = 2114;
        v19 = v11;
        _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Recording debug event for news", &v16, 0x16u);
      }

      v12 = [objc_alloc(MEMORY[0x1E698CA38]) initWithSubsystem:@"MessagingUI" category:v3 error:0];
      [v12 setClientApp:v5];
      v13 = [MEMORY[0x1E698C7D8] bagForProfile:@"AppleNews" profileVersion:@"1"];
      v14 = [MEMORY[0x1E698CA00] internalInstanceUsingBag:v13];
      [v14 enqueueEvent:v12];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_setupDefaults
{
  v3 = [(AMSUIMessageView *)self containerView];
  [v3 setClipsToBounds:1];

  v4 = [(AMSUIMessageView *)self containerView];
  [v4 setContentInsetAdjustmentBehavior:2];

  [(AMSUIMessageView *)self _setBackgroundDefault];
  [(AMSUIMessageView *)self _setupImageViewDefault];
  [(AMSUIMessageView *)self _setupImageView];
  [(AMSUIMessageView *)self _setAccessibilityIdentifier];
  v5 = [(AMSUIMessageView *)self textView];
  [v5 setDataDetectorTypes:0];

  v6 = [(AMSUIMessageView *)self textView];
  [v6 setEditable:0];

  v7 = [(AMSUIMessageView *)self textView];
  [v7 setScrollEnabled:0];

  v8 = [(AMSUIMessageView *)self textView];
  [v8 setShowsHorizontalScrollIndicator:0];

  v9 = [(AMSUIMessageView *)self textView];
  [v9 setShowsVerticalScrollIndicator:0];

  v10 = [(AMSUIMessageView *)self textView];
  [v10 setAdjustsFontForContentSizeCategory:1];

  v11 = [MEMORY[0x1E69DC888] clearColor];
  v12 = [(AMSUIMessageView *)self textView];
  [v12 setBackgroundColor:v11];

  v13 = [(AMSUIMessageView *)self textView];
  v14 = [v13 textContainer];
  [v14 setLineFragmentPadding:0.0];

  v15 = [(AMSUIMessageView *)self textView];
  v16 = [v15 textContainer];
  [v16 setLineBreakMode:4];

  v17 = [(AMSUIMessageView *)self textView];
  [v17 setUserInteractionEnabled:0];

  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    v18 = [(AMSUIMessageView *)self textView];
    [v18 textContainerInset];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [(AMSUIMessageView *)self textView];
    [v25 setTextContainerInset:{v20, 1.0, v22, v24}];
  }

  v26 = [(AMSUIMessageView *)self backgroundImageView];
  [v26 setClipsToBounds:1];

  v27 = +[AMSUIAppearance _defaultSeparatorColor];
  [(AMSUIMessageView *)self setSeparatorColor:v27];
}

- (void)_setupInitialLayout
{
  v3 = [(AMSUIMessageView *)self imageContainerView];
  v4 = [(AMSUIMessageView *)self imageView];
  [v3 addSubview:v4];

  v5 = [(AMSUIMessageView *)self containerView];
  v6 = [(AMSUIMessageView *)self imageContainerView];
  [v5 addSubview:v6];

  v7 = [(AMSUIMessageView *)self containerView];
  v8 = [(AMSUIMessageView *)self textView];
  [v7 addSubview:v8];

  v9 = [(AMSUIMessageView *)self backgroundImageView];
  [(AMSUIMessageView *)self addSubview:v9];

  v10 = [(AMSUIMessageView *)self backgroundVisualEffectView];
  v11 = [v10 contentView];
  v12 = [(AMSUIMessageView *)self containerView];
  [v11 addSubview:v12];

  v13 = [(AMSUIMessageView *)self backgroundVisualEffectView];
  [(AMSUIMessageView *)self addSubview:v13];
}

- (void)setupDebugButtonWithTarget:(id)a3 action:(SEL)a4
{
  v6 = MEMORY[0x1E69DCAD8];
  v7 = a3;
  v35 = [v6 configurationWithPointSize:14.0];
  v8 = [(AMSUIMessageView *)self debugButton];
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant.fill" withConfiguration:v35];
  [v8 setImage:v9 forState:0];

  v10 = [(AMSUIMessageView *)self debugButton];
  [v10 setTitle:0 forState:0];

  v11 = [MEMORY[0x1E69DC888] lightGrayColor];
  v12 = [(AMSUIMessageView *)self debugButton];
  [v12 setTintColor:v11];

  v13 = [(AMSUIMessageView *)self debugButton];
  [v13 sizeToFit];

  v14 = [(AMSUIMessageView *)self debugButton];
  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(AMSUIMessageView *)self debugButton];
  [v23 setFrame:{v16, v18, v20 + 8.0, v22 + 8.0}];

  v24 = [(AMSUIMessageView *)self debugButton];
  [v24 setContentHorizontalAlignment:1];

  v25 = [(AMSUIMessageView *)self debugButton];
  [v25 setContentVerticalAlignment:1];

  v26 = [(AMSUIMessageView *)self debugButton];
  [v26 addTarget:v7 action:a4 forControlEvents:64];

  v27 = [(AMSUIMessageView *)self debugButton];
  [v27 frame];
  v29 = v28;
  v31 = v30;
  v32 = [(AMSUIMessageView *)self layoutContext];
  [v32 setDebugButtonSize:{v29, v31}];

  v33 = [(AMSUIMessageView *)self containerView];
  v34 = [(AMSUIMessageView *)self debugButton];
  [v33 addSubview:v34];
}

- (void)_setShadow
{
  if ([(AMSUIMessageView *)self style]== 4)
  {
    v3 = [(AMSUIMessageView *)self traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      [MEMORY[0x1E69DC888] systemGray4Color];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v5 = ;
    v6 = [v5 CGColor];
    v7 = [(AMSUIMessageView *)self layer];
    [v7 setShadowColor:v6];

    v8 = [(AMSUIMessageView *)self traitCollection];
    [v8 displayScale];
    v10 = 100.0 / v9;
    v11 = [(AMSUIMessageView *)self layer];
    [v11 setShadowRadius:v10];

    v12 = [(AMSUIMessageView *)self layer];
    LODWORD(v13) = 1050253722;
    [v12 setShadowOpacity:v13];

    v14 = [(AMSUIMessageView *)self layer];
    [v14 setShadowOffset:{0.0, 10.0}];

    v15 = [(AMSUIMessageView *)self layer];
    [v15 setMasksToBounds:0];

    v16 = [(AMSUIMessageView *)self layer];
    [v16 setShadowPath:0];
  }
}

- (void)_setupMICAAssetWithData:(id)a3 originalURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSUIMessageView *)self traitCollection];
  [v8 displayScale];
  v10 = v9;

  v11 = [[MicaPlayer alloc] initWithData:v7 url:v6 retinaScale:v10];
  [(AMSUIMessageView *)self setMicaPlayer:v11];

  v12 = [(AMSUIMessageView *)self iconColor];

  if (v12)
  {
    v13 = [(AMSUIMessageView *)self iconColor];
    [(AMSUIMessageView *)self _setMICAPlayerTintColor:v13];
  }

  v14 = [(AMSUIMessageView *)self micaPlayer];
  v15 = [(AMSUIMessageView *)self imageContainerView];
  v16 = [v15 layer];
  [v14 addToLayer:v16 onTop:0 gravity:*MEMORY[0x1E6979DF0]];

  [(AMSUIMessageView *)self setNeedsLayout];
  v17 = [(AMSUIMessageView *)self micaPlayer];
  [v17 setLoopDuringPlayback:1];
}

- (void)_setBackgroundDefault
{
  v3 = [(AMSUIMessageView *)self maskShapeView];

  if (!v3)
  {
    [(AMSUIMessageView *)self _updateCornerRadius];
  }

  if ([(AMSUIMessageView *)self style]== 4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
    [(AMSUIMessageView *)self _setBackground:v4];
  }

  v5 = [(AMSUIMessageView *)self style];
  v6 = [(AMSUIMessageView *)self traitCollection];
  v7 = [AMSUIAppearance _defaultBackgroundColorForStyle:v5 withTraitCollection:v6];

  if (v7)
  {
    [(AMSUIMessageView *)self set_ams_backgroundColor:v7];
  }

  [(AMSUIMessageView *)self setIsUsingCustomBackground:0];
}

- (void)_setBackground
{
  v3 = [(AMSUIMessageView *)self maskShapeView];

  if (!v3)
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
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(AMSUIMessageView *)self imageContainerView];
  [v4 setBackgroundColor:v3];

  if ([(AMSUIMessageView *)self isImageSymbolImage])
  {
    v5 = 4;
  }

  else
  {
    v6 = [(AMSUIMessageView *)self imageView];
    v7 = [v6 image];
    v8 = [v7 isSymbolImage];

    if (v8)
    {
      v5 = 4;
    }

    else
    {
      v5 = 1;
    }
  }

  v9 = [(AMSUIMessageView *)self imageView];
  [v9 setContentMode:v5];

  if (![(AMSUIMessageView *)self style]&& (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0))
  {
    v11 = [(AMSUIMessageView *)self imageView];
    [v11 setContentMode:4];
LABEL_26:

    goto LABEL_27;
  }

  if ([(AMSUIMessageView *)self style]== 4 && (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0))
  {
    v13 = [(AMSUIMessageView *)self imageView];
    [v13 _setContinuousCornerRadius:6.0];

    if (-[AMSUIMessageView isImageSymbolImage](self, "isImageSymbolImage") || (-[AMSUIMessageView imageView](self, "imageView"), v14 = objc_claimAutoreleasedReturnValue(), [v14 image], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isSymbolImage"), v15, v14, (v16 & 1) != 0))
    {
      v17 = [(AMSUIMessageView *)self imageView];
      v18 = [v17 layer];
      [v18 setBorderWidth:0.0];

      v19 = [(AMSUIMessageView *)self imageContainerView];
      v20 = [v19 layer];
      [v20 setShadowColor:0];

      v21 = [(AMSUIMessageView *)self imageContainerView];
      v22 = [v21 layer];
      [v22 setShadowOpacity:0.0];

      v11 = [(AMSUIMessageView *)self imageContainerView];
      v23 = [v11 layer];
      [v23 setShadowPath:0];
    }

    else
    {
      v24 = [(AMSUIMessageView *)self traitCollection];
      v25 = [v24 userInterfaceStyle];

      if (v25 == 2)
      {
        [MEMORY[0x1E69DC888] whiteColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] blackColor];
      }
      v11 = ;
      v26 = [v11 colorWithAlphaComponent:0.1];
      v27 = [v26 CGColor];
      v28 = [(AMSUIMessageView *)self imageView];
      v29 = [v28 layer];
      [v29 setBorderColor:v27];

      v30 = [(AMSUIMessageView *)self imageView];
      v31 = [v30 layer];
      [v31 setBorderWidth:0.5];

      v32 = [MEMORY[0x1E69DC888] blackColor];
      v33 = [v32 CGColor];
      v34 = [(AMSUIMessageView *)self imageContainerView];
      v35 = [v34 layer];
      [v35 setShadowColor:v33];

      v36 = [(AMSUIMessageView *)self traitCollection];
      [v36 displayScale];
      v38 = 5.0 / v37;
      v39 = [(AMSUIMessageView *)self imageContainerView];
      v40 = [v39 layer];
      [v40 setShadowRadius:v38];

      v41 = [(AMSUIMessageView *)self imageContainerView];
      v42 = [v41 layer];
      [v42 setShadowOffset:{0.0, 2.0}];

      v43 = [(AMSUIMessageView *)self imageContainerView];
      v44 = [v43 layer];
      LODWORD(v45) = 1050253722;
      [v44 setShadowOpacity:v45];

      v46 = [(AMSUIMessageView *)self imageContainerView];
      v47 = [v46 layer];
      [v47 setMasksToBounds:0];

      v23 = [(AMSUIMessageView *)self imageContainerView];
      v48 = [v23 layer];
      [v48 setShadowPath:0];
    }

    goto LABEL_26;
  }

  if ([(AMSUIMessageView *)self style]== 5)
  {
    v10 = [(AMSUIMessageView *)self imageView];
    v11 = v10;
    v12 = 4.0;
LABEL_20:
    [v10 _setContinuousCornerRadius:v12];
    goto LABEL_26;
  }

  if ([(AMSUIMessageView *)self imageStyle]== 2)
  {
    v10 = [(AMSUIMessageView *)self imageView];
    v11 = v10;
    v12 = 6.0;
    goto LABEL_20;
  }

LABEL_27:
  if (![(AMSUIMessageView *)self style]&& (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0))
  {
    v49 = [(AMSUIMessageView *)self imageView];
    [v49 _setOverrideUserInterfaceRenderingMode:1];
  }

  v50 = [(AMSUIMessageView *)self imageView];
  v51 = [v50 layer];
  [v51 setMasksToBounds:1];

  v52 = [(AMSUIMessageView *)self imageView];
  v53 = [v52 image];

  if (v53)
  {
    v54 = [(AMSUIMessageView *)self imageView];
    v67 = [v54 image];

    v55 = [(AMSUIMessageView *)self imageView];
    v56 = [v55 image];
    [v56 size];
    v58 = v57;
    v60 = v59;

    v61 = [(AMSUIMessageView *)self imageView];
    [v61 frame];
    v63 = v62;
    v65 = v64;

    if (v58 / v60 * v65 > v63)
    {
      v66 = [(AMSUIMessageView *)self imageView];
      [v66 setContentMode:1];
    }
  }
}

- (void)_setupExclusionPathVisual
{
  v3 = [MEMORY[0x1E69DC888] systemBlueColor];
  v4 = [v3 colorWithAlphaComponent:0.3];
  v5 = [(AMSUIMessageView *)self textView];
  [v5 setBackgroundColor:v4];

  v6 = objc_alloc(MEMORY[0x1E69DD250]);
  v15 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v7 = [MEMORY[0x1E69DC888] systemTealColor];
  v8 = [v7 colorWithAlphaComponent:0.3];
  [v15 setBackgroundColor:v8];

  v9 = [(AMSUIMessageView *)self textView];
  v10 = [v9 textContainer];
  v11 = [v10 exclusionPaths];
  v12 = [v11 firstObject];

  if (v12)
  {
    [v12 bounds];
    [v15 setFrame:?];
    v13 = [(AMSUIMessageView *)self exclusionView];
    [v13 removeFromSuperview];

    [(AMSUIMessageView *)self setExclusionView:v15];
    v14 = [(AMSUIMessageView *)self textView];
    [v14 addSubview:v15];
  }
}

- (void)_setupImageViewDefault
{
  v7 = [AMSUIAppearance _defaultImageViewColorForStyle:[(AMSUIMessageView *)self style]];
  if (v7)
  {
    v3 = [(AMSUIMessageView *)self imageView];
    [v3 setTintColor:v7];
  }

  if ([(AMSUIMessageView *)self style]== 2 || [(AMSUIMessageView *)self style]== 3 || [(AMSUIMessageView *)self style]== 6)
  {
    v4 = *MEMORY[0x1E69DDC78];
    v5 = [(AMSUIMessageView *)self imageView];
    [v5 setMinimumContentSizeCategory:v4];

    v6 = [(AMSUIMessageView *)self imageView];
    [v6 setMaximumContentSizeCategory:v4];
  }
}

- (void)_setAccessibility
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AMSUIMessageView *)self buttons];

  if (v4)
  {
    v5 = [(AMSUIMessageView *)self buttons];
    [v3 addObjectsFromArray:v5];
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(AMSUIMessageView *)self imageView];
  v8 = [v7 image];
  if (v8)
  {
    v9 = v8;
    v10 = [(AMSUIMessageView *)self imageView];
    v11 = [v10 accessibilityLabel];

    if (!v11)
    {
      goto LABEL_7;
    }

    v7 = [(AMSUIMessageView *)self imageView];
    v12 = [v7 accessibilityLabel];
    [v6 addObject:v12];
  }

LABEL_7:
  v13 = [(AMSUIMessageView *)self textView];
  if ([v13 hasText])
  {
    v14 = [(AMSUIMessageView *)self textView];
    v15 = [v14 accessibilityLabel];

    if (!v15)
    {
      goto LABEL_11;
    }

    v13 = [(AMSUIMessageView *)self textView];
    v16 = [v13 accessibilityLabel];
    [v6 addObject:v16];
  }

LABEL_11:
  v17 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F3921360];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = v6;
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
  v25 = v3;
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

- (void)_setMICAPlayerTintColor:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSUIMessageView *)self micaPlayer];

  if (v5)
  {
    v6 = [(AMSUIMessageView *)self micaPlayer];
    v7 = [v6 publishedObjects];

    if (v7)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = [(AMSUIMessageView *)self micaPlayer];
      v9 = [v8 publishedObjects];
      v10 = [v9 allValues];

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(v10);
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
              [v16 setFillColor:{objc_msgSend(v4, "CGColor")}];
            }

            if ([v16 strokeColor] && CGColorGetAlpha(objc_msgSend(v16, "strokeColor")) > 0.0)
            {
              [v16 setStrokeColor:{objc_msgSend(v4, "CGColor")}];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v10 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!v10)
      {
        v10 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v17 = [v10 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v25 = objc_opt_class();
        _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: No published objects to tint", buf, 0xCu);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_setAccessibilityIdentifier
{
  v3 = [(AMSUIMessageView *)self style];
  if (v3 > 5)
  {
    v4 = @"bubbleTip";
  }

  else
  {
    v4 = off_1E7F251A8[v3];
  }

  [(AMSUIMessageView *)self setAccessibilityIdentifier:v4];
  v5 = [(AMSUIMessageView *)self imageView];
  [v5 setAccessibilityIdentifier:@"primaryImageView"];

  v6 = [(AMSUIMessageView *)self textView];
  [v6 setAccessibilityIdentifier:@"textView"];
}

- (void)_setTextViewText
{
  v3 = [(AMSUIMessageView *)self title];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(AMSUIMessageView *)self message];
  }

  v14 = v5;

  v6 = [(AMSUIMessageView *)self title];
  if (v6)
  {
    v7 = v6;
    v8 = [(AMSUIMessageView *)self message];

    if (v8)
    {
      v9 = [v14 mutableCopy];
      v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
      [v9 appendAttributedString:v10];

      v11 = [(AMSUIMessageView *)self message];
      [v9 appendAttributedString:v11];

      v12 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
      [v12 setAlignment:4];
      [(AMSUIMessageView *)self _textViewParagraphSpacingBefore];
      [v12 setParagraphSpacingBefore:?];
      [v9 addAttribute:*MEMORY[0x1E69DB688] value:v12 range:{0, objc_msgSend(v9, "length")}];

      v14 = v9;
    }
  }

  v13 = [(AMSUIMessageView *)self textView];
  [v13 setAttributedText:v14];
}

- (void)setBodyDialogAction:(id)a3 target:(id)a4 action:(SEL)a5
{
  objc_storeStrong(&self->_bodyAction, a3);
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc(MEMORY[0x1E69DD060]);

  v12 = [v11 initWithTarget:v10 action:a5];
  [(AMSUIMessageView *)self addGestureRecognizer:v12];
}

- (void)setButtonsForDialogActions:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AMSUIMessageView_setButtonsForDialogActions_target_action___block_invoke;
  v11[3] = &unk_1E7F25140;
  v11[4] = self;
  v12 = v8;
  v13 = a5;
  v9 = v8;
  v10 = [a3 ams_mapWithTransform:v11];
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
  v3 = [(AMSUIMessageView *)self maskShapeView];

  if (!v3)
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
  v3 = [(AMSUIMessageView *)self maskShapeView];
  [v3 removeFromSuperview];

  [(AMSUIMessageView *)self setMaskShapeView:0];
}

- (void)_startObservations
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIMessageView *)self imageView];
  [v3 addObserver:self forKeyPath:@"frame" options:1 context:0];

  v4 = [(AMSUIMessageView *)self imageView];
  [v4 addObserver:self forKeyPath:@"image" options:1 context:0];

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
  v3 = [(AMSUIMessageView *)self imageView];
  [v3 removeObserver:self forKeyPath:@"image"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = a3;
  v8 = a4;
  v9 = [(AMSUIMessageView *)self imageView];

  if (v9 == v8)
  {
    v10 = [v11 isEqualToString:@"frame"];

    if (v10)
    {
      goto LABEL_5;
    }

    [(AMSUIMessageView *)self _setupImageView];
    v9 = [(AMSUIMessageView *)self layoutContext];
    [v9 invalidate];
  }

LABEL_5:
}

- (id)focusItemsInRect:(CGRect)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(AMSUIMessageView *)self buttons];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(AMSUIMessageView *)self buttons];
    [v4 addObjectsFromArray:v7];
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];

  return v8;
}

- (void)setNeedsLayout
{
  v4.receiver = self;
  v4.super_class = AMSUIMessageView;
  [(AMSUIMessageView *)&v4 setNeedsLayout];
  v3 = [(AMSUIMessageView *)self layoutContext];
  [v3 invalidate];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = AMSUIMessageView;
  [(AMSUIMessageView *)&v7 layoutSubviews];
  [(AMSUIMessageView *)self _syncRectsFromContext];
  v3 = [(AMSUIMessageView *)self micaPlayer];

  if (v3)
  {
    v4 = [(AMSUIMessageView *)self micaPlayer];
    v5 = [(AMSUIMessageView *)self imageContainerView];
    v6 = [v5 layer];
    [v4 moveAndResizeWithinParentLayer:v6 usingGravity:*MEMORY[0x1E6979DF0] animate:0];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(AMSUIMessageView *)self setIsSizing:1];
  v6 = [(AMSUIMessageView *)self layoutContext];
  [v6 sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  [(AMSUIMessageView *)self setIsSizing:0];
  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = AMSUIMessageView;
  v4 = a3;
  [(AMSUIMessageView *)&v9 traitCollectionDidChange:v4];
  v5 = [(AMSUIMessageView *)self traitCollection:v9.receiver];
  v6 = [v5 userInterfaceLevel];
  v7 = [v4 userInterfaceLevel];

  if (v6 != v7)
  {
    [(AMSUIMessageView *)self _setupImageView];
  }

  v8 = [(AMSUIMessageView *)self iconColor];
  [(AMSUIMessageView *)self _setMICAPlayerTintColor:v8];

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
    v4 = [(AMSUIMessageView *)self layoutContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v7 = [(AMSUIMessageView *)self buttons];
    if (v7)
    {

      if (!v5)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v8 = [(AMSUIMessageView *)self traitCollection];
      v9 = [v8 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v9);

      if (!v5)
      {
        if (IsAccessibilityCategory)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    v11 = [(AMSUIMessageView *)self buttons];
    if (v11 && ([v5 isTopAlignedTextButtonAllowed] & 1) == 0)
    {

      goto LABEL_26;
    }

    v12 = [(AMSUIMessageView *)self traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    v14 = UIContentSizeCategoryIsAccessibilityCategory(v13);

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
  v3 = [(AMSUIMessageView *)self style];
  if (v3 != 1)
  {
    if ([(AMSUIMessageView *)self style])
    {
      LOBYTE(v3) = [(AMSUIMessageView *)self style]== 4;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)_syncRectsFromContext
{
  v3 = [(AMSUIMessageView *)self layoutContext];
  [v3 layoutSubviewFrames];

  v4 = [(AMSUIMessageView *)self accessoryView];

  if (v4)
  {
    v5 = [(AMSUIMessageView *)self layoutContext];
    [v5 contentLayoutMargins];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(AMSUIMessageView *)self layoutContext];
    [v12 accessorySpacing];
    v14 = -v13;

    v15 = -v7;
    v16 = -v9;
    if ([(AMSUIMessageView *)self style]== 4 && (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0))
    {
      v17 = [(AMSUIMessageView *)self traitCollection];
      v18 = [v17 layoutDirection];

      if (v18 == 1)
      {
        [(AMSUIMessageView *)self frame];
        v20 = v19;
        v21 = [(AMSUIMessageView *)self layoutContext];
        [v21 accessoryViewFrame];
        v23 = v20 - v22;
        v24 = [(AMSUIMessageView *)self layoutContext];
        [v24 accessoryViewFrame];
        v14 = -(v23 - v25);
      }

      else
      {
        v21 = [(AMSUIMessageView *)self layoutContext];
        [v21 accessoryViewFrame];
        v14 = -v26;
      }

      v27 = [(AMSUIMessageView *)self layoutContext];
      [v27 accessoryViewFrame];
      v15 = -v28;

      [(AMSUIMessageView *)self frame];
      v30 = v29;
      v31 = [(AMSUIMessageView *)self layoutContext];
      [v31 accessoryViewFrame];
      v33 = v30 - v32;
      v34 = [(AMSUIMessageView *)self layoutContext];
      [v34 accessoryViewFrame];
      v16 = -(v33 - v35);
    }

    v36 = [(AMSUIMessageView *)self accessoryView];
    [v36 setHitTestDirectionalInsets:{v15, v14, v16, -v11}];
  }

  v37 = [(AMSUIMessageView *)self imageView];
  v38 = [v37 image];
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v40 = [(AMSUIMessageView *)self micaPlayer];
    v39 = v40 == 0;
  }

  v41 = [(AMSUIMessageView *)self layoutContext];
  [v41 contentSize];
  v43 = v42;
  v45 = v44;

  v46 = [(AMSUIMessageView *)self imageContainerView];
  [v46 setHidden:v39];

  v47 = [(AMSUIMessageView *)self imageContainerView];
  v48 = [(AMSUIMessageView *)self layoutContext];
  [v48 imageViewFrame];
  [v47 setFrame:?];

  v49 = [(AMSUIMessageView *)self imageView];
  v50 = [(AMSUIMessageView *)self imageContainerView];
  [v50 bounds];
  [v49 setFrame:?];

  v51 = [(AMSUIMessageView *)self textView];
  v52 = [(AMSUIMessageView *)self layoutContext];
  [v52 textViewFrame];
  [v51 setFrame:?];

  v53 = [(AMSUIMessageView *)self layoutContext];
  [v53 debugButtonFrame];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = [(AMSUIMessageView *)self debugButton];
  [v62 setFrame:{v55, v57, v59, v61}];

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

  v73 = [(AMSUIMessageView *)self containerView];
  [(AMSUIMessageView *)self bounds];
  [v73 setFrame:?];

  v74 = [(AMSUIMessageView *)self containerView];
  [v74 setContentSize:{v43, v45}];

  v75 = [(AMSUIMessageView *)self backgroundVisualEffectView];
  [v75 setFrame:{v64, v66, v68, v70}];

  v76 = [(AMSUIMessageView *)self separatorViews];
  v77 = [v76 count];
  v78 = [(AMSUIMessageView *)self layoutContext];
  v79 = [v78 separatorViewFrames];
  v80 = [v79 count];

  if (v77 < v80)
  {
    v81 = MEMORY[0x1E695DF70];
    v82 = [(AMSUIMessageView *)self separatorViews];
    v83 = [v81 arrayWithArray:v82];
    while (1)
    {

      v84 = [v83 count];
      v85 = [(AMSUIMessageView *)self layoutContext];
      v86 = [v85 separatorViewFrames];
      v87 = [v86 count];

      if (v84 >= v87)
      {
        break;
      }

      v82 = [(AMSUIMessageView *)self _makeSeparatorView];
      [v83 addObject:v82];
      v88 = [(AMSUIMessageView *)self containerView];
      [v88 addSubview:v82];
    }

    v89 = [MEMORY[0x1E695DEC8] arrayWithArray:v83];
    [(AMSUIMessageView *)self setSeparatorViews:v89];
  }

  v90 = [(AMSUIMessageView *)self layoutContext];
  v91 = [v90 separatorViewFrames];
  v92 = [v91 count];

  if (v92)
  {
    v93 = [(AMSUIMessageView *)self separatorViews];
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __41__AMSUIMessageView__syncRectsFromContext__block_invoke;
    v112[3] = &unk_1E7F25168;
    v112[4] = self;
    [v93 enumerateObjectsUsingBlock:v112];
  }

  v94 = [(AMSUIMessageView *)self buttons];
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __41__AMSUIMessageView__syncRectsFromContext__block_invoke_2;
  v111[3] = &unk_1E7F25168;
  v111[4] = self;
  [v94 enumerateObjectsUsingBlock:v111];

  v95 = [(AMSUIMessageView *)self backgroundImageView];
  v96 = [(AMSUIMessageView *)self backgroundImageView];
  v97 = [v96 image];
  [v95 setHidden:v97 == 0];

  v98 = [(AMSUIMessageView *)self backgroundImageView];
  [(AMSUIMessageView *)self bounds];
  [v98 setFrame:?];

  v99 = [(AMSUIMessageView *)self maskShapeView];

  if (v99)
  {
    v100 = [(AMSUIMessageView *)self layoutContext];
    [v100 maskViewFrame];
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v109 = [(AMSUIMessageView *)self maskShapeView];
    [v109 setFrame:{v102, v104, v106, v108}];

    v110 = [(AMSUIMessageView *)self maskShapeView];
    [v110 setNeedsLayout];
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
    v6 = [(AMSUIMessageView *)self backgroundImageView];
    [v6 _setContinuousCornerRadius:v4];

    v7 = [(AMSUIMessageView *)self backgroundVisualEffectView];
    [v7 _setContinuousCornerRadius:v4];
  }
}

- (UIView)accessoryView
{
  v2 = [(AMSUIMessageView *)self buttons];
  v3 = [v2 lastObject];

  return v3;
}

- (UIView)accessorySecondaryView
{
  if (-[AMSUIMessageView isBannerStyle](self, "isBannerStyle") && (-[AMSUIMessageView buttons](self, "buttons"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4 >= 2))
  {
    v5 = [(AMSUIMessageView *)self buttons];
    v6 = [(AMSUIMessageView *)self buttons];
    v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 2}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)footerButtons
{
  v3 = [(AMSUIMessageView *)self isBannerStyle];
  v4 = [(AMSUIMessageView *)self buttons];
  v5 = v4;
  if (v3)
  {
    v6 = &__block_literal_global_9;
  }

  else
  {
    v6 = &__block_literal_global_109;
  }

  v7 = [v4 ams_filterUsingTest:v6];

  return v7;
}

- (void)set_ams_backgroundColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  v10 = v4;
  if (!v4)
  {
    v6 = [(AMSUIMessageView *)self style];
    v7 = [(AMSUIMessageView *)self traitCollection];
    v5 = [AMSUIAppearance _defaultBackgroundColorForStyle:v6 withTraitCollection:v7];

    v4 = 0;
  }

  [(AMSUIMessageView *)self setIsUsingCustomBackground:v4 != 0];
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v8 = [(AMSUIMessageView *)self _background];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
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

- (void)setButtons:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35 = 432;
  buttons = self->_buttons;
  if (buttons)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v6 = buttons;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v46 objects:v52 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v46 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v8);
    }
  }

  v11 = [MEMORY[0x1E695DF70] array];
  v37 = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = v4;
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
      v19 = [v18 configuration];
      v20 = [v19 title];

      if (v20)
      {
        v21 = v11;
      }

      else
      {
        if ([v18 isDefaultCloseButton])
        {
          v22 = v18;

          v15 = v22;
          continue;
        }

        v21 = v37;
      }

      [v21 addObject:v18];
    }

    v14 = [v12 countByEnumeratingWithState:&v42 objects:v51 count:16];
  }

  while (v14);
LABEL_25:

  v23 = [v11 arrayByAddingObjectsFromArray:v37];
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
          v33 = [(AMSUIMessageView *)self containerView];
          [v33 addSubview:v32];
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

- (void)setIconColor:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIMessageView *)self imageView];
  [v5 setTintColor:v4];

  [(AMSUIMessageView *)self _setMICAPlayerTintColor:v4];
  iconColor = self->_iconColor;
  self->_iconColor = v4;
}

- (void)setSeparatorColor:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_separatorColor, a3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(AMSUIMessageView *)self separatorViews];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) setBackgroundColor:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_makeSeparatorView
{
  v3 = objc_alloc_init(AMSUICommonView);
  v4 = [(AMSUIMessageView *)self separatorColor];
  [(AMSUICommonView *)v3 setBackgroundColor:v4];

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