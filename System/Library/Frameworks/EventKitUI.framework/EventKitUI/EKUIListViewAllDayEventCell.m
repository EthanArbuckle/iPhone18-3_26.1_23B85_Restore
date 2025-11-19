@interface EKUIListViewAllDayEventCell
+ (UIEdgeInsets)adjustedSeparatorInsets;
+ (id)pathForBackgroundForRect:(CGRect)a3 allDay:(BOOL)a4;
- (id)_subtextMonospacedFont;
- (int64_t)_userInterfaceStyle;
- (void)_adjustNumberOfLines;
- (void)_commonInit;
- (void)_updateAppEntityAnnotationIfNeeded;
- (void)_updateColors;
- (void)_updateTextAndIconColors;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)updateWithEvent:(id)a3 dimmed:(BOOL)a4;
@end

@implementation EKUIListViewAllDayEventCell

- (void)_commonInit
{
  v88[12] = *MEMORY[0x1E69E9840];
  v87.receiver = self;
  v87.super_class = EKUIListViewAllDayEventCell;
  [(EKUIListViewCell *)&v87 _commonInit];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__adjustNumberOfLines name:*MEMORY[0x1E69DDC48] object:0];

  v4 = [[EKUIListViewCellBackground alloc] initWithCornerRadius:0.0];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  [(EKUIListViewCellBackground *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(EKUIListViewCell *)self cellContentView];
  [v6 addSubview:self->_backgroundView];

  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  dateField = self->_dateField;
  self->_dateField = v7;

  [(UILabel *)self->_dateField setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = self->_dateField;
  v10 = [(EKUIListViewAllDayEventCell *)self _subtextMonospacedFont];
  [(UILabel *)v9 setFont:v10];

  LODWORD(v11) = 1148846080;
  [(UILabel *)self->_dateField setContentCompressionResistancePriority:0 forAxis:v11];
  v12 = [(EKUIListViewCell *)self cellContentView];
  [v12 addSubview:self->_dateField];

  v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  imageView = self->_imageView;
  self->_imageView = v13;

  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v15) = 1148846080;
  [(UIImageView *)self->_imageView setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [(UIImageView *)self->_imageView setContentCompressionResistancePriority:1 forAxis:v16];
  v17 = [(EKUIListViewCell *)self cellContentView];
  [v17 addSubview:self->_imageView];

  v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleField = self->_titleField;
  self->_titleField = v18;

  [(UILabel *)self->_titleField setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v20) = 1148846080;
  [(UILabel *)self->_titleField setContentCompressionResistancePriority:1 forAxis:v20];
  v21 = self->_titleField;
  v22 = [(EKUIListViewAllDayEventCell *)self _titleFont];
  [(UILabel *)v21 setFont:v22];

  v23 = [(EKUIListViewCell *)self cellContentView];
  [v23 addSubview:self->_titleField];

  v24 = [(UILabel *)self->_titleField leadingAnchor];
  v25 = [(UIImageView *)self->_imageView trailingAnchor];
  v26 = [(EKUIListViewCell *)self carplayMode];
  v27 = 4.5;
  if (v26)
  {
    v27 = 3.5;
  }

  v28 = [v24 constraintEqualToAnchor:v25 constant:v27];
  titleLeadingConstraint = self->_titleLeadingConstraint;
  self->_titleLeadingConstraint = v28;

  v75 = MEMORY[0x1E696ACD8];
  v30 = [(EKUIListViewCellBackground *)self->_backgroundView leadingAnchor];
  v83 = [(EKUIListViewAllDayEventCell *)self contentView];
  v31 = [v83 leadingAnchor];
  v32 = [(EKUIListViewCell *)self carplayMode];
  v33 = 12.0;
  v34 = 12.0;
  if (v32)
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v34 = v35;
  }

  v81 = [v30 constraintEqualToAnchor:v31 constant:v34];
  v88[0] = v81;
  v36 = [(EKUIListViewCellBackground *)self->_backgroundView trailingAnchor];
  v79 = [(EKUIListViewAllDayEventCell *)self contentView];
  v37 = [v79 trailingAnchor];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v33 = v38;
  }

  v77 = [v36 constraintEqualToAnchor:v37 constant:-v33];
  v88[1] = v77;
  v86 = [(EKUIListViewCellBackground *)self->_backgroundView topAnchor];
  v76 = [(EKUIListViewAllDayEventCell *)self contentView];
  v85 = [v76 topAnchor];
  v39 = [(EKUIListViewCell *)self carplayMode];
  v40 = 4.0;
  v41 = 4.0;
  if (v39)
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
  }

  v78 = v37;
  v80 = v36;
  v82 = v31;
  v84 = v30;
  v74 = [v86 constraintEqualToAnchor:v85 constant:v41];
  v88[2] = v74;
  v42 = [(EKUIListViewCellBackground *)self->_backgroundView bottomAnchor];
  v73 = [(EKUIListViewAllDayEventCell *)self contentView];
  v43 = [v73 bottomAnchor];
  if ([(EKUIListViewCell *)self carplayMode])
  {
    [(EKUIListViewCell *)self carplayBackgroundViewInsets];
    v40 = v44;
  }

  v72 = [v42 constraintEqualToAnchor:v43 constant:-v40];
  v88[3] = v72;
  v71 = [(UIImageView *)self->_imageView centerYAnchor];
  v70 = [(UILabel *)self->_titleField centerYAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v88[4] = v69;
  v68 = [(UIImageView *)self->_imageView leadingAnchor];
  v67 = [(EKUIListViewCellBackground *)self->_backgroundView leadingAnchor];
  v66 = [v68 constraintEqualToAnchor:v67 constant:6.5];
  v88[5] = v66;
  v64 = [(UILabel *)self->_titleField topAnchor];
  v63 = [(EKUIListViewCellBackground *)self->_backgroundView topAnchor];
  v62 = [v64 constraintEqualToAnchor:v63 constant:8.0];
  v88[6] = v62;
  v61 = [(UILabel *)self->_titleField bottomAnchor];
  v60 = [(EKUIListViewCellBackground *)self->_backgroundView bottomAnchor];
  v59 = [v61 constraintEqualToAnchor:v60 constant:-8.0];
  v88[7] = v59;
  [(UILabel *)self->_titleField trailingAnchor];
  v45 = v65 = v43;
  v46 = [(UILabel *)self->_dateField leadingAnchor];
  v47 = [(EKUIListViewCell *)self carplayMode];
  v48 = -6.0;
  if (v47)
  {
    v48 = -5.0;
  }

  v49 = [v45 constraintLessThanOrEqualToAnchor:v46 constant:v48];
  v50 = self->_titleLeadingConstraint;
  v88[8] = v49;
  v88[9] = v50;
  v51 = [(UILabel *)self->_dateField firstBaselineAnchor];
  v52 = [(UILabel *)self->_titleField firstBaselineAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];
  v88[10] = v53;
  v54 = [(UILabel *)self->_dateField trailingAnchor];
  v55 = [(EKUIListViewCellBackground *)self->_backgroundView trailingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:-8.0];
  v88[11] = v56;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:12];
  v57 = v58 = v42;
  [v75 activateConstraints:v57];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = EKUIListViewAllDayEventCell;
  [(EKUIListViewCell *)&v9 layoutSubviews];
  v3 = [(EKUIListViewAllDayEventCell *)self layer];
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

    v8 = [(EKUIListViewAllDayEventCell *)self layer];
    [v8 bounds];
    [v3 setFrame:?];

    v5 = [(EKUIListViewAllDayEventCell *)self layer];
    [v5 setMask:v3];
  }
}

- (void)_adjustNumberOfLines
{
  v3 = [(EKUIListViewAllDayEventCell *)self contentView];
  v4 = [v3 traitCollection];
  v5 = EKUIUsesLargeTextLayout(v4);

  [(UIImageView *)self->_imageView setHidden:v5];
  [(UILabel *)self->_dateField setNumberOfLines:v5 ^ 1];
  [(UILabel *)self->_titleField setNumberOfLines:v5 ^ 1];
  [(NSLayoutConstraint *)self->_titleLeadingConstraint setActive:0];
  v6 = [(UILabel *)self->_titleField leadingAnchor];
  if (!v5)
  {
    v7 = [(UIImageView *)self->_imageView trailingAnchor];
    v9 = [(EKUIListViewCell *)self carplayMode];
    v8 = 4.5;
    if (v9)
    {
      v8 = 3.5;
    }
  }

  else
  {
    v7 = [(EKUIListViewCellBackground *)self->_backgroundView leadingAnchor];
    v8 = 8.0;
  }

  v10 = [v6 constraintEqualToAnchor:v7 constant:v8];
  titleLeadingConstraint = self->_titleLeadingConstraint;
  self->_titleLeadingConstraint = v10;

  v12 = self->_titleLeadingConstraint;

  [(NSLayoutConstraint *)v12 setActive:1];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = EKUIListViewAllDayEventCell;
  [(EKUIListViewAllDayEventCell *)&v5 setHighlighted:a3 animated:a4];
  [(EKUIListViewAllDayEventCell *)self _updateAppEntityAnnotationIfNeeded];
  [(EKUIListViewAllDayEventCell *)self _updateColors];
}

- (void)updateWithEvent:(id)a3 dimmed:(BOOL)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(EKUIListViewAllDayEventCell *)self setEvent:v6];
  [(EKUIListViewAllDayEventCell *)self _updateAppEntityAnnotationIfNeeded];
  if (v6)
  {
    self->_dimmed = a4;
    if ([(EKUIListViewCell *)self carplayMode])
    {
      [(EKUIListViewAllDayEventCell *)self setSelectionStyle:0];
    }

    v7 = [v6 status] == 3;
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
    v16 = [v6 CUIK_symbolName:{objc_msgSend(v6, "isAllDay")}];
    v17 = [v15 systemImageNamed:v16];
    [(UIImageView *)self->_imageView setImage:v17];

    if ([(EKUIListViewCell *)self dragPreview])
    {
      v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v18 setDateStyle:1];
      v19 = [(EKUIListViewAllDayEventCell *)self event];
      [v18 setTimeStyle:{objc_msgSend(v19, "isAllDay") ^ 1}];

      v20 = [(EKUIListViewAllDayEventCell *)self event];
      v21 = [v20 startDate];
      v22 = [v18 stringFromDate:v21];

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
  v3 = [(EKUIListViewAllDayEventCell *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__EKUIListViewAllDayEventCell__updateColors__block_invoke;
  v4[3] = &unk_1E843EC60;
  v4[4] = self;
  [v3 performAsCurrentTraitCollection:v4];
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
  v2 = [(EKUIListViewAllDayEventCell *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  return v3;
}

- (void)_updateTextAndIconColors
{
  if ([(EKUIListViewCell *)self carplayMode]&& [(EKUIListViewAllDayEventCell *)self isHighlighted])
  {
    v3 = [MEMORY[0x1E69DC888] _carSystemFocusLabelColor];
  }

  else
  {
    v4 = [(EKUIListViewAllDayEventCell *)self event];
    v5 = [v4 status];

    v6 = [(EKUIListViewAllDayEventCell *)self event];
    v7 = CUIKEventDisplaysAsDeclined();

    if (v5 == 3 || v7)
    {
      v3 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }

    else
    {
      if ([(EKUIListViewCell *)self dragPreview])
      {
        [(EKUIListViewAllDayEventCell *)self _userInterfaceStyle];
        v8 = [(EKUIListViewAllDayEventCell *)self event];
        v9 = [v8 calendar];
        v10 = [v9 displayColor];
        v13 = CUIKTextColorForCalendarColorForStyle();

        v11 = v13;
        goto LABEL_11;
      }

      v3 = [MEMORY[0x1E69DC888] labelColor];
    }
  }

  v11 = v3;
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
  v4 = [(EKUIListViewAllDayEventCell *)self traitCollection];
  v5 = [EKUIConstrainedFontUtilities constrainedFontForTextStyle:v2 maximumContentSizeCategory:v3 traitCollection:v4];

  v6 = MEMORY[0x1E69DB878];
  [v5 pointSize];
  v7 = [v6 monospacedDigitSystemFontOfSize:? weight:?];

  return v7;
}

- (void)_updateAppEntityAnnotationIfNeeded
{
  if (CalendarLinkLibraryCore())
  {
    v8 = [(EKUIListViewAllDayEventCell *)self event];
    if ([v8 isNew])
    {
    }

    else
    {
      v3 = [(EKUIListViewAllDayEventCell *)self event];
      v4 = [v3 isBirthday];

      if ((v4 & 1) == 0)
      {
        v5 = [(EKUIListViewAllDayEventCell *)self event];
        [(EKUIListViewAllDayEventCell *)self Cal_annotateWithEvent:v5];

        v6 = [(EKUIListViewAllDayEventCell *)self isSelected];
        v7 = [(EKUIListViewAllDayEventCell *)self isHighlighted];

        [(EKUIListViewAllDayEventCell *)self Cal_updateEntityAnnotationStateIsSelected:v6 isHighlighted:v7 isFocused:0 isDisabled:0 isEditing:0 isPrimary:0];
      }
    }
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = EKUIListViewAllDayEventCell;
  [(EKUIListViewAllDayEventCell *)&v5 setSelected:a3 animated:a4];
  [(EKUIListViewAllDayEventCell *)self _updateAppEntityAnnotationIfNeeded];
}

+ (id)pathForBackgroundForRect:(CGRect)a3 allDay:(BOOL)a4
{
  v13 = CGRectInset(a3, 12.0, 4.0);
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