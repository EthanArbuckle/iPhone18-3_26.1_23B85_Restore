@interface SFSafariLaunchPlaceholderView
+ (id)blankPlaceholder;
+ (id)compatibilityPlaceholderWithAppName:(id)name destinationURL:(id)l forAuthentication:(BOOL)authentication dismissalHandler:(id)handler openHandler:(id)openHandler;
- (uint64_t)initWithAppName:(void *)name destinationURL:(char)l forAuthentication:(void *)authentication dismissalHandler:(void *)handler openHandler:;
- (void)_dismissTapped:(id)tapped;
- (void)_openTapped:(id)tapped;
- (void)_setUpExplanationViewIfNeeded;
- (void)_updateLargeButton;
- (void)layoutSubviews;
- (void)setShowContinueButton:(BOOL)button;
- (void)updateBarTintColor:(id)color;
- (void)updateControlTintColor:(id)color;
- (void)updateDismissButtonStyle:(int64_t)style;
@end

@implementation SFSafariLaunchPlaceholderView

+ (id)blankPlaceholder
{
  v2 = [(SFSafariLaunchPlaceholderView *)[self alloc] initWithAppName:0 destinationURL:0 forAuthentication:0 dismissalHandler:0 openHandler:?];

  return v2;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = SFSafariLaunchPlaceholderView;
  [(SFSafariLaunchPlaceholderView *)&v25 layoutSubviews];
  [(SFSafariLaunchPlaceholderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  window = [(SFSafariLaunchPlaceholderView *)self window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
  [(_SFNavigationBar *)_SFBrowserNavigationBar estimatedDefaultHeightForStatusBarHeight:CGRectGetHeight(v26)];
  v15 = v14;

  [(SFSafariLaunchPlaceholderView *)self safeAreaInsets];
  topLayoutGuideInset = v16;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    topLayoutGuideInset = self->_topLayoutGuideInset;
  }

  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  [(UINavigationBar *)self->_topNavigationBar setFrame:0.0, topLayoutGuideInset, CGRectGetWidth(v27), v15];
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  CGRectGetWidth(v28);
  IsNarrow = SFWidthIsNarrow();
  bottomToolbar = self->_bottomToolbar;
  if (IsNarrow)
  {
    [(UIToolbar *)bottomToolbar sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v21 = v20;
    [(SFSafariLaunchPlaceholderView *)self _sf_bottomUnsafeAreaFrameForToolbar];
    Height = CGRectGetHeight(v29);
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    v23 = CGRectGetHeight(v30) - v21 - Height;
    v31.origin.x = v4;
    v31.origin.y = v6;
    v31.size.width = v8;
    v31.size.height = v10;
    [(UIToolbar *)self->_bottomToolbar setFrame:0.0, v23, CGRectGetWidth(v31), v21];
    bottomToolbar = self->_bottomToolbar;
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  [(UIToolbar *)bottomToolbar setHidden:v24];
}

- (void)updateBarTintColor:(id)color
{
  topNavigationBar = self->_topNavigationBar;
  colorCopy = color;
  [(UINavigationBar *)topNavigationBar setBarTintColor:colorCopy];
  [(UIToolbar *)self->_bottomToolbar setBarTintColor:colorCopy];
}

- (void)updateControlTintColor:(id)color
{
  topNavigationBar = self->_topNavigationBar;
  colorCopy = color;
  [(UINavigationBar *)topNavigationBar setTintColor:colorCopy];
  [(UIToolbar *)self->_bottomToolbar setTintColor:colorCopy];
}

- (void)setShowContinueButton:(BOOL)button
{
  if (self->_showContinueButton != button)
  {
    self->_showContinueButton = button;
    [(SFSafariLaunchPlaceholderView *)self _updateLargeButton];
  }
}

- (void)_dismissTapped:(id)tapped
{
  dismissalHandler = self->_dismissalHandler;
  if (dismissalHandler)
  {
    dismissalHandler[2]();
  }
}

- (void)_openTapped:(id)tapped
{
  [(UIButton *)self->_largeButton setEnabled:0];
  openHandler = self->_openHandler;
  if (openHandler)
  {
    v5 = *(openHandler + 2);

    v5();
  }
}

- (uint64_t)initWithAppName:(void *)name destinationURL:(char)l forAuthentication:(void *)authentication dismissalHandler:(void *)handler openHandler:
{
  v51[3] = *MEMORY[0x1E69E9840];
  v11 = a2;
  nameCopy = name;
  authenticationCopy = authentication;
  handlerCopy = handler;
  if (self)
  {
    v49.receiver = self;
    v49.super_class = SFSafariLaunchPlaceholderView;
    v15 = objc_msgSendSuper2(&v49, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    self = v15;
    if (v15)
    {
      v15[408] = l;
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [self setBackgroundColor:systemBackgroundColor];

      OUTLINED_FUNCTION_4_0(objc_alloc_init(MEMORY[0x1E69DCCC0]), 464);
      [*(self + 464) setDelegate:self];
      [*(self + 464) _setAlwaysUseDefaultMetrics:1];
      [self addSubview:*(self + 464)];
      if (nameCopy)
      {
        v18 = _Block_copy(authenticationCopy);
        OUTLINED_FUNCTION_4_0(v18, 432);
        v19 = _Block_copy(handlerCopy);
        OUTLINED_FUNCTION_4_0(v19, 440);
        [(SFSafariLaunchPlaceholderView *)self _setUpExplanationViewIfNeeded];
        OUTLINED_FUNCTION_3_2();
        if (v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = 3;
        }

        textContainer = [*(self + 448) textContainer];
        [textContainer setMaximumNumberOfLines:v21];

        OUTLINED_FUNCTION_3_2();
        if (v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = 5;
        }

        textContainer2 = [*(self + 448) textContainer];
        [textContainer2 setLineBreakMode:v24];

        v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"globe"];
        [*(self + 424) setImage:v26];

        v27 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD58] scale:3];
        [*(self + 424) setPreferredSymbolConfiguration:v27];

        OUTLINED_FUNCTION_3_2();
        v28 = _WBSLocalizedString();
        [*(self + 456) setText:v28];

        OUTLINED_FUNCTION_3_2();
        v29 = MEMORY[0x1E696AEC0];
        if (v30)
        {
          v31 = _WBSLocalizedString();
          safari_userVisibleHost = [nameCopy safari_userVisibleHost];
          v33 = v29;
          v34 = safari_userVisibleHost;
          v48 = [v33 stringWithFormat:v31, v11, safari_userVisibleHost, v11];
        }

        else
        {
          v31 = _WBSLocalizedString();
          v48 = [v29 stringWithFormat:v31, v11];
        }

        v35 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
        [v35 setAlignment:1];
        v36 = objc_alloc(MEMORY[0x1E696AD40]);
        v50[0] = *MEMORY[0x1E69DB648];
        font = [*(self + 448) font];
        v51[0] = font;
        v50[1] = *MEMORY[0x1E69DB650];
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v50[2] = *MEMORY[0x1E69DB688];
        v51[1] = secondaryLabelColor;
        v51[2] = v35;
        v47 = v35;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
        v39 = [v36 initWithString:v48 attributes:v38];

        OUTLINED_FUNCTION_3_2();
        if ((v40 & 1) == 0)
        {
          safari_userVisibleString = [nameCopy safari_userVisibleString];
          [v39 safari_replaceOccurrenceOfString:@"{some-url}" withString:safari_userVisibleString link:nameCopy];
        }

        [*(self + 448) setAttributedText:v39];
        [(SFSafariLaunchPlaceholderView *)self _updateLargeButton];
        v42 = objc_alloc_init(MEMORY[0x1E69DCCE0]);
        OUTLINED_FUNCTION_4_0([objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:&stru_1F4FE9E38 style:2 target:self action:sel__dismissTapped_], 472);
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        safari_prefersRTLLayout = [mEMORY[0x1E69DC668] safari_prefersRTLLayout];

        v45 = *(self + 472);
        if (safari_prefersRTLLayout)
        {
          [v42 setRightBarButtonItem:v45];
        }

        else
        {
          [v42 setLeftBarButtonItem:v45];
        }

        [*(self + 464) pushNavigationItem:v42 animated:0];
      }

      else
      {
        OUTLINED_FUNCTION_4_0(objc_alloc_init(MEMORY[0x1E69DD180]), 416);
        [self addSubview:*(self + 416)];
      }
    }
  }

  return self;
}

+ (id)compatibilityPlaceholderWithAppName:(id)name destinationURL:(id)l forAuthentication:(BOOL)authentication dismissalHandler:(id)handler openHandler:(id)openHandler
{
  openHandlerCopy = openHandler;
  handlerCopy = handler;
  lCopy = l;
  nameCopy = name;
  v16 = [(SFSafariLaunchPlaceholderView *)[self alloc] initWithAppName:nameCopy destinationURL:lCopy forAuthentication:authentication dismissalHandler:handlerCopy openHandler:openHandlerCopy];

  return v16;
}

- (void)_setUpExplanationViewIfNeeded
{
  v59[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (!*(self + 424))
    {
      OUTLINED_FUNCTION_35(objc_alloc_init(MEMORY[0x1E69DCAE0]), 424);
      [OUTLINED_FUNCTION_6_1() setTranslatesAutoresizingMaskIntoConstraints:0];
      OUTLINED_FUNCTION_35(objc_alloc_init(MEMORY[0x1E69DCC10]), 456);
      [OUTLINED_FUNCTION_1_6() setTextAlignment:1];
      v2 = [MEMORY[0x1E69DB878] _sf_preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] symbolicTraits:2];
      [OUTLINED_FUNCTION_1_6() setFont:v2];

      [OUTLINED_FUNCTION_1_6() setTranslatesAutoresizingMaskIntoConstraints:0];
      [OUTLINED_FUNCTION_1_6() setNumberOfLines:2];
      OUTLINED_FUNCTION_35(objc_alloc_init(MEMORY[0x1E69DD168]), 448);
      [OUTLINED_FUNCTION_0_6() setAdjustsFontForContentSizeCategory:1];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [OUTLINED_FUNCTION_0_6() setBackgroundColor:clearColor];

      [OUTLINED_FUNCTION_0_6() setEditable:0];
      v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [OUTLINED_FUNCTION_0_6() setFont:v4];

      [OUTLINED_FUNCTION_0_6() _setInteractiveTextSelectionDisabled:1];
      v58 = *MEMORY[0x1E69DB650];
      linkColor = [MEMORY[0x1E69DC888] linkColor];
      v59[0] = linkColor;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      [OUTLINED_FUNCTION_0_6() setLinkTextAttributes:v6];

      [OUTLINED_FUNCTION_0_6() setScrollEnabled:0];
      [OUTLINED_FUNCTION_0_6() setSelectable:1];
      [OUTLINED_FUNCTION_0_6() setShowsVerticalScrollIndicator:0];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [OUTLINED_FUNCTION_0_6() setTextColor:secondaryLabelColor];

      textContainer = [OUTLINED_FUNCTION_0_6() textContainer];
      [textContainer setLineFragmentPadding:0.0];

      [OUTLINED_FUNCTION_0_6() setTextContainerInset:?];
      [OUTLINED_FUNCTION_0_6() setTranslatesAutoresizingMaskIntoConstraints:0];
      v9 = MEMORY[0x1E69DC738];
      borderedButtonConfiguration = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
      v11 = [v9 buttonWithConfiguration:borderedButtonConfiguration primaryAction:0];
      OUTLINED_FUNCTION_35(v11, 480);

      [OUTLINED_FUNCTION_5_1() setTranslatesAutoresizingMaskIntoConstraints:0];
      [self insertSubview:*(self + 424) belowSubview:*(self + 464)];
      OUTLINED_FUNCTION_2_4(456);
      OUTLINED_FUNCTION_2_4(448);
      OUTLINED_FUNCTION_2_4(480);
      centerYAnchor = [OUTLINED_FUNCTION_0_6() centerYAnchor];
      centerYAnchor2 = [self centerYAnchor];
      v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

      v40 = v14;
      LODWORD(v15) = 1132068864;
      [v14 setPriority:v15];
      topAnchor = [OUTLINED_FUNCTION_5_1() topAnchor];
      bottomAnchor = [OUTLINED_FUNCTION_0_6() bottomAnchor];
      v18 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:32.0];

      v19 = v18;
      v36 = v18;
      LODWORD(v20) = 1132068864;
      [v18 setPriority:v20];
      v44 = MEMORY[0x1E696ACD8];
      centerXAnchor = [OUTLINED_FUNCTION_6_1() centerXAnchor];
      centerXAnchor2 = [self centerXAnchor];
      v54 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v57[0] = v54;
      centerXAnchor3 = [OUTLINED_FUNCTION_1_6() centerXAnchor];
      centerXAnchor4 = [self centerXAnchor];
      v51 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      v57[1] = v51;
      centerXAnchor5 = [OUTLINED_FUNCTION_0_6() centerXAnchor];
      centerXAnchor6 = [self centerXAnchor];
      v48 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
      v57[2] = v48;
      centerXAnchor7 = [OUTLINED_FUNCTION_5_1() centerXAnchor];
      centerXAnchor8 = [self centerXAnchor];
      v45 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
      v57[3] = v45;
      topAnchor2 = [OUTLINED_FUNCTION_6_1() topAnchor];
      bottomAnchor2 = [*(self + 464) bottomAnchor];
      v41 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:13.0];
      v57[4] = v41;
      topAnchor3 = [OUTLINED_FUNCTION_1_6() topAnchor];
      bottomAnchor3 = [OUTLINED_FUNCTION_6_1() bottomAnchor];
      v37 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:20.0];
      v57[5] = v37;
      leadingAnchor = [OUTLINED_FUNCTION_1_6() leadingAnchor];
      leadingAnchor2 = [self leadingAnchor];
      v33 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:30.0];
      v57[6] = v33;
      trailingAnchor = [self trailingAnchor];
      trailingAnchor2 = [OUTLINED_FUNCTION_1_6() trailingAnchor];
      v21 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:30.0];
      v57[7] = v21;
      v57[8] = v14;
      widthAnchor = [OUTLINED_FUNCTION_0_6() widthAnchor];
      v23 = [widthAnchor constraintLessThanOrEqualToConstant:300.0];
      v57[9] = v23;
      topAnchor4 = [OUTLINED_FUNCTION_0_6() topAnchor];
      bottomAnchor4 = [OUTLINED_FUNCTION_1_6() bottomAnchor];
      v26 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4 constant:13.0];
      v57[10] = v26;
      v57[11] = v19;
      bottomAnchor5 = [self bottomAnchor];
      bottomAnchor6 = [OUTLINED_FUNCTION_5_1() bottomAnchor];
      v29 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:10.0];
      v57[12] = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:13];
      [v44 activateConstraints:v30];
    }
  }
}

- (void)_updateLargeButton
{
  if (self)
  {
    if (*(self + 408) == 1)
    {
      [*(self + 480) setHidden:(*(self + 488) & 1) == 0];
      [*(self + 480) addTarget:self action:sel__openTapped_ forControlEvents:0x2000];
      v2 = *(self + 480);
      title = _WBSLocalizedString();
      v4 = v2;
    }

    else
    {
      [*(self + 480) setHidden:0];
      [*(self + 480) addTarget:self action:sel__dismissTapped_ forControlEvents:0x2000];
      v5 = *(self + 480);
      title = [*(self + 472) title];
      v4 = v5;
    }

    v6 = title;
    [v4 setTitle:? forState:?];
  }
}

- (void)updateDismissButtonStyle:(int64_t)style
{
  v4 = [SFDismissButton titleForDismissButtonStyle:style];
  [(UIBarButtonItem *)self->_dismissButton setTitle:v4];
  [(SFSafariLaunchPlaceholderView *)self _updateLargeButton];
}

@end