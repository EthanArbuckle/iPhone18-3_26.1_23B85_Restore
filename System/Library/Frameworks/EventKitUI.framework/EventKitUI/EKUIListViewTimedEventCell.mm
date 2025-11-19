@interface EKUIListViewTimedEventCell
+ (UIEdgeInsets)adjustedSeparatorInsets;
+ (id)pathForBackgroundForRect:(CGRect)a3 allDay:(BOOL)a4;
+ (void)initialize;
- (id)_attributedStringFromAttributedString:(id)a3 strikethrough:(BOOL)a4;
- (id)_attributedStringFromString:(id)a3 strikethrough:(BOOL)a4 font:(id)a5;
- (id)_createSpacer;
- (id)_subtextMonospacedFont;
- (void)_adjustNumberOfLines;
- (void)_commonInit;
- (void)_hideOrShowLocationIcon;
- (void)_initializeTravelLine;
- (void)_updateAppEntityAnnotationIfNeeded;
- (void)_updateColors;
- (void)_updateLocationViewsWithStrikethrough:(BOOL)a3;
- (void)_updateTextAndIconColors;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)updateWithEvent:(id)a3 isMultiday:(BOOL)a4 occurrenceStartDate:(id)a5 dimmed:(BOOL)a6;
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__adjustNumberOfLines name:*MEMORY[0x1E69DDC48] object:0];

  v4 = [[EKUIListViewCellBackground alloc] initWithCornerRadius:8.0];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  [(EKUIListViewCellBackground *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(EKUIListViewCell *)self cellContentView];
  [v6 addSubview:self->_backgroundView];

  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  colorBarView = self->_colorBarView;
  self->_colorBarView = v7;

  [(UIView *)self->_colorBarView setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(UIView *)self->_colorBarView layer];
  [v9 setCornerRadius:1.75];

  v10 = [(EKUIListViewCell *)self cellContentView];
  [v10 addSubview:self->_colorBarView];

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
  v17 = [(EKUIListViewTimedEventCell *)self _createSpacer];
  v18 = self->_topTimeField;
  v112[1] = v17;
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
  v30 = [(EKUIListViewTimedEventCell *)self _subtextFont];
  [(UILabel *)v29 setFont:v30];

  v31 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  bottomTimeField = self->_bottomTimeField;
  self->_bottomTimeField = v31;

  [(UILabel *)self->_bottomTimeField setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = objc_alloc(MEMORY[0x1E69DCF90]);
  v34 = self->_locationField;
  v111[0] = self->_locationImage;
  v111[1] = v34;
  v35 = [(EKUIListViewTimedEventCell *)self _createSpacer];
  v36 = self->_bottomTimeField;
  v111[2] = v35;
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
  v45 = [(EKUIListViewCell *)self cellContentView];
  [v45 addSubview:self->_textContentView];

  v96 = MEMORY[0x1E696ACD8];
  v46 = [(EKUIListViewCellBackground *)self->_backgroundView leadingAnchor];
  v106 = [(EKUIListViewTimedEventCell *)self contentView];
  v47 = [v106 leadingAnchor];
  v48 = [(EKUIListViewCell *)self carplayMode];
  v49 = 12.0;
  v50 = 12.0;
  if (v48)
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v50 = v51;
  }

  v104 = [v46 constraintEqualToAnchor:v47 constant:v50];
  v109[0] = v104;
  v52 = [(EKUIListViewCellBackground *)self->_backgroundView trailingAnchor];
  v102 = [(EKUIListViewTimedEventCell *)self contentView];
  v53 = [v102 trailingAnchor];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v49 = v54;
  }

  v100 = [v52 constraintEqualToAnchor:v53 constant:-v49];
  v109[1] = v100;
  v55 = [(EKUIListViewCellBackground *)self->_backgroundView topAnchor];
  v98 = [(EKUIListViewTimedEventCell *)self contentView];
  v56 = [v98 topAnchor];
  v57 = [(EKUIListViewCell *)self carplayMode];
  v58 = 4.0;
  v59 = 4.0;
  if (v57)
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
  }

  v101 = v53;
  v103 = v52;
  v105 = v47;
  v107 = v46;
  v99 = v55;
  v97 = v56;
  v95 = [v55 constraintEqualToAnchor:v56 constant:v59];
  v109[2] = v95;
  v60 = [(EKUIListViewCellBackground *)self->_backgroundView bottomAnchor];
  v94 = [(EKUIListViewTimedEventCell *)self contentView];
  v61 = [v94 bottomAnchor];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v58 = v62;
  }

  v93 = [v60 constraintEqualToAnchor:v61 constant:-v58];
  v109[3] = v93;
  v92 = [(UIView *)self->_colorBarView leadingAnchor];
  v91 = [(EKUIListViewCellBackground *)self->_backgroundView leadingAnchor];
  v90 = [v92 constraintEqualToAnchor:v91 constant:8.0];
  v109[4] = v90;
  v89 = [(UIView *)self->_colorBarView widthAnchor];
  v88 = [v89 constraintEqualToConstant:3.5];
  v109[5] = v88;
  v87 = [(UIView *)self->_colorBarView topAnchor];
  v86 = [(EKUIListViewCellBackground *)self->_backgroundView topAnchor];
  v85 = [v87 constraintEqualToAnchor:v86 constant:8.0];
  v109[6] = v85;
  v84 = [(UIView *)self->_colorBarView bottomAnchor];
  v82 = [(EKUIListViewCellBackground *)self->_backgroundView bottomAnchor];
  v81 = [v84 constraintEqualToAnchor:v82 constant:-8.0];
  v109[7] = v81;
  v63 = [(UIStackView *)self->_textContentView leadingAnchor];
  v79 = v63;
  v64 = [(UIView *)self->_colorBarView trailingAnchor];
  v78 = v64;
  v65 = [(EKUIListViewCell *)self carplayMode];
  v66 = 6.0;
  if (v65)
  {
    v66 = 5.0;
  }

  v77 = [v63 constraintEqualToAnchor:v64 constant:v66];
  v109[8] = v77;
  v67 = [(UIStackView *)self->_textContentView trailingAnchor];
  [(EKUIListViewCellBackground *)self->_backgroundView trailingAnchor];
  v68 = v83 = v61;
  v69 = [v67 constraintEqualToAnchor:v68 constant:-8.0];
  v109[9] = v69;
  v70 = [(UIStackView *)self->_textContentView topAnchor];
  v71 = [(EKUIListViewCellBackground *)self->_backgroundView topAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:8.0];
  v109[10] = v72;
  [(UIStackView *)self->_textContentView bottomAnchor];
  v73 = v80 = v60;
  v74 = [(EKUIListViewCellBackground *)self->_backgroundView bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-8.0];
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
  v14 = [(EKUIListViewTimedEventCell *)self _createSpacer];
  v15 = self->_travelDepartureTimeLabel;
  v20[2] = v14;
  v20[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  v17 = [v12 initWithArrangedSubviews:v16];
  travelLine = self->_travelLine;
  self->_travelLine = v17;

  [(UIStackView *)self->_travelLine setAlignment:2];
  [(EKUIListViewCell *)self carplayMode];
  [(UIStackView *)self->_travelLine setSpacing:2.0];
  [(UIStackView *)self->_textContentView insertArrangedSubview:self->_travelLine atIndex:0];
  v19 = [(EKUIListViewTimedEventCell *)self window];

  if (v19)
  {
    [(EKUIListViewTimedEventCell *)self _adjustNumberOfLines];
  }
}

- (void)_hideOrShowLocationIcon
{
  v5 = [(EKUIListViewTimedEventCell *)self contentView];
  v3 = [v5 traitCollection];
  if (EKUIUsesLargeTextLayout(v3))
  {
    [(UIImageView *)self->_locationImage setHidden:1];
  }

  else
  {
    v4 = [(UILabel *)self->_locationField attributedText];
    -[UIImageView setHidden:](self->_locationImage, "setHidden:", [v4 length] == 0);
  }
}

- (void)_adjustNumberOfLines
{
  v3 = [(EKUIListViewTimedEventCell *)self contentView];
  v4 = [v3 traitCollection];
  v5 = EKUIUsesLargeTextLayout(v4);

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
  v3 = [v2 widthAnchor];
  v4 = [v3 constraintEqualToConstant:1.79769313e308];

  LODWORD(v5) = 1132068864;
  [v4 setPriority:v5];
  [v4 setActive:1];

  return v2;
}

- (void)_updateLocationViewsWithStrikethrough:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x1E6993408];
  v6 = [(EKUIListViewTimedEventCell *)self event];
  v13 = 0;
  v7 = [v5 locationStringForEvent:v6 options:288 incomplete:0 leadingImageName:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"location.pin.point.of.interest";
  }

  v10 = [(EKUIListViewTimedEventCell *)self _attributedStringFromAttributedString:v7 strikethrough:v3];
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

    v12 = [(UIImageView *)self->_locationImage image];

    if (v12 != v11)
    {
      [(UIImageView *)self->_locationImage setImage:v11];
    }
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = EKUIListViewTimedEventCell;
  [(EKUIListViewTimedEventCell *)&v5 setHighlighted:a3 animated:a4];
  [(EKUIListViewTimedEventCell *)self _updateAppEntityAnnotationIfNeeded];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewTimedEventCell *)self _updateColors];
  }
}

- (void)updateWithEvent:(id)a3 isMultiday:(BOOL)a4 occurrenceStartDate:(id)a5 dimmed:(BOOL)a6
{
  v8 = a4;
  v72 = a3;
  v10 = a5;
  [(EKUIListViewTimedEventCell *)self setEvent:v72];
  [(EKUIListViewTimedEventCell *)self _updateAppEntityAnnotationIfNeeded];
  if (!v72)
  {
    goto LABEL_23;
  }

  self->_dimmed = a6;
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewTimedEventCell *)self setSelectionStyle:0];
  }

  v11 = [v72 status] == 3;
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
  if (!v8)
  {
    v70 = v10;
    v24 = MEMORY[0x1E69934A8];
    v25 = [v72 startDate];
    v26 = [(EKUIListViewTimedEventCell *)self _subtextMonospacedFont];
    v22 = [v24 timeAttributedTextWithDate:v25 calendar:v14 font:v26 options:v13];

    v27 = [(EKUIListViewTimedEventCell *)self _attributedStringFromAttributedString:v22 strikethrough:v12 & 1];
    [(UILabel *)self->_topTimeField setAttributedText:v27];

    v28 = [(EKUIListViewTimedEventCell *)self event];
    v29 = [v28 startDate];
    v30 = [(EKUIListViewTimedEventCell *)self event];
    v31 = [v30 endDate];
    v32 = [v29 isEqualToDate:v31];

    if (v32)
    {
      [(UILabel *)self->_bottomTimeField setText:@" "];
    }

    else
    {
      v42 = MEMORY[0x1E69934A8];
      v43 = [v72 endDate];
      v44 = [(EKUIListViewTimedEventCell *)self _subtextMonospacedFont];
      v45 = [v42 timeAttributedTextWithDate:v43 calendar:v14 font:v44 options:v13];

      v46 = [(EKUIListViewTimedEventCell *)self _attributedStringFromAttributedString:v45 strikethrough:v12 & 1];
      [(UILabel *)self->_bottomTimeField setAttributedText:v46];

      v22 = v45;
    }

    v10 = v70;
    goto LABEL_18;
  }

  v15 = [v72 startDate];
  v16 = [v14 isDate:v15 inSameDayAsDate:v10];

  v17 = [v72 endDate];
  v18 = [v14 isDate:v17 inSameDayAsDate:v10];

  if (v16)
  {
    v19 = MEMORY[0x1E69934A8];
    v20 = [v72 startDate];
    v21 = [(EKUIListViewTimedEventCell *)self _subtextMonospacedFont];
    v22 = [v19 timeAttributedTextWithDate:v20 calendar:v14 font:v21 options:v13];

    v23 = [(EKUIListViewTimedEventCell *)self _attributedStringFromAttributedString:v22 strikethrough:v12 & 1];
    [(UILabel *)self->_topTimeField setAttributedText:v23];
  }

  else
  {
    v33 = EventKitUIBundle();
    v34 = v33;
    if (v18)
    {
      v22 = [v33 localizedStringForKey:@"Ends label" value:@"Ends" table:0];

      v35 = [(EKUIListViewTimedEventCell *)self _subtextFont];
      v36 = [(EKUIListViewTimedEventCell *)self _attributedStringFromString:v22 strikethrough:v12 & 1 font:v35];
      [(UILabel *)self->_topTimeField setAttributedText:v36];

      v37 = MEMORY[0x1E69934A8];
      v38 = [v72 endDate];
      v39 = [(EKUIListViewTimedEventCell *)self _subtextMonospacedFont];
      v40 = [v37 timeAttributedTextWithDate:v38 calendar:v14 font:v39 options:v13];

      v41 = [(EKUIListViewTimedEventCell *)self _attributedStringFromAttributedString:v40 strikethrough:v12 & 1];
      [(UILabel *)self->_bottomTimeField setAttributedText:v41];

      goto LABEL_18;
    }

    v22 = [v33 localizedStringForKey:@"all-day label" value:@"all-day" table:0];

    v23 = [(EKUIListViewTimedEventCell *)self _subtextFont];
    v47 = [(EKUIListViewTimedEventCell *)self _attributedStringFromString:v22 strikethrough:v12 & 1 font:v23];
    [(UILabel *)self->_topTimeField setAttributedText:v47];
  }

  [(UILabel *)self->_bottomTimeField setText:@" "];
LABEL_18:

  [v72 travelTime];
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

    [(UIStackView *)travelLine setHidden:0, v10];
    v53 = [v72 travelRoutingMode];
    if ((v53 + 1) < 2)
    {
      v54 = 1;
    }

    else
    {
      v54 = v53;
    }

    v55 = [(UIImageView *)self->_travelImage image];
    v56 = s_iconCache_0;
    v57 = [MEMORY[0x1E696AD98] numberWithInteger:v54];
    v58 = [v56 objectForKeyedSubscript:v57];

    if (v55 != v58)
    {
      v59 = s_iconCache_0;
      v60 = [MEMORY[0x1E696AD98] numberWithInteger:v54];
      v61 = [v59 objectForKeyedSubscript:v60];
      [(UIImageView *)self->_travelImage setImage:v61];
    }

    v62 = MEMORY[0x1E69934A8];
    v63 = [v72 startDateIncludingTravel];
    v64 = [(EKUIListViewTimedEventCell *)self _subtextMonospacedFont];
    v65 = [v62 timeAttributedTextWithDate:v63 calendar:v14 font:v64 options:16];

    v66 = [(EKUIListViewTimedEventCell *)self _attributedStringFromAttributedString:v65 strikethrough:v12 & 1];
    [(UILabel *)self->_travelDepartureTimeLabel setAttributedText:v66];

    [v72 travelTime];
    v67 = CUIKDisplayStringTravelTimeAndDuration();
    v68 = [(EKUIListViewTimedEventCell *)self _subtextFont];
    v69 = [(EKUIListViewTimedEventCell *)self _attributedStringFromString:v67 strikethrough:v12 & 1 font:v68];
    [(UILabel *)self->_travelTextLabel setAttributedText:v69];

    v10 = v71;
  }

  v49 = CUIKDisplayedTitleForEvent();
  v50 = [(EKUIListViewTimedEventCell *)self _titleFont];
  v51 = [(EKUIListViewTimedEventCell *)self _attributedStringFromString:v49 strikethrough:v12 & 1 font:v50];
  [(UILabel *)self->_titleField setAttributedText:v51];

  [(EKUIListViewTimedEventCell *)self _updateLocationViewsWithStrikethrough:v12 & 1];
  [(EKUIListViewTimedEventCell *)self _updateColors];

LABEL_23:
}

- (id)_attributedStringFromString:(id)a3 strikethrough:(BOOL)a4 font:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = MEMORY[0x1E696AD40];
  v9 = a3;
  v10 = [[v8 alloc] initWithString:v9];

  v11 = [v10 length];
  if (v5)
  {
    [v10 addAttribute:*MEMORY[0x1E69DB6B8] value:&unk_1F4F32830 range:{0, v11}];
  }

  if (v7)
  {
    [v10 addAttribute:*MEMORY[0x1E69DB648] value:v7 range:{0, v11}];
  }

  v12 = [v10 copy];

  return v12;
}

- (id)_attributedStringFromAttributedString:(id)a3 strikethrough:(BOOL)a4
{
  v4 = a4;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 mutableCopy];
  if (v4)
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
  v11 = [v5 length];

  [v6 addAttributes:v10 range:{0, v11}];
  v12 = [v6 copy];

  return v12;
}

- (id)_subtextMonospacedFont
{
  v2 = *MEMORY[0x1E69DDD80];
  v3 = *MEMORY[0x1E69DDC28];
  v4 = [(EKUIListViewTimedEventCell *)self traitCollection];
  v5 = [EKUIConstrainedFontUtilities constrainedFontForTextStyle:v2 maximumContentSizeCategory:v3 traitCollection:v4];

  v6 = MEMORY[0x1E69DB878];
  [v5 pointSize];
  v7 = [v6 monospacedDigitSystemFontOfSize:? weight:?];

  return v7;
}

- (void)_updateColors
{
  v3 = [(EKUIListViewTimedEventCell *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__EKUIListViewTimedEventCell__updateColors__block_invoke;
  v4[3] = &unk_1E843EC60;
  v4[4] = self;
  [v3 performAsCurrentTraitCollection:v4];
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
    v22 = [MEMORY[0x1E69DC888] _carSystemFocusLabelColor];
    v3 = [MEMORY[0x1E69DC888] _carSystemFocusPrimaryColor];
  }

  else
  {
    v4 = [(EKUIListViewTimedEventCell *)self event];
    v5 = [v4 status];

    v6 = [(EKUIListViewTimedEventCell *)self event];
    v7 = CUIKEventDisplaysAsDeclined();

    if (v5 == 3 || v7)
    {
      v22 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v3 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }

    else
    {
      if ([(EKUIListViewCell *)self dragPreview])
      {
        v8 = [(EKUIListViewTimedEventCell *)self event];
        v9 = [v8 calendar];
        v10 = [v9 displayColor];
        v11 = [(EKUIListViewTimedEventCell *)self traitCollection];
        [v11 userInterfaceStyle];
        v22 = CUIKTextColorForCalendarColorForStyle();

        v12 = [(EKUIListViewTimedEventCell *)self event];
        v13 = [v12 calendar];
        v14 = [v13 displayColor];
        v15 = [(EKUIListViewTimedEventCell *)self traitCollection];
        [v15 userInterfaceStyle];
        v16 = CUIKSecondaryTextColorForCalendarColorForStyle();

        goto LABEL_11;
      }

      v22 = [MEMORY[0x1E69DC888] labelColor];
      v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
  }

  v16 = v3;
LABEL_11:
  if (self->_dimmed)
  {
    v17 = *MEMORY[0x1E6993300];
    v18 = [v22 cuik_colorWithAlphaScaled:*MEMORY[0x1E6993300]];

    v19 = [v16 cuik_colorWithAlphaScaled:v17];

    v16 = v19;
    v22 = v18;
  }

  v20 = [(EKUIListViewTimedEventCell *)self traitCollection];
  [v20 userInterfaceStyle];
  CUIKOccurrenceLeadingIconAlphaScale();
  v21 = [v16 cuik_colorWithAlphaScaled:?];

  [(UIImageView *)self->_travelImage setTintColor:v21];
  [(UILabel *)self->_travelTextLabel setTextColor:v16];
  [(UILabel *)self->_titleField setTextColor:v22];
  [(UILabel *)self->_locationField setTextColor:v16];
  [(UIImageView *)self->_locationImage setTintColor:v21];
  [(UILabel *)self->_travelDepartureTimeLabel setTextColor:v16];
  [(UILabel *)self->_topTimeField setTextColor:v22];
  [(UILabel *)self->_bottomTimeField setTextColor:v16];
}

- (void)_updateAppEntityAnnotationIfNeeded
{
  if (CalendarLinkLibraryCore())
  {
    v3 = [(EKUIListViewTimedEventCell *)self event];
    v4 = [v3 isNew];

    if ((v4 & 1) == 0)
    {
      v5 = [(EKUIListViewTimedEventCell *)self event];
      [(EKUIListViewTimedEventCell *)self Cal_annotateWithEvent:v5];

      v6 = [(EKUIListViewTimedEventCell *)self isSelected];
      v7 = [(EKUIListViewTimedEventCell *)self isHighlighted];

      [(EKUIListViewTimedEventCell *)self Cal_updateEntityAnnotationStateIsSelected:v6 isHighlighted:v7 isFocused:0 isDisabled:0 isEditing:0 isPrimary:0];
    }
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = EKUIListViewTimedEventCell;
  [(EKUIListViewTimedEventCell *)&v5 setSelected:a3 animated:a4];
  [(EKUIListViewTimedEventCell *)self _updateAppEntityAnnotationIfNeeded];
}

+ (id)pathForBackgroundForRect:(CGRect)a3 allDay:(BOOL)a4
{
  v7 = CGRectInset(a3, 12.0, 4.0);
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