@interface SFSafariLaunchPlaceholderView
+ (id)blankPlaceholder;
+ (id)compatibilityPlaceholderWithAppName:(id)a3 destinationURL:(id)a4 forAuthentication:(BOOL)a5 dismissalHandler:(id)a6 openHandler:(id)a7;
- (uint64_t)initWithAppName:(void *)a3 destinationURL:(char)a4 forAuthentication:(void *)a5 dismissalHandler:(void *)a6 openHandler:;
- (void)_dismissTapped:(id)a3;
- (void)_openTapped:(id)a3;
- (void)_setUpExplanationViewIfNeeded;
- (void)_updateLargeButton;
- (void)layoutSubviews;
- (void)setShowContinueButton:(BOOL)a3;
- (void)updateBarTintColor:(id)a3;
- (void)updateControlTintColor:(id)a3;
- (void)updateDismissButtonStyle:(int64_t)a3;
@end

@implementation SFSafariLaunchPlaceholderView

+ (id)blankPlaceholder
{
  v2 = [(SFSafariLaunchPlaceholderView *)[a1 alloc] initWithAppName:0 destinationURL:0 forAuthentication:0 dismissalHandler:0 openHandler:?];

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
  v11 = [(SFSafariLaunchPlaceholderView *)self window];
  v12 = [v11 windowScene];
  v13 = [v12 statusBarManager];
  [v13 statusBarFrame];
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

- (void)updateBarTintColor:(id)a3
{
  topNavigationBar = self->_topNavigationBar;
  v5 = a3;
  [(UINavigationBar *)topNavigationBar setBarTintColor:v5];
  [(UIToolbar *)self->_bottomToolbar setBarTintColor:v5];
}

- (void)updateControlTintColor:(id)a3
{
  topNavigationBar = self->_topNavigationBar;
  v5 = a3;
  [(UINavigationBar *)topNavigationBar setTintColor:v5];
  [(UIToolbar *)self->_bottomToolbar setTintColor:v5];
}

- (void)setShowContinueButton:(BOOL)a3
{
  if (self->_showContinueButton != a3)
  {
    self->_showContinueButton = a3;
    [(SFSafariLaunchPlaceholderView *)self _updateLargeButton];
  }
}

- (void)_dismissTapped:(id)a3
{
  dismissalHandler = self->_dismissalHandler;
  if (dismissalHandler)
  {
    dismissalHandler[2]();
  }
}

- (void)_openTapped:(id)a3
{
  [(UIButton *)self->_largeButton setEnabled:0];
  openHandler = self->_openHandler;
  if (openHandler)
  {
    v5 = *(openHandler + 2);

    v5();
  }
}

- (uint64_t)initWithAppName:(void *)a3 destinationURL:(char)a4 forAuthentication:(void *)a5 dismissalHandler:(void *)a6 openHandler:
{
  v51[3] = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    v49.receiver = a1;
    v49.super_class = SFSafariLaunchPlaceholderView;
    v15 = objc_msgSendSuper2(&v49, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    a1 = v15;
    if (v15)
    {
      v15[408] = a4;
      v16 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [a1 setBackgroundColor:v16];

      OUTLINED_FUNCTION_4_0(objc_alloc_init(MEMORY[0x1E69DCCC0]), 464);
      [*(a1 + 464) setDelegate:a1];
      [*(a1 + 464) _setAlwaysUseDefaultMetrics:1];
      [a1 addSubview:*(a1 + 464)];
      if (v12)
      {
        v18 = _Block_copy(v13);
        OUTLINED_FUNCTION_4_0(v18, 432);
        v19 = _Block_copy(v14);
        OUTLINED_FUNCTION_4_0(v19, 440);
        [(SFSafariLaunchPlaceholderView *)a1 _setUpExplanationViewIfNeeded];
        OUTLINED_FUNCTION_3_2();
        if (v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = 3;
        }

        v22 = [*(a1 + 448) textContainer];
        [v22 setMaximumNumberOfLines:v21];

        OUTLINED_FUNCTION_3_2();
        if (v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = 5;
        }

        v25 = [*(a1 + 448) textContainer];
        [v25 setLineBreakMode:v24];

        v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"globe"];
        [*(a1 + 424) setImage:v26];

        v27 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD58] scale:3];
        [*(a1 + 424) setPreferredSymbolConfiguration:v27];

        OUTLINED_FUNCTION_3_2();
        v28 = _WBSLocalizedString();
        [*(a1 + 456) setText:v28];

        OUTLINED_FUNCTION_3_2();
        v29 = MEMORY[0x1E696AEC0];
        if (v30)
        {
          v31 = _WBSLocalizedString();
          v32 = [v12 safari_userVisibleHost];
          v33 = v29;
          v34 = v32;
          v48 = [v33 stringWithFormat:v31, v11, v32, v11];
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
        v46 = [*(a1 + 448) font];
        v51[0] = v46;
        v50[1] = *MEMORY[0x1E69DB650];
        v37 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v50[2] = *MEMORY[0x1E69DB688];
        v51[1] = v37;
        v51[2] = v35;
        v47 = v35;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
        v39 = [v36 initWithString:v48 attributes:v38];

        OUTLINED_FUNCTION_3_2();
        if ((v40 & 1) == 0)
        {
          v41 = [v12 safari_userVisibleString];
          [v39 safari_replaceOccurrenceOfString:@"{some-url}" withString:v41 link:v12];
        }

        [*(a1 + 448) setAttributedText:v39];
        [(SFSafariLaunchPlaceholderView *)a1 _updateLargeButton];
        v42 = objc_alloc_init(MEMORY[0x1E69DCCE0]);
        OUTLINED_FUNCTION_4_0([objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:&stru_1F4FE9E38 style:2 target:a1 action:sel__dismissTapped_], 472);
        v43 = [MEMORY[0x1E69DC668] sharedApplication];
        v44 = [v43 safari_prefersRTLLayout];

        v45 = *(a1 + 472);
        if (v44)
        {
          [v42 setRightBarButtonItem:v45];
        }

        else
        {
          [v42 setLeftBarButtonItem:v45];
        }

        [*(a1 + 464) pushNavigationItem:v42 animated:0];
      }

      else
      {
        OUTLINED_FUNCTION_4_0(objc_alloc_init(MEMORY[0x1E69DD180]), 416);
        [a1 addSubview:*(a1 + 416)];
      }
    }
  }

  return a1;
}

+ (id)compatibilityPlaceholderWithAppName:(id)a3 destinationURL:(id)a4 forAuthentication:(BOOL)a5 dismissalHandler:(id)a6 openHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [(SFSafariLaunchPlaceholderView *)[a1 alloc] initWithAppName:v15 destinationURL:v14 forAuthentication:a5 dismissalHandler:v13 openHandler:v12];

  return v16;
}

- (void)_setUpExplanationViewIfNeeded
{
  v59[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!*(a1 + 424))
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
      v3 = [MEMORY[0x1E69DC888] clearColor];
      [OUTLINED_FUNCTION_0_6() setBackgroundColor:v3];

      [OUTLINED_FUNCTION_0_6() setEditable:0];
      v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [OUTLINED_FUNCTION_0_6() setFont:v4];

      [OUTLINED_FUNCTION_0_6() _setInteractiveTextSelectionDisabled:1];
      v58 = *MEMORY[0x1E69DB650];
      v5 = [MEMORY[0x1E69DC888] linkColor];
      v59[0] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      [OUTLINED_FUNCTION_0_6() setLinkTextAttributes:v6];

      [OUTLINED_FUNCTION_0_6() setScrollEnabled:0];
      [OUTLINED_FUNCTION_0_6() setSelectable:1];
      [OUTLINED_FUNCTION_0_6() setShowsVerticalScrollIndicator:0];
      v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [OUTLINED_FUNCTION_0_6() setTextColor:v7];

      v8 = [OUTLINED_FUNCTION_0_6() textContainer];
      [v8 setLineFragmentPadding:0.0];

      [OUTLINED_FUNCTION_0_6() setTextContainerInset:?];
      [OUTLINED_FUNCTION_0_6() setTranslatesAutoresizingMaskIntoConstraints:0];
      v9 = MEMORY[0x1E69DC738];
      v10 = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
      v11 = [v9 buttonWithConfiguration:v10 primaryAction:0];
      OUTLINED_FUNCTION_35(v11, 480);

      [OUTLINED_FUNCTION_5_1() setTranslatesAutoresizingMaskIntoConstraints:0];
      [a1 insertSubview:*(a1 + 424) belowSubview:*(a1 + 464)];
      OUTLINED_FUNCTION_2_4(456);
      OUTLINED_FUNCTION_2_4(448);
      OUTLINED_FUNCTION_2_4(480);
      v12 = [OUTLINED_FUNCTION_0_6() centerYAnchor];
      v13 = [a1 centerYAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      v40 = v14;
      LODWORD(v15) = 1132068864;
      [v14 setPriority:v15];
      v16 = [OUTLINED_FUNCTION_5_1() topAnchor];
      v17 = [OUTLINED_FUNCTION_0_6() bottomAnchor];
      v18 = [v16 constraintEqualToAnchor:v17 constant:32.0];

      v19 = v18;
      v36 = v18;
      LODWORD(v20) = 1132068864;
      [v18 setPriority:v20];
      v44 = MEMORY[0x1E696ACD8];
      v56 = [OUTLINED_FUNCTION_6_1() centerXAnchor];
      v55 = [a1 centerXAnchor];
      v54 = [v56 constraintEqualToAnchor:v55];
      v57[0] = v54;
      v53 = [OUTLINED_FUNCTION_1_6() centerXAnchor];
      v52 = [a1 centerXAnchor];
      v51 = [v53 constraintEqualToAnchor:v52];
      v57[1] = v51;
      v50 = [OUTLINED_FUNCTION_0_6() centerXAnchor];
      v49 = [a1 centerXAnchor];
      v48 = [v50 constraintEqualToAnchor:v49];
      v57[2] = v48;
      v47 = [OUTLINED_FUNCTION_5_1() centerXAnchor];
      v46 = [a1 centerXAnchor];
      v45 = [v47 constraintEqualToAnchor:v46];
      v57[3] = v45;
      v43 = [OUTLINED_FUNCTION_6_1() topAnchor];
      v42 = [*(a1 + 464) bottomAnchor];
      v41 = [v43 constraintGreaterThanOrEqualToAnchor:v42 constant:13.0];
      v57[4] = v41;
      v39 = [OUTLINED_FUNCTION_1_6() topAnchor];
      v38 = [OUTLINED_FUNCTION_6_1() bottomAnchor];
      v37 = [v39 constraintEqualToAnchor:v38 constant:20.0];
      v57[5] = v37;
      v35 = [OUTLINED_FUNCTION_1_6() leadingAnchor];
      v34 = [a1 leadingAnchor];
      v33 = [v35 constraintGreaterThanOrEqualToAnchor:v34 constant:30.0];
      v57[6] = v33;
      v32 = [a1 trailingAnchor];
      v31 = [OUTLINED_FUNCTION_1_6() trailingAnchor];
      v21 = [v32 constraintGreaterThanOrEqualToAnchor:v31 constant:30.0];
      v57[7] = v21;
      v57[8] = v14;
      v22 = [OUTLINED_FUNCTION_0_6() widthAnchor];
      v23 = [v22 constraintLessThanOrEqualToConstant:300.0];
      v57[9] = v23;
      v24 = [OUTLINED_FUNCTION_0_6() topAnchor];
      v25 = [OUTLINED_FUNCTION_1_6() bottomAnchor];
      v26 = [v24 constraintEqualToAnchor:v25 constant:13.0];
      v57[10] = v26;
      v57[11] = v19;
      v27 = [a1 bottomAnchor];
      v28 = [OUTLINED_FUNCTION_5_1() bottomAnchor];
      v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28 constant:10.0];
      v57[12] = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:13];
      [v44 activateConstraints:v30];
    }
  }
}

- (void)_updateLargeButton
{
  if (a1)
  {
    if (*(a1 + 408) == 1)
    {
      [*(a1 + 480) setHidden:(*(a1 + 488) & 1) == 0];
      [*(a1 + 480) addTarget:a1 action:sel__openTapped_ forControlEvents:0x2000];
      v2 = *(a1 + 480);
      v3 = _WBSLocalizedString();
      v4 = v2;
    }

    else
    {
      [*(a1 + 480) setHidden:0];
      [*(a1 + 480) addTarget:a1 action:sel__dismissTapped_ forControlEvents:0x2000];
      v5 = *(a1 + 480);
      v3 = [*(a1 + 472) title];
      v4 = v5;
    }

    v6 = v3;
    [v4 setTitle:? forState:?];
  }
}

- (void)updateDismissButtonStyle:(int64_t)a3
{
  v4 = [SFDismissButton titleForDismissButtonStyle:a3];
  [(UIBarButtonItem *)self->_dismissButton setTitle:v4];
  [(SFSafariLaunchPlaceholderView *)self _updateLargeButton];
}

@end