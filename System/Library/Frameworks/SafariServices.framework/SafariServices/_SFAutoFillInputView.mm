@interface _SFAutoFillInputView
- (CGSize)_currentKeyboardSize;
- (_SFAutoFillInputView)initWithHostString:(id)string credentialSource:(id)source suggestion:(id)suggestion customTitle:(id)title;
- (_SFAutoFillInputView)initWithIntroductionViewController:(id)controller;
- (_SFAutoFillInputView)initWithStreamlinedAutoFillViewController:(id)controller suggestion:(id)suggestion;
- (_SFAutoFillInputView)initWithStreamlinedStrongPasswordViewController:(id)controller;
- (_SFAutoFillInputViewDelegate)delegate;
- (id)_initWithViewController:(id)controller;
- (void)_commonInit;
- (void)_fillCredential:(id)credential;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_replaceContentsOfViewWithViewController:(id)controller;
- (void)_showMorePasswords:(id)passwords;
- (void)_showStandardKeyboard:(id)keyboard;
- (void)_updateDynamicConstraints;
- (void)_updateFillCredentialButtonLabelMetrics;
- (void)_updateKeyboardHeight;
- (void)_updateKeyboardMetricsAndInterfaceOrientationIfNeeded;
- (void)replaceContentsOfViewWithStreamlinedStrongPasswordViewController:(id)controller;
- (void)replaceContentsOfViewWithStrongPasswordIntroductionViewController:(id)controller;
- (void)streamlinedStrongPasswordViewController:(id)controller shouldFillStrongPasswordWithFormat:(unint64_t)format;
- (void)streamlinedStrongPasswordViewControllerDeclinedStrongPassword:(id)password;
- (void)updateConstraints;
- (void)updateSuggestionIfNecessary:(id)necessary;
@end

@implementation _SFAutoFillInputView

- (_SFAutoFillInputView)initWithHostString:(id)string credentialSource:(id)source suggestion:(id)suggestion customTitle:(id)title
{
  v103[17] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  sourceCopy = source;
  suggestionCopy = suggestion;
  titleCopy = title;
  v102.receiver = self;
  v102.super_class = _SFAutoFillInputView;
  v14 = *MEMORY[0x1E695F058];
  v15 = *(MEMORY[0x1E695F058] + 8);
  v16 = *(MEMORY[0x1E695F058] + 16);
  v17 = *(MEMORY[0x1E695F058] + 24);
  v18 = [(UIInputView *)&v102 initWithFrame:1 inputViewStyle:*MEMORY[0x1E695F058], v15, v16, v17];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_suggestion, suggestion);
    v20 = [stringCopy copy];
    hostString = v19->_hostString;
    v19->_hostString = v20;

    v22 = [sourceCopy copy];
    credentialSource = v19->_credentialSource;
    v19->_credentialSource = v22;

    v24 = [titleCopy length];
    v99 = titleCopy;
    if (v24)
    {
      v25 = [titleCopy copy];
    }

    else
    {
      v25 = 0;
    }

    v100 = sourceCopy;
    v101 = stringCopy;
    objc_storeStrong(&v19->_customTitle, v25);
    if (v24)
    {
    }

    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    dynamicConstraints = v19->_dynamicConstraints;
    v19->_dynamicConstraints = v26;

    v28 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v14, v15, v16, v17}];
    explanationLabel = v19->_explanationLabel;
    v19->_explanationLabel = v28;

    [(UILabel *)v19->_explanationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v19->_explanationLabel setTextAlignment:1];
    [(UILabel *)v19->_explanationLabel setNumberOfLines:0];
    v30 = _SFAutoFillInputViewLabelFont();
    [(UILabel *)v19->_explanationLabel setFont:v30];

    [(UILabel *)v19->_explanationLabel setAdjustsFontForContentSizeCategory:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v19->_explanationLabel setTextColor:secondaryLabelColor];

    v32 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_25];
    v33 = UIKeyboardGetKeyboardKeyImage();
    v98 = v32;
    v97 = [v33 imageWithTintColor:v32];

    v34 = [MEMORY[0x1E69DCAB8] sf_imageNamed:@"PasswordAutoFillKey"];
    v96 = [v34 imageWithTintColor:v32];

    v35 = objc_alloc_init(MEMORY[0x1E69DC738]);
    keyboardButton = v19->_keyboardButton;
    v19->_keyboardButton = v35;

    [(UIButton *)v19->_keyboardButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v19->_keyboardButton setImage:v97 forState:0];
    [(UIButton *)v19->_keyboardButton setImageEdgeInsets:13.0, 24.0, 25.0, 8.0];
    [(_SFAutoFillInputView *)v19 addSubview:v19->_keyboardButton];
    v37 = objc_alloc_init(MEMORY[0x1E69DC738]);
    otherPasswordsButton = v19->_otherPasswordsButton;
    v19->_otherPasswordsButton = v37;

    [(UIButton *)v19->_otherPasswordsButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v19->_otherPasswordsButton setImageEdgeInsets:13.0, 8.0, 25.0, 24.0];
    [(UIButton *)v19->_otherPasswordsButton setImage:v96 forState:0];
    [(_SFAutoFillInputView *)v19 addSubview:v19->_otherPasswordsButton];
    v39 = [_SFAutoFillInputViewButton buttonWithType:1];
    fillCredentialButton = v19->_fillCredentialButton;
    v19->_fillCredentialButton = v39;

    [(UIButton *)v19->_fillCredentialButton setAccessibilityIdentifier:@"CredentialUsernameButton"];
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [filledButtonConfiguration setButtonSize:3];
    [(UIButton *)v19->_fillCredentialButton setConfiguration:filledButtonConfiguration];
    [(UIButton *)v19->_fillCredentialButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v41) = 1148846080;
    [(UIButton *)v19->_fillCredentialButton setContentHuggingPriority:0 forAxis:v41];
    [(_SFAutoFillInputView *)v19 addSubview:v19->_fillCredentialButton];
    [(_SFAutoFillInputView *)v19 updateSuggestionIfNecessary:suggestionCopy];
    [(_SFAutoFillInputView *)v19 addSubview:v19->_explanationLabel];
    [(UIInputView *)v19 setAllowsSelfSizing:1];
    [(_SFAutoFillInputView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [(UIButton *)v19->_fillCredentialButton widthAnchor];
    widthAnchor2 = [(_SFAutoFillInputView *)v19 widthAnchor];
    v44 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

    LODWORD(v45) = 1144750080;
    v84 = v44;
    [v44 setPriority:v45];
    v77 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v19->_explanationLabel topAnchor];
    topAnchor2 = [(_SFAutoFillInputView *)v19 topAnchor];
    v92 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    v103[0] = v92;
    bottomAnchor = [(UILabel *)v19->_explanationLabel bottomAnchor];
    topAnchor3 = [(UIButton *)v19->_fillCredentialButton topAnchor];
    v89 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-20.0];
    v103[1] = v89;
    centerXAnchor = [(UILabel *)v19->_explanationLabel centerXAnchor];
    centerXAnchor2 = [(_SFAutoFillInputView *)v19 centerXAnchor];
    v86 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v103[2] = v86;
    leadingAnchor = [(UILabel *)v19->_explanationLabel leadingAnchor];
    leadingAnchor2 = [(_SFAutoFillInputView *)v19 leadingAnchor];
    v82 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:16.0];
    v103[3] = v82;
    trailingAnchor = [(UILabel *)v19->_explanationLabel trailingAnchor];
    trailingAnchor2 = [(_SFAutoFillInputView *)v19 trailingAnchor];
    v79 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:-16.0];
    v103[4] = v79;
    widthAnchor3 = [(UILabel *)v19->_explanationLabel widthAnchor];
    v76 = [widthAnchor3 constraintLessThanOrEqualToConstant:420.0];
    v103[5] = v76;
    bottomAnchor2 = [(UIButton *)v19->_fillCredentialButton bottomAnchor];
    bottomAnchor3 = [(_SFAutoFillInputView *)v19 bottomAnchor];
    v73 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-78.0];
    v103[6] = v73;
    centerXAnchor3 = [(UIButton *)v19->_fillCredentialButton centerXAnchor];
    centerXAnchor4 = [(_SFAutoFillInputView *)v19 centerXAnchor];
    v70 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v103[7] = v70;
    v103[8] = v44;
    bottomAnchor4 = [(UIButton *)v19->_keyboardButton bottomAnchor];
    bottomAnchor5 = [(_SFAutoFillInputView *)v19 bottomAnchor];
    v67 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v103[9] = v67;
    leftAnchor = [(UIButton *)v19->_keyboardButton leftAnchor];
    leftAnchor2 = [(_SFAutoFillInputView *)v19 leftAnchor];
    v64 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v103[10] = v64;
    widthAnchor4 = [(UIButton *)v19->_keyboardButton widthAnchor];
    v62 = [widthAnchor4 constraintEqualToConstant:60.0];
    v103[11] = v62;
    heightAnchor = [(UIButton *)v19->_keyboardButton heightAnchor];
    v60 = [heightAnchor constraintEqualToConstant:66.0];
    v103[12] = v60;
    bottomAnchor6 = [(UIButton *)v19->_otherPasswordsButton bottomAnchor];
    bottomAnchor7 = [(_SFAutoFillInputView *)v19 bottomAnchor];
    v57 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v103[13] = v57;
    rightAnchor = [(UIButton *)v19->_otherPasswordsButton rightAnchor];
    rightAnchor2 = [(_SFAutoFillInputView *)v19 rightAnchor];
    v48 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v103[14] = v48;
    widthAnchor5 = [(UIButton *)v19->_otherPasswordsButton widthAnchor];
    v50 = [widthAnchor5 constraintEqualToConstant:60.0];
    v103[15] = v50;
    heightAnchor2 = [(UIButton *)v19->_otherPasswordsButton heightAnchor];
    v52 = [heightAnchor2 constraintEqualToConstant:66.0];
    v103[16] = v52;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:17];
    v54 = v53 = suggestionCopy;
    [v77 activateConstraints:v54];

    suggestionCopy = v53;
    [(_SFAutoFillInputView *)v19 _commonInit];
    [(UIButton *)v19->_fillCredentialButton addTarget:v19 action:sel__fillCredential_ forControlEvents:0x2000];
    [(UIButton *)v19->_keyboardButton addTarget:v19 action:sel__showStandardKeyboard_ forControlEvents:0x2000];
    [(UIButton *)v19->_otherPasswordsButton addTarget:v19 action:sel__showMorePasswords_ forControlEvents:0x2000];
    v55 = v19;

    sourceCopy = v100;
    stringCopy = v101;
    titleCopy = v99;
  }

  return v19;
}

- (_SFAutoFillInputView)initWithIntroductionViewController:(id)controller
{
  controllerCopy = controller;
  v6 = [(_SFAutoFillInputView *)self _initWithViewController:controllerCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 93, controller);
    v8 = v7;
  }

  return v7;
}

- (_SFAutoFillInputView)initWithStreamlinedAutoFillViewController:(id)controller suggestion:(id)suggestion
{
  controllerCopy = controller;
  suggestionCopy = suggestion;
  v9 = [(_SFAutoFillInputView *)self _initWithViewController:controllerCopy];
  if (v9)
  {
    [controllerCopy setDelegate:v9];
    objc_storeStrong(&v9->_streamlinedAutoFillViewController, controller);
    objc_storeStrong(&v9->_suggestion, suggestion);
    v10 = v9;
  }

  return v9;
}

- (_SFAutoFillInputView)initWithStreamlinedStrongPasswordViewController:(id)controller
{
  controllerCopy = controller;
  v6 = [(_SFAutoFillInputView *)self _initWithViewController:controllerCopy];
  if (v6)
  {
    [controllerCopy setDelegate:v6];
    objc_storeStrong(&v6->_streamlinedStrongPasswordViewController, controller);
    v7 = v6;
  }

  return v6;
}

- (id)_initWithViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(UIInputView *)self initWithFrame:1 inputViewStyle:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(_SFAutoFillInputView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIInputView *)v6 setAllowsSelfSizing:1];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    dynamicConstraints = v6->_dynamicConstraints;
    v6->_dynamicConstraints = v7;

    view = [controllerCopy view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SFAutoFillInputView *)v6 addSubview:view];
    heightAnchor = [(_SFAutoFillInputView *)v6 heightAnchor];
    v11 = [heightAnchor constraintLessThanOrEqualToConstant:100.0];
    heightConstraint = v6->_heightConstraint;
    v6->_heightConstraint = v11;

    v13 = MEMORY[0x1E696ACD8];
    v14 = [MEMORY[0x1E696ACD8] safari_constraintsMatchingFrameOfView:view withFrameOfView:v6];
    v15 = [v14 arrayByAddingObject:v6->_heightConstraint];
    [v13 activateConstraints:v15];

    [(_SFAutoFillInputView *)v6 _commonInit];
    v16 = v6;
  }

  return v6;
}

- (void)_commonInit
{
  v5[1] = *MEMORY[0x1E69E9840];
  [(_SFAutoFillInputView *)self _updateDynamicConstraints];
  [(_SFAutoFillInputView *)self _updateKeyboardHeight];
  [(_SFAutoFillInputView *)self setAccessibilityIdentifier:@"SFAutoFillInputView"];
  v5[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v4 = [(_SFAutoFillInputView *)self registerForTraitChanges:v3 withTarget:self action:sel__preferredContentSizeCategoryDidChange];
}

- (void)replaceContentsOfViewWithStreamlinedStrongPasswordViewController:(id)controller
{
  controllerCopy = controller;
  [(_SFAutoFillInputView *)self _replaceContentsOfViewWithViewController:controllerCopy];
  streamlinedStrongPasswordViewController = self->_streamlinedStrongPasswordViewController;
  self->_streamlinedStrongPasswordViewController = controllerCopy;
  v6 = controllerCopy;

  [(PMSafariStreamlinedStrongPasswordViewController *)v6 setDelegate:self];
}

- (void)replaceContentsOfViewWithStrongPasswordIntroductionViewController:(id)controller
{
  controllerCopy = controller;
  [(_SFAutoFillInputView *)self _replaceContentsOfViewWithViewController:controllerCopy];
  strongPasswordIntroductionViewController = self->_strongPasswordIntroductionViewController;
  self->_strongPasswordIntroductionViewController = controllerCopy;
  v6 = controllerCopy;

  view = [(PMSafariAutoFillStrongPasswordIntroductionViewController *)v6 view];
  [view setNeedsUpdateConstraints];

  view2 = [(PMSafariAutoFillStrongPasswordIntroductionViewController *)v6 view];

  [view2 layoutIfNeeded];
}

- (void)_replaceContentsOfViewWithViewController:(id)controller
{
  streamlinedAutoFillViewController = self->_streamlinedAutoFillViewController;
  controllerCopy = controller;
  view = [(PMSafariStreamlinedAutoFillViewController *)streamlinedAutoFillViewController view];
  [view removeFromSuperview];

  view2 = [(PMSafariAutoFillStrongPasswordIntroductionViewController *)self->_strongPasswordIntroductionViewController view];
  [view2 removeFromSuperview];

  view3 = [(PMSafariStreamlinedStrongPasswordViewController *)self->_streamlinedStrongPasswordViewController view];
  [view3 removeFromSuperview];

  v9 = self->_streamlinedAutoFillViewController;
  self->_streamlinedAutoFillViewController = 0;

  strongPasswordIntroductionViewController = self->_strongPasswordIntroductionViewController;
  self->_strongPasswordIntroductionViewController = 0;

  streamlinedStrongPasswordViewController = self->_streamlinedStrongPasswordViewController;
  self->_streamlinedStrongPasswordViewController = 0;

  view4 = [controllerCopy view];

  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_SFAutoFillInputView *)self addSubview:view4];
  v12 = MEMORY[0x1E696ACD8];
  v13 = [MEMORY[0x1E696ACD8] safari_constraintsMatchingFrameOfView:view4 withFrameOfView:self];
  [v12 activateConstraints:v13];

  [(_SFAutoFillInputView *)self setNeedsUpdateConstraints];
  [(_SFAutoFillInputView *)self setNeedsLayout];
}

- (void)updateConstraints
{
  [(_SFAutoFillInputView *)self _updateDynamicConstraints];
  [(_SFAutoFillInputView *)self _updateKeyboardHeight];
  v3.receiver = self;
  v3.super_class = _SFAutoFillInputView;
  [(_SFAutoFillInputView *)&v3 updateConstraints];
}

- (void)updateSuggestionIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  savedAccountMatch = [(_SFTextSuggestion *)self->_suggestion savedAccountMatch];
  if (!savedAccountMatch || (v6 = savedAccountMatch, [necessaryCopy savedAccountMatch], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "savedAccount"), v8 = objc_claimAutoreleasedReturnValue(), -[_SFTextSuggestion savedAccountMatch](self->_suggestion, "savedAccountMatch"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "savedAccount"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqual:", v10), v10, v9, v8, v7, v6, v11))
  {
    credentialIdentity = [(_SFTextSuggestion *)self->_suggestion credentialIdentity];
    if ([credentialIdentity type] == 2)
    {
      credentialIdentity2 = [(_SFTextSuggestion *)self->_suggestion credentialIdentity];
      if ([credentialIdentity2 isExternal])
      {
        savedAccountMatch2 = [necessaryCopy savedAccountMatch];

        if (savedAccountMatch2)
        {
          goto LABEL_24;
        }

LABEL_9:
        objc_storeStrong(&self->_suggestion, necessary);
        savedAccountMatch3 = [necessaryCopy savedAccountMatch];
        autoFillPasskey = [savedAccountMatch3 autoFillPasskey];

        if (autoFillPasskey)
        {
          v17 = MEMORY[0x1E696AEC0];
          v18 = _WBSLocalizedString();
          v19 = [v17 localizedStringWithFormat:v18, self->_hostString];

          if ([(NSString *)self->_customTitle length])
          {
            v20 = MEMORY[0x1E696AEC0];
LABEL_21:
            v29 = _WBSLocalizedString();
            v30 = [v20 localizedStringWithFormat:v29, self->_hostString, self->_customTitle];

            v19 = v30;
LABEL_22:

            goto LABEL_23;
          }

          goto LABEL_23;
        }

        if (!self->_credentialSource || ([necessaryCopy credentialIdentity], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
        {
          v27 = MEMORY[0x1E696AEC0];
          v28 = _WBSLocalizedString();
          v19 = [v27 localizedStringWithFormat:v28, self->_hostString];

          if ([(NSString *)self->_customTitle length])
          {
            v20 = MEMORY[0x1E696AEC0];
            goto LABEL_21;
          }

LABEL_23:
          [(UILabel *)self->_explanationLabel setText:v19];
          v31 = MEMORY[0x1E696AEC0];
          v32 = _WBSLocalizedString();
          displayText = [necessaryCopy displayText];
          v34 = [v31 localizedStringWithFormat:v32, displayText];

          configuration = [(UIButton *)self->_fillCredentialButton configuration];
          [configuration setTitle:v34];
          [(UIButton *)self->_fillCredentialButton setConfiguration:configuration];

          goto LABEL_24;
        }

        [MEMORY[0x1E69E30A8] keychainSyncEnabled];
        credentialIdentity3 = [necessaryCopy credentialIdentity];
        owningExtensionState = [credentialIdentity3 owningExtensionState];

        credentialIdentity4 = [necessaryCopy credentialIdentity];
        type = [credentialIdentity4 type];

        switch(type)
        {
          case 4:
            v26 = MEMORY[0x1E696AEC0];
            if (!owningExtensionState)
            {
              goto LABEL_32;
            }

            break;
          case 2:
            v26 = MEMORY[0x1E696AEC0];
            if (!owningExtensionState)
            {
              goto LABEL_32;
            }

            break;
          case 1:
            v26 = MEMORY[0x1E696AEC0];
            if (owningExtensionState)
            {
              break;
            }

LABEL_32:
            v29 = _WBSLocalizedString();
            [v26 localizedStringWithFormat:v29, self->_hostString, v36];
            goto LABEL_33;
          default:
            v19 = 0;
            goto LABEL_23;
        }

        v29 = _WBSLocalizedString();
        [v26 localizedStringWithFormat:v29, self->_hostString, self->_credentialSource];
        v19 = LABEL_33:;
        goto LABEL_22;
      }
    }

    goto LABEL_9;
  }

LABEL_24:
}

- (void)_updateDynamicConstraints
{
  v26[2] = *MEMORY[0x1E69E9840];
  v3 = 0x1E696A000uLL;
  if ([(NSMutableArray *)self->_dynamicConstraints count])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_dynamicConstraints];
    [(NSMutableArray *)self->_dynamicConstraints removeAllObjects];
  }

  interfaceOrientation = [*MEMORY[0x1E69DDA98] interfaceOrientation];
  if (self->_fillCredentialButton)
  {
    v5 = interfaceOrientation;
    traitCollection = [(_SFAutoFillInputView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      dynamicConstraints = self->_dynamicConstraints;
      heightAnchor = [(UIButton *)self->_fillCredentialButton heightAnchor];
      v11 = [heightAnchor constraintGreaterThanOrEqualToConstant:50.0];
    }

    else
    {
      IsPad = _SFDeviceIsPad();
      dynamicConstraints = self->_dynamicConstraints;
      heightAnchor2 = [(UIButton *)self->_fillCredentialButton heightAnchor];
      heightAnchor = heightAnchor2;
      if ((IsPad & 1) != 0 || (v5 - 1) <= 1)
      {
        v14 = &_SFAutoFillInputViewDefaultButonHeight;
      }

      else
      {
        v14 = &_SFAutoFillInputViewDefaultButonHeightLandscapePhone;
      }

      v11 = [heightAnchor2 constraintEqualToConstant:*v14];
    }

    v15 = v11;
    [(NSMutableArray *)dynamicConstraints addObject:v11];

    v16 = _SFDeviceIsPad();
    v17 = self->_dynamicConstraints;
    fillCredentialButton = self->_fillCredentialButton;
    if (v16)
    {
      leadingAnchor = [(UIButton *)fillCredentialButton leadingAnchor];
      leadingAnchor2 = [(_SFAutoFillInputView *)self leadingAnchor];
      v21 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:16.0];
      v26[0] = v21;
      trailingAnchor = [(UIButton *)self->_fillCredentialButton trailingAnchor];
      trailingAnchor2 = [(_SFAutoFillInputView *)self trailingAnchor];
      v24 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-16.0];
      v26[1] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      [(NSMutableArray *)v17 addObjectsFromArray:v25];

      v3 = 0x1E696A000;
    }

    else
    {
      leadingAnchor = [(UIButton *)fillCredentialButton widthAnchor];
      leadingAnchor2 = [leadingAnchor constraintLessThanOrEqualToConstant:343.0];
      [(NSMutableArray *)v17 addObject:leadingAnchor2];
    }
  }

  [*(v3 + 3288) activateConstraints:self->_dynamicConstraints];
}

- (void)_updateFillCredentialButtonLabelMetrics
{
  traitCollection = [(_SFAutoFillInputView *)self traitCollection];
  titleLabel = [(UIButton *)self->_fillCredentialButton titleLabel];
  [titleLabel setTextAlignment:1];
  configuration = [(UIButton *)self->_fillCredentialButton configuration];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v6 = 1;
  }

  else
  {
    v6 = 5;
  }

  [configuration setTitleLineBreakMode:v6];

  [(UIButton *)self->_fillCredentialButton setConfiguration:configuration];
}

- (void)_preferredContentSizeCategoryDidChange
{
  [(_SFAutoFillInputView *)self _updateFillCredentialButtonLabelMetrics];

  [(_SFAutoFillInputView *)self setNeedsUpdateConstraints];
}

- (void)_fillCredential:(id)credential
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained autoFillTextSuggestion:self->_suggestion];
}

- (void)_showMorePasswords:(id)passwords
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained autoFillInputViewDidSelectMorePasswords:self];
  }
}

- (void)_showStandardKeyboard:(id)keyboard
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained autoFillInputViewDidSelectUseKeyboard:self];
  }
}

- (void)_updateKeyboardHeight
{
  [(_SFAutoFillInputView *)self _updateKeyboardMetricsAndInterfaceOrientationIfNeeded];
  [(_SFAutoFillInputView *)self _currentKeyboardSize];
  heightConstraint = self->_heightConstraint;

  [(NSLayoutConstraint *)heightConstraint setConstant:v3 * 1.5];
}

- (CGSize)_currentKeyboardSize
{
  if (([*MEMORY[0x1E69DDA98] interfaceOrientation] - 3) >= 2)
  {
    v3 = &OBJC_IVAR____SFAutoFillInputView__portraitKeyboardSize;
  }

  else
  {
    v3 = &OBJC_IVAR____SFAutoFillInputView__landscapeKeyboardSize;
  }

  v4 = (self + *v3);
  v5 = *v4;
  v6 = v4[1];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_updateKeyboardMetricsAndInterfaceOrientationIfNeeded
{
  interfaceOrientation = [*MEMORY[0x1E69DDA98] interfaceOrientation];
  if (interfaceOrientation != self->_currentInterfaceOrientation)
  {
    self->_currentInterfaceOrientation = interfaceOrientation;
    v4 = [_SFKeyboardGeometry keyboardGeometryForInterfaceOrientation:1];
    [v4 sizeWithBar];
    self->_portraitKeyboardSize.width = v5;
    self->_portraitKeyboardSize.height = v6;

    v10 = [_SFKeyboardGeometry keyboardGeometryForInterfaceOrientation:4];
    p_landscapeKeyboardSize = &self->_landscapeKeyboardSize;
    if (_SFDeviceIsPad())
    {
      [v10 sizeWithoutBar];
    }

    else
    {
      [v10 sizeWithBar];
    }

    p_landscapeKeyboardSize->width = v8;
    p_landscapeKeyboardSize->height = v9;
  }
}

- (void)streamlinedStrongPasswordViewController:(id)controller shouldFillStrongPasswordWithFormat:(unint64_t)format
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained autoFillStrongPasswordWithFormat:format];
}

- (void)streamlinedStrongPasswordViewControllerDeclinedStrongPassword:(id)password
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained autoFillInputViewShouldClose:self];
}

- (_SFAutoFillInputViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end