@interface EKUIListViewReminderCell
+ (UIEdgeInsets)adjustedSeparatorInsets;
+ (id)pathForBackgroundForRect:(CGRect)rect allDay:(BOOL)day;
- (EKUIListViewReminderCellDelegate)delegate;
- (id)_subtextMonospacedFont;
- (void)_adjustNumberOfLines;
- (void)_circleButtonPressed;
- (void)_commonInit;
- (void)_updateBackgroundColor;
- (void)_updateColors;
- (void)_updateTextAndIconColors;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)updateWithEvent:(id)event dimmed:(BOOL)dimmed;
@end

@implementation EKUIListViewReminderCell

- (void)_commonInit
{
  v90[12] = *MEMORY[0x1E69E9840];
  v89.receiver = self;
  v89.super_class = EKUIListViewReminderCell;
  [(EKUIListViewCell *)&v89 _commonInit];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__adjustNumberOfLines name:*MEMORY[0x1E69DDC48] object:0];

  v4 = objc_alloc_init(EKUIViewWithCornerRadius);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  [(EKUIViewWithCornerRadius *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(EKUIListViewReminderCell *)self _updateBackgroundColor];
  cellContentView = [(EKUIListViewCell *)self cellContentView];
  [cellContentView addSubview:self->_backgroundView];

  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  timeField = self->_timeField;
  self->_timeField = v7;

  [(UILabel *)self->_timeField setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1148846080;
  [(UILabel *)self->_timeField setContentCompressionResistancePriority:0 forAxis:v9];
  cellContentView2 = [(EKUIListViewCell *)self cellContentView];
  [cellContentView2 addSubview:self->_timeField];

  v11 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  circleIcon = self->_circleIcon;
  self->_circleIcon = v11;

  [(UIImageView *)self->_circleIcon setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1148846080;
  [(UIImageView *)self->_circleIcon setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [(UIImageView *)self->_circleIcon setContentCompressionResistancePriority:1 forAxis:v14];
  cellContentView3 = [(EKUIListViewCell *)self cellContentView];
  [cellContentView3 addSubview:self->_circleIcon];

  if (![(EKUIListViewCell *)self carplayMode])
  {
    v16 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__circleButtonPressed];
    [(UIImageView *)self->_circleIcon setUserInteractionEnabled:1];
    [(UIImageView *)self->_circleIcon addGestureRecognizer:v16];
  }

  v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleField = self->_titleField;
  self->_titleField = v17;

  [(UILabel *)self->_titleField setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v19) = 1148846080;
  [(UILabel *)self->_titleField setContentCompressionResistancePriority:1 forAxis:v19];
  v20 = self->_titleField;
  _titleFont = [(EKUIListViewReminderCell *)self _titleFont];
  [(UILabel *)v20 setFont:_titleFont];

  contentView = [(EKUIListViewReminderCell *)self contentView];
  [contentView addSubview:self->_titleField];

  v77 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(EKUIViewWithCornerRadius *)self->_backgroundView leadingAnchor];
  contentView2 = [(EKUIListViewReminderCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  carplayMode = [(EKUIListViewCell *)self carplayMode];
  v26 = 12.0;
  v27 = 12.0;
  if (carplayMode)
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v27 = v28;
  }

  v84 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v27];
  v90[0] = v84;
  trailingAnchor = [(EKUIViewWithCornerRadius *)self->_backgroundView trailingAnchor];
  contentView3 = [(EKUIListViewReminderCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v26 = v31;
  }

  v80 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v26];
  v90[1] = v80;
  topAnchor = [(EKUIViewWithCornerRadius *)self->_backgroundView topAnchor];
  contentView4 = [(EKUIListViewReminderCell *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  carplayMode2 = [(EKUIListViewCell *)self carplayMode];
  v34 = 4.0;
  v35 = 4.0;
  if (carplayMode2)
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
  }

  v81 = trailingAnchor2;
  v83 = trailingAnchor;
  v85 = leadingAnchor2;
  v87 = leadingAnchor;
  v79 = topAnchor;
  v76 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v35];
  v90[2] = v76;
  bottomAnchor = [(EKUIViewWithCornerRadius *)self->_backgroundView bottomAnchor];
  contentView5 = [(EKUIListViewReminderCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v34 = v38;
  }

  v74 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v34];
  v90[3] = v74;
  centerYAnchor = [(UIImageView *)self->_circleIcon centerYAnchor];
  centerYAnchor2 = [(UILabel *)self->_titleField centerYAnchor];
  v71 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v90[4] = v71;
  leadingAnchor3 = [(UIImageView *)self->_circleIcon leadingAnchor];
  leadingAnchor4 = [(EKUIViewWithCornerRadius *)self->_backgroundView leadingAnchor];
  v68 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:6.5];
  v90[5] = v68;
  topAnchor3 = [(UILabel *)self->_titleField topAnchor];
  topAnchor4 = [(EKUIViewWithCornerRadius *)self->_backgroundView topAnchor];
  v65 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
  v90[6] = v65;
  leadingAnchor5 = [(UILabel *)self->_titleField leadingAnchor];
  v64 = leadingAnchor5;
  trailingAnchor3 = [(UIImageView *)self->_circleIcon trailingAnchor];
  v63 = trailingAnchor3;
  carplayMode3 = [(EKUIListViewCell *)self carplayMode];
  v42 = 4.5;
  if (carplayMode3)
  {
    v42 = 3.5;
  }

  v62 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:v42];
  v90[7] = v62;
  trailingAnchor4 = [(UILabel *)self->_titleField trailingAnchor];
  v59 = trailingAnchor4;
  leadingAnchor6 = [(UILabel *)self->_timeField leadingAnchor];
  v58 = leadingAnchor6;
  carplayMode4 = [(EKUIListViewCell *)self carplayMode];
  v46 = -6.0;
  if (carplayMode4)
  {
    v46 = -5.0;
  }

  v57 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:leadingAnchor6 constant:v46];
  v90[8] = v57;
  bottomAnchor3 = [(UILabel *)self->_titleField bottomAnchor];
  bottomAnchor4 = [(EKUIViewWithCornerRadius *)self->_backgroundView bottomAnchor];
  v49 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
  v90[9] = v49;
  firstBaselineAnchor = [(UILabel *)self->_timeField firstBaselineAnchor];
  firstBaselineAnchor2 = [(UILabel *)self->_titleField firstBaselineAnchor];
  [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v52 = v61 = bottomAnchor;
  v90[10] = v52;
  [(UILabel *)self->_timeField trailingAnchor];
  v53 = v60 = bottomAnchor2;
  trailingAnchor5 = [(EKUIViewWithCornerRadius *)self->_backgroundView trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:trailingAnchor5 constant:-8.0];
  v90[11] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:12];
  [v77 activateConstraints:v56];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = EKUIListViewReminderCell;
  [(EKUIListViewCell *)&v9 layoutSubviews];
  layer = [(EKUIListViewReminderCell *)self layer];
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

    layer2 = [(EKUIListViewReminderCell *)self layer];
    [layer2 bounds];
    [layer setFrame:?];

    layer3 = [(EKUIListViewReminderCell *)self layer];
    [layer3 setMask:layer];
  }
}

- (void)_adjustNumberOfLines
{
  contentView = [(EKUIListViewReminderCell *)self contentView];
  traitCollection = [contentView traitCollection];
  v5 = !EKUIUsesLargeTextLayout(traitCollection);

  [(UILabel *)self->_timeField setNumberOfLines:v5];
  titleField = self->_titleField;

  [(UILabel *)titleField setNumberOfLines:v5];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = EKUIListViewReminderCell;
  [(EKUIListViewReminderCell *)&v5 setHighlighted:highlighted animated:animated];
  [(EKUIListViewReminderCell *)self _updateColors];
}

- (void)_circleButtonPressed
{
  event = [(EKUIListViewReminderCell *)self event];
  cUIK_reminderShouldBeEditable = [event CUIK_reminderShouldBeEditable];

  if (cUIK_reminderShouldBeEditable)
  {
    delegate = [(EKUIListViewReminderCell *)self delegate];
    [delegate eventIconButtonPressed:self];

    event2 = [(EKUIListViewReminderCell *)self event];
    [(EKUIListViewReminderCell *)self updateWithEvent:event2 dimmed:self->_dimmed];
  }
}

- (void)updateWithEvent:(id)event dimmed:(BOOL)dimmed
{
  v32[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  [(EKUIListViewReminderCell *)self setEvent:eventCopy];
  if (eventCopy)
  {
    self->_dimmed = dimmed;
    if ([(EKUIListViewCell *)self carplayMode])
    {
      [(EKUIListViewReminderCell *)self setSelectionStyle:0];
    }

    title = [eventCopy title];
    [(UILabel *)self->_titleField setText:title];

    v8 = MEMORY[0x1E69DCAB8];
    event = [(EKUIListViewReminderCell *)self event];
    event2 = [(EKUIListViewReminderCell *)self event];
    v11 = [event CUIK_symbolName:{objc_msgSend(event2, "isAllDay")}];
    v12 = [v8 systemImageNamed:v11];
    [(UIImageView *)self->_circleIcon setImage:v12];

    traitCollection = [(EKUIListViewReminderCell *)self traitCollection];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __51__EKUIListViewReminderCell_updateWithEvent_dimmed___block_invoke;
    v30[3] = &unk_1E843EC60;
    v30[4] = self;
    [traitCollection performAsCurrentTraitCollection:v30];

    if ([(EKUIListViewCell *)self dragPreview])
    {
      event6 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [event6 setDateStyle:1];
      event3 = [(EKUIListViewReminderCell *)self event];
      [event6 setTimeStyle:{objc_msgSend(event3, "isAllDay") ^ 1}];

      event4 = [(EKUIListViewReminderCell *)self event];
      startDate = [event4 startDate];
      startDate2 = [event6 stringFromDate:startDate];

      [(UILabel *)self->_timeField setText:startDate2];
    }

    else
    {
      event5 = [(EKUIListViewReminderCell *)self event];
      isAllDay = [event5 isAllDay];

      if (isAllDay)
      {
        v21 = objc_alloc(MEMORY[0x1E696AAB0]);
        event6 = EventKitUIBundle();
        startDate2 = [event6 localizedStringForKey:@"all-day" value:&stru_1F4EF6790 table:0];
        v31 = *MEMORY[0x1E69DB648];
        _subtextMonospacedFont = [(EKUIListViewReminderCell *)self _subtextMonospacedFont];
        v32[0] = _subtextMonospacedFont;
        _subtextMonospacedFont2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v24 = [v21 initWithString:startDate2 attributes:_subtextMonospacedFont2];
      }

      else
      {
        v25 = MEMORY[0x1E69934A8];
        event6 = [(EKUIListViewReminderCell *)self event];
        startDate2 = [event6 startDate];
        _subtextMonospacedFont = CUIKCalendar();
        _subtextMonospacedFont2 = [(EKUIListViewReminderCell *)self _subtextMonospacedFont];
        v24 = [v25 timeAttributedTextWithDate:startDate2 calendar:_subtextMonospacedFont font:_subtextMonospacedFont2 options:16];
      }

      v26 = v24;
      [(UILabel *)self->_timeField setAttributedText:v24];
    }

    event7 = [(EKUIListViewReminderCell *)self event];
    isAllDay2 = [event7 isAllDay];

    v29 = 8.0;
    if (isAllDay2)
    {
      v29 = 0.0;
    }

    [(EKUIViewWithCornerRadius *)self->_backgroundView setCornerRadius:v29];
    [(EKUIListViewReminderCell *)self _updateColors];
    if (CalendarLinkLibraryCore())
    {
      [(EKUIListViewReminderCell *)self Cal_annotateWithEvent:eventCopy];
    }
  }
}

void __51__EKUIListViewReminderCell_updateWithEvent_dimmed___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DCAD8];
  v5 = [*(a1 + 32) _titleFont];
  [v5 pointSize];
  v4 = [v2 configurationWithPointSize:7 weight:2 scale:v3 + 2.0];
  [*(*(a1 + 32) + 1120) setPreferredSymbolConfiguration:v4];
}

- (void)_updateColors
{
  traitCollection = [(EKUIListViewReminderCell *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__EKUIListViewReminderCell__updateColors__block_invoke;
  v4[3] = &unk_1E843EC60;
  v4[4] = self;
  [traitCollection performAsCurrentTraitCollection:v4];
}

void __41__EKUIListViewReminderCell__updateColors__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) carplayMode] && objc_msgSend(*(a1 + 32), "isHighlighted"))
  {
    v2 = [MEMORY[0x1E69DC888] _carSystemFocusPrimaryColor];
  }

  else
  {
    v3 = [*(a1 + 32) event];
    v4 = [v3 CUIK_reminderShouldBeEditable];

    if (v4)
    {
      v5 = [*(a1 + 32) event];
      v9 = [v5 CUIK_symbolColor];

      v6 = v9;
      goto LABEL_8;
    }

    v2 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  v6 = v2;
LABEL_8:
  v7 = *(a1 + 32);
  if (*(v7 + 1136) == 1)
  {
    v10 = v6;
    v8 = [v6 cuik_colorWithAlphaScaled:*MEMORY[0x1E6993300]];

    v7 = *(a1 + 32);
    v6 = v8;
  }

  v11 = v6;
  [*(v7 + 1120) setTintColor:v6];
  [*(a1 + 32) _updateTextAndIconColors];
  [*(a1 + 32) _updateBackgroundColor];
}

- (void)_updateBackgroundColor
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  traitCollection = [(EKUIListViewReminderCell *)self traitCollection];
  [traitCollection userInterfaceStyle];
  v4 = CUIKAdjustedColorForColor();

  traitCollection2 = [(EKUIListViewReminderCell *)self traitCollection];
  [traitCollection2 userInterfaceStyle];
  v6 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();

  if ([(EKUIListViewCell *)self carplayMode])
  {
    if ([(EKUIListViewReminderCell *)self isHighlighted])
    {
      _carSystemFocusColor = [MEMORY[0x1E69DC888] _carSystemFocusColor];
      goto LABEL_8;
    }

    if (MEMORY[0x1D38B98D0]())
    {
      goto LABEL_7;
    }

LABEL_5:
    _carSystemFocusColor = v6;
    goto LABEL_8;
  }

  if ([(EKUIListViewCell *)self dragPreview])
  {
    goto LABEL_5;
  }

LABEL_7:
  _carSystemFocusColor = [MEMORY[0x1E69DC888] clearColor];
LABEL_8:
  v8 = _carSystemFocusColor;
  [(EKUIViewWithCornerRadius *)self->_backgroundView setBackgroundColor:_carSystemFocusColor];
}

- (void)_updateTextAndIconColors
{
  if ([(EKUIListViewCell *)self carplayMode]&& [(EKUIListViewReminderCell *)self isHighlighted])
  {
    _carSystemFocusLabelColor = [MEMORY[0x1E69DC888] _carSystemFocusLabelColor];
LABEL_6:
    v6 = _carSystemFocusLabelColor;
    goto LABEL_11;
  }

  event = [(EKUIListViewReminderCell *)self event];
  completed = [event completed];

  if (completed)
  {
    _carSystemFocusLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    goto LABEL_6;
  }

  event2 = [(EKUIListViewReminderCell *)self event];
  if ([event2 CUIK_reminderShouldBeEditable])
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }
  v9 = ;

  v6 = v9;
LABEL_11:
  if (self->_dimmed)
  {
    v10 = v6;
    v8 = [v6 cuik_colorWithAlphaScaled:*MEMORY[0x1E6993300]];

    v6 = v8;
  }

  v11 = v6;
  [(UILabel *)self->_titleField setTextColor:v6];
  [(UILabel *)self->_timeField setTextColor:v11];
}

- (id)_subtextMonospacedFont
{
  v2 = *MEMORY[0x1E69DDD80];
  v3 = *MEMORY[0x1E69DDC28];
  traitCollection = [(EKUIListViewReminderCell *)self traitCollection];
  v5 = [EKUIConstrainedFontUtilities constrainedFontForTextStyle:v2 maximumContentSizeCategory:v3 traitCollection:traitCollection];

  v6 = MEMORY[0x1E69DB878];
  [v5 pointSize];
  v7 = [v6 monospacedDigitSystemFontOfSize:? weight:?];

  return v7;
}

+ (id)pathForBackgroundForRect:(CGRect)rect allDay:(BOOL)day
{
  dayCopy = day;
  v13 = CGRectInset(rect, 12.0, 4.0);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v9 = 8.0;
  if (dayCopy)
  {
    v9 = CGRectGetHeight(v13) * 0.5;
  }

  v10 = MEMORY[0x1E69DC728];

  return [v10 bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v9}];
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

- (EKUIListViewReminderCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end