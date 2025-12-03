@interface MKIncidentDetailCell
+ (id)lastUpdateDisplayString:(id)string;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (MKIncidentDetailCell)initWithReuseIdentifier:(id)identifier;
- (void)_contentSizeCategoryDidChange;
- (void)_setConstraints;
- (void)_updateConstraintValues;
- (void)_updateLastUpdatedLabel;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)infoCardThemeChanged;
- (void)setLastUpdated:(id)updated;
- (void)updateConstraints;
@end

@implementation MKIncidentDetailCell

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v6 = [MKMapService sharedService:view];
  [v6 captureUserAction:7006 onTarget:628 eventValue:0];

  return 1;
}

- (void)_updateLastUpdatedLabel
{
  lastUpdated = [(MKIncidentDetailCell *)self lastUpdated];

  if (lastUpdated)
  {
    v4 = objc_opt_class();
    lastUpdated2 = [(MKIncidentDetailCell *)self lastUpdated];
    v6 = [v4 lastUpdateDisplayString:lastUpdated2];
    [(_MKUILabel *)self->_lastUpdatedLabel setText:v6];
  }

  else
  {
    [(_MKUILabel *)self->_lastUpdatedLabel setText:0];
  }

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (void)setLastUpdated:(id)updated
{
  updatedCopy = updated;
  if (![(NSDate *)self->_lastUpdated isEqualToDate:?])
  {
    objc_storeStrong(&self->_lastUpdated, updated);
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MKIncidentDetailCell;
  [(MKIncidentDetailCell *)&v4 dealloc];
}

- (void)_updateConstraintValues
{
  font = [(UITextView *)self->_descriptionLabel font];
  [font _scaledValueForValue:31.0];
  contentView = [(MKIncidentDetailCell *)self contentView];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_titleFirstBaselineToTopConstraint setConstant:?];

  font2 = [(_MKUILabel *)self->_lastUpdatedLabel font];
  [font2 _scaledValueForValue:28.0];
  contentView2 = [(MKIncidentDetailCell *)self contentView];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_lastUpdatedFirstBaselineToDescriptionFirstBaselineConstraint setConstant:?];
}

- (void)updateConstraints
{
  text = [(_MKUILabel *)self->_lastUpdatedLabel text];
  if (text)
  {
    v4 = text;
    text2 = [(_MKUILabel *)self->_lastUpdatedLabel text];
    v6 = [text2 isEqualToString:&stru_1F15B23C0];

    if (!v6)
    {
      [(NSLayoutConstraint *)self->_descriptionLastBaselineToBottomConstraint setActive:0];
      if (!self->_lastUpdatedFirstBaselineToDescriptionFirstBaselineConstraint)
      {
        firstBaselineAnchor = [(_MKUILabel *)self->_lastUpdatedLabel firstBaselineAnchor];
        lastBaselineAnchor = [(UITextView *)self->_descriptionLabel lastBaselineAnchor];
        v16 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:28.0];
        lastUpdatedFirstBaselineToDescriptionFirstBaselineConstraint = self->_lastUpdatedFirstBaselineToDescriptionFirstBaselineConstraint;
        self->_lastUpdatedFirstBaselineToDescriptionFirstBaselineConstraint = v16;

        [(MKIncidentDetailCell *)self _updateConstraintValues];
      }

      p_lastUpdatedLastBaselineToBottomConstraint = &self->_lastUpdatedLastBaselineToBottomConstraint;
      if (!self->_lastUpdatedLastBaselineToBottomConstraint)
      {
        contentView = [(MKIncidentDetailCell *)self contentView];
        bottomAnchor = [contentView bottomAnchor];
        lastBaselineAnchor2 = [(_MKUILabel *)self->_lastUpdatedLabel lastBaselineAnchor];
        v21 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:21.0];
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
    contentView2 = [(MKIncidentDetailCell *)self contentView];
    bottomAnchor2 = [contentView2 bottomAnchor];
    lastBaselineAnchor3 = [(UITextView *)self->_descriptionLabel lastBaselineAnchor];
    v12 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor3 constant:21.0];
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
  leadingAnchor = [(UIImageView *)self->_iconImageView leadingAnchor];
  contentView = [(MKIncidentDetailCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];

  leadingAnchor3 = [(UITextView *)self->_descriptionLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_iconImageView trailingAnchor];
  v49 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];

  contentView2 = [(MKIncidentDetailCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  trailingAnchor3 = [(UITextView *)self->_descriptionLabel trailingAnchor];
  v12 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:15.0];

  v48 = v6;
  LODWORD(v13) = 1148829696;
  [v6 setPriority:v13];
  LODWORD(v14) = 1148829696;
  [v49 setPriority:v14];
  v40 = v12;
  LODWORD(v15) = 1148829696;
  [v12 setPriority:v15];
  firstBaselineAnchor = [(_MKUILabel *)self->_titleLabel firstBaselineAnchor];
  contentView3 = [(MKIncidentDetailCell *)self contentView];
  topAnchor = [contentView3 topAnchor];
  v19 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:31.0];
  titleFirstBaselineToTopConstraint = self->_titleFirstBaselineToTopConstraint;
  self->_titleFirstBaselineToTopConstraint = v19;

  contentView4 = [(MKIncidentDetailCell *)self contentView];
  [contentView4 addConstraint:self->_titleFirstBaselineToTopConstraint];

  v37 = MEMORY[0x1E696ACD8];
  v50[0] = self->_titleFirstBaselineToTopConstraint;
  leadingAnchor4 = [(_MKUILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor5 = [(UITextView *)self->_descriptionLabel leadingAnchor];
  v45 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v50[1] = v45;
  trailingAnchor4 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor5 = [(UITextView *)self->_descriptionLabel trailingAnchor];
  v42 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v50[2] = v42;
  v50[3] = v6;
  centerYAnchor = [(UIImageView *)self->_iconImageView centerYAnchor];
  firstBaselineAnchor2 = [(_MKUILabel *)self->_titleLabel firstBaselineAnchor];
  v38 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v50[4] = v38;
  widthAnchor = [(UIImageView *)self->_iconImageView widthAnchor];
  v35 = [widthAnchor constraintEqualToConstant:30.0];
  v50[5] = v35;
  heightAnchor = [(UIImageView *)self->_iconImageView heightAnchor];
  v33 = [heightAnchor constraintEqualToConstant:30.0];
  v50[6] = v33;
  topAnchor2 = [(UITextView *)self->_descriptionLabel topAnchor];
  bottomAnchor = [(_MKUILabel *)self->_titleLabel bottomAnchor];
  v23 = [topAnchor2 constraintEqualToAnchor:bottomAnchor constant:5.0];
  v50[7] = v23;
  v50[8] = v49;
  v50[9] = v12;
  leadingAnchor6 = [(_MKUILabel *)self->_lastUpdatedLabel leadingAnchor];
  leadingAnchor7 = [(UITextView *)self->_descriptionLabel leadingAnchor];
  v26 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v50[10] = v26;
  trailingAnchor6 = [(_MKUILabel *)self->_lastUpdatedLabel trailingAnchor];
  trailingAnchor7 = [(UITextView *)self->_descriptionLabel trailingAnchor];
  v29 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v50[11] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:12];
  [v37 activateConstraints:v30];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

  [(MKIncidentDetailCell *)self _updateConstraintValues];
}

- (void)infoCardThemeChanged
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MKIncidentDetailCell;
  [(UIView *)&v8 infoCardThemeChanged];
  mk_theme = [(UIView *)self mk_theme];
  textColor = [mk_theme textColor];
  [(UITextView *)self->_descriptionLabel setTextColor:textColor];

  v9 = *MEMORY[0x1E69DB650];
  mk_theme2 = [(UIView *)self mk_theme];
  tintColor = [mk_theme2 tintColor];
  v10[0] = tintColor;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(UITextView *)self->_descriptionLabel setLinkTextAttributes:v7];
}

- (MKIncidentDetailCell)initWithReuseIdentifier:(id)identifier
{
  v37[1] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = MKIncidentDetailCell;
  v3 = [(MKIncidentDetailCell *)&v35 initWithStyle:0 reuseIdentifier:identifier];
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
    contentView = [(MKIncidentDetailCell *)v4 contentView];
    [contentView addSubview:v4->_titleLabel];

    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v8;

    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconImageView setAccessibilityIdentifier:@"IconImageView"];
    contentView2 = [(MKIncidentDetailCell *)v4 contentView];
    [contentView2 addSubview:v4->_iconImageView];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    contentView3 = [(MKIncidentDetailCell *)v4 contentView];
    [contentView3 setBackgroundColor:clearColor];

    contentView4 = [(MKIncidentDetailCell *)v4 contentView];
    [contentView4 setOpaque:0];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(MKIncidentDetailCell *)v4 setBackgroundColor:clearColor2];

    [(MKIncidentDetailCell *)v4 setOpaque:0];
    [(MKIncidentDetailCell *)v4 setSelectionStyle:0];
    v15 = objc_alloc_init(MEMORY[0x1E69DD168]);
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v15;

    [(UITextView *)v4->_descriptionLabel setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    textContainer = [(UITextView *)v4->_descriptionLabel textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)v4->_descriptionLabel setDelegate:v4];
    [(UITextView *)v4->_descriptionLabel setEditable:0];
    [(UITextView *)v4->_descriptionLabel setDataDetectorTypes:3];
    [(UITextView *)v4->_descriptionLabel setScrollEnabled:0];
    [(UITextView *)v4->_descriptionLabel setTextAlignment:4];
    mk_theme = [(UIView *)v4 mk_theme];
    textColor = [mk_theme textColor];
    [(UITextView *)v4->_descriptionLabel setTextColor:textColor];

    clearColor3 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v4->_descriptionLabel setBackgroundColor:clearColor3];

    v36 = *MEMORY[0x1E69DB650];
    mk_theme2 = [(UIView *)v4 mk_theme];
    tintColor = [mk_theme2 tintColor];
    v37[0] = tintColor;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    [(UITextView *)v4->_descriptionLabel setLinkTextAttributes:v23];

    [(UITextView *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v4->_descriptionLabel setAccessibilityIdentifier:@"DescriptionLabel"];
    contentView5 = [(MKIncidentDetailCell *)v4 contentView];
    [contentView5 addSubview:v4->_descriptionLabel];

    v25 = objc_alloc_init(_MKUILabel);
    lastUpdatedLabel = v4->_lastUpdatedLabel;
    v4->_lastUpdatedLabel = v25;

    [(_MKUILabel *)v4->_lastUpdatedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKUILabel *)v4->_lastUpdatedLabel setNumberOfLines:0];
    [(_MKUILabel *)v4->_lastUpdatedLabel set_mapkit_themeColorProvider:&__block_literal_global_16_30354];
    [(_MKUILabel *)v4->_lastUpdatedLabel setAccessibilityIdentifier:@"LastUpdatedLabel"];
    contentView6 = [(MKIncidentDetailCell *)v4 contentView];
    [contentView6 addSubview:v4->_lastUpdatedLabel];

    [(_MKUILabel *)v4->_lastUpdatedLabel setTextAlignment:4];
    clearColor4 = [MEMORY[0x1E69DC888] clearColor];
    [(_MKUILabel *)v4->_lastUpdatedLabel setBackgroundColor:clearColor4];

    [(_MKUILabel *)v4->_titleLabel setTextAlignment:4];
    clearColor5 = [MEMORY[0x1E69DC888] clearColor];
    [(_MKUILabel *)v4->_titleLabel setBackgroundColor:clearColor5];

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

+ (id)lastUpdateDisplayString:(id)string
{
  v3 = lastUpdateDisplayString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&lastUpdateDisplayString__onceToken, &__block_literal_global_39);
  }

  v5 = MEMORY[0x1E696AB78];
  locale = [lastUpdateDisplayString__formatter locale];
  v7 = [v5 dateFormatFromTemplate:@"YYYYMMddjma" options:0 locale:locale];
  [lastUpdateDisplayString__formatter setDateFormat:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = _MKLocalizedStringFromThisBundle(@"Placecard_TransitIncident_LastUpdated");
  v10 = [lastUpdateDisplayString__formatter stringFromDate:stringCopy];

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