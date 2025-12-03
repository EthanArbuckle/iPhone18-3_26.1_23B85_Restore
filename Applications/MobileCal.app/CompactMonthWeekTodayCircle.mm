@interface CompactMonthWeekTodayCircle
+ (CGSize)roundedRectSizeForNumberString:(id)string overlayString:(id)overlayString fontSize:(double)size overlayFontSize:(double)fontSize;
+ (double)roundedRectDayNumberBaselineOffsetWithOverlay:(BOOL)overlay fontSize:(double)size overlayFontSize:(double)fontSize;
- (CGRect)dayNumberFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CompactMonthWeekTodayCircle)initWithCalendarDate:(id)date;
- (id)_dayNumberFontForSize:(double)size;
- (void)_updateTextColor;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setDrawCircle:(BOOL)circle;
- (void)setFontOverride:(id)override;
- (void)setFontSize:(double)size;
- (void)setNonTodayColor:(id)color;
- (void)setOverlayFontSize:(double)size;
- (void)setShowOverlay:(BOOL)overlay;
- (void)setUseTodayColors:(BOOL)colors;
- (void)updateOverlay;
@end

@implementation CompactMonthWeekTodayCircle

- (CompactMonthWeekTodayCircle)initWithCalendarDate:(id)date
{
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = CompactMonthWeekTodayCircle;
  v6 = [(CompactMonthWeekTodayCircle *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendarDate, date);
    v7->_day = [dateCopy day];
    v8 = CUIKLocalizedStringForInteger();
    dayString = v7->_dayString;
    v7->_dayString = v8;

    v7->_drawCircle = 1;
    v7->_useTodayColors = 1;
    v7->_showOverlay = 0;
    v7->_fontSize = 18.0;
    v7->_overlayFontSize = 10.0;
    v10 = CalendarAppCircleNonTodayBGColor();
    nonTodayCircleColor = v7->_nonTodayCircleColor;
    v7->_nonTodayCircleColor = v10;

    v12 = objc_alloc_init(UILabel);
    dayLabel = v7->_dayLabel;
    v7->_dayLabel = v12;

    [(CompactMonthWeekTodayCircle *)v7 fontSize];
    v14 = [(CompactMonthWeekTodayCircle *)v7 _dayNumberFontForSize:?];
    [(UILabel *)v7->_dayLabel setFont:v14];

    v15 = +[UIColor clearColor];
    [(UILabel *)v7->_dayLabel setBackgroundColor:v15];

    v16 = +[UIColor whiteColor];
    [(UILabel *)v7->_dayLabel setTextColor:v16];

    [(UILabel *)v7->_dayLabel setText:v7->_dayString];
    [(UILabel *)v7->_dayLabel sizeToFit];
    [(CompactMonthWeekTodayCircle *)v7 addSubview:v7->_dayLabel];
    v17 = +[UIColor whiteColor];
    [(CompactMonthWeekTodayCircle *)v7 setBackgroundColor:v17];

    [(CompactMonthWeekTodayCircle *)v7 setUserInteractionEnabled:0];
  }

  return v7;
}

+ (CGSize)roundedRectSizeForNumberString:(id)string overlayString:(id)overlayString fontSize:(double)size overlayFontSize:(double)fontSize
{
  overlayStringCopy = overlayString;
  stringCopy = string;
  CalRoundToScreenScale();
  v13 = v12;
  v28 = NSFontAttributeName;
  v14 = [self dayNumberFontForSize:size];
  v29 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [stringCopy sizeWithAttributes:v15];

  CalRoundToScreenScale();
  v17 = v16 + 10.0;
  if (v17 >= v13)
  {
    v13 = v17;
  }

  if (overlayStringCopy)
  {
    v26 = NSFontAttributeName;
    v18 = [self dayOverlayFontForSize:fontSize];
    v27 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [overlayStringCopy sizeWithAttributes:v19];

    CalRoundToScreenScale();
    v21 = v20 + 10.0;
    if (v21 >= v13)
    {
      v13 = v21;
    }
  }

  [self roundedRectHeightWithOverlay:overlayStringCopy != 0 fontSize:size overlayFontSize:fontSize];
  v23 = v22;

  v24 = v13;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGRect)dayNumberFrame
{
  [(UILabel *)self->_dayLabel frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if ([(CompactMonthWeekTodayCircle *)self usesRoundedRectInsteadOfCircle:fits.width])
  {
    v4 = objc_opt_class();
    dayString = self->_dayString;
    text = [(UILabel *)self->_overlayLabel text];
    [(CompactMonthWeekTodayCircle *)self fontSize];
    v8 = v7;
    [(CompactMonthWeekTodayCircle *)self overlayFontSize];
    [v4 roundedRectSizeForNumberString:dayString overlayString:text fontSize:v8 overlayFontSize:v9];
    v11 = v10;
    v13 = v12;

    v14 = v11;
    v15 = v13;
  }

  else
  {
    if (self->_showOverlay)
    {
      if (-[NSString length](self->_dayString, "length") <= 1 && (-[UILabel text](self->_overlayLabel, "text"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 length], v16, v17 < 3))
      {
        [objc_opt_class() circleDiameterWithOverlay];
      }

      else
      {
        [objc_opt_class() circleDiameterWithOverlayLarge];
      }
    }

    else
    {
      compressed = self->_compressed;
      v19 = objc_opt_class();
      if (compressed)
      {
        [v19 circleDiameterCompressed];
      }

      else
      {
        [v19 circleDiameter];
      }
    }

    v15 = v14;
  }

  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setUseTodayColors:(BOOL)colors
{
  if (self->_useTodayColors != colors)
  {
    self->_useTodayColors = colors;
    [(CompactMonthWeekTodayCircle *)self fontSize];
    v5 = [(CompactMonthWeekTodayCircle *)self _dayNumberFontForSize:?];
    [(UILabel *)self->_dayLabel setFont:v5];

    [(CompactMonthWeekTodayCircle *)self _updateTextColor];

    [(CompactMonthWeekTodayCircle *)self setNeedsDisplay];
  }
}

- (void)setFontOverride:(id)override
{
  overrideCopy = override;
  if (self->_fontOverride != overrideCopy)
  {
    v7 = overrideCopy;
    objc_storeStrong(&self->_fontOverride, override);
    [(CompactMonthWeekTodayCircle *)self fontSize];
    v6 = [(CompactMonthWeekTodayCircle *)self _dayNumberFontForSize:?];
    [(UILabel *)self->_dayLabel setFont:v6];

    [(CompactMonthWeekTodayCircle *)self setNeedsDisplay];
    overrideCopy = v7;
  }
}

- (void)setDrawCircle:(BOOL)circle
{
  if (self->_drawCircle != circle)
  {
    self->_drawCircle = circle;
    [(CompactMonthWeekTodayCircle *)self _updateTextColor];

    [(CompactMonthWeekTodayCircle *)self setNeedsDisplay];
  }
}

- (void)setShowOverlay:(BOOL)overlay
{
  if (self->_showOverlay != overlay)
  {
    self->_showOverlay = overlay;
    if (overlay)
    {
      v5 = objc_alloc_init(UILabel);
      overlayLabel = self->_overlayLabel;
      self->_overlayLabel = v5;

      v7 = objc_opt_class();
      [(CompactMonthWeekTodayCircle *)self overlayFontSize];
      v8 = [v7 dayOverlayFontForSize:?];
      [(UILabel *)self->_overlayLabel setFont:v8];

      v9 = +[UIColor clearColor];
      [(UILabel *)self->_overlayLabel setBackgroundColor:v9];

      date = [(EKCalendarDate *)self->_calendarDate date];
      v11 = CUIKGetOverlayCalendar();
      v12 = [CUIKDateStrings overlayShortStringForDate:date inCalendar:v11];
      [(UILabel *)self->_overlayLabel setText:v12];

      [(UILabel *)self->_overlayLabel sizeToFit];
      [(CompactMonthWeekTodayCircle *)self addSubview:self->_overlayLabel];
      [(CompactMonthWeekTodayCircle *)self _updateTextColor];
    }

    else
    {
      [(UILabel *)self->_overlayLabel removeFromSuperview];
      v13 = self->_overlayLabel;
      self->_overlayLabel = 0;
    }

    [(CompactMonthWeekTodayCircle *)self setNeedsDisplay];
  }
}

- (void)updateOverlay
{
  if (self->_showOverlay)
  {
    date = [(EKCalendarDate *)self->_calendarDate date];
    v5 = CUIKGetOverlayCalendar();
    v6 = [CUIKDateStrings overlayShortStringForDate:date inCalendar:v5];
    [(UILabel *)self->_overlayLabel setText:v6];

    [(UILabel *)self->_overlayLabel sizeToFit];

    [(CompactMonthWeekTodayCircle *)self setNeedsLayout];
  }
}

- (void)setNonTodayColor:(id)color
{
  objc_storeStrong(&self->_nonTodayColor, color);

  [(CompactMonthWeekTodayCircle *)self _updateTextColor];
}

- (void)setFontSize:(double)size
{
  if (vabdd_f64(self->_fontSize, size) >= 2.22044605e-16)
  {
    self->_fontSize = size;
    v5 = [(CompactMonthWeekTodayCircle *)self _dayNumberFontForSize:?];
    [(UILabel *)self->_dayLabel setFont:v5];

    dayLabel = self->_dayLabel;

    [(UILabel *)dayLabel sizeToFit];
  }
}

- (void)setOverlayFontSize:(double)size
{
  if (vabdd_f64(self->_overlayFontSize, size) >= 2.22044605e-16)
  {
    self->_overlayFontSize = size;
    v4 = [objc_opt_class() dayOverlayFontForSize:size];
    [(UILabel *)self->_overlayLabel setFont:v4];

    overlayLabel = self->_overlayLabel;

    [(UILabel *)overlayLabel sizeToFit];
  }
}

- (void)_updateTextColor
{
  if (self->_drawCircle && ([(CompactMonthWeekTodayCircle *)self nonTodayColor], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    if ([(CompactMonthWeekTodayCircle *)self useTodayColors])
    {
      +[UIColor whiteColor];
    }

    else
    {
      CalendarAppCircleTextColor();
    }
    v7 = ;
  }

  else
  {
    if (![(CompactMonthWeekTodayCircle *)self useTodayColors])
    {
      nonTodayColor = [(CompactMonthWeekTodayCircle *)self nonTodayColor];
      if (nonTodayColor)
      {
        v5 = nonTodayColor;
        nonTodayColor2 = [(CompactMonthWeekTodayCircle *)self nonTodayColor];

        v6 = nonTodayColor2;
        goto LABEL_8;
      }
    }

    v7 = CalendarAppTintColor();
  }

  v6 = v7;
LABEL_8:
  v9 = v6;
  [(UILabel *)self->_dayLabel setTextColor:v6];
  [(UILabel *)self->_overlayLabel setTextColor:v9];
}

- (id)_dayNumberFontForSize:(double)size
{
  fontOverride = [(CompactMonthWeekTodayCircle *)self fontOverride];

  if (fontOverride)
  {
    fontOverride2 = [(CompactMonthWeekTodayCircle *)self fontOverride];
    fontDescriptor = [fontOverride2 fontDescriptor];
    v8 = [UIFont fontWithDescriptor:fontDescriptor size:size];
  }

  else
  {
    v8 = [UIFont systemFontOfSize:size weight:UIFontWeightBold];
  }

  return v8;
}

+ (double)roundedRectDayNumberBaselineOffsetWithOverlay:(BOOL)overlay fontSize:(double)size overlayFontSize:(double)fontSize
{
  overlayCopy = overlay;
  if (qword_100251AB8 != -1)
  {
    sub_100170680();
  }

  v9 = [self dayNumberFontForSize:size];
  [qword_100251AA8 setFont:v9];

  [qword_100251AA8 sizeToFit];
  [self roundedRectHeightWithOverlay:overlayCopy fontSize:size overlayFontSize:fontSize];
  [qword_100251AA8 frame];
  CGRectGetHeight(v13);
  CalRoundToScreenScale();
  if (overlayCopy)
  {
    v10 = [self dayOverlayFontForSize:fontSize];
    [qword_100251AB0 setFont:v10];

    [qword_100251AB0 sizeToFit];
    [qword_100251AB0 frame];
    CGRectGetHeight(v14);
  }

  [qword_100251AA8 _firstLineBaselineOffsetFromBoundsTop];

  CalRoundToScreenScale();
  return result;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = CompactMonthWeekTodayCircle;
  [(CompactMonthWeekTodayCircle *)&v38 layoutSubviews];
  [(CompactMonthWeekTodayCircle *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  rect = v7;
  v10 = v9;
  [(UILabel *)self->_dayLabel frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  Width = CGRectGetWidth(v39);
  v40.origin.x = v12;
  v40.origin.y = v14;
  v40.size.width = v16;
  v40.size.height = v18;
  v20 = (Width - CGRectGetWidth(v40)) * 0.5;
  [(CompactMonthWeekTodayCircle *)self fontSize];
  v21 = [(CompactMonthWeekTodayCircle *)self _dayNumberFontForSize:?];
  CalOffsetToCenterNumberWithFont();
  v23 = v20 + v22;
  v35 = v4;
  v36 = v10;
  v41.origin.x = v4;
  v24 = v6;
  v41.origin.y = v6;
  v41.size.width = rect;
  v41.size.height = v10;
  CGRectGetMidY(v41);
  v42.origin.x = v23;
  v42.origin.y = v14;
  v25 = v16;
  v42.size.width = v16;
  v42.size.height = v18;
  CGRectGetHeight(v42);
  CalRoundToScreenScale();
  v27 = v26 + -0.5;
  overlayLabel = self->_overlayLabel;
  if (overlayLabel)
  {
    [(UILabel *)overlayLabel frame];
    x = v43.origin.x;
    y = v43.origin.y;
    v34 = v18;
    v31 = v43.size.width;
    height = v43.size.height;
    v33 = v27 - ((CGRectGetHeight(v43) + -3.5) * 0.5 + 1.5);
    v44.origin.x = v35;
    v44.size.height = v36;
    v44.origin.y = v24;
    v44.size.width = rect;
    CGRectGetMidX(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = v31;
    v45.size.height = height;
    CGRectGetWidth(v45);
    v46.origin.x = v23;
    v46.origin.y = v33;
    v46.size.width = v25;
    v46.size.height = v34;
    CGRectGetMaxY(v46);
    CalRoundRectToScreenScale();
    [(UILabel *)self->_overlayLabel setFrame:?];
  }

  CalRoundRectToScreenScale();
  [(UILabel *)self->_dayLabel setFrame:?];
}

- (void)drawRect:(CGRect)rect
{
  if ([(CompactMonthWeekTodayCircle *)self drawCircle:rect.origin.x])
  {
    if ([(CompactMonthWeekTodayCircle *)self useTodayColors])
    {
      CalendarAppTintColor();
    }

    else
    {
      [(CompactMonthWeekTodayCircle *)self nonTodayCircleColor];
    }
    v4 = ;
    [v4 setFill];

    CurrentContext = UIGraphicsGetCurrentContext();
    [(CompactMonthWeekTodayCircle *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    if ([(CompactMonthWeekTodayCircle *)self usesRoundedRectInsteadOfCircle])
    {
      eKUILargeTextRoundedRectCornerRadius = [UIBezierPath bezierPathWithRoundedRect:v7 cornerRadius:v9, v11, v13, EKUILargeTextRoundedRectCornerRadius];
      [eKUILargeTextRoundedRectCornerRadius fill];
    }

    else
    {
      EKUIScaleFactor();
      v15 = 1.0 / v14;
      v18.origin.x = v7;
      v18.origin.y = v9;
      v18.size.width = v11;
      v18.size.height = v13;
      v19 = CGRectInset(v18, v15, v15);

      CGContextFillEllipseInRect(CurrentContext, v19);
    }
  }
}

@end