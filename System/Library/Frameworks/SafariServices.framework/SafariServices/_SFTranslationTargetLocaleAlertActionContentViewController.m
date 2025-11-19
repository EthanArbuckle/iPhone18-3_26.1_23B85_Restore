@interface _SFTranslationTargetLocaleAlertActionContentViewController
- (_SFTranslationTargetLocaleAlertActionContentViewController)initWithLocaleIdentifier:(id)a3;
- (void)_updateVerticalPadding;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation _SFTranslationTargetLocaleAlertActionContentViewController

- (_SFTranslationTargetLocaleAlertActionContentViewController)initWithLocaleIdentifier:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _SFTranslationTargetLocaleAlertActionContentViewController;
  v6 = [(_SFTranslationTargetLocaleAlertActionContentViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localeIdentifier, a3);
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
  v3 = [(_SFTranslationTargetLocaleAlertActionContentViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x1E695DF58] safari_displayNameForLocaleIdentifier:self->_localeIdentifier inNativeLanguage:1];
  [v4 setText:v5];

  v6 = [v3 tintColor];
  [v4 setTextColor:v6];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v4 setFont:v7];

  [v4 setTextAlignment:1];
  [v4 setAdjustsFontForContentSizeCategory:1];
  [v3 setTitleLabel:v4];
  v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v62 = v3;
  [v3 addSubview:v8];
  [v8 addSubview:v4];
  if ([MEMORY[0x1E695DF58] safari_currentLocaleHasSameBaseLanguageAsLocaleIdentifier:self->_localeIdentifier])
  {
    v9 = [v4 bottomAnchor];
    v10 = [v8 bottomAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [MEMORY[0x1E695DF58] safari_displayNameForLocaleIdentifier:self->_localeIdentifier inNativeLanguage:0];
    [v9 setText:v12];

    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [v9 setFont:v13];

    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v9 setTextColor:v14];

    [v9 setTextAlignment:1];
    [v9 setAdjustsFontForContentSizeCategory:1];
    [v8 addSubview:v9];
    v54 = MEMORY[0x1E696ACD8];
    v52 = [v9 topAnchor];
    v11 = [v4 bottomAnchor];
    v60 = [v52 constraintEqualToSystemSpacingBelowAnchor:v11 multiplier:0.4];
    v65[0] = v60;
    v58 = [v9 leadingAnchor];
    v56 = [v8 leadingAnchor];
    v50 = [v58 constraintEqualToAnchor:v56];
    v65[1] = v50;
    v48 = [v9 trailingAnchor];
    v46 = [v8 trailingAnchor];
    [v48 constraintEqualToAnchor:v46];
    v16 = v15 = v4;
    v65[2] = v16;
    v17 = [v9 bottomAnchor];
    v18 = [v8 bottomAnchor];
    v19 = [v17 constraintLessThanOrEqualToAnchor:v18];
    v65[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
    [v54 activateConstraints:v20];

    v10 = v52;
    v4 = v15;
  }

  v21 = [v8 topAnchor];
  v22 = [v62 topAnchor];
  v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22];
  topTextPaddingConstraint = self->_topTextPaddingConstraint;
  self->_topTextPaddingConstraint = v23;

  LODWORD(v25) = 1132068864;
  [(NSLayoutConstraint *)self->_topTextPaddingConstraint setPriority:v25];
  v26 = [v62 bottomAnchor];
  v27 = [v8 bottomAnchor];
  v28 = [v26 constraintGreaterThanOrEqualToAnchor:v27];
  bottomTextPaddingConstraint = self->_bottomTextPaddingConstraint;
  self->_bottomTextPaddingConstraint = v28;

  LODWORD(v30) = 1132068864;
  [(NSLayoutConstraint *)self->_bottomTextPaddingConstraint setPriority:v30];
  [(_SFTranslationTargetLocaleAlertActionContentViewController *)self _updateVerticalPadding];
  v45 = MEMORY[0x1E696ACD8];
  v61 = [v8 leadingAnchor];
  v59 = [v62 leadingAnchor];
  v57 = [v61 constraintEqualToAnchor:v59];
  v64[0] = v57;
  v55 = [v8 trailingAnchor];
  v53 = [v62 trailingAnchor];
  v51 = [v55 constraintEqualToAnchor:v53];
  v64[1] = v51;
  v49 = [v8 centerYAnchor];
  v47 = [v62 centerYAnchor];
  v43 = [v49 constraintEqualToAnchor:v47];
  v31 = self->_topTextPaddingConstraint;
  v64[2] = v43;
  v64[3] = v31;
  v64[4] = self->_bottomTextPaddingConstraint;
  v42 = [v4 topAnchor];
  v32 = [v8 topAnchor];
  v33 = [v42 constraintGreaterThanOrEqualToAnchor:v32];
  v64[5] = v33;
  [v4 leadingAnchor];
  v34 = v4;
  v35 = v44 = v4;
  v36 = [v8 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  v64[6] = v37;
  v38 = [v34 trailingAnchor];
  v39 = [v8 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
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