@interface MKIncidentDetailCell
+ (id)lastUpdateDisplayString:(id)a3;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (MKIncidentDetailCell)initWithReuseIdentifier:(id)a3;
- (void)_contentSizeCategoryDidChange;
- (void)_setConstraints;
- (void)_updateConstraintValues;
- (void)_updateLastUpdatedLabel;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)infoCardThemeChanged;
- (void)setLastUpdated:(id)a3;
- (void)updateConstraints;
@end

@implementation MKIncidentDetailCell

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v6 = [MKMapService sharedService:a3];
  [v6 captureUserAction:7006 onTarget:628 eventValue:0];

  return 1;
}

- (void)_updateLastUpdatedLabel
{
  v3 = [(MKIncidentDetailCell *)self lastUpdated];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(MKIncidentDetailCell *)self lastUpdated];
    v6 = [v4 lastUpdateDisplayString:v5];
    [(_MKUILabel *)self->_lastUpdatedLabel setText:v6];
  }

  else
  {
    [(_MKUILabel *)self->_lastUpdatedLabel setText:0];
  }

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (void)setLastUpdated:(id)a3
{
  v5 = a3;
  if (![(NSDate *)self->_lastUpdated isEqualToDate:?])
  {
    objc_storeStrong(&self->_lastUpdated, a3);
    [(MKIncidentDetailCell *)self _updateLastUpdatedLabel];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MKIncidentDetailCell;
  [(MKIncidentDetailCell *)&v3 didMoveToWindow];
  [(MKIncidentDetailCell *)self _updateConstraintValues];
}

- (void)_contentSizeCategoryDidChange
{
  v3 = *MEMORY[0x1E69DDD28];
  v4 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0];
  [(UITextView *)self->_descriptionLabel setFont:v4];

  v5 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:v3 addingSymbolicTraits:0];
  [(_MKUILabel *)self->_lastUpdatedLabel setFont:v5];

  [(MKIncidentDetailCell *)self _updateConstraintValues];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MKIncidentDetailCell;
  [(MKIncidentDetailCell *)&v4 dealloc];
}

- (void)_updateConstraintValues
{
  v3 = [(UITextView *)self->_descriptionLabel font];
  [v3 _scaledValueForValue:31.0];
  v4 = [(MKIncidentDetailCell *)self contentView];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_titleFirstBaselineToTopConstraint setConstant:?];

  v6 = [(_MKUILabel *)self->_lastUpdatedLabel font];
  [v6 _scaledValueForValue:28.0];
  v5 = [(MKIncidentDetailCell *)self contentView];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_lastUpdatedFirstBaselineToDescriptionFirstBaselineConstraint setConstant:?];
}

- (void)updateConstraints
{
  v3 = [(_MKUILabel *)self->_lastUpdatedLabel text];
  if (v3)
  {
    v4 = v3;
    v5 = [(_MKUILabel *)self->_lastUpdatedLabel text];
    v6 = [v5 isEqualToString:&stru_1F15B23C0];

    if (!v6)
    {
      [(NSLayoutConstraint *)self->_descriptionLastBaselineToBottomConstraint setActive:0];
      if (!self->_lastUpdatedFirstBaselineToDescriptionFirstBaselineConstraint)
      {
        v14 = [(_MKUILabel *)self->_lastUpdatedLabel firstBaselineAnchor];
        v15 = [(UITextView *)self->_descriptionLabel lastBaselineAnchor];
        v16 = [v14 constraintEqualToAnchor:v15 constant:28.0];
        lastUpdatedFirstBaselineToDescriptionFirstBaselineConstraint = self->_lastUpdatedFirstBaselineToDescriptionFirstBaselineConstraint;
        self->_lastUpdatedFirstBaselineToDescriptionFirstBaselineConstraint = v16;

        [(MKIncidentDetailCell *)self _updateConstraintValues];
      }

      p_lastUpdatedLastBaselineToBottomConstraint = &self->_lastUpdatedLastBaselineToBottomConstraint;
      if (!self->_lastUpdatedLastBaselineToBottomConstraint)
      {
        v18 = [(MKIncidentDetailCell *)self contentView];
        v19 = [v18 bottomAnchor];
        v20 = [(_MKUILabel *)self->_lastUpdatedLabel lastBaselineAnchor];
        v21 = [v19 constraintEqualToAnchor:v20 constant:21.0];
        v22 = *p_lastUpdatedLastBaselineToBottomConstraint;
        *p_lastUpdatedLastBaselineToBottomConstraint = v21;
      }

      [(NSLayoutConstraint *)self->_lastUpdatedFirstBaselineToDescriptionFirstBaselineConstraint setActive:1];
      goto LABEL_10;
    }
  }

  [(NSLayoutConstraint *)self->_lastUpdatedFirstBaselineToDescriptionFirstBaselineConstraint setActive:0];
  [(NSLayoutConstraint *)self->_lastUpdatedLastBaselineToBottomConstraint setActive:0];
  p_lastUpdatedLastBaselineToBottomConstraint = &self->_descriptionLastBaselineToBottomConstraint;
  descriptionLastBaselineToBottomConstraint = self->_descriptionLastBaselineToBottomConstraint;
  if (!descriptionLastBaselineToBottomConstraint)
  {
    v9 = [(MKIncidentDetailCell *)self contentView];
    v10 = [v9 bottomAnchor];
    v11 = [(UITextView *)self->_descriptionLabel lastBaselineAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:21.0];
    v13 = *p_lastUpdatedLastBaselineToBottomConstraint;
    *p_lastUpdatedLastBaselineToBottomConstraint = v12;

LABEL_10:
    descriptionLastBaselineToBottomConstraint = *p_lastUpdatedLastBaselineToBottomConstraint;
  }

  [(NSLayoutConstraint *)descriptionLastBaselineToBottomConstraint setActive:1];
  v23.receiver = self;
  v23.super_class = MKIncidentDetailCell;
  [(MKIncidentDetailCell *)&v23 updateConstraints];
}

- (void)_setConstraints
{
  v50[12] = *MEMORY[0x1E69E9840];
  v3 = [(UIImageView *)self->_iconImageView leadingAnchor];
  v4 = [(MKIncidentDetailCell *)self contentView];
  v5 = [v4 leadingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:15.0];

  v7 = [(UITextView *)self->_descriptionLabel leadingAnchor];
  v8 = [(UIImageView *)self->_iconImageView trailingAnchor];
  v49 = [v7 constraintEqualToAnchor:v8 constant:10.0];

  v9 = [(MKIncidentDetailCell *)self contentView];
  v10 = [v9 trailingAnchor];
  v11 = [(UITextView *)self->_descriptionLabel trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:15.0];

  v48 = v6;
  LODWORD(v13) = 1148829696;
  [v6 setPriority:v13];
  LODWORD(v14) = 1148829696;
  [v49 setPriority:v14];
  v40 = v12;
  LODWORD(v15) = 1148829696;
  [v12 setPriority:v15];
  v16 = [(_MKUILabel *)self->_titleLabel firstBaselineAnchor];
  v17 = [(MKIncidentDetailCell *)self contentView];
  v18 = [v17 topAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:31.0];
  titleFirstBaselineToTopConstraint = self->_titleFirstBaselineToTopConstraint;
  self->_titleFirstBaselineToTopConstraint = v19;

  v21 = [(MKIncidentDetailCell *)self contentView];
  [v21 addConstraint:self->_titleFirstBaselineToTopConstraint];

  v37 = MEMORY[0x1E696ACD8];
  v50[0] = self->_titleFirstBaselineToTopConstraint;
  v47 = [(_MKUILabel *)self->_titleLabel leadingAnchor];
  v46 = [(UITextView *)self->_descriptionLabel leadingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v50[1] = v45;
  v44 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
  v43 = [(UITextView *)self->_descriptionLabel trailingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v50[2] = v42;
  v50[3] = v6;
  v41 = [(UIImageView *)self->_iconImageView centerYAnchor];
  v39 = [(_MKUILabel *)self->_titleLabel firstBaselineAnchor];
  v38 = [v41 constraintEqualToAnchor:v39];
  v50[4] = v38;
  v36 = [(UIImageView *)self->_iconImageView widthAnchor];
  v35 = [v36 constraintEqualToConstant:30.0];
  v50[5] = v35;
  v34 = [(UIImageView *)self->_iconImageView heightAnchor];
  v33 = [v34 constraintEqualToConstant:30.0];
  v50[6] = v33;
  v32 = [(UITextView *)self->_descriptionLabel topAnchor];
  v22 = [(_MKUILabel *)self->_titleLabel bottomAnchor];
  v23 = [v32 constraintEqualToAnchor:v22 constant:5.0];
  v50[7] = v23;
  v50[8] = v49;
  v50[9] = v12;
  v24 = [(_MKUILabel *)self->_lastUpdatedLabel leadingAnchor];
  v25 = [(UITextView *)self->_descriptionLabel leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v50[10] = v26;
  v27 = [(_MKUILabel *)self->_lastUpdatedLabel trailingAnchor];
  v28 = [(UITextView *)self->_descriptionLabel trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v50[11] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:12];
  [v37 activateConstraints:v30];

  v31 = [MEMORY[0x1E696AD88] defaultCenter];
  [v31 addObserver:self selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

  [(MKIncidentDetailCell *)self _updateConstraintValues];
}

- (void)infoCardThemeChanged
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MKIncidentDetailCell;
  [(UIView *)&v8 infoCardThemeChanged];
  v3 = [(UIView *)self mk_theme];
  v4 = [v3 textColor];
  [(UITextView *)self->_descriptionLabel setTextColor:v4];

  v9 = *MEMORY[0x1E69DB650];
  v5 = [(UIView *)self mk_theme];
  v6 = [v5 tintColor];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(UITextView *)self->_descriptionLabel setLinkTextAttributes:v7];
}

- (MKIncidentDetailCell)initWithReuseIdentifier:(id)a3
{
  v37[1] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = MKIncidentDetailCell;
  v3 = [(MKIncidentDetailCell *)&v35 initWithStyle:0 reuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(MKIncidentDetailCell *)v3 setAccessibilityIdentifier:@"MKIncidentDetailCell"];
    v5 = objc_alloc_init(_MKUILabel);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    [(_MKUILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKUILabel *)v4->_titleLabel setNumberOfLines:0];
    [(_MKUILabel *)v4->_titleLabel set_mapkit_themeColorProvider:&__block_literal_global_30347];
    [(_MKUILabel *)v4->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    v7 = [(MKIncidentDetailCell *)v4 contentView];
    [v7 addSubview:v4->_titleLabel];

    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v8;

    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconImageView setAccessibilityIdentifier:@"IconImageView"];
    v10 = [(MKIncidentDetailCell *)v4 contentView];
    [v10 addSubview:v4->_iconImageView];

    v11 = [MEMORY[0x1E69DC888] clearColor];
    v12 = [(MKIncidentDetailCell *)v4 contentView];
    [v12 setBackgroundColor:v11];

    v13 = [(MKIncidentDetailCell *)v4 contentView];
    [v13 setOpaque:0];

    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(MKIncidentDetailCell *)v4 setBackgroundColor:v14];

    [(MKIncidentDetailCell *)v4 setOpaque:0];
    [(MKIncidentDetailCell *)v4 setSelectionStyle:0];
    v15 = objc_alloc_init(MEMORY[0x1E69DD168]);
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v15;

    [(UITextView *)v4->_descriptionLabel setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v17 = [(UITextView *)v4->_descriptionLabel textContainer];
    [v17 setLineFragmentPadding:0.0];

    [(UITextView *)v4->_descriptionLabel setDelegate:v4];
    [(UITextView *)v4->_descriptionLabel setEditable:0];
    [(UITextView *)v4->_descriptionLabel setDataDetectorTypes:3];
    [(UITextView *)v4->_descriptionLabel setScrollEnabled:0];
    [(UITextView *)v4->_descriptionLabel setTextAlignment:4];
    v18 = [(UIView *)v4 mk_theme];
    v19 = [v18 textColor];
    [(UITextView *)v4->_descriptionLabel setTextColor:v19];

    v20 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v4->_descriptionLabel setBackgroundColor:v20];

    v36 = *MEMORY[0x1E69DB650];
    v21 = [(UIView *)v4 mk_theme];
    v22 = [v21 tintColor];
    v37[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    [(UITextView *)v4->_descriptionLabel setLinkTextAttributes:v23];

    [(UITextView *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v4->_descriptionLabel setAccessibilityIdentifier:@"DescriptionLabel"];
    v24 = [(MKIncidentDetailCell *)v4 contentView];
    [v24 addSubview:v4->_descriptionLabel];

    v25 = objc_alloc_init(_MKUILabel);
    lastUpdatedLabel = v4->_lastUpdatedLabel;
    v4->_lastUpdatedLabel = v25;

    [(_MKUILabel *)v4->_lastUpdatedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKUILabel *)v4->_lastUpdatedLabel setNumberOfLines:0];
    [(_MKUILabel *)v4->_lastUpdatedLabel set_mapkit_themeColorProvider:&__block_literal_global_16_30354];
    [(_MKUILabel *)v4->_lastUpdatedLabel setAccessibilityIdentifier:@"LastUpdatedLabel"];
    v27 = [(MKIncidentDetailCell *)v4 contentView];
    [v27 addSubview:v4->_lastUpdatedLabel];

    [(_MKUILabel *)v4->_lastUpdatedLabel setTextAlignment:4];
    v28 = [MEMORY[0x1E69DC888] clearColor];
    [(_MKUILabel *)v4->_lastUpdatedLabel setBackgroundColor:v28];

    [(_MKUILabel *)v4->_titleLabel setTextAlignment:4];
    v29 = [MEMORY[0x1E69DC888] clearColor];
    [(_MKUILabel *)v4->_titleLabel setBackgroundColor:v29];

    v30 = *MEMORY[0x1E69DDD80];
    v31 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0];
    [(UITextView *)v4->_descriptionLabel setFont:v31];

    v32 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:v30 addingSymbolicTraits:0];
    [(_MKUILabel *)v4->_lastUpdatedLabel setFont:v32];

    v33 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDDC8] addingSymbolicTraits:2];
    [(_MKUILabel *)v4->_titleLabel setFont:v33];

    [(MKIncidentDetailCell *)v4 _setConstraints];
  }

  return v4;
}

+ (id)lastUpdateDisplayString:(id)a3
{
  v3 = lastUpdateDisplayString__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&lastUpdateDisplayString__onceToken, &__block_literal_global_39);
  }

  v5 = MEMORY[0x1E696AB78];
  v6 = [lastUpdateDisplayString__formatter locale];
  v7 = [v5 dateFormatFromTemplate:@"YYYYMMddjma" options:0 locale:v6];
  [lastUpdateDisplayString__formatter setDateFormat:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = _MKLocalizedStringFromThisBundle(@"Placecard_TransitIncident_LastUpdated");
  v10 = [lastUpdateDisplayString__formatter stringFromDate:v4];

  v11 = [v8 stringWithFormat:v9, v10];

  return v11;
}

void __48__MKIncidentDetailCell_lastUpdateDisplayString___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = lastUpdateDisplayString__formatter;
  lastUpdateDisplayString__formatter = v0;

  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [lastUpdateDisplayString__formatter setLocale:v2];
}

@end