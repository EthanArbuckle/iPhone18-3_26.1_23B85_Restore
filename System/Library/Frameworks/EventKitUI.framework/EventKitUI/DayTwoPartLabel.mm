@interface DayTwoPartLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (DayTwoPartLabel)initWithFrame:(CGRect)a3;
- (DayTwoPartLabel)initWithFrame:(CGRect)a3 useSeparateFormat:(BOOL)a4;
- (UIFont)font;
- (double)_heightIncludingAscenderDescenderForLabel:(id)a3 outOutsetHeightDiff:(double *)a4;
- (double)_verticalSpacingForOutsetHeightDiff:(double)a3;
- (double)baselineOffsetFromBoundsTop;
- (id)createCopy;
- (id)dateYearString;
- (id)dayOfWeekString;
- (void)_copyLabelParametersFrom:(id)a3 to:(id)a4;
- (void)_createSubviews;
- (void)_resetUI;
- (void)_updateOverlayLabel;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setDate:(id)a3;
- (void)setDateYearString:(id)a3;
- (void)setDayOfWeekString:(id)a3;
- (void)setFont:(id)a3;
- (void)setShowOverlayDate:(BOOL)a3;
@end

@implementation DayTwoPartLabel

- (void)_createSubviews
{
  v15 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v15 objectForKey:*MEMORY[0x1E695D9B0]];
  if ([MEMORY[0x1E695DF58] characterDirectionForLanguage:v3] == 2)
  {
    self->_useSeparateFormat = 0;
  }

  else if (self->_useSeparateFormat)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    firstLabel = self->_firstLabel;
    self->_firstLabel = v4;

    v6 = [(UILabel *)self->_firstLabel layer];
    [v6 setMasksToBounds:0];

    [(UILabel *)self->_firstLabel setTextAlignment:2];
    v7 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)self->_firstLabel setTextColor:v7];

    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondLabel = self->_secondLabel;
    self->_secondLabel = v8;

    v10 = [(UILabel *)self->_secondLabel layer];
    [v10 setMasksToBounds:0];

    [(UILabel *)self->_secondLabel setTextAlignment:0];
    v11 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)self->_secondLabel setTextColor:v11];

    [(DayTwoPartLabel *)self addSubview:self->_firstLabel];
    [(DayTwoPartLabel *)self addSubview:self->_secondLabel];
    self->_dayNameOnLeft = CUIKIsWeekdayNameFirst();
    goto LABEL_6;
  }

  v12 = objc_opt_new();
  entireString = self->_entireString;
  self->_entireString = v12;

  v14 = [(UILabel *)self->_entireString layer];
  [v14 setMasksToBounds:0];

  [(UILabel *)self->_entireString setAccessibilityIdentifier:@"current-day"];
  [(UILabel *)self->_entireString setTextAlignment:1];
  [(DayTwoPartLabel *)self addSubview:self->_entireString];
LABEL_6:
}

- (void)_updateOverlayLabel
{
  showOverlayDate = self->_showOverlayDate;
  overlayLabel = self->_overlayLabel;
  if (showOverlayDate)
  {
    if (!overlayLabel)
    {
      v5 = objc_opt_new();
      v6 = self->_overlayLabel;
      self->_overlayLabel = v5;

      v7 = [(UILabel *)self->_overlayLabel layer];
      [v7 setMasksToBounds:0];

      v8 = [(UILabel *)self->_entireString font];
      [(UILabel *)self->_overlayLabel setFont:v8];

      v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)self->_overlayLabel setTextColor:v9];

      [(DayTwoPartLabel *)self addSubview:self->_overlayLabel];
    }
  }

  else if (overlayLabel)
  {
    [(UILabel *)overlayLabel removeFromSuperview];
    v10 = self->_overlayLabel;
    self->_overlayLabel = 0;
  }

  if (self->_showOverlayDate)
  {
    v11 = MEMORY[0x1E69933D8];
    date = self->_date;
    v13 = CUIKGetOverlayCalendar();
    v15 = [v11 yearMonthDayStringForDate:date inCalendar:v13];

    v14 = [(UILabel *)self->_overlayLabel text];
    LOBYTE(date) = [v14 isEqualToString:v15];

    if ((date & 1) == 0)
    {
      [(UILabel *)self->_overlayLabel setText:v15];
      [(DayTwoPartLabel *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v59.receiver = self;
  v59.super_class = DayTwoPartLabel;
  [(DayTwoPartLabel *)&v59 layoutSubviews];
  if (self->_useSeparateFormat)
  {
    [(DayTwoPartLabel *)self bounds];
    v4 = v3;
    v6 = v5;
    firstLabel = self->_firstLabel;
    [(UILabel *)firstLabel frame];
    [(UILabel *)firstLabel sizeThatFits:v8, v9];
    v11 = v10;
    v13 = v12;
    [(UILabel *)self->_firstLabel setFrame:v4, v6, v10, v12];
    [(DayTwoPartLabel *)self bounds];
    v15 = v14;
    v60.origin.x = v4;
    v60.origin.y = v6;
    v60.size.width = v11;
    v60.size.height = v13;
    v16 = CGRectGetMaxX(v60) + 10.0;
    secondLabel = self->_secondLabel;
    [(UILabel *)secondLabel frame];
    [(UILabel *)secondLabel sizeThatFits:v18, v19];
    v21 = v20;
    v23 = v22;
    [(UILabel *)self->_secondLabel setFrame:v16, v15, v20, v22];
    v61.origin.x = v16;
    v61.origin.y = v15;
    v61.size.width = v21;
    v61.size.height = v23;
    MaxX = CGRectGetMaxX(v61);
    v62.origin.x = v4;
    v62.origin.y = v6;
    v62.size.width = v11;
    v62.size.height = v13;
    MaxY = CGRectGetMaxY(v62);
    v63.origin.x = v16;
    v63.origin.y = v15;
    v63.size.width = v21;
    v63.size.height = v23;
    v25 = CGRectGetMaxY(v63);
    if (!self->_showOverlayDate)
    {
      return;
    }

    v26 = fmax(MaxY, v25);
    [(UILabel *)self->_overlayLabel sizeToFit];
    [(UILabel *)self->_firstLabel frame];
    v28 = MaxX - v27;
    [(UILabel *)self->_firstLabel frame];
    v30 = v29 + v28 * 0.5;
    [(UILabel *)self->_overlayLabel frame];
    v32 = v30 - v31 * 0.5;
    [(UILabel *)self->_overlayLabel frame];
    overlayLabel = self->_overlayLabel;
    v36 = v32;
    v37 = v26 + 6.0;
  }

  else
  {
    entireString = self->_entireString;
    [(DayTwoPartLabel *)self bounds];
    [(UILabel *)entireString sizeThatFits:v39, 1.79769313e308];
    v41 = v40;
    [(DayTwoPartLabel *)self _heightIncludingAscenderDescenderForLabel:self->_entireString outOutsetHeightDiff:0];
    v43 = v42;
    [(DayTwoPartLabel *)self bounds];
    v45 = (v44 - v41) * 0.5;
    [(UILabel *)self->_entireString setFrame:v45, 0.0, v41, v43];
    v64.origin.y = 0.0;
    v64.origin.x = v45;
    v64.size.width = v41;
    v64.size.height = v43;
    CGRectGetMaxX(v64);
    v65.origin.y = 0.0;
    v65.origin.x = v45;
    v65.size.width = v41;
    v65.size.height = v43;
    v46 = CGRectGetMaxY(v65);
    if (!self->_showOverlayDate)
    {
      return;
    }

    v47 = v46;
    [(UILabel *)self->_overlayLabel sizeThatFits:1.79769313e308, 1.79769313e308];
    v49 = v48;
    v58 = 0.0;
    [(DayTwoPartLabel *)self _heightIncludingAscenderDescenderForLabel:self->_overlayLabel outOutsetHeightDiff:&v58];
    v51 = v50;
    [(UILabel *)self->_entireString frame];
    v53 = v52;
    [(UILabel *)self->_entireString frame];
    v55 = v53 + (v54 - v49) * 0.5;
    [(DayTwoPartLabel *)self _verticalSpacingForOutsetHeightDiff:v58];
    v37 = v47 + v56;
    overlayLabel = self->_overlayLabel;
    v36 = v55;
    v33 = v49;
    v34 = v51;
  }

  [(UILabel *)overlayLabel setFrame:v36, v37, v33, v34, *&MaxX];
}

- (DayTwoPartLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CUIKIsWeekdayNameFirst();

  return [(DayTwoPartLabel *)self initWithFrame:v8 useSeparateFormat:x, y, width, height];
}

- (DayTwoPartLabel)initWithFrame:(CGRect)a3 useSeparateFormat:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = DayTwoPartLabel;
  v5 = [(DayTwoPartLabel *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_useSeparateFormat = a4;
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(DayTwoPartLabel *)v6 setBackgroundColor:v7];

    [(DayTwoPartLabel *)v6 _createSubviews];
  }

  return v6;
}

- (void)_resetUI
{
  v8 = [(DayTwoPartLabel *)self backgroundColor];
  if (self->_useSeparateFormat)
  {
    v3 = &OBJC_IVAR___DayTwoPartLabel__firstLabel;
  }

  else
  {
    v3 = &OBJC_IVAR___DayTwoPartLabel__entireString;
  }

  v4 = [*(&self->super.super.super.isa + *v3) font];
  if (self->_useSeparateFormat)
  {
    [(UILabel *)self->_firstLabel removeFromSuperview];
    p_secondLabel = &self->_secondLabel;
    [(UILabel *)self->_secondLabel removeFromSuperview];
    firstLabel = self->_firstLabel;
    self->_firstLabel = 0;
  }

  else
  {
    p_secondLabel = &self->_entireString;
    [(UILabel *)self->_entireString removeFromSuperview];
  }

  v7 = *p_secondLabel;
  *p_secondLabel = 0;

  [(DayTwoPartLabel *)self _createSubviews];
  [(DayTwoPartLabel *)self _updateOverlayLabel];
  [(DayTwoPartLabel *)self setBackgroundColor:v8];
  [(DayTwoPartLabel *)self setFont:v4];
  [(DayTwoPartLabel *)self setDate:self->_date];
  [(DayTwoPartLabel *)self setNeedsLayout];
}

- (id)dayOfWeekString
{
  if (self->_dayNameOnLeft)
  {
    v2 = &OBJC_IVAR___DayTwoPartLabel__firstLabel;
  }

  else
  {
    v2 = &OBJC_IVAR___DayTwoPartLabel__secondLabel;
  }

  v3 = [*(&self->super.super.super.isa + *v2) text];

  return v3;
}

- (void)setDayOfWeekString:(id)a3
{
  if (self->_dayNameOnLeft)
  {
    v3 = &OBJC_IVAR___DayTwoPartLabel__firstLabel;
  }

  else
  {
    v3 = &OBJC_IVAR___DayTwoPartLabel__secondLabel;
  }

  [*(&self->super.super.super.isa + *v3) setText:a3];
}

- (id)dateYearString
{
  if (self->_dayNameOnLeft)
  {
    v2 = &OBJC_IVAR___DayTwoPartLabel__secondLabel;
  }

  else
  {
    v2 = &OBJC_IVAR___DayTwoPartLabel__firstLabel;
  }

  v3 = [*(&self->super.super.super.isa + *v2) text];

  return v3;
}

- (void)setDateYearString:(id)a3
{
  if (self->_dayNameOnLeft)
  {
    v3 = &OBJC_IVAR___DayTwoPartLabel__secondLabel;
  }

  else
  {
    v3 = &OBJC_IVAR___DayTwoPartLabel__firstLabel;
  }

  [*(&self->super.super.super.isa + *v3) setText:a3];
}

- (void)setDate:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_date, a3);
  if (self->_date)
  {
    if (self->_useSeparateFormat)
    {
      v5 = CUIKCalendar();
      v6 = [v5 components:512 fromDate:v10];

      [v6 weekday];
      v7 = CUIKStringForDayOfWeek();
      v8 = CUIKLongStringForDateWithCommaAndYear();
      [(DayTwoPartLabel *)self setDayOfWeekString:v7];
      [(DayTwoPartLabel *)self setDateYearString:v8];
    }

    else
    {
      if ([(DayTwoPartLabel *)self useEmDashFormat])
      {
        if (self->_showOverlayDate)
        {
          CUIKAbbreviatedEnDashDayStringForDate();
        }

        else
        {
          CUIKEnDashDayStringForDate();
        }
      }

      else if (self->_showOverlayDate)
      {
        CUIKStringForDateAndDayOfWeekInCalendarTimezone();
      }

      else
      {
        CUIKLongDayStringForDate();
      }
      v9 = ;
      v6 = v9;
      [(UILabel *)self->_entireString setText:v9];
    }

    [(DayTwoPartLabel *)self _updateOverlayLabel];
  }
}

- (void)setShowOverlayDate:(BOOL)a3
{
  if (self->_showOverlayDate != a3)
  {
    self->_showOverlayDate = a3;
    [(DayTwoPartLabel *)self _resetUI];
  }
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_useSeparateFormat)
  {
    [(UILabel *)self->_firstLabel setFont:v4];
    v5 = v7;
    v6 = &OBJC_IVAR___DayTwoPartLabel__secondLabel;
  }

  else
  {
    v5 = v4;
    v6 = &OBJC_IVAR___DayTwoPartLabel__entireString;
  }

  [*(&self->super.super.super.isa + *v6) setFont:v5];
  if (self->_showOverlayDate)
  {
    [(UILabel *)self->_overlayLabel setFont:v7];
  }

  [(DayTwoPartLabel *)self setNeedsLayout];
}

- (UIFont)font
{
  if (self->_useSeparateFormat)
  {
    v2 = &OBJC_IVAR___DayTwoPartLabel__firstLabel;
  }

  else
  {
    v2 = &OBJC_IVAR___DayTwoPartLabel__entireString;
  }

  v3 = [*(&self->super.super.super.isa + *v2) font];

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = DayTwoPartLabel;
  [(DayTwoPartLabel *)&v6 setBackgroundColor:v4];
  if (self->_useSeparateFormat)
  {
    [(UILabel *)self->_firstLabel setBackgroundColor:v4];
    v5 = &OBJC_IVAR___DayTwoPartLabel__secondLabel;
  }

  else
  {
    v5 = &OBJC_IVAR___DayTwoPartLabel__entireString;
  }

  [*(&self->super.super.super.isa + *v5) setBackgroundColor:v4];
  if (self->_showOverlayDate)
  {
    [(UILabel *)self->_overlayLabel setBackgroundColor:v4];
  }
}

- (double)_verticalSpacingForOutsetHeightDiff:(double)a3
{
  v3 = a3 <= 0.0;
  result = 6.0;
  if (!v3)
  {
    return 1.0;
  }

  return result;
}

- (double)_heightIncludingAscenderDescenderForLabel:(id)a3 outOutsetHeightDiff:(double *)a4
{
  v5 = a3;
  [v5 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v7 = v6;
  v8 = objc_alloc(MEMORY[0x1E696AD40]);
  v9 = [v5 text];
  v10 = [v8 initWithString:v9];

  v11 = *MEMORY[0x1E69DB648];
  v12 = [v5 font];

  [v10 addAttribute:v11 value:v12 range:{0, objc_msgSend(v10, "length")}];
  [v10 boundingRectWithSize:8 options:0 context:{1.79769313e308, 1.79769313e308}];
  v15 = v14 - v13;
  if (a4)
  {
    *a4 = v15 - v7;
  }

  v16 = fmax(v7, v15);

  return v16;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self->_useSeparateFormat)
  {
    [(UILabel *)self->_firstLabel sizeThatFits:1.79769313e308, 1.79769313e308];
    v5 = v4;
    v7 = v6;
    [(UILabel *)self->_secondLabel sizeThatFits:1.79769313e308, 1.79769313e308];
    v9 = fmax(v7, v8);
    v11 = v5 + v10 + 10.0;
  }

  else
  {
    [(UILabel *)self->_entireString sizeThatFits:1.79769313e308, 1.79769313e308];
    v11 = v12;
    [(DayTwoPartLabel *)self _heightIncludingAscenderDescenderForLabel:self->_entireString outOutsetHeightDiff:0];
    v9 = v13;
  }

  if (self->_showOverlayDate)
  {
    overlayLabel = self->_overlayLabel;
    if (overlayLabel)
    {
      v15 = [(UILabel *)overlayLabel text];

      if (v15)
      {
        [(UILabel *)self->_overlayLabel sizeThatFits:1.79769313e308, 1.79769313e308];
        v17 = v16;
        v23 = 0.0;
        [(DayTwoPartLabel *)self _heightIncludingAscenderDescenderForLabel:self->_overlayLabel outOutsetHeightDiff:&v23];
        v19 = v18;
        v11 = fmax(v11, v17);
        [(DayTwoPartLabel *)self _verticalSpacingForOutsetHeightDiff:v23];
        v9 = v9 + v19 + v20;
      }
    }
  }

  v21 = v11;
  v22 = v9;
  result.height = v22;
  result.width = v21;
  return result;
}

- (id)createCopy
{
  v3 = objc_alloc_init(DayTwoPartLabel);
  [(DayTwoPartLabel *)self frame];
  [(DayTwoPartLabel *)v3 setFrame:?];
  v4 = [(DayTwoPartLabel *)self backgroundColor];
  [(DayTwoPartLabel *)v3 setBackgroundColor:v4];

  v3->_showOverlayDate = self->_showOverlayDate;
  objc_storeStrong(&v3->_date, self->_date);
  v3->_useSeparateFormat = self->_useSeparateFormat;
  v3->_dayNameOnLeft = self->_dayNameOnLeft;
  [(DayTwoPartLabel *)v3 _resetUI];
  [(DayTwoPartLabel *)self _copyLabelParametersFrom:self->_firstLabel to:v3->_firstLabel];
  [(DayTwoPartLabel *)self _copyLabelParametersFrom:self->_secondLabel to:v3->_secondLabel];
  [(DayTwoPartLabel *)self _copyLabelParametersFrom:self->_entireString to:v3->_entireString];
  [(DayTwoPartLabel *)self _copyLabelParametersFrom:self->_overlayLabel to:v3->_overlayLabel];
  [(DayTwoPartLabel *)v3 sizeToFit];

  return v3;
}

- (void)_copyLabelParametersFrom:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 frame];
  [v5 setFrame:?];
  v7 = [v6 font];
  [v5 setFont:v7];

  v8 = [v6 text];
  [v5 setText:v8];

  v9 = [v6 backgroundColor];

  [v5 setBackgroundColor:v9];
}

- (double)baselineOffsetFromBoundsTop
{
  if (self->_useSeparateFormat)
  {
    v2 = &OBJC_IVAR___DayTwoPartLabel__firstLabel;
  }

  else
  {
    v2 = &OBJC_IVAR___DayTwoPartLabel__entireString;
  }

  v3 = *(&self->super.super.super.isa + *v2);
  [v3 frame];
  MinY = CGRectGetMinY(v8);
  [v3 _firstLineBaselineOffsetFromBoundsTop];
  v6 = v5;

  return MinY + v6;
}

@end