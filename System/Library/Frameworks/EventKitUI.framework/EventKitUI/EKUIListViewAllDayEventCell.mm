@interface EKUIListViewAllDayEventCell
+ (UIEdgeInsets)adjustedSeparatorInsets;
+ (id)pathForBackgroundForRect:(CGRect)rect allDay:(BOOL)day;
- (id)_subtextMonospacedFont;
- (int64_t)_userInterfaceStyle;
- (void)_adjustNumberOfLines;
- (void)_commonInit;
- (void)_updateAppEntityAnnotationIfNeeded;
- (void)_updateColors;
- (void)_updateTextAndIconColors;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)updateWithEvent:(id)event dimmed:(BOOL)dimmed;
@end

@implementation EKUIListViewAllDayEventCell

- (void)_commonInit
{
  v88[12] = *MEMORY[0x1E69E9840];
  v87.receiver = self;
  v87.super_class = EKUIListViewAllDayEventCell;
  [(EKUIListViewCell *)&v87 _commonInit];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__adjustNumberOfLines name:*MEMORY[0x1E69DDC48] object:0];

  v4 = [[EKUIListViewCellBackground alloc] initWithCornerRadius:0.0];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  [(EKUIListViewCellBackground *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  cellContentView = [(EKUIListViewCell *)self cellContentView];
  [cellContentView addSubview:self->_backgroundView];

  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  dateField = self->_dateField;
  self->_dateField = v7;

  [(UILabel *)self->_dateField setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = self->_dateField;
  _subtextMonospacedFont = [(EKUIListViewAllDayEventCell *)self _subtextMonospacedFont];
  [(UILabel *)v9 setFont:_subtextMonospacedFont];

  LODWORD(v11) = 1148846080;
  [(UILabel *)self->_dateField setContentCompressionResistancePriority:0 forAxis:v11];
  cellContentView2 = [(EKUIListViewCell *)self cellContentView];
  [cellContentView2 addSubview:self->_dateField];

  v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  imageView = self->_imageView;
  self->_imageView = v13;

  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v15) = 1148846080;
  [(UIImageView *)self->_imageView setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [(UIImageView *)self->_imageView setContentCompressionResistancePriority:1 forAxis:v16];
  cellContentView3 = [(EKUIListViewCell *)self cellContentView];
  [cellContentView3 addSubview:self->_imageView];

  v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleField = self->_titleField;
  self->_titleField = v18;

  [(UILabel *)self->_titleField setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v20) = 1148846080;
  [(UILabel *)self->_titleField setContentCompressionResistancePriority:1 forAxis:v20];
  v21 = self->_titleField;
  _titleFont = [(EKUIListViewAllDayEventCell *)self _titleFont];
  [(UILabel *)v21 setFont:_titleFont];

  cellContentView4 = [(EKUIListViewCell *)self cellContentView];
  [cellContentView4 addSubview:self->_titleField];

  leadingAnchor = [(UILabel *)self->_titleField leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_imageView trailingAnchor];
  carplayMode = [(EKUIListViewCell *)self carplayMode];
  v27 = 4.5;
  if (carplayMode)
  {
    v27 = 3.5;
  }

  v28 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:v27];
  titleLeadingConstraint = self->_titleLeadingConstraint;
  self->_titleLeadingConstraint = v28;

  v75 = MEMORY[0x1E696ACD8];
  leadingAnchor2 = [(EKUIListViewCellBackground *)self->_backgroundView leadingAnchor];
  contentView = [(EKUIListViewAllDayEventCell *)self contentView];
  leadingAnchor3 = [contentView leadingAnchor];
  carplayMode2 = [(EKUIListViewCell *)self carplayMode];
  v33 = 12.0;
  v34 = 12.0;
  if (carplayMode2)
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v34 = v35;
  }

  v81 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:v34];
  v88[0] = v81;
  trailingAnchor2 = [(EKUIListViewCellBackground *)self->_backgroundView trailingAnchor];
  contentView2 = [(EKUIListViewAllDayEventCell *)self contentView];
  trailingAnchor3 = [contentView2 trailingAnchor];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v33 = v38;
  }

  v77 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-v33];
  v88[1] = v77;
  topAnchor = [(EKUIListViewCellBackground *)self->_backgroundView topAnchor];
  contentView3 = [(EKUIListViewAllDayEventCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  carplayMode3 = [(EKUIListViewCell *)self carplayMode];
  v40 = 4.0;
  v41 = 4.0;
  if (carplayMode3)
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
  }

  v78 = trailingAnchor3;
  v80 = trailingAnchor2;
  v82 = leadingAnchor3;
  v84 = leadingAnchor2;
  v74 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v41];
  v88[2] = v74;
  bottomAnchor = [(EKUIListViewCellBackground *)self->_backgroundView bottomAnchor];
  contentView4 = [(EKUIListViewAllDayEventCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v40 = v44;
  }

  v72 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v40];
  v88[3] = v72;
  centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
  centerYAnchor2 = [(UILabel *)self->_titleField centerYAnchor];
  v69 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v88[4] = v69;
  leadingAnchor4 = [(UIImageView *)self->_imageView leadingAnchor];
  leadingAnchor5 = [(EKUIListViewCellBackground *)self->_backgroundView leadingAnchor];
  v66 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:6.5];
  v88[5] = v66;
  topAnchor3 = [(UILabel *)self->_titleField topAnchor];
  topAnchor4 = [(EKUIListViewCellBackground *)self->_backgroundView topAnchor];
  v62 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
  v88[6] = v62;
  bottomAnchor3 = [(UILabel *)self->_titleField bottomAnchor];
  bottomAnchor4 = [(EKUIListViewCellBackground *)self->_backgroundView bottomAnchor];
  v59 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
  v88[7] = v59;
  [(UILabel *)self->_titleField trailingAnchor];
  v45 = v65 = bottomAnchor2;
  leadingAnchor6 = [(UILabel *)self->_dateField leadingAnchor];
  carplayMode4 = [(EKUIListViewCell *)self carplayMode];
  v48 = -6.0;
  if (carplayMode4)
  {
    v48 = -5.0;
  }

  v49 = [v45 constraintLessThanOrEqualToAnchor:leadingAnchor6 constant:v48];
  v50 = self->_titleLeadingConstraint;
  v88[8] = v49;
  v88[9] = v50;
  firstBaselineAnchor = [(UILabel *)self->_dateField firstBaselineAnchor];
  firstBaselineAnchor2 = [(UILabel *)self->_titleField firstBaselineAnchor];
  v53 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v88[10] = v53;
  trailingAnchor4 = [(UILabel *)self->_dateField trailingAnchor];
  trailingAnchor5 = [(EKUIListViewCellBackground *)self->_backgroundView trailingAnchor];
  v56 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-8.0];
  v88[11] = v56;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:12];
  v57 = v58 = bottomAnchor;
  [v75 activateConstraints:v57];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = EKUIListViewAllDayEventCell;
  [(EKUIListViewCell *)&v9 layoutSubviews];
  layer = [(EKUIListViewAllDayEventCell *)self layer];
  mask = [layer mask];
  if (mask)
  {
    layer3 = mask;
  }

  else
  {
    carplayMode = [(EKUIListViewCell *)self carplayMode];

    if (!carplayMode)
    {
      return;
    }

    layer = [MEMORY[0x1E6979398] layer];
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    [layer setBackgroundColor:{objc_msgSend(v7, "CGColor")}];

    layer2 = [(EKUIListViewAllDayEventCell *)self layer];
    [layer2 bounds];
    [layer setFrame:?];

    layer3 = [(EKUIListViewAllDayEventCell *)self layer];
    [layer3 setMask:layer];
  }
}

- (void)_adjustNumberOfLines
{
  contentView = [(EKUIListViewAllDayEventCell *)self contentView];
  traitCollection = [contentView traitCollection];
  v5 = EKUIUsesLargeTextLayout(traitCollection);

  [(UIImageView *)self->_imageView setHidden:v5];
  [(UILabel *)self->_dateField setNumberOfLines:v5 ^ 1];
  [(UILabel *)self->_titleField setNumberOfLines:v5 ^ 1];
  [(NSLayoutConstraint *)self->_titleLeadingConstraint setActive:0];
  leadingAnchor = [(UILabel *)self->_titleField leadingAnchor];
  if (!v5)
  {
    trailingAnchor = [(UIImageView *)self->_imageView trailingAnchor];
    carplayMode = [(EKUIListViewCell *)self carplayMode];
    v8 = 4.5;
    if (carplayMode)
    {
      v8 = 3.5;
    }
  }

  else
  {
    trailingAnchor = [(EKUIListViewCellBackground *)self->_backgroundView leadingAnchor];
    v8 = 8.0;
  }

  v10 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:v8];
  titleLeadingConstraint = self->_titleLeadingConstraint;
  self->_titleLeadingConstraint = v10;

  v12 = self->_titleLeadingConstraint;

  [(NSLayoutConstraint *)v12 setActive:1];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = EKUIListViewAllDayEventCell;
  [(EKUIListViewAllDayEventCell *)&v5 setHighlighted:highlighted animated:animated];
  [(EKUIListViewAllDayEventCell *)self _updateAppEntityAnnotationIfNeeded];
  [(EKUIListViewAllDayEventCell *)self _updateColors];
}

- (void)updateWithEvent:(id)event dimmed:(BOOL)dimmed
{
  v35[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  [(EKUIListViewAllDayEventCell *)self setEvent:eventCopy];
  [(EKUIListViewAllDayEventCell *)self _updateAppEntityAnnotationIfNeeded];
  if (eventCopy)
  {
    self->_dimmed = dimmed;
    if ([(EKUIListViewCell *)self carplayMode])
    {
      [(EKUIListViewAllDayEventCell *)self setSelectionStyle:0];
    }

    v7 = [eventCopy status] == 3;
    v8 = v7 | CUIKEventDisplaysAsDeclined();
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = CUIKDisplayedTitleForEvent();
    v11 = *MEMORY[0x1E69DB6B8];
    v34 = *MEMORY[0x1E69DB6B8];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v8 & 1];
    v35[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v14 = [v9 initWithString:v10 attributes:v13];
    [(UILabel *)self->_titleField setAttributedText:v14];

    v15 = MEMORY[0x1E69DCAB8];
    v16 = [eventCopy CUIK_symbolName:{objc_msgSend(eventCopy, "isAllDay")}];
    v17 = [v15 systemImageNamed:v16];
    [(UIImageView *)self->_imageView setImage:v17];

    if ([(EKUIListViewCell *)self dragPreview])
    {
      v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v18 setDateStyle:1];
      event = [(EKUIListViewAllDayEventCell *)self event];
      [v18 setTimeStyle:{objc_msgSend(event, "isAllDay") ^ 1}];

      event2 = [(EKUIListViewAllDayEventCell *)self event];
      startDate = [event2 startDate];
      v22 = [v18 stringFromDate:startDate];

      v23 = objc_alloc(MEMORY[0x1E696AAB0]);
      v32 = v11;
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v8 & 1];
      v33 = v24;
      v25 = MEMORY[0x1E695DF20];
      v26 = &v33;
      v27 = &v32;
    }

    else
    {
      v23 = objc_alloc(MEMORY[0x1E696AAB0]);
      v18 = EventKitUIBundle();
      v22 = [v18 localizedStringForKey:@"all-day" value:&stru_1F4EF6790 table:0];
      v30 = v11;
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v8 & 1];
      v31 = v24;
      v25 = MEMORY[0x1E695DF20];
      v26 = &v31;
      v27 = &v30;
    }

    v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
    v29 = [v23 initWithString:v22 attributes:v28];
    [(UILabel *)self->_dateField setAttributedText:v29];

    [(EKUIListViewAllDayEventCell *)self _updateColors];
  }
}

- (void)_updateColors
{
  traitCollection = [(EKUIListViewAllDayEventCell *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__EKUIListViewAllDayEventCell__updateColors__block_invoke;
  v4[3] = &unk_1E843EC60;
  v4[4] = self;
  [traitCollection performAsCurrentTraitCollection:v4];
}

void __44__EKUIListViewAllDayEventCell__updateColors__block_invoke(uint64_t a1)
{
  v30[2] = *MEMORY[0x1E69E9840];
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
  v10 = CUIKColorBarColor();

  if (*(*(a1 + 32) + 1136) == 1)
  {
    v11 = [v10 cuik_colorWithAlphaScaled:*MEMORY[0x1E6993300]];

    v10 = v11;
  }

  v12 = MEMORY[0x1E69DCAD8];
  v13 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v30[0] = v13;
  v30[1] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v15 = [v12 configurationWithPaletteColors:v14];
  v16 = MEMORY[0x1E69DCAD8];
  v17 = [*(a1 + 32) _titleFont];
  [v17 pointSize];
  v19 = [v16 configurationWithPointSize:4 weight:2 scale:v18 + 3.0];
  v20 = [v15 configurationByApplyingConfiguration:v19];
  [*(*(a1 + 32) + 1120) setPreferredSymbolConfiguration:v20];

  [*(a1 + 32) _updateTextAndIconColors];
  v21 = *(a1 + 32);
  v22 = v21[139];
  v23 = [v21 event];
  v24 = [*(a1 + 32) isHighlighted];
  v25 = *(a1 + 32);
  v26 = v25[1136];
  v27 = [v25 carplayMode];
  v28 = [*(a1 + 32) dragPreview];
  v29 = [*(a1 + 32) traitCollection];
  [v22 updateBackgroundColorForEvent:v23 highlighted:v24 dimmed:v26 carplayMode:v27 dragPreview:v28 traitCollection:v29];
}

- (int64_t)_userInterfaceStyle
{
  traitCollection = [(EKUIListViewAllDayEventCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle;
}

- (void)_updateTextAndIconColors
{
  if ([(EKUIListViewCell *)self carplayMode]&& [(EKUIListViewAllDayEventCell *)self isHighlighted])
  {
    _carSystemFocusLabelColor = [MEMORY[0x1E69DC888] _carSystemFocusLabelColor];
  }

  else
  {
    event = [(EKUIListViewAllDayEventCell *)self event];
    status = [event status];

    event2 = [(EKUIListViewAllDayEventCell *)self event];
    v7 = CUIKEventDisplaysAsDeclined();

    if (status == 3 || v7)
    {
      _carSystemFocusLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }

    else
    {
      if ([(EKUIListViewCell *)self dragPreview])
      {
        [(EKUIListViewAllDayEventCell *)self _userInterfaceStyle];
        event3 = [(EKUIListViewAllDayEventCell *)self event];
        calendar = [event3 calendar];
        displayColor = [calendar displayColor];
        v13 = CUIKTextColorForCalendarColorForStyle();

        v11 = v13;
        goto LABEL_11;
      }

      _carSystemFocusLabelColor = [MEMORY[0x1E69DC888] labelColor];
    }
  }

  v11 = _carSystemFocusLabelColor;
LABEL_11:
  if (self->_dimmed)
  {
    v14 = v11;
    v12 = [v11 cuik_colorWithAlphaScaled:*MEMORY[0x1E6993300]];

    v11 = v12;
  }

  v15 = v11;
  [(UILabel *)self->_titleField setTextColor:v11];
  [(UILabel *)self->_dateField setTextColor:v15];
}

- (id)_subtextMonospacedFont
{
  v2 = *MEMORY[0x1E69DDD80];
  v3 = *MEMORY[0x1E69DDC28];
  traitCollection = [(EKUIListViewAllDayEventCell *)self traitCollection];
  v5 = [EKUIConstrainedFontUtilities constrainedFontForTextStyle:v2 maximumContentSizeCategory:v3 traitCollection:traitCollection];

  v6 = MEMORY[0x1E69DB878];
  [v5 pointSize];
  v7 = [v6 monospacedDigitSystemFontOfSize:? weight:?];

  return v7;
}

- (void)_updateAppEntityAnnotationIfNeeded
{
  if (CalendarLinkLibraryCore())
  {
    event = [(EKUIListViewAllDayEventCell *)self event];
    if ([event isNew])
    {
    }

    else
    {
      event2 = [(EKUIListViewAllDayEventCell *)self event];
      isBirthday = [event2 isBirthday];

      if ((isBirthday & 1) == 0)
      {
        event3 = [(EKUIListViewAllDayEventCell *)self event];
        [(EKUIListViewAllDayEventCell *)self Cal_annotateWithEvent:event3];

        isSelected = [(EKUIListViewAllDayEventCell *)self isSelected];
        isHighlighted = [(EKUIListViewAllDayEventCell *)self isHighlighted];

        [(EKUIListViewAllDayEventCell *)self Cal_updateEntityAnnotationStateIsSelected:isSelected isHighlighted:isHighlighted isFocused:0 isDisabled:0 isEditing:0 isPrimary:0];
      }
    }
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = EKUIListViewAllDayEventCell;
  [(EKUIListViewAllDayEventCell *)&v5 setSelected:selected animated:animated];
  [(EKUIListViewAllDayEventCell *)self _updateAppEntityAnnotationIfNeeded];
}

+ (id)pathForBackgroundForRect:(CGRect)rect allDay:(BOOL)day
{
  v13 = CGRectInset(rect, 12.0, 4.0);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v8 = MEMORY[0x1E69DC728];
  v9 = CalSolariumEnabled();
  v10 = 8.0;
  if ((v9 & 1) == 0)
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v10 = CGRectGetHeight(v14) * 0.5;
  }

  return [v8 bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v10}];
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