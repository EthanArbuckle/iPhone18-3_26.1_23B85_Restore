@interface _SFTranslationTargetLocaleAlertActionContentViewController
- (_SFTranslationTargetLocaleAlertActionContentViewController)initWithLocaleIdentifier:(id)identifier;
- (void)_updateVerticalPadding;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation _SFTranslationTargetLocaleAlertActionContentViewController

- (_SFTranslationTargetLocaleAlertActionContentViewController)initWithLocaleIdentifier:(id)identifier
{
  v13[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = _SFTranslationTargetLocaleAlertActionContentViewController;
  v6 = [(_SFTranslationTargetLocaleAlertActionContentViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localeIdentifier, identifier);
    v13[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v9 = [(_SFTranslationTargetLocaleAlertActionContentViewController *)v7 registerForTraitChanges:v8 withTarget:v7 action:sel__updateVerticalPadding];

    v10 = v7;
  }

  return v7;
}

- (void)loadView
{
  v3 = objc_alloc_init(_SFTranslationTargetLocaleAlertActionContentView);
  [(_SFTranslationTargetLocaleAlertActionContentViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v65[4] = *MEMORY[0x1E69E9840];
  v63.receiver = self;
  v63.super_class = _SFTranslationTargetLocaleAlertActionContentViewController;
  [(_SFTranslationTargetLocaleAlertActionContentViewController *)&v63 viewDidLoad];
  [(_SFTranslationTargetLocaleAlertActionContentViewController *)self setPreferredContentSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  view = [(_SFTranslationTargetLocaleAlertActionContentViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x1E695DF58] safari_displayNameForLocaleIdentifier:self->_localeIdentifier inNativeLanguage:1];
  [v4 setText:v5];

  tintColor = [view tintColor];
  [v4 setTextColor:tintColor];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v4 setFont:v7];

  [v4 setTextAlignment:1];
  [v4 setAdjustsFontForContentSizeCategory:1];
  [view setTitleLabel:v4];
  v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v62 = view;
  [view addSubview:v8];
  [v8 addSubview:v4];
  if ([MEMORY[0x1E695DF58] safari_currentLocaleHasSameBaseLanguageAsLocaleIdentifier:self->_localeIdentifier])
  {
    bottomAnchor = [v4 bottomAnchor];
    bottomAnchor2 = [v8 bottomAnchor];
    bottomAnchor3 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [bottomAnchor3 setActive:1];
  }

  else
  {
    bottomAnchor = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [bottomAnchor setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [MEMORY[0x1E695DF58] safari_displayNameForLocaleIdentifier:self->_localeIdentifier inNativeLanguage:0];
    [bottomAnchor setText:v12];

    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [bottomAnchor setFont:v13];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [bottomAnchor setTextColor:secondaryLabelColor];

    [bottomAnchor setTextAlignment:1];
    [bottomAnchor setAdjustsFontForContentSizeCategory:1];
    [v8 addSubview:bottomAnchor];
    v54 = MEMORY[0x1E696ACD8];
    topAnchor = [bottomAnchor topAnchor];
    bottomAnchor3 = [v4 bottomAnchor];
    v60 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:0.4];
    v65[0] = v60;
    leadingAnchor = [bottomAnchor leadingAnchor];
    leadingAnchor2 = [v8 leadingAnchor];
    v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v65[1] = v50;
    trailingAnchor = [bottomAnchor trailingAnchor];
    trailingAnchor2 = [v8 trailingAnchor];
    [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v16 = v15 = v4;
    v65[2] = v16;
    v9BottomAnchor = [bottomAnchor bottomAnchor];
    bottomAnchor4 = [v8 bottomAnchor];
    v19 = [v9BottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor4];
    v65[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
    [v54 activateConstraints:v20];

    bottomAnchor2 = topAnchor;
    v4 = v15;
  }

  topAnchor2 = [v8 topAnchor];
  topAnchor3 = [v62 topAnchor];
  v23 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor3];
  topTextPaddingConstraint = self->_topTextPaddingConstraint;
  self->_topTextPaddingConstraint = v23;

  LODWORD(v25) = 1132068864;
  [(NSLayoutConstraint *)self->_topTextPaddingConstraint setPriority:v25];
  bottomAnchor5 = [v62 bottomAnchor];
  bottomAnchor6 = [v8 bottomAnchor];
  v28 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6];
  bottomTextPaddingConstraint = self->_bottomTextPaddingConstraint;
  self->_bottomTextPaddingConstraint = v28;

  LODWORD(v30) = 1132068864;
  [(NSLayoutConstraint *)self->_bottomTextPaddingConstraint setPriority:v30];
  [(_SFTranslationTargetLocaleAlertActionContentViewController *)self _updateVerticalPadding];
  v45 = MEMORY[0x1E696ACD8];
  leadingAnchor3 = [v8 leadingAnchor];
  leadingAnchor4 = [v62 leadingAnchor];
  v57 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v64[0] = v57;
  trailingAnchor3 = [v8 trailingAnchor];
  trailingAnchor4 = [v62 trailingAnchor];
  v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v64[1] = v51;
  centerYAnchor = [v8 centerYAnchor];
  centerYAnchor2 = [v62 centerYAnchor];
  v43 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v31 = self->_topTextPaddingConstraint;
  v64[2] = v43;
  v64[3] = v31;
  v64[4] = self->_bottomTextPaddingConstraint;
  topAnchor4 = [v4 topAnchor];
  topAnchor5 = [v8 topAnchor];
  v33 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5];
  v64[5] = v33;
  [v4 leadingAnchor];
  v34 = v4;
  v35 = v44 = v4;
  leadingAnchor5 = [v8 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:leadingAnchor5];
  v64[6] = v37;
  trailingAnchor5 = [v34 trailingAnchor];
  trailingAnchor6 = [v8 trailingAnchor];
  v40 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v64[7] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:8];
  [v45 activateConstraints:v41];
}

- (void)_updateVerticalPadding
{
  v3 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 scaledValueForValue:8.0];
  v5 = v4;

  [(NSLayoutConstraint *)self->_topTextPaddingConstraint setConstant:v5];
  bottomTextPaddingConstraint = self->_bottomTextPaddingConstraint;

  [(NSLayoutConstraint *)bottomTextPaddingConstraint setConstant:v5];
}

@end