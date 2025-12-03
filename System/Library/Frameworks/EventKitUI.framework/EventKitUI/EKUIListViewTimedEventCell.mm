@interface EKUIListViewTimedEventCell
+ (UIEdgeInsets)adjustedSeparatorInsets;
+ (id)pathForBackgroundForRect:(CGRect)rect allDay:(BOOL)day;
+ (void)initialize;
- (id)_attributedStringFromAttributedString:(id)string strikethrough:(BOOL)strikethrough;
- (id)_attributedStringFromString:(id)string strikethrough:(BOOL)strikethrough font:(id)font;
- (id)_createSpacer;
- (id)_subtextMonospacedFont;
- (void)_adjustNumberOfLines;
- (void)_commonInit;
- (void)_hideOrShowLocationIcon;
- (void)_initializeTravelLine;
- (void)_updateAppEntityAnnotationIfNeeded;
- (void)_updateColors;
- (void)_updateLocationViewsWithStrikethrough:(BOOL)strikethrough;
- (void)_updateTextAndIconColors;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)updateWithEvent:(id)event isMultiday:(BOOL)multiday occurrenceStartDate:(id)date dimmed:(BOOL)dimmed;
@end

@implementation EKUIListViewTimedEventCell

+ (void)initialize
{
  v2 = objc_opt_new();
  v3 = s_iconCache_0;
  s_iconCache_0 = v2;

  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"location.pin.point.of.interest"];
  [s_iconCache_0 setObject:v4 forKeyedSubscript:@"location.pin.point.of.interest"];

  v5 = WalkmanImage_Occurrences();
  [s_iconCache_0 setObject:v5 forKeyedSubscript:&unk_1F4F327E8];

  v6 = TransitImage_Occurrences();
  [s_iconCache_0 setObject:v6 forKeyedSubscript:&unk_1F4F32800];

  v7 = BicycleImage_Occurrences();
  [s_iconCache_0 setObject:v7 forKeyedSubscript:&unk_1F4F32818];

  v8 = CarImage_Occurrences();
  [s_iconCache_0 setObject:v8 forKeyedSubscript:&unk_1F4F32830];
}

- (void)_commonInit
{
  v112[3] = *MEMORY[0x1E69E9840];
  v108.receiver = self;
  v108.super_class = EKUIListViewTimedEventCell;
  [(EKUIListViewCell *)&v108 _commonInit];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__adjustNumberOfLines name:*MEMORY[0x1E69DDC48] object:0];

  v4 = [[EKUIListViewCellBackground alloc] initWithCornerRadius:8.0];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  [(EKUIListViewCellBackground *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  cellContentView = [(EKUIListViewCell *)self cellContentView];
  [cellContentView addSubview:self->_backgroundView];

  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  colorBarView = self->_colorBarView;
  self->_colorBarView = v7;

  [(UIView *)self->_colorBarView setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [(UIView *)self->_colorBarView layer];
  [layer setCornerRadius:1.75];

  cellContentView2 = [(EKUIListViewCell *)self cellContentView];
  [cellContentView2 addSubview:self->_colorBarView];

  v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleField = self->_titleField;
  self->_titleField = v11;

  [(UILabel *)self->_titleField setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1132134400;
  [(UILabel *)self->_titleField setContentCompressionResistancePriority:0 forAxis:v13];
  v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  topTimeField = self->_topTimeField;
  self->_topTimeField = v14;

  [(UILabel *)self->_topTimeField setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = objc_alloc(MEMORY[0x1E69DCF90]);
  v112[0] = self->_titleField;
  _createSpacer = [(EKUIListViewTimedEventCell *)self _createSpacer];
  v18 = self->_topTimeField;
  v112[1] = _createSpacer;
  v112[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:3];
  v20 = [v16 initWithArrangedSubviews:v19];
  titleLine = self->_titleLine;
  self->_titleLine = v20;

  [(UIStackView *)self->_titleLine setAlignment:2];
  [(EKUIListViewCell *)self carplayMode];
  [(UIStackView *)self->_titleLine setSpacing:2.0];
  v22 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  locationImage = self->_locationImage;
  self->_locationImage = v22;

  LODWORD(v24) = 1148846080;
  [(UIImageView *)self->_locationImage setContentCompressionResistancePriority:0 forAxis:v24];
  v25 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD80] scale:1];
  [(UIImageView *)self->_locationImage setPreferredSymbolConfiguration:v25];

  v26 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  locationField = self->_locationField;
  self->_locationField = v26;

  [(UILabel *)self->_locationField setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v28) = 1132134400;
  [(UILabel *)self->_locationField setContentCompressionResistancePriority:0 forAxis:v28];
  v29 = self->_locationField;
  _subtextFont = [(EKUIListViewTimedEventCell *)self _subtextFont];
  [(UILabel *)v29 setFont:_subtextFont];

  v31 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  bottomTimeField = self->_bottomTimeField;
  self->_bottomTimeField = v31;

  [(UILabel *)self->_bottomTimeField setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = objc_alloc(MEMORY[0x1E69DCF90]);
  v34 = self->_locationField;
  v111[0] = self->_locationImage;
  v111[1] = v34;
  _createSpacer2 = [(EKUIListViewTimedEventCell *)self _createSpacer];
  v36 = self->_bottomTimeField;
  v111[2] = _createSpacer2;
  v111[3] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:4];
  v38 = [v33 initWithArrangedSubviews:v37];
  locationLine = self->_locationLine;
  self->_locationLine = v38;

  [(UIStackView *)self->_locationLine setAlignment:2];
  [(EKUIListViewCell *)self carplayMode];
  [(UIStackView *)self->_locationLine setSpacing:2.0];
  v40 = objc_alloc(MEMORY[0x1E69DCF90]);
  v41 = self->_locationLine;
  v110[0] = self->_titleLine;
  v110[1] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:2];
  v43 = [v40 initWithArrangedSubviews:v42];
  textContentView = self->_textContentView;
  self->_textContentView = v43;

  [(UIStackView *)self->_textContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_textContentView setAxis:1];
  [(UIStackView *)self->_textContentView setSpacing:1.0];
  [(UIStackView *)self->_textContentView setAlignment:1];
  cellContentView3 = [(EKUIListViewCell *)self cellContentView];
  [cellContentView3 addSubview:self->_textContentView];

  v96 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(EKUIListViewCellBackground *)self->_backgroundView leadingAnchor];
  contentView = [(EKUIListViewTimedEventCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  carplayMode = [(EKUIListViewCell *)self carplayMode];
  v49 = 12.0;
  v50 = 12.0;
  if (carplayMode)
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v50 = v51;
  }

  v104 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v50];
  v109[0] = v104;
  trailingAnchor = [(EKUIListViewCellBackground *)self->_backgroundView trailingAnchor];
  contentView2 = [(EKUIListViewTimedEventCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v49 = v54;
  }

  v100 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v49];
  v109[1] = v100;
  topAnchor = [(EKUIListViewCellBackground *)self->_backgroundView topAnchor];
  contentView3 = [(EKUIListViewTimedEventCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  carplayMode2 = [(EKUIListViewCell *)self carplayMode];
  v58 = 4.0;
  v59 = 4.0;
  if (carplayMode2)
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
  }

  v101 = trailingAnchor2;
  v103 = trailingAnchor;
  v105 = leadingAnchor2;
  v107 = leadingAnchor;
  v99 = topAnchor;
  v97 = topAnchor2;
  v95 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v59];
  v109[2] = v95;
  bottomAnchor = [(EKUIListViewCellBackground *)self->_backgroundView bottomAnchor];
  contentView4 = [(EKUIListViewTimedEventCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v58 = v62;
  }

  v93 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v58];
  v109[3] = v93;
  leadingAnchor3 = [(UIView *)self->_colorBarView leadingAnchor];
  leadingAnchor4 = [(EKUIListViewCellBackground *)self->_backgroundView leadingAnchor];
  v90 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
  v109[4] = v90;
  widthAnchor = [(UIView *)self->_colorBarView widthAnchor];
  v88 = [widthAnchor constraintEqualToConstant:3.5];
  v109[5] = v88;
  topAnchor3 = [(UIView *)self->_colorBarView topAnchor];
  topAnchor4 = [(EKUIListViewCellBackground *)self->_backgroundView topAnchor];
  v85 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
  v109[6] = v85;
  bottomAnchor3 = [(UIView *)self->_colorBarView bottomAnchor];
  bottomAnchor4 = [(EKUIListViewCellBackground *)self->_backgroundView bottomAnchor];
  v81 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
  v109[7] = v81;
  leadingAnchor5 = [(UIStackView *)self->_textContentView leadingAnchor];
  v79 = leadingAnchor5;
  trailingAnchor3 = [(UIView *)self->_colorBarView trailingAnchor];
  v78 = trailingAnchor3;
  carplayMode3 = [(EKUIListViewCell *)self carplayMode];
  v66 = 6.0;
  if (carplayMode3)
  {
    v66 = 5.0;
  }

  v77 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:v66];
  v109[8] = v77;
  trailingAnchor4 = [(UIStackView *)self->_textContentView trailingAnchor];
  [(EKUIListViewCellBackground *)self->_backgroundView trailingAnchor];
  v68 = v83 = bottomAnchor2;
  v69 = [trailingAnchor4 constraintEqualToAnchor:v68 constant:-8.0];
  v109[9] = v69;
  topAnchor5 = [(UIStackView *)self->_textContentView topAnchor];
  topAnchor6 = [(EKUIListViewCellBackground *)self->_backgroundView topAnchor];
  v72 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:8.0];
  v109[10] = v72;
  [(UIStackView *)self->_textContentView bottomAnchor];
  v73 = v80 = bottomAnchor;
  bottomAnchor5 = [(EKUIListViewCellBackground *)self->_backgroundView bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:bottomAnchor5 constant:-8.0];
  v109[11] = v75;
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:12];
  [v96 activateConstraints:v76];
}

- (void)_initializeTravelLine
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  travelImage = self->_travelImage;
  self->_travelImage = v3;

  LODWORD(v5) = 1148846080;
  [(UIImageView *)self->_travelImage setContentCompressionResistancePriority:0 forAxis:v5];
  v6 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD80] scale:1];
  [(UIImageView *)self->_travelImage setPreferredSymbolConfiguration:v6];

  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  travelTextLabel = self->_travelTextLabel;
  self->_travelTextLabel = v7;

  [(UILabel *)self->_travelTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1132134400;
  [(UILabel *)self->_travelTextLabel setContentCompressionResistancePriority:0 forAxis:v9];
  v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  travelDepartureTimeLabel = self->_travelDepartureTimeLabel;
  self->_travelDepartureTimeLabel = v10;

  [(UILabel *)self->_travelDepartureTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = objc_alloc(MEMORY[0x1E69DCF90]);
  v13 = self->_travelTextLabel;
  v20[0] = self->_travelImage;
  v20[1] = v13;
  _createSpacer = [(EKUIListViewTimedEventCell *)self _createSpacer];
  v15 = self->_travelDepartureTimeLabel;
  v20[2] = _createSpacer;
  v20[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  v17 = [v12 initWithArrangedSubviews:v16];
  travelLine = self->_travelLine;
  self->_travelLine = v17;

  [(UIStackView *)self->_travelLine setAlignment:2];
  [(EKUIListViewCell *)self carplayMode];
  [(UIStackView *)self->_travelLine setSpacing:2.0];
  [(UIStackView *)self->_textContentView insertArrangedSubview:self->_travelLine atIndex:0];
  window = [(EKUIListViewTimedEventCell *)self window];

  if (window)
  {
    [(EKUIListViewTimedEventCell *)self _adjustNumberOfLines];
  }
}

- (void)_hideOrShowLocationIcon
{
  contentView = [(EKUIListViewTimedEventCell *)self contentView];
  traitCollection = [contentView traitCollection];
  if (EKUIUsesLargeTextLayout(traitCollection))
  {
    [(UIImageView *)self->_locationImage setHidden:1];
  }

  else
  {
    attributedText = [(UILabel *)self->_locationField attributedText];
    -[UIImageView setHidden:](self->_locationImage, "setHidden:", [attributedText length] == 0);
  }
}

- (void)_adjustNumberOfLines
{
  contentView = [(EKUIListViewTimedEventCell *)self contentView];
  traitCollection = [contentView traitCollection];
  v5 = EKUIUsesLargeTextLayout(traitCollection);

  [(UIImageView *)self->_travelImage setHidden:v5];
  [(EKUIListViewTimedEventCell *)self _hideOrShowLocationIcon];
  [(UILabel *)self->_travelTextLabel setNumberOfLines:v5 ^ 1];
  [(UILabel *)self->_travelDepartureTimeLabel setNumberOfLines:v5 ^ 1];
  [(UILabel *)self->_titleField setNumberOfLines:v5 ^ 1];
  [(UILabel *)self->_topTimeField setNumberOfLines:v5 ^ 1];
  [(UILabel *)self->_locationField setNumberOfLines:v5 ^ 1];
  bottomTimeField = self->_bottomTimeField;

  [(UILabel *)bottomTimeField setNumberOfLines:v5 ^ 1];
}

- (id)_createSpacer
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v2 setAccessibilityIdentifier:@"Spacer"];
  widthAnchor = [v2 widthAnchor];
  v4 = [widthAnchor constraintEqualToConstant:1.79769313e308];

  LODWORD(v5) = 1132068864;
  [v4 setPriority:v5];
  [v4 setActive:1];

  return v2;
}

- (void)_updateLocationViewsWithStrikethrough:(BOOL)strikethrough
{
  strikethroughCopy = strikethrough;
  v5 = MEMORY[0x1E6993408];
  event = [(EKUIListViewTimedEventCell *)self event];
  v13 = 0;
  v7 = [v5 locationStringForEvent:event options:288 incomplete:0 leadingImageName:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"location.pin.point.of.interest";
  }

  v10 = [(EKUIListViewTimedEventCell *)self _attributedStringFromAttributedString:v7 strikethrough:strikethroughCopy];
  [(UILabel *)self->_locationField setAttributedText:v10];

  [(EKUIListViewTimedEventCell *)self _hideOrShowLocationIcon];
  if (([(UIImageView *)self->_locationImage isHidden]& 1) == 0)
  {
    v11 = [s_iconCache_0 objectForKeyedSubscript:v9];
    if (!v11)
    {
      v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9];
      [s_iconCache_0 setObject:v11 forKeyedSubscript:v9];
    }

    image = [(UIImageView *)self->_locationImage image];

    if (image != v11)
    {
      [(UIImageView *)self->_locationImage setImage:v11];
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = EKUIListViewTimedEventCell;
  [(EKUIListViewTimedEventCell *)&v5 setHighlighted:highlighted animated:animated];
  [(EKUIListViewTimedEventCell *)self _updateAppEntityAnnotationIfNeeded];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewTimedEventCell *)self _updateColors];
  }
}

- (void)updateWithEvent:(id)event isMultiday:(BOOL)multiday occurrenceStartDate:(id)date dimmed:(BOOL)dimmed
{
  multidayCopy = multiday;
  eventCopy = event;
  dateCopy = date;
  [(EKUIListViewTimedEventCell *)self setEvent:eventCopy];
  [(EKUIListViewTimedEventCell *)self _updateAppEntityAnnotationIfNeeded];
  if (!eventCopy)
  {
    goto LABEL_23;
  }

  self->_dimmed = dimmed;
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewTimedEventCell *)self setSelectionStyle:0];
  }

  v11 = [eventCopy status] == 3;
  v12 = v11 | CUIKEventDisplaysAsDeclined();
  if ([(EKUIListViewCell *)self dragPreview])
  {
    v13 = 48;
  }

  else
  {
    v13 = 16;
  }

  v14 = CUIKCalendar();
  if (!multidayCopy)
  {
    v70 = dateCopy;
    v24 = MEMORY[0x1E69934A8];
    startDate = [eventCopy startDate];
    _subtextMonospacedFont = [(EKUIListViewTimedEventCell *)self _subtextMonospacedFont];
    v22 = [v24 timeAttributedTextWithDate:startDate calendar:v14 font:_subtextMonospacedFont options:v13];

    v27 = [(EKUIListViewTimedEventCell *)self _attributedStringFromAttributedString:v22 strikethrough:v12 & 1];
    [(UILabel *)self->_topTimeField setAttributedText:v27];

    event = [(EKUIListViewTimedEventCell *)self event];
    startDate2 = [event startDate];
    event2 = [(EKUIListViewTimedEventCell *)self event];
    endDate = [event2 endDate];
    v32 = [startDate2 isEqualToDate:endDate];

    if (v32)
    {
      [(UILabel *)self->_bottomTimeField setText:@" "];
    }

    else
    {
      v42 = MEMORY[0x1E69934A8];
      endDate2 = [eventCopy endDate];
      _subtextMonospacedFont2 = [(EKUIListViewTimedEventCell *)self _subtextMonospacedFont];
      v45 = [v42 timeAttributedTextWithDate:endDate2 calendar:v14 font:_subtextMonospacedFont2 options:v13];

      v46 = [(EKUIListViewTimedEventCell *)self _attributedStringFromAttributedString:v45 strikethrough:v12 & 1];
      [(UILabel *)self->_bottomTimeField setAttributedText:v46];

      v22 = v45;
    }

    dateCopy = v70;
    goto LABEL_18;
  }

  startDate3 = [eventCopy startDate];
  v16 = [v14 isDate:startDate3 inSameDayAsDate:dateCopy];

  endDate3 = [eventCopy endDate];
  v18 = [v14 isDate:endDate3 inSameDayAsDate:dateCopy];

  if (v16)
  {
    v19 = MEMORY[0x1E69934A8];
    startDate4 = [eventCopy startDate];
    _subtextMonospacedFont3 = [(EKUIListViewTimedEventCell *)self _subtextMonospacedFont];
    v22 = [v19 timeAttributedTextWithDate:startDate4 calendar:v14 font:_subtextMonospacedFont3 options:v13];

    _subtextFont2 = [(EKUIListViewTimedEventCell *)self _attributedStringFromAttributedString:v22 strikethrough:v12 & 1];
    [(UILabel *)self->_topTimeField setAttributedText:_subtextFont2];
  }

  else
  {
    v33 = EventKitUIBundle();
    v34 = v33;
    if (v18)
    {
      v22 = [v33 localizedStringForKey:@"Ends label" value:@"Ends" table:0];

      _subtextFont = [(EKUIListViewTimedEventCell *)self _subtextFont];
      v36 = [(EKUIListViewTimedEventCell *)self _attributedStringFromString:v22 strikethrough:v12 & 1 font:_subtextFont];
      [(UILabel *)self->_topTimeField setAttributedText:v36];

      v37 = MEMORY[0x1E69934A8];
      endDate4 = [eventCopy endDate];
      _subtextMonospacedFont4 = [(EKUIListViewTimedEventCell *)self _subtextMonospacedFont];
      v40 = [v37 timeAttributedTextWithDate:endDate4 calendar:v14 font:_subtextMonospacedFont4 options:v13];

      v41 = [(EKUIListViewTimedEventCell *)self _attributedStringFromAttributedString:v40 strikethrough:v12 & 1];
      [(UILabel *)self->_bottomTimeField setAttributedText:v41];

      goto LABEL_18;
    }

    v22 = [v33 localizedStringForKey:@"all-day label" value:@"all-day" table:0];

    _subtextFont2 = [(EKUIListViewTimedEventCell *)self _subtextFont];
    v47 = [(EKUIListViewTimedEventCell *)self _attributedStringFromString:v22 strikethrough:v12 & 1 font:_subtextFont2];
    [(UILabel *)self->_topTimeField setAttributedText:v47];
  }

  [(UILabel *)self->_bottomTimeField setText:@" "];
LABEL_18:

  [eventCopy travelTime];
  if (v48 == 0.0 || [(EKUIListViewCell *)self carplayMode]|| [(EKUIListViewCell *)self dragPreview])
  {
    [(UIStackView *)self->_travelLine setHidden:1];
  }

  else
  {
    travelLine = self->_travelLine;
    if (!travelLine)
    {
      [(EKUIListViewTimedEventCell *)self _initializeTravelLine];
      travelLine = self->_travelLine;
    }

    [(UIStackView *)travelLine setHidden:0, dateCopy];
    travelRoutingMode = [eventCopy travelRoutingMode];
    if ((travelRoutingMode + 1) < 2)
    {
      v54 = 1;
    }

    else
    {
      v54 = travelRoutingMode;
    }

    image = [(UIImageView *)self->_travelImage image];
    v56 = s_iconCache_0;
    v57 = [MEMORY[0x1E696AD98] numberWithInteger:v54];
    v58 = [v56 objectForKeyedSubscript:v57];

    if (image != v58)
    {
      v59 = s_iconCache_0;
      v60 = [MEMORY[0x1E696AD98] numberWithInteger:v54];
      v61 = [v59 objectForKeyedSubscript:v60];
      [(UIImageView *)self->_travelImage setImage:v61];
    }

    v62 = MEMORY[0x1E69934A8];
    startDateIncludingTravel = [eventCopy startDateIncludingTravel];
    _subtextMonospacedFont5 = [(EKUIListViewTimedEventCell *)self _subtextMonospacedFont];
    v65 = [v62 timeAttributedTextWithDate:startDateIncludingTravel calendar:v14 font:_subtextMonospacedFont5 options:16];

    v66 = [(EKUIListViewTimedEventCell *)self _attributedStringFromAttributedString:v65 strikethrough:v12 & 1];
    [(UILabel *)self->_travelDepartureTimeLabel setAttributedText:v66];

    [eventCopy travelTime];
    v67 = CUIKDisplayStringTravelTimeAndDuration();
    _subtextFont3 = [(EKUIListViewTimedEventCell *)self _subtextFont];
    v69 = [(EKUIListViewTimedEventCell *)self _attributedStringFromString:v67 strikethrough:v12 & 1 font:_subtextFont3];
    [(UILabel *)self->_travelTextLabel setAttributedText:v69];

    dateCopy = v71;
  }

  v49 = CUIKDisplayedTitleForEvent();
  _titleFont = [(EKUIListViewTimedEventCell *)self _titleFont];
  v51 = [(EKUIListViewTimedEventCell *)self _attributedStringFromString:v49 strikethrough:v12 & 1 font:_titleFont];
  [(UILabel *)self->_titleField setAttributedText:v51];

  [(EKUIListViewTimedEventCell *)self _updateLocationViewsWithStrikethrough:v12 & 1];
  [(EKUIListViewTimedEventCell *)self _updateColors];

LABEL_23:
}

- (id)_attributedStringFromString:(id)string strikethrough:(BOOL)strikethrough font:(id)font
{
  strikethroughCopy = strikethrough;
  fontCopy = font;
  v8 = MEMORY[0x1E696AD40];
  stringCopy = string;
  v10 = [[v8 alloc] initWithString:stringCopy];

  v11 = [v10 length];
  if (strikethroughCopy)
  {
    [v10 addAttribute:*MEMORY[0x1E69DB6B8] value:&unk_1F4F32830 range:{0, v11}];
  }

  if (fontCopy)
  {
    [v10 addAttribute:*MEMORY[0x1E69DB648] value:fontCopy range:{0, v11}];
  }

  v12 = [v10 copy];

  return v12;
}

- (id)_attributedStringFromAttributedString:(id)string strikethrough:(BOOL)strikethrough
{
  strikethroughCopy = strikethrough;
  v17[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v6 = [stringCopy mutableCopy];
  if (strikethroughCopy)
  {
    v16 = *MEMORY[0x1E69DB6B8];
    v17[0] = &unk_1F4F32830;
    v7 = MEMORY[0x1E695DF20];
    v8 = v17;
    v9 = &v16;
  }

  else
  {
    v14 = *MEMORY[0x1E69DB6B8];
    v15 = &unk_1F4F32848;
    v7 = MEMORY[0x1E695DF20];
    v8 = &v15;
    v9 = &v14;
  }

  v10 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];
  v11 = [stringCopy length];

  [v6 addAttributes:v10 range:{0, v11}];
  v12 = [v6 copy];

  return v12;
}

- (id)_subtextMonospacedFont
{
  v2 = *MEMORY[0x1E69DDD80];
  v3 = *MEMORY[0x1E69DDC28];
  traitCollection = [(EKUIListViewTimedEventCell *)self traitCollection];
  v5 = [EKUIConstrainedFontUtilities constrainedFontForTextStyle:v2 maximumContentSizeCategory:v3 traitCollection:traitCollection];

  v6 = MEMORY[0x1E69DB878];
  [v5 pointSize];
  v7 = [v6 monospacedDigitSystemFontOfSize:? weight:?];

  return v7;
}

- (void)_updateColors
{
  traitCollection = [(EKUIListViewTimedEventCell *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__EKUIListViewTimedEventCell__updateColors__block_invoke;
  v4[3] = &unk_1E843EC60;
  v4[4] = self;
  [traitCollection performAsCurrentTraitCollection:v4];
}

void __43__EKUIListViewTimedEventCell__updateColors__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) carplayMode] && objc_msgSend(*(a1 + 32), "isHighlighted"))
  {
    v22 = [MEMORY[0x1E69DC888] _carSystemFocusLabelColor];
  }

  else
  {
    v2 = [*(a1 + 32) event];
    [v2 status];

    v3 = [*(a1 + 32) event];
    CUIKEventDisplaysAsDeclined();

    v4 = [*(a1 + 32) event];
    v5 = [v4 calendar];
    v6 = [v5 displayColor];
    v7 = [*(a1 + 32) traitCollection];
    [v7 userInterfaceStyle];
    v8 = [*(a1 + 32) event];
    [v8 needsResponse];
    v9 = [*(a1 + 32) event];
    [v9 isReminderIntegrationEvent];
    [*(a1 + 32) isSelected];
    v22 = CUIKColorBarColor();
  }

  v10 = *(a1 + 32);
  if (*(v10 + 1216) == 1)
  {
    v11 = [v22 cuik_colorWithAlphaScaled:*MEMORY[0x1E6993300]];

    v10 = *(a1 + 32);
    v12 = v11;
  }

  else
  {
    v12 = v22;
  }

  v23 = v12;
  [*(v10 + 1200) setBackgroundColor:v12];
  [*(a1 + 32) _updateTextAndIconColors];
  v13 = *(a1 + 32);
  v14 = v13[151];
  v15 = [v13 event];
  v16 = [*(a1 + 32) isHighlighted];
  v17 = *(a1 + 32);
  v18 = v17[1216];
  v19 = [v17 carplayMode];
  v20 = [*(a1 + 32) dragPreview];
  v21 = [*(a1 + 32) traitCollection];
  [v14 updateBackgroundColorForEvent:v15 highlighted:v16 dimmed:v18 carplayMode:v19 dragPreview:v20 traitCollection:v21];
}

- (void)_updateTextAndIconColors
{
  if ([(EKUIListViewCell *)self carplayMode]&& [(EKUIListViewTimedEventCell *)self isHighlighted])
  {
    _carSystemFocusLabelColor = [MEMORY[0x1E69DC888] _carSystemFocusLabelColor];
    _carSystemFocusPrimaryColor = [MEMORY[0x1E69DC888] _carSystemFocusPrimaryColor];
  }

  else
  {
    event = [(EKUIListViewTimedEventCell *)self event];
    status = [event status];

    event2 = [(EKUIListViewTimedEventCell *)self event];
    v7 = CUIKEventDisplaysAsDeclined();

    if (status == 3 || v7)
    {
      _carSystemFocusLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      _carSystemFocusPrimaryColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }

    else
    {
      if ([(EKUIListViewCell *)self dragPreview])
      {
        event3 = [(EKUIListViewTimedEventCell *)self event];
        calendar = [event3 calendar];
        displayColor = [calendar displayColor];
        traitCollection = [(EKUIListViewTimedEventCell *)self traitCollection];
        [traitCollection userInterfaceStyle];
        _carSystemFocusLabelColor = CUIKTextColorForCalendarColorForStyle();

        event4 = [(EKUIListViewTimedEventCell *)self event];
        calendar2 = [event4 calendar];
        displayColor2 = [calendar2 displayColor];
        traitCollection2 = [(EKUIListViewTimedEventCell *)self traitCollection];
        [traitCollection2 userInterfaceStyle];
        v16 = CUIKSecondaryTextColorForCalendarColorForStyle();

        goto LABEL_11;
      }

      _carSystemFocusLabelColor = [MEMORY[0x1E69DC888] labelColor];
      _carSystemFocusPrimaryColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
  }

  v16 = _carSystemFocusPrimaryColor;
LABEL_11:
  if (self->_dimmed)
  {
    v17 = *MEMORY[0x1E6993300];
    v18 = [_carSystemFocusLabelColor cuik_colorWithAlphaScaled:*MEMORY[0x1E6993300]];

    v19 = [v16 cuik_colorWithAlphaScaled:v17];

    v16 = v19;
    _carSystemFocusLabelColor = v18;
  }

  traitCollection3 = [(EKUIListViewTimedEventCell *)self traitCollection];
  [traitCollection3 userInterfaceStyle];
  CUIKOccurrenceLeadingIconAlphaScale();
  v21 = [v16 cuik_colorWithAlphaScaled:?];

  [(UIImageView *)self->_travelImage setTintColor:v21];
  [(UILabel *)self->_travelTextLabel setTextColor:v16];
  [(UILabel *)self->_titleField setTextColor:_carSystemFocusLabelColor];
  [(UILabel *)self->_locationField setTextColor:v16];
  [(UIImageView *)self->_locationImage setTintColor:v21];
  [(UILabel *)self->_travelDepartureTimeLabel setTextColor:v16];
  [(UILabel *)self->_topTimeField setTextColor:_carSystemFocusLabelColor];
  [(UILabel *)self->_bottomTimeField setTextColor:v16];
}

- (void)_updateAppEntityAnnotationIfNeeded
{
  if (CalendarLinkLibraryCore())
  {
    event = [(EKUIListViewTimedEventCell *)self event];
    isNew = [event isNew];

    if ((isNew & 1) == 0)
    {
      event2 = [(EKUIListViewTimedEventCell *)self event];
      [(EKUIListViewTimedEventCell *)self Cal_annotateWithEvent:event2];

      isSelected = [(EKUIListViewTimedEventCell *)self isSelected];
      isHighlighted = [(EKUIListViewTimedEventCell *)self isHighlighted];

      [(EKUIListViewTimedEventCell *)self Cal_updateEntityAnnotationStateIsSelected:isSelected isHighlighted:isHighlighted isFocused:0 isDisabled:0 isEditing:0 isPrimary:0];
    }
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = EKUIListViewTimedEventCell;
  [(EKUIListViewTimedEventCell *)&v5 setSelected:selected animated:animated];
  [(EKUIListViewTimedEventCell *)self _updateAppEntityAnnotationIfNeeded];
}

+ (id)pathForBackgroundForRect:(CGRect)rect allDay:(BOOL)day
{
  v7 = CGRectInset(rect, 12.0, 4.0);
  v4 = MEMORY[0x1E69DC728];

  return [v4 bezierPathWithRoundedRect:v7.origin.x cornerRadius:{v7.origin.y, v7.size.width, v7.size.height, 8.0}];
}

+ (UIEdgeInsets)adjustedSeparatorInsets
{
  v2 = 0.0;
  v3 = 12.0;
  v4 = 0.0;
  v5 = 12.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end