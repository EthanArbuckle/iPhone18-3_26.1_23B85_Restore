@interface EKUIListViewReminderCell
+ (UIEdgeInsets)adjustedSeparatorInsets;
+ (id)pathForBackgroundForRect:(CGRect)a3 allDay:(BOOL)a4;
- (EKUIListViewReminderCellDelegate)delegate;
- (id)_subtextMonospacedFont;
- (void)_adjustNumberOfLines;
- (void)_circleButtonPressed;
- (void)_commonInit;
- (void)_updateBackgroundColor;
- (void)_updateColors;
- (void)_updateTextAndIconColors;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)updateWithEvent:(id)a3 dimmed:(BOOL)a4;
@end

@implementation EKUIListViewReminderCell

- (void)_commonInit
{
  v90[12] = *MEMORY[0x1E69E9840];
  v89.receiver = self;
  v89.super_class = EKUIListViewReminderCell;
  [(EKUIListViewCell *)&v89 _commonInit];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__adjustNumberOfLines name:*MEMORY[0x1E69DDC48] object:0];

  v4 = objc_alloc_init(EKUIViewWithCornerRadius);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  [(EKUIViewWithCornerRadius *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(EKUIListViewReminderCell *)self _updateBackgroundColor];
  v6 = [(EKUIListViewCell *)self cellContentView];
  [v6 addSubview:self->_backgroundView];

  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  timeField = self->_timeField;
  self->_timeField = v7;

  [(UILabel *)self->_timeField setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1148846080;
  [(UILabel *)self->_timeField setContentCompressionResistancePriority:0 forAxis:v9];
  v10 = [(EKUIListViewCell *)self cellContentView];
  [v10 addSubview:self->_timeField];

  v11 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  circleIcon = self->_circleIcon;
  self->_circleIcon = v11;

  [(UIImageView *)self->_circleIcon setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1148846080;
  [(UIImageView *)self->_circleIcon setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [(UIImageView *)self->_circleIcon setContentCompressionResistancePriority:1 forAxis:v14];
  v15 = [(EKUIListViewCell *)self cellContentView];
  [v15 addSubview:self->_circleIcon];

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
  v21 = [(EKUIListViewReminderCell *)self _titleFont];
  [(UILabel *)v20 setFont:v21];

  v22 = [(EKUIListViewReminderCell *)self contentView];
  [v22 addSubview:self->_titleField];

  v77 = MEMORY[0x1E696ACD8];
  v23 = [(EKUIViewWithCornerRadius *)self->_backgroundView leadingAnchor];
  v86 = [(EKUIListViewReminderCell *)self contentView];
  v24 = [v86 leadingAnchor];
  v25 = [(EKUIListViewCell *)self carplayMode];
  v26 = 12.0;
  v27 = 12.0;
  if (v25)
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v27 = v28;
  }

  v84 = [v23 constraintEqualToAnchor:v24 constant:v27];
  v90[0] = v84;
  v29 = [(EKUIViewWithCornerRadius *)self->_backgroundView trailingAnchor];
  v82 = [(EKUIListViewReminderCell *)self contentView];
  v30 = [v82 trailingAnchor];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v26 = v31;
  }

  v80 = [v29 constraintEqualToAnchor:v30 constant:-v26];
  v90[1] = v80;
  v32 = [(EKUIViewWithCornerRadius *)self->_backgroundView topAnchor];
  v78 = [(EKUIListViewReminderCell *)self contentView];
  v88 = [v78 topAnchor];
  v33 = [(EKUIListViewCell *)self carplayMode];
  v34 = 4.0;
  v35 = 4.0;
  if (v33)
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
  }

  v81 = v30;
  v83 = v29;
  v85 = v24;
  v87 = v23;
  v79 = v32;
  v76 = [v32 constraintEqualToAnchor:v88 constant:v35];
  v90[2] = v76;
  v36 = [(EKUIViewWithCornerRadius *)self->_backgroundView bottomAnchor];
  v75 = [(EKUIListViewReminderCell *)self contentView];
  v37 = [v75 bottomAnchor];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v34 = v38;
  }

  v74 = [v36 constraintEqualToAnchor:v37 constant:-v34];
  v90[3] = v74;
  v73 = [(UIImageView *)self->_circleIcon centerYAnchor];
  v72 = [(UILabel *)self->_titleField centerYAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v90[4] = v71;
  v70 = [(UIImageView *)self->_circleIcon leadingAnchor];
  v69 = [(EKUIViewWithCornerRadius *)self->_backgroundView leadingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69 constant:6.5];
  v90[5] = v68;
  v67 = [(UILabel *)self->_titleField topAnchor];
  v66 = [(EKUIViewWithCornerRadius *)self->_backgroundView topAnchor];
  v65 = [v67 constraintEqualToAnchor:v66 constant:8.0];
  v90[6] = v65;
  v39 = [(UILabel *)self->_titleField leadingAnchor];
  v64 = v39;
  v40 = [(UIImageView *)self->_circleIcon trailingAnchor];
  v63 = v40;
  v41 = [(EKUIListViewCell *)self carplayMode];
  v42 = 4.5;
  if (v41)
  {
    v42 = 3.5;
  }

  v62 = [v39 constraintEqualToAnchor:v40 constant:v42];
  v90[7] = v62;
  v43 = [(UILabel *)self->_titleField trailingAnchor];
  v59 = v43;
  v44 = [(UILabel *)self->_timeField leadingAnchor];
  v58 = v44;
  v45 = [(EKUIListViewCell *)self carplayMode];
  v46 = -6.0;
  if (v45)
  {
    v46 = -5.0;
  }

  v57 = [v43 constraintLessThanOrEqualToAnchor:v44 constant:v46];
  v90[8] = v57;
  v47 = [(UILabel *)self->_titleField bottomAnchor];
  v48 = [(EKUIViewWithCornerRadius *)self->_backgroundView bottomAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-8.0];
  v90[9] = v49;
  v50 = [(UILabel *)self->_timeField firstBaselineAnchor];
  v51 = [(UILabel *)self->_titleField firstBaselineAnchor];
  [v50 constraintEqualToAnchor:v51];
  v52 = v61 = v36;
  v90[10] = v52;
  [(UILabel *)self->_timeField trailingAnchor];
  v53 = v60 = v37;
  v54 = [(EKUIViewWithCornerRadius *)self->_backgroundView trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-8.0];
  v90[11] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:12];
  [v77 activateConstraints:v56];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = EKUIListViewReminderCell;
  [(EKUIListViewCell *)&v9 layoutSubviews];
  v3 = [(EKUIListViewReminderCell *)self layer];
  v4 = [v3 mask];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(EKUIListViewCell *)self carplayMode];

    if (!v6)
    {
      return;
    }

    v3 = [MEMORY[0x1E6979398] layer];
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    [v3 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];

    v8 = [(EKUIListViewReminderCell *)self layer];
    [v8 bounds];
    [v3 setFrame:?];

    v5 = [(EKUIListViewReminderCell *)self layer];
    [v5 setMask:v3];
  }
}

- (void)_adjustNumberOfLines
{
  v3 = [(EKUIListViewReminderCell *)self contentView];
  v4 = [v3 traitCollection];
  v5 = !EKUIUsesLargeTextLayout(v4);

  [(UILabel *)self->_timeField setNumberOfLines:v5];
  titleField = self->_titleField;

  [(UILabel *)titleField setNumberOfLines:v5];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = EKUIListViewReminderCell;
  [(EKUIListViewReminderCell *)&v5 setHighlighted:a3 animated:a4];
  [(EKUIListViewReminderCell *)self _updateColors];
}

- (void)_circleButtonPressed
{
  v3 = [(EKUIListViewReminderCell *)self event];
  v4 = [v3 CUIK_reminderShouldBeEditable];

  if (v4)
  {
    v5 = [(EKUIListViewReminderCell *)self delegate];
    [v5 eventIconButtonPressed:self];

    v6 = [(EKUIListViewReminderCell *)self event];
    [(EKUIListViewReminderCell *)self updateWithEvent:v6 dimmed:self->_dimmed];
  }
}

- (void)updateWithEvent:(id)a3 dimmed:(BOOL)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(EKUIListViewReminderCell *)self setEvent:v6];
  if (v6)
  {
    self->_dimmed = a4;
    if ([(EKUIListViewCell *)self carplayMode])
    {
      [(EKUIListViewReminderCell *)self setSelectionStyle:0];
    }

    v7 = [v6 title];
    [(UILabel *)self->_titleField setText:v7];

    v8 = MEMORY[0x1E69DCAB8];
    v9 = [(EKUIListViewReminderCell *)self event];
    v10 = [(EKUIListViewReminderCell *)self event];
    v11 = [v9 CUIK_symbolName:{objc_msgSend(v10, "isAllDay")}];
    v12 = [v8 systemImageNamed:v11];
    [(UIImageView *)self->_circleIcon setImage:v12];

    v13 = [(EKUIListViewReminderCell *)self traitCollection];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __51__EKUIListViewReminderCell_updateWithEvent_dimmed___block_invoke;
    v30[3] = &unk_1E843EC60;
    v30[4] = self;
    [v13 performAsCurrentTraitCollection:v30];

    if ([(EKUIListViewCell *)self dragPreview])
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v14 setDateStyle:1];
      v15 = [(EKUIListViewReminderCell *)self event];
      [v14 setTimeStyle:{objc_msgSend(v15, "isAllDay") ^ 1}];

      v16 = [(EKUIListViewReminderCell *)self event];
      v17 = [v16 startDate];
      v18 = [v14 stringFromDate:v17];

      [(UILabel *)self->_timeField setText:v18];
    }

    else
    {
      v19 = [(EKUIListViewReminderCell *)self event];
      v20 = [v19 isAllDay];

      if (v20)
      {
        v21 = objc_alloc(MEMORY[0x1E696AAB0]);
        v14 = EventKitUIBundle();
        v18 = [v14 localizedStringForKey:@"all-day" value:&stru_1F4EF6790 table:0];
        v31 = *MEMORY[0x1E69DB648];
        v22 = [(EKUIListViewReminderCell *)self _subtextMonospacedFont];
        v32[0] = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v24 = [v21 initWithString:v18 attributes:v23];
      }

      else
      {
        v25 = MEMORY[0x1E69934A8];
        v14 = [(EKUIListViewReminderCell *)self event];
        v18 = [v14 startDate];
        v22 = CUIKCalendar();
        v23 = [(EKUIListViewReminderCell *)self _subtextMonospacedFont];
        v24 = [v25 timeAttributedTextWithDate:v18 calendar:v22 font:v23 options:16];
      }

      v26 = v24;
      [(UILabel *)self->_timeField setAttributedText:v24];
    }

    v27 = [(EKUIListViewReminderCell *)self event];
    v28 = [v27 isAllDay];

    v29 = 8.0;
    if (v28)
    {
      v29 = 0.0;
    }

    [(EKUIViewWithCornerRadius *)self->_backgroundView setCornerRadius:v29];
    [(EKUIListViewReminderCell *)self _updateColors];
    if (CalendarLinkLibraryCore())
    {
      [(EKUIListViewReminderCell *)self Cal_annotateWithEvent:v6];
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
  v3 = [(EKUIListViewReminderCell *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__EKUIListViewReminderCell__updateColors__block_invoke;
  v4[3] = &unk_1E843EC60;
  v4[4] = self;
  [v3 performAsCurrentTraitCollection:v4];
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
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v3 = [(EKUIListViewReminderCell *)self traitCollection];
  [v3 userInterfaceStyle];
  v4 = CUIKAdjustedColorForColor();

  v5 = [(EKUIListViewReminderCell *)self traitCollection];
  [v5 userInterfaceStyle];
  v6 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();

  if ([(EKUIListViewCell *)self carplayMode])
  {
    if ([(EKUIListViewReminderCell *)self isHighlighted])
    {
      v7 = [MEMORY[0x1E69DC888] _carSystemFocusColor];
      goto LABEL_8;
    }

    if (MEMORY[0x1D38B98D0]())
    {
      goto LABEL_7;
    }

LABEL_5:
    v7 = v6;
    goto LABEL_8;
  }

  if ([(EKUIListViewCell *)self dragPreview])
  {
    goto LABEL_5;
  }

LABEL_7:
  v7 = [MEMORY[0x1E69DC888] clearColor];
LABEL_8:
  v8 = v7;
  [(EKUIViewWithCornerRadius *)self->_backgroundView setBackgroundColor:v7];
}

- (void)_updateTextAndIconColors
{
  if ([(EKUIListViewCell *)self carplayMode]&& [(EKUIListViewReminderCell *)self isHighlighted])
  {
    v3 = [MEMORY[0x1E69DC888] _carSystemFocusLabelColor];
LABEL_6:
    v6 = v3;
    goto LABEL_11;
  }

  v4 = [(EKUIListViewReminderCell *)self event];
  v5 = [v4 completed];

  if (v5)
  {
    v3 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    goto LABEL_6;
  }

  v7 = [(EKUIListViewReminderCell *)self event];
  if ([v7 CUIK_reminderShouldBeEditable])
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
  v4 = [(EKUIListViewReminderCell *)self traitCollection];
  v5 = [EKUIConstrainedFontUtilities constrainedFontForTextStyle:v2 maximumContentSizeCategory:v3 traitCollection:v4];

  v6 = MEMORY[0x1E69DB878];
  [v5 pointSize];
  v7 = [v6 monospacedDigitSystemFontOfSize:? weight:?];

  return v7;
}

+ (id)pathForBackgroundForRect:(CGRect)a3 allDay:(BOOL)a4
{
  v4 = a4;
  v13 = CGRectInset(a3, 12.0, 4.0);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v9 = 8.0;
  if (v4)
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