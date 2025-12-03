@interface TappableDayNumber
+ (double)firstLineBaselineOffsetForFontSize:(double)size;
+ (id)normalFontForSize:(double)size;
+ (id)overlayFontForSize:(double)size;
- (CGRect)contentFrame;
- (CGRect)dayCircleFrame;
- (CGRect)numberFrame;
- (CGRect)primaryNumberFrame;
- (CGSize)_cachedSizeForLabel:(id)label;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TappableDayNumber)initWithSizeClass:(int64_t)class;
- (UILabel)titleLabel;
- (double)firstLineBaselineOffsetFromBoundsTop;
- (id)_circledFont;
- (id)_normalFont;
- (id)_overlayFont;
- (id)_pressColor;
- (id)_textColor;
- (void)_createSubviews;
- (void)_forceLayoutIfNeeded;
- (void)_loadCircleIfNeeded;
- (void)_loadCircledNumberIfNeeded;
- (void)_loadCircledOverlayIfNeeded;
- (void)_loadOverlayIfNeeded;
- (void)_loadPressIfNeeded;
- (void)_loadUnderlineIfNeeded;
- (void)_updateCircleColor;
- (void)_updateSubviewAlphaForCircled:(BOOL)circled pressed:(BOOL)pressed;
- (void)_updateTextColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setCircled:(BOOL)circled animated:(BOOL)animated;
- (void)setCircledDefaultDayNumberColor:(id)color;
- (void)setDefaultCircleColor:(id)color;
- (void)setFontSize:(double)size;
- (void)setIsToday:(BOOL)today;
- (void)setIsWeekend:(BOOL)weekend;
- (void)setNeedsDisplay;
- (void)setOverlayFontSize:(double)size;
- (void)setOverlayText:(id)text;
- (void)setPressed:(BOOL)pressed animated:(BOOL)animated;
- (void)setText:(id)text;
- (void)setTodayCircleColor:(id)color;
- (void)setUnderlineThickness:(double)thickness;
- (void)setUsesRoundedRectInsteadOfCircle:(BOOL)circle;
- (void)setWeekendColor:(id)color;
- (void)tintColorDidChange;
@end

@implementation TappableDayNumber

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = TappableDayNumber;
  [(TappableDayNumber *)&v3 setNeedsDisplay];
  [(DayCircleView *)self->_circle setNeedsDisplay];
}

- (void)_createSubviews
{
  v3 = objc_alloc_init(UILabel);
  number = self->_number;
  self->_number = v3;

  _normalFont = [(TappableDayNumber *)self _normalFont];
  [(UILabel *)self->_number setFont:_normalFont];

  [(UILabel *)self->_number setTextAlignment:1];
  v6 = +[UIColor labelColor];
  [(UILabel *)self->_number setTextColor:v6];

  v7 = +[UIColor clearColor];
  [(UILabel *)self->_number setBackgroundColor:v7];

  v8 = self->_number;

  [(TappableDayNumber *)self addSubview:v8];
}

- (id)_normalFont
{
  v3 = objc_opt_class();
  [(TappableDayNumber *)self fontSize];

  return [v3 normalFontForSize:?];
}

- (void)_updateTextColor
{
  _textColor = [(TappableDayNumber *)self _textColor];
  [(UILabel *)self->_number setTextColor:_textColor];

  _textColor2 = [(TappableDayNumber *)self _textColor];
  [(UILabel *)self->_overlay setTextColor:_textColor2];

  if (self->_isToday)
  {
    v5 = +[UIColor whiteColor];
    [(UILabel *)self->_numberCircled setTextColor:v5];

    v8 = +[UIColor whiteColor];
    [(UILabel *)self->_overlayCircled setTextColor:v8];
  }

  else
  {
    [(UILabel *)self->_numberCircled setTextColor:self->_circledDefaultDayNumberColor];
    circledDefaultDayNumberColor = self->_circledDefaultDayNumberColor;
    overlayCircled = self->_overlayCircled;

    [(UILabel *)overlayCircled setTextColor:circledDefaultDayNumberColor];
  }
}

- (id)_textColor
{
  if (self->_isToday)
  {
    v2 = CalendarAppTintColor();
  }

  else if (self->_isWeekend)
  {
    weekendColor = self->_weekendColor;
    if (weekendColor)
    {
      v2 = weekendColor;
    }

    else
    {
      v2 = WeekendTextColor();
    }
  }

  else
  {
    v2 = +[UIColor labelColor];
  }

  return v2;
}

- (id)_pressColor
{
  if (self->_isToday)
  {
    v2 = CalendarAppTintColor();
    v3 = [v2 colorWithAlphaComponent:0.1];
  }

  else
  {
    v3 = [UIColor colorWithWhite:0.0 alpha:0.1];
  }

  return v3;
}

- (void)_updateCircleColor
{
  if (self->_isToday)
  {
    v2 = &OBJC_IVAR___TappableDayNumber__todayCircleColor;
  }

  else
  {
    v2 = &OBJC_IVAR___TappableDayNumber__defaultCircleColor;
  }

  [(DayCircleView *)self->_circle setColor:*(&self->super.super.super.super.isa + *v2)];
}

- (void)_loadCircleIfNeeded
{
  if (!self->_circle)
  {
    v3 = objc_opt_new();
    circle = self->_circle;
    self->_circle = v3;

    v5 = 0.0;
    if (self->_circled)
    {
      v5 = 1.0;
    }

    [(DayCircleView *)self->_circle setAlpha:v5];
    _backgroundColor = [(TappableDayNumber *)self _backgroundColor];
    [(DayCircleView *)self->_circle setBackgroundColor:_backgroundColor];

    [(DayCircleView *)self->_circle setUsesRoundedRectInsteadOfCircle:[(TappableDayNumber *)self usesRoundedRectInsteadOfCircle]];
    [(TappableDayNumber *)self _updateCircleColor];
    pressCircle = self->_pressCircle;
    if (!pressCircle)
    {
      pressCircle = self->_number;
    }

    [(TappableDayNumber *)self insertSubview:self->_circle aboveSubview:pressCircle];
    [(TappableDayNumber *)self _loadCircledNumberIfNeeded];

    [(TappableDayNumber *)self _loadCircledOverlayIfNeeded];
  }
}

- (void)_loadCircledNumberIfNeeded
{
  if (!self->_numberCircled)
  {
    v3 = [UILabel alloc];
    [(UILabel *)self->_number frame];
    v4 = [v3 initWithFrame:?];
    numberCircled = self->_numberCircled;
    self->_numberCircled = v4;

    _circledFont = [(TappableDayNumber *)self _circledFont];
    [(UILabel *)self->_numberCircled setFont:_circledFont];

    [(UILabel *)self->_numberCircled setTextAlignment:1];
    v7 = +[UIColor clearColor];
    [(UILabel *)self->_numberCircled setBackgroundColor:v7];

    if (self->_isToday)
    {
      +[UIColor whiteColor];
    }

    else
    {
      CalendarAppCircleTextColor();
    }
    v8 = ;
    [(UILabel *)self->_numberCircled setTextColor:v8];

    v9 = 1.0;
    if (!self->_circled)
    {
      v9 = 0.0;
      if (self->_pressed)
      {
        v9 = 1.0;
      }
    }

    [(UILabel *)self->_numberCircled setAlpha:v9];
    text = [(UILabel *)self->_number text];
    [(UILabel *)self->_numberCircled setText:text];

    v11 = self->_numberCircled;

    [(TappableDayNumber *)self addSubview:v11];
  }
}

- (id)_circledFont
{
  v3 = objc_opt_class();
  [(TappableDayNumber *)self fontSize];

  return [v3 circledFontForSize:?];
}

- (void)_loadCircledOverlayIfNeeded
{
  if (!self->_overlayCircled && self->_overlay)
  {
    v3 = [UILabel alloc];
    [(UILabel *)self->_overlay frame];
    v4 = [v3 initWithFrame:?];
    overlayCircled = self->_overlayCircled;
    self->_overlayCircled = v4;

    _circledOverlayFont = [(TappableDayNumber *)self _circledOverlayFont];
    [(UILabel *)self->_overlayCircled setFont:_circledOverlayFont];

    [(UILabel *)self->_overlayCircled setTextAlignment:1];
    v7 = +[UIColor clearColor];
    [(UILabel *)self->_overlayCircled setBackgroundColor:v7];

    if (self->_isToday)
    {
      +[UIColor whiteColor];
    }

    else
    {
      CalendarAppCircleTextColor();
    }
    v8 = ;
    [(UILabel *)self->_overlayCircled setTextColor:v8];

    v9 = 1.0;
    if (!self->_circled)
    {
      v9 = 0.0;
      if (self->_pressed)
      {
        v9 = 1.0;
      }
    }

    [(UILabel *)self->_overlayCircled setAlpha:v9];
    text = [(UILabel *)self->_overlay text];
    [(UILabel *)self->_overlayCircled setText:text];

    v11 = self->_overlayCircled;

    [(TappableDayNumber *)self addSubview:v11];
  }
}

- (CGRect)dayCircleFrame
{
  [(TappableDayNumber *)self bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGRectGetMidY(v16);
  if (![(TappableDayNumber *)self usesRoundedRectInsteadOfCircle])
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v7 = CGRectGetWidth(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    height = fmin(v7, CGRectGetHeight(v18));
    width = height;
  }

  CalRoundToScreenScale();
  v9 = v8;
  CalRoundToScreenScale();
  v11 = v10;
  v12 = v9;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = TappableDayNumber;
  [(TappableDayNumber *)&v3 tintColorDidChange];
  [(TappableDayNumber *)self _updateCircleColor];
}

- (void)layoutSubviews
{
  self->_needsToForceLayout = 0;
  v48.receiver = self;
  v48.super_class = TappableDayNumber;
  [(TappableDayNumber *)&v48 layoutSubviews];
  [(TappableDayNumber *)self bounds];
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  CGRectGetMidX(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  CGRectGetMidY(v50);
  v7 = CGRectNull.origin.y;
  [(TappableDayNumber *)self _cachedSizeForLabel:self->_number];
  v9 = v8;
  v11 = v10;
  v51.origin.x = CGRectNull.origin.x;
  v51.origin.y = v7;
  v51.size.width = v9;
  v51.size.height = v11;
  CGRectGetWidth(v51);
  CalRoundToScreenScale();
  v12 = v52.origin.x;
  v52.origin.y = v7;
  v52.size.width = v9;
  v52.size.height = v11;
  CGRectGetHeight(v52);
  [objc_opt_class() _yOffsetForNumber];
  CalRoundToScreenScale();
  v14 = v13;
  rect = v7;
  if (self->_overlay)
  {
    [(TappableDayNumber *)self _cachedSizeForLabel:?];
    v46 = v12;
    v16 = v15;
    v18 = v17;
    v53.origin.x = CGRectNull.origin.x;
    v53.origin.y = v7;
    v53.size.width = v16;
    v53.size.height = v18;
    CGRectGetHeight(v53);
    CalRoundToScreenScale();
    v14 = v14 - v19;
    v54.origin.x = CGRectNull.origin.x;
    v54.origin.y = v7;
    v54.size.width = v16;
    v54.size.height = v18;
    CGRectGetWidth(v54);
    CalRoundToScreenScale();
    v21 = v20;
    v22 = v46;
    v55.origin.x = v46;
    v55.origin.y = v14;
    v55.size.width = v9;
    v55.size.height = v11;
    CGRectGetMaxY(v55);
    CalRoundToScreenScale();
    [(UILabel *)self->_overlay setFrame:v21, v23, v16, v18];
    if (self->_underline)
    {
      [(UILabel *)self->_overlay frame];
      v24 = v56.origin.x;
      v25 = v56.size.width;
      CGRectGetMaxY(v56);
      CalRoundToScreenScale();
      v27 = v26;
      CalRoundToScreenScale();
      [(UIView *)self->_underline setFrame:v24, v27, v25, v28];
    }
  }

  else
  {
    v22 = v12;
  }

  [(UILabel *)self->_number setFrame:v22, v14, v9, v11, *&v46];
  if (self->_circled)
  {
    [(TappableDayNumber *)self dayCircleFrame];
    [(DayCircleView *)self->_circle setFrame:?];
    [(UILabel *)self->_number sizeToFit];
    [(UILabel *)self->_numberCircled sizeToFit];
    [(TappableDayNumber *)self _cachedSizeForLabel:self->_numberCircled];
    v30 = v29;
    v32 = v31;
    v57.origin.x = CGRectNull.origin.x;
    v57.origin.y = rect;
    v57.size.width = v30;
    v57.size.height = v32;
    CGRectGetWidth(v57);
    text = [(UILabel *)self->_numberCircled text];
    font = [(UILabel *)self->_numberCircled font];
    CalOffsetToCenterNumberWithFont();
    CalRoundToScreenScale();
    v36 = v35;

    [(UILabel *)self->_number frame];
    CGRectGetMinY(v58);
    [(UILabel *)self->_number _firstLineBaselineOffsetFromBoundsTop];
    [(UILabel *)self->_numberCircled _firstLineBaselineOffsetFromBoundsTop];
    CalRoundToScreenScale();
    v38 = v37;
    [(UILabel *)self->_numberCircled setFrame:v36, v37, v30, v32];
    if (self->_overlayCircled)
    {
      [(TappableDayNumber *)self _cachedSizeForLabel:?];
      v40 = v39;
      v59.origin.x = CGRectNull.origin.x;
      v42 = v41;
      v59.origin.y = rect;
      v59.size.width = v40;
      v59.size.height = v42;
      CGRectGetWidth(v59);
      CalRoundToScreenScale();
      v44 = v43;
      v60.origin.x = v36;
      v60.origin.y = v38;
      v60.size.width = v30;
      v60.size.height = v32;
      CGRectGetMaxY(v60);
      CalRoundToScreenScale();
      [(UILabel *)self->_overlayCircled setFrame:v44, v45, v40, v42];
    }
  }
}

- (TappableDayNumber)initWithSizeClass:(int64_t)class
{
  v14.receiver = self;
  v14.super_class = TappableDayNumber;
  v4 = [(TappableDayNumber *)&v14 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v6 = 18.0;
    if (class == 2)
    {
      v6 = 17.0;
    }

    v4->_fontSize = v6;
    v4->_overlayFontSize = 10.0;
    v7 = CalendarAppTintColor();
    todayCircleColor = v5->_todayCircleColor;
    v5->_todayCircleColor = v7;

    v9 = CalendarAppCircleNonTodayBGColor();
    defaultCircleColor = v5->_defaultCircleColor;
    v5->_defaultCircleColor = v9;

    v11 = CalendarAppCircleTextColor();
    circledDefaultDayNumberColor = v5->_circledDefaultDayNumberColor;
    v5->_circledDefaultDayNumberColor = v11;

    [(TappableDayNumber *)v5 _createSubviews];
  }

  return v5;
}

- (void)setCircledDefaultDayNumberColor:(id)color
{
  objc_storeStrong(&self->_circledDefaultDayNumberColor, color);

  [(TappableDayNumber *)self _updateTextColor];
}

- (void)setTodayCircleColor:(id)color
{
  objc_storeStrong(&self->_todayCircleColor, color);

  [(TappableDayNumber *)self _updateCircleColor];
}

- (void)setDefaultCircleColor:(id)color
{
  objc_storeStrong(&self->_defaultCircleColor, color);

  [(TappableDayNumber *)self _updateCircleColor];
}

- (void)_forceLayoutIfNeeded
{
  if (self->_needsToForceLayout)
  {
    [(TappableDayNumber *)self layoutSubviews];
  }

  else
  {
    [(TappableDayNumber *)self layoutIfNeeded];
  }
}

- (void)_loadPressIfNeeded
{
  if (!self->_pressCircle)
  {
    v3 = [DayCircleView alloc];
    [(TappableDayNumber *)self bounds];
    v4 = [(DayCircleView *)v3 initWithFrame:?];
    pressCircle = self->_pressCircle;
    self->_pressCircle = v4;

    [(DayCircleView *)self->_pressCircle setAutoresizingMask:18];
    _pressColor = [(TappableDayNumber *)self _pressColor];
    [(DayCircleView *)self->_pressCircle setColor:_pressColor];

    backgroundColor = [(TappableDayNumber *)self backgroundColor];
    [(DayCircleView *)self->_pressCircle setBackgroundColor:backgroundColor];

    v8 = 0.0;
    if (self->_pressed)
    {
      v8 = 1.0;
    }

    [(DayCircleView *)self->_pressCircle setAlpha:v8];
    [(DayCircleView *)self->_pressCircle setUsesRoundedRectInsteadOfCircle:[(TappableDayNumber *)self usesRoundedRectInsteadOfCircle]];
    [(TappableDayNumber *)self insertSubview:self->_pressCircle belowSubview:self->_number];

    [(TappableDayNumber *)self _loadCircledNumberIfNeeded];
  }
}

- (void)_loadOverlayIfNeeded
{
  if (!self->_overlay)
  {
    v3 = objc_alloc_init(UILabel);
    overlay = self->_overlay;
    self->_overlay = v3;

    _overlayFont = [(TappableDayNumber *)self _overlayFont];
    [(UILabel *)self->_overlay setFont:_overlayFont];

    [(UILabel *)self->_overlay setTextAlignment:1];
    v6 = +[UIColor labelColor];
    [(UILabel *)self->_overlay setTextColor:v6];

    v7 = +[UIColor clearColor];
    [(UILabel *)self->_overlay setBackgroundColor:v7];

    v8 = self->_overlay;

    [(TappableDayNumber *)self addSubview:v8];
  }
}

- (void)_loadUnderlineIfNeeded
{
  if (!self->_underline)
  {
    v3 = objc_opt_new();
    underline = self->_underline;
    self->_underline = v3;

    v5 = CalendarAppTintColor();
    [(UIView *)self->_underline setBackgroundColor:v5];

    v6 = self->_underline;

    [(TappableDayNumber *)self addSubview:v6];
  }
}

- (void)setText:(id)text
{
  number = self->_number;
  textCopy = text;
  [(UILabel *)number setText:textCopy];
  [(UILabel *)self->_numberCircled setText:textCopy];

  [(TappableDayNumber *)self setNeedsLayout];
  self->_needsToForceLayout = 1;
}

- (void)setOverlayText:(id)text
{
  textCopy = text;
  text = [(UILabel *)self->_overlay text];
  if (text == textCopy)
  {
  }

  else
  {
    text2 = [(UILabel *)self->_overlay text];
    v6 = [textCopy isEqualToString:text2];

    v7 = textCopy;
    if (v6)
    {
      goto LABEL_11;
    }

    if (textCopy)
    {
      [(TappableDayNumber *)self _loadOverlayIfNeeded];
      if (self->_circled)
      {
        [(TappableDayNumber *)self _loadCircledOverlayIfNeeded];
      }

      [(UILabel *)self->_overlay setText:textCopy];
      [(UILabel *)self->_overlayCircled setText:textCopy];
      [(TappableDayNumber *)self _updateTextColor];
    }

    else
    {
      [(UILabel *)self->_overlayCircled removeFromSuperview];
      overlayCircled = self->_overlayCircled;
      self->_overlayCircled = 0;

      [(UILabel *)self->_overlay removeFromSuperview];
      overlay = self->_overlay;
      self->_overlay = 0;
    }

    [(TappableDayNumber *)self setNeedsLayout];
    self->_needsToForceLayout = 1;
  }

  v7 = textCopy;
LABEL_11:
}

- (void)setUnderlineThickness:(double)thickness
{
  if (self->_underlineThickness != thickness)
  {
    v11 = v3;
    self->_underlineThickness = thickness;
    if (thickness <= 0.0)
    {
      [(UIView *)self->_underline removeFromSuperview];
      underline = self->_underline;
      self->_underline = 0;
    }

    else
    {
      [(TappableDayNumber *)self _loadUnderlineIfNeeded];
      [(TappableDayNumber *)self _updateSubviewAlpha];
      [(TappableDayNumber *)self setNeedsLayout];
      self->_needsToForceLayout = 1;
    }

    [(TappableDayNumber *)self setNeedsLayout:v6];
    self->_needsToForceLayout = 1;
  }
}

- (void)setIsToday:(BOOL)today
{
  if (self->_isToday != today)
  {
    self->_isToday = today;
    _pressColor = [(TappableDayNumber *)self _pressColor];
    [(DayCircleView *)self->_pressCircle setColor:_pressColor];

    [(TappableDayNumber *)self _updateCircleColor];

    [(TappableDayNumber *)self _updateTextColor];
  }
}

- (void)setIsWeekend:(BOOL)weekend
{
  if (self->_isWeekend != weekend)
  {
    self->_isWeekend = weekend;
    [(TappableDayNumber *)self _updateTextColor];
  }
}

- (void)setWeekendColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_weekendColor] & 1) == 0)
  {
    objc_storeStrong(&self->_weekendColor, color);
    [(TappableDayNumber *)self _updateTextColor];
  }
}

- (void)setCircled:(BOOL)circled animated:(BOOL)animated
{
  if (self->_circled != circled)
  {
    animatedCopy = animated;
    circledCopy = circled;
    self->_circled = circled;
    [(TappableDayNumber *)self _loadCircleIfNeeded];
    [(TappableDayNumber *)self dayCircleFrame];
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    if (animatedCopy)
    {
      v15 = (v10 - v10 * 0.3) * 0.5;
      if (self->_circleAnimating)
      {
        [(TappableDayNumber *)self _updateSubviewAlphaForCircled:circledCopy pressed:self->_pressed];
        circle = self->_circle;
        if (circledCopy)
        {
          v17 = v11;
          v18 = v12;
          v19 = v13;
          v20 = v14;
        }

        else
        {
          v17 = (v13 - v13 * 0.3) * 0.5;
          v18 = v15;
          v19 = v13 * 0.3;
          v20 = v14 * 0.3;
        }

        [(DayCircleView *)circle setFrame:v17, v18, v19, v20];
      }

      else
      {
        self->_circleAnimating = 1;
        [(TappableDayNumber *)self _updateSubviewAlphaForCircled:circledCopy ^ 1 pressed:self->_pressed];
        if (circledCopy)
        {
          v21 = (v13 - v13 * 0.3) * 0.5;
        }

        else
        {
          v21 = v11;
        }

        if (circledCopy)
        {
          v22 = v15;
        }

        else
        {
          v22 = v12;
        }

        if (circledCopy)
        {
          v23 = v13 * 0.3;
        }

        else
        {
          v23 = v13;
        }

        if (circledCopy)
        {
          v24 = v14 * 0.3;
        }

        else
        {
          v24 = v14;
        }

        [(DayCircleView *)self->_circle setFrame:v21, v22, v23, v24];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100069038;
        v26[3] = &unk_10020FAB8;
        v26[4] = self;
        v27 = circledCopy;
        *&v26[5] = v11;
        *&v26[6] = v12;
        *&v26[7] = v13;
        *&v26[8] = v14;
        *&v26[9] = (v13 - v13 * 0.3) * 0.5;
        *&v26[10] = v15;
        *&v26[11] = v13 * 0.3;
        *&v26[12] = v14 * 0.3;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000690D8;
        v25[3] = &unk_10020EB98;
        v25[4] = self;
        [UIView animateWithDuration:0 delay:v26 usingSpringWithDamping:v25 initialSpringVelocity:0.3 options:0.0 animations:0.9 completion:0.0];
      }
    }

    else
    {
      [(DayCircleView *)self->_circle setFrame:v7, v8, v9, v10];

      [(TappableDayNumber *)self _updateSubviewAlpha];
    }
  }
}

- (void)setPressed:(BOOL)pressed animated:(BOOL)animated
{
  if (self->_pressed != pressed)
  {
    if (pressed)
    {
      [(TappableDayNumber *)self _loadPressIfNeeded:pressed];
      self->_pressed = pressed;
    }

    else
    {
      self->_pressed = 0;
      if (animated)
      {
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_10006921C;
        v6[3] = &unk_10020EB00;
        v6[4] = self;
        [UIView animateWithDuration:327680 delay:v6 options:0 animations:0.5 completion:0.0];
LABEL_7:
        [(TappableDayNumber *)self setNeedsLayout];
        self->_needsToForceLayout = 1;
        return;
      }
    }

    [(TappableDayNumber *)self _updateSubviewAlpha];
    goto LABEL_7;
  }
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = TappableDayNumber;
  colorCopy = color;
  [(TappableDayNumber *)&v5 setBackgroundColor:colorCopy];
  [(DayCircleView *)self->_circle setBackgroundColor:colorCopy, v5.receiver, v5.super_class];
  [(DayCircleView *)self->_pressCircle setBackgroundColor:colorCopy];
}

- (void)setFontSize:(double)size
{
  if (vabdd_f64(self->_fontSize, size) >= 2.22044605e-16)
  {
    self->_fontSize = size;
    _normalFont = [(TappableDayNumber *)self _normalFont];
    [(UILabel *)self->_number setFont:_normalFont];

    _circledFont = [(TappableDayNumber *)self _circledFont];
    [(UILabel *)self->_numberCircled setFont:_circledFont];
  }
}

- (void)setOverlayFontSize:(double)size
{
  if (vabdd_f64(self->_overlayFontSize, size) >= 2.22044605e-16)
  {
    self->_overlayFontSize = size;
    _overlayFont = [(TappableDayNumber *)self _overlayFont];
    [(UILabel *)self->_overlay setFont:_overlayFont];

    _circledOverlayFont = [(TappableDayNumber *)self _circledOverlayFont];
    [(UILabel *)self->_overlayCircled setFont:_circledOverlayFont];
  }
}

- (void)setUsesRoundedRectInsteadOfCircle:(BOOL)circle
{
  if (self->_usesRoundedRectInsteadOfCircle != circle)
  {
    circleCopy = circle;
    self->_usesRoundedRectInsteadOfCircle = circle;
    [(DayCircleView *)self->_circle setUsesRoundedRectInsteadOfCircle:?];
    pressCircle = self->_pressCircle;

    [(DayCircleView *)pressCircle setUsesRoundedRectInsteadOfCircle:circleCopy];
  }
}

- (void)_updateSubviewAlphaForCircled:(BOOL)circled pressed:(BOOL)pressed
{
  if (pressed)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (circled)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  number = self->_number;
  if (circled)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  if (circled)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  [(UILabel *)number setAlpha:v6, 1.0, v5];
  [(UILabel *)self->_overlay setAlpha:v6];
  [(UIView *)self->_underline setAlpha:v6];
  [(DayCircleView *)self->_circle setAlpha:v8];
  [(UILabel *)self->_numberCircled setAlpha:v8];
  [(UILabel *)self->_overlayCircled setAlpha:v8];
  pressCircle = self->_pressCircle;

  [(DayCircleView *)pressCircle setAlpha:v9];
}

- (CGSize)_cachedSizeForLabel:(id)label
{
  labelCopy = label;
  if (qword_100251960 != -1)
  {
    sub_10016FE40();
  }

  font = [labelCopy font];
  text = [labelCopy text];
  v6 = text;
  if (font && text)
  {
    v7 = [qword_100251958 objectForKey:font];
    if (!v7)
    {
      v7 = objc_opt_new();
      [qword_100251958 setObject:v7 forKey:font];
    }

    v8 = [v7 objectForKey:v6];
    if (!v8)
    {
      [labelCopy intrinsicContentSize];
      CalCeilToScreenScale();
      v10 = v9;
      CalCeilToScreenScale();
      v8 = [NSValue valueWithSize:v10, v11];
      [v7 setObject:v8 forKey:v6];
    }

    [v8 sizeValue];
    width = v12;
    height = v14;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGRect)contentFrame
{
  [(TappableDayNumber *)self _forceLayoutIfNeeded];
  if (self->_circled)
  {
    [(DayCircleView *)self->_circle frame];
LABEL_7:
    x = v3;
    y = v4;
    width = v5;
    height = v6;
    goto LABEL_8;
  }

  [(UILabel *)self->_number frame];
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  overlay = self->_overlay;
  if (overlay)
  {
    [(UILabel *)overlay frame];
    v33.origin.x = v16;
    v33.origin.y = v17;
    v33.size.width = v18;
    v33.size.height = v19;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v30 = CGRectUnion(v29, v33);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
  }

  underline = self->_underline;
  if (underline)
  {
    [(UIView *)underline frame];
    v34.origin.x = v21;
    v34.origin.y = v22;
    v34.size.width = v23;
    v34.size.height = v24;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    *&v3 = CGRectUnion(v31, v34);
    goto LABEL_7;
  }

LABEL_8:
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)numberFrame
{
  [(TappableDayNumber *)self _forceLayoutIfNeeded];
  if (self->_circled)
  {
    [(UILabel *)self->_numberCircled frame];
LABEL_7:
    x = v3;
    y = v4;
    width = v5;
    height = v6;
    goto LABEL_8;
  }

  [(UILabel *)self->_number frame];
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  overlay = self->_overlay;
  if (overlay)
  {
    [(UILabel *)overlay frame];
    v33.origin.x = v16;
    v33.origin.y = v17;
    v33.size.width = v18;
    v33.size.height = v19;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v30 = CGRectUnion(v29, v33);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
  }

  underline = self->_underline;
  if (underline)
  {
    [(UIView *)underline frame];
    v34.origin.x = v21;
    v34.origin.y = v22;
    v34.size.width = v23;
    v34.size.height = v24;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    *&v3 = CGRectUnion(v31, v34);
    goto LABEL_7;
  }

LABEL_8:
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)primaryNumberFrame
{
  [(TappableDayNumber *)self _forceLayoutIfNeeded];
  if (self->_circled)
  {
    v3 = &OBJC_IVAR___TappableDayNumber__numberCircled;
  }

  else
  {
    v3 = &OBJC_IVAR___TappableDayNumber__number;
  }

  v4 = *(&self->super.super.super.super.isa + *v3);

  [v4 frame];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (double)firstLineBaselineOffsetFromBoundsTop
{
  text = [(UILabel *)self->_number text];

  if (!text)
  {
    return 0.0;
  }

  [(TappableDayNumber *)self _forceLayoutIfNeeded];
  [(UILabel *)self->_number frame];
  MinY = CGRectGetMinY(v8);
  [(UILabel *)self->_number _firstLineBaselineOffsetFromBoundsTop];
  v6 = MinY + v5;
  [(TappableDayNumber *)self bounds];
  return v6 - CGRectGetMinY(v9);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_number sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (UILabel)titleLabel
{
  circled = [(TappableDayNumber *)self circled];
  v4 = &OBJC_IVAR___TappableDayNumber__number;
  if (circled)
  {
    v4 = &OBJC_IVAR___TappableDayNumber__numberCircled;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (id)_overlayFont
{
  v3 = objc_opt_class();
  [(TappableDayNumber *)self overlayFontSize];

  return [v3 overlayFontForSize:?];
}

+ (id)normalFontForSize:(double)size
{
  if (qword_100251970 != -1)
  {
    sub_10016FE54();
  }

  v4 = qword_100251968;
  v5 = [NSNumber numberWithDouble:size];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0 options:3];
    v6 = [UIFont fontWithDescriptor:v7 size:size];
    v8 = qword_100251968;
    v9 = [NSNumber numberWithDouble:size];
    [v8 setObject:v6 forKeyedSubscript:v9];
  }

  return v6;
}

+ (id)overlayFontForSize:(double)size
{
  if (qword_100251980 != -1)
  {
    sub_10016FE68();
  }

  v4 = qword_100251978;
  v5 = [NSNumber numberWithDouble:size];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0 options:3];
    v6 = [UIFont fontWithDescriptor:v7 size:size];
    v8 = qword_100251978;
    v9 = [NSNumber numberWithDouble:size];
    [v8 setObject:v6 forKeyedSubscript:v9];
  }

  return v6;
}

+ (double)firstLineBaselineOffsetForFontSize:(double)size
{
  if (qword_100251990 != -1)
  {
    sub_10016FE7C();
  }

  if (vabdd_f64(*&qword_100251998, size) >= 2.22044605e-16)
  {
    v5 = [self normalFontForSize:size];
    [qword_100251988 setFont:v5];

    qword_100251998 = *&size;
    [qword_100251988 sizeToFit];
  }

  [self _yOffsetForNumber];
  v7 = v6;
  [qword_100251988 _firstLineBaselineOffsetFromBoundsTop];
  return v7 + v8;
}

@end