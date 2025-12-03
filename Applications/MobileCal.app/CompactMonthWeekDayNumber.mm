@interface CompactMonthWeekDayNumber
+ (double)baselineOffsetFromTopOfLayerForFontSize:(double)size;
+ (double)heightOfFrameForFontSize:(double)size;
+ (id)_generateImageWithString:(id)string color:(id)color fontSize:(double)size;
+ (id)_standardLabelForFontSize:(double)size;
+ (id)dayNumberFontForSize:(double)size;
- (BOOL)_calendarDateIsOnWeekend;
- (BOOL)representsActualDate;
- (CGRect)frame;
- (CompactMonthWeekDayNumber)init;
- (CompactMonthWeekDayNumber)initWithWeekView:(id)view andCalendar:(id)calendar;
- (id)_weekdayImageForDayNumberString:(id)string;
- (id)_weekendImageForDayNumberString:(id)string;
- (id)description;
- (void)hideOverlayAndNumber:(BOOL)number;
- (void)setCalendarDate:(id)date;
- (void)updateDayNumber;
- (void)updateOverlay;
@end

@implementation CompactMonthWeekDayNumber

- (CompactMonthWeekDayNumber)initWithWeekView:(id)view andCalendar:(id)calendar
{
  viewCopy = view;
  calendarCopy = calendar;
  v18.receiver = self;
  v18.super_class = CompactMonthWeekDayNumber;
  v8 = [(CompactMonthWeekDayNumber *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_weekView, viewCopy);
    v10 = objc_alloc_init(CALayer);
    layer = v9->_layer;
    v9->_layer = v10;

    v12 = +[UIColor clearColor];
    -[CALayer setBackgroundColor:](v9->_layer, "setBackgroundColor:", [v12 CGColor]);

    layer = [viewCopy layer];
    [layer addSublayer:v9->_layer];

    objc_storeStrong(&v9->_calendar, calendar);
    v14 = objc_opt_new();
    dayTypeBadge = v9->_dayTypeBadge;
    v9->_dayTypeBadge = v14;

    [objc_opt_class() dayTypeBadgeDiameter:{objc_msgSend(viewCopy, "compressedVerticalMode")}];
    [(CALayer *)v9->_dayTypeBadge setCornerRadius:v16 * 0.5];
    *&v9->_fontSize = xmmword_1001F84F0;
  }

  return v9;
}

- (CompactMonthWeekDayNumber)init
{
  v7.receiver = self;
  v7.super_class = CompactMonthWeekDayNumber;
  v2 = [(CompactMonthWeekDayNumber *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(CALayer);
    layer = v2->_layer;
    v2->_layer = v3;

    v5 = +[UIColor clearColor];
    -[CALayer setBackgroundColor:](v2->_layer, "setBackgroundColor:", [v5 CGColor]);
  }

  return v2;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = CompactMonthWeekDayNumber;
  v3 = [(CompactMonthWeekDayNumber *)&v13 description];
  calendarDate = [(CompactMonthWeekDayNumber *)self calendarDate];
  layer = self->_layer;
  layer = [(CompactMonthWeekDayNumber *)self layer];
  isHidden = [layer isHidden];
  [(CALayer *)self->_layer frame];
  v8 = NSStringFromCGRect(v15);
  offsetX = self->_offsetX;
  overlay = [(CompactMonthWeekDayNumber *)self overlay];
  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@\n\tcalendarDate: [%@]\n\tlayer: [%@]\n\tlayerHidden: [%d]\n\tlayer.frame: [%@]\n\toffsetX: [%f]\n\toverlayHidden: [%d]", v3, calendarDate, layer, isHidden, v8, *&offsetX, [overlay isHidden]);;

  return v11;
}

- (void)updateOverlay
{
  v3 = CUIKGetOverlayCalendar();
  overlay = self->_overlay;
  if (overlay)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  v19 = v3;
  if (v5)
  {
    if (overlay)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      [(CompactMonthWeekDayNumber *)self overlayFontSize];
      [(CompactMonthWeekDayOverlay *)self->_overlay setFontSize:?];
      [(CompactMonthWeekDayOverlay *)self->_overlay update];
      attachedTodayCircle = [(CompactMonthWeekDayNumber *)self attachedTodayCircle];
      [attachedTodayCircle updateOverlay];
      goto LABEL_16;
    }

    [(CompactMonthWeekDayOverlay *)overlay removeFromSuperview];
    v18 = self->_overlay;
    self->_overlay = 0;
  }

  else
  {
    v8 = objc_opt_new();
    v9 = self->_overlay;
    self->_overlay = v8;

    [(CompactMonthWeekDayNumber *)self overlayFontSize];
    [(CompactMonthWeekDayOverlay *)self->_overlay setFontSize:?];
    calendarDate = [(CompactMonthWeekDayNumber *)self calendarDate];
    date = [calendarDate date];
    [(CompactMonthWeekDayOverlay *)self->_overlay setDate:date];

    attachedTodayCircle2 = [(CompactMonthWeekDayNumber *)self attachedTodayCircle];

    WeakRetained = objc_loadWeakRetained(&self->_weekView);
    v14 = WeakRetained;
    v15 = self->_overlay;
    if (attachedTodayCircle2)
    {
      attachedTodayCircle3 = [(CompactMonthWeekDayNumber *)self attachedTodayCircle];
      [v14 insertSubview:v15 belowSubview:attachedTodayCircle3];

      attachedTodayCircle4 = [(CompactMonthWeekDayNumber *)self attachedTodayCircle];
      [attachedTodayCircle4 setShowOverlay:1];

      [(CompactMonthWeekDayOverlay *)self->_overlay setHidden:1];
    }

    else
    {
      [WeakRetained addSubview:self->_overlay];
    }
  }

  attachedTodayCircle = objc_loadWeakRetained(&self->_weekView);
  [attachedTodayCircle setNeedsLayout];
LABEL_16:
}

- (void)hideOverlayAndNumber:(BOOL)number
{
  numberCopy = number;
  overlay = [(CompactMonthWeekDayNumber *)self overlay];
  [overlay setHidden:numberCopy];

  layer = [(CompactMonthWeekDayNumber *)self layer];
  [layer setHidden:numberCopy];
}

+ (double)baselineOffsetFromTopOfLayerForFontSize:(double)size
{
  result = *&qword_100251AF0;
  if (*&qword_100251AF0 == 0.0 || vabdd_f64(*&qword_100251AF8, size) >= 2.22044605e-16)
  {
    v5 = [objc_opt_class() _standardLabelForFontSize:size];
    [v5 sizeToFit];
    [v5 _firstLineBaselineOffsetFromBoundsTop];
    qword_100251AF0 = v6;
    qword_100251AF8 = *&size;

    return *&qword_100251AF0;
  }

  return result;
}

+ (double)heightOfFrameForFontSize:(double)size
{
  result = *&qword_100251B00;
  if (*&qword_100251B00 == 0.0 || vabdd_f64(*&qword_100251B08, size) >= 2.22044605e-16)
  {
    v5 = [objc_opt_class() _standardLabelForFontSize:size];
    [v5 sizeToFit];
    [v5 frame];
    qword_100251B00 = v6;
    qword_100251B08 = *&size;

    return *&qword_100251B00;
  }

  return result;
}

- (void)setCalendarDate:(id)date
{
  dateCopy = date;
  p_calendarDate = &self->_calendarDate;
  if (self->_calendarDate != dateCopy)
  {
    v8 = dateCopy;
    objc_storeStrong(p_calendarDate, date);
    date = [(EKCalendarDate *)v8 date];
    [(CompactMonthWeekDayOverlay *)self->_overlay setDate:date];

    p_calendarDate = [(CompactMonthWeekDayNumber *)self updateDayNumber];
    dateCopy = v8;
  }

  _objc_release_x1(p_calendarDate, dateCopy);
}

- (void)updateDayNumber
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(CALayer *)self->_layer setHidden:self->_calendarDate == 0];
  calendarDate = self->_calendarDate;
  if (calendarDate)
  {
    [(EKCalendarDate *)calendarDate day];
    v4 = CUIKLocalizedStringForInteger();
    if ([(CompactMonthWeekDayNumber *)self _calendarDateIsOnWeekend])
    {
      [(CompactMonthWeekDayNumber *)self _weekendImageForDayNumberString:v4];
    }

    else
    {
      [(CompactMonthWeekDayNumber *)self _weekdayImageForDayNumberString:v4];
    }
    v5 = ;
    -[CALayer setContents:](self->_layer, "setContents:", [v5 CGImage]);
    [(CALayer *)self->_layer frame];
    v7 = v6;
    v9 = v8;
    [v5 size];
    [(CALayer *)self->_layer setFrame:v7, v9, v10, v11];
    v12 = objc_opt_class();
    [(CompactMonthWeekDayNumber *)self fontSize];
    v13 = [v12 dayNumberFontForSize:?];
    CalOffsetToCenterNumberWithFont();
    self->_offsetX = v14;
  }

  +[CATransaction commit];
}

- (BOOL)representsActualDate
{
  calendarDate = [(CompactMonthWeekDayNumber *)self calendarDate];
  v3 = calendarDate != 0;

  return v3;
}

- (BOOL)_calendarDateIsOnWeekend
{
  v3 = +[CUIKPreferences sharedPreferences];
  overrideLocaleWeekends = [v3 overrideLocaleWeekends];

  if (overrideLocaleWeekends)
  {
    dayOfWeek = [(EKCalendarDate *)self->_calendarDate dayOfWeek];
    return dayOfWeek == 7 || dayOfWeek == 1;
  }

  else
  {
    calendar = self->_calendar;
    date = [(EKCalendarDate *)self->_calendarDate date];
    LOBYTE(calendar) = [(NSCalendar *)calendar isDateInWeekend:date];

    return calendar;
  }
}

+ (id)_standardLabelForFontSize:(double)size
{
  v4 = objc_alloc_init(UILabel);
  v5 = [objc_opt_class() dayNumberFontForSize:size];
  [v4 setFont:v5];

  [v4 setText:@"0"];

  return v4;
}

+ (id)_generateImageWithString:(id)string color:(id)color fontSize:(double)size
{
  colorCopy = color;
  stringCopy = string;
  v10 = [self dayNumberFontForSize:size];
  v17[0] = NSFontAttributeName;
  v17[1] = NSForegroundColorAttributeName;
  v18[0] = v10;
  v18[1] = colorCopy;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  [stringCopy boundingRectWithSize:0 options:v11 attributes:0 context:{CGSizeZero.width, CGSizeZero.height}];
  v13 = v12;
  CalCeilToScreenScale();
  width = v20.width;
  v20.height = v13;
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  [stringCopy drawInRect:v11 withAttributes:{0.0, 0.0, width, v13}];

  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (id)_weekdayImageForDayNumberString:(id)string
{
  stringCopy = string;
  if (qword_100251B18 != -1)
  {
    sub_1001706D0();
  }

  [(CompactMonthWeekDayNumber *)self fontSize];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_weekView);
  traitCollection = [WeakRetained traitCollection];
  v9 = [stringCopy stringByAppendingFormat:@"-%.2f:%tu", v6, objc_msgSend(traitCollection, "userInterfaceStyle")];

  v10 = [qword_100251B10 objectForKey:v9];
  if (!v10)
  {
    v11 = objc_loadWeakRetained(&self->_weekView);
    traitCollection2 = [v11 traitCollection];
    [UITraitCollection _setCurrentTraitCollection:traitCollection2];

    v13 = +[UIColor labelColor];
    v14 = objc_opt_class();
    [(CompactMonthWeekDayNumber *)self fontSize];
    v10 = [v14 _generateImageWithString:stringCopy color:v13 fontSize:?];
    [qword_100251B10 setObject:v10 forKey:v9];
  }

  return v10;
}

- (id)_weekendImageForDayNumberString:(id)string
{
  stringCopy = string;
  if (qword_100251B28 != -1)
  {
    sub_1001706E4();
  }

  [(CompactMonthWeekDayNumber *)self fontSize];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_weekView);
  traitCollection = [WeakRetained traitCollection];
  v9 = [stringCopy stringByAppendingFormat:@"-%.2f:%tu", v6, objc_msgSend(traitCollection, "userInterfaceStyle")];

  v10 = [qword_100251B20 objectForKey:v9];
  if (!v10)
  {
    v11 = objc_loadWeakRetained(&self->_weekView);
    traitCollection2 = [v11 traitCollection];
    [UITraitCollection _setCurrentTraitCollection:traitCollection2];

    v13 = WeekendTextColor();
    v14 = objc_opt_class();
    [(CompactMonthWeekDayNumber *)self fontSize];
    v10 = [v14 _generateImageWithString:stringCopy color:v13 fontSize:?];
    [qword_100251B20 setObject:v10 forKey:v9];
  }

  return v10;
}

+ (id)dayNumberFontForSize:(double)size
{
  v4 = qword_100251B38;
  if (!qword_100251B38 || vabdd_f64(*&qword_100251B30, size) >= 2.22044605e-16)
  {
    v5 = [UIFont systemFontOfSize:size weight:UIFontWeightSemibold];
    v6 = qword_100251B38;
    qword_100251B38 = v5;

    qword_100251B30 = *&size;
    v4 = qword_100251B38;
  }

  return v4;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end