@interface DayNavigationViewCell
+ (CGRect)badgeFrameFromDayNumberFrame:(CGRect)a3 isRightToLeft:(BOOL)a4;
+ (_NSRange)_rangeForFirstSequenceOfDCharacters:(id)a3;
+ (double)_fontSize;
+ (double)_widthOfSpace;
+ (double)circleDiameter;
+ (double)roundedRectBaselineOffset;
+ (double)roundedRectHeight;
+ (id)_boldFont;
+ (id)_centerDateFormatter;
+ (id)_findFormatForLocale:(id)a3 usingExampleDate:(id)a4;
+ (id)_leftDateFormatter;
+ (id)_normalFont;
+ (id)_overlayFont;
+ (id)_rightDateFormatter;
+ (id)centerStringForDate:(id)a3;
+ (id)leftStringForDate:(id)a3;
+ (id)rightStringForDate:(id)a3;
+ (void)_generateFormatStringsIfNeeded;
+ (void)_updateFormatter;
+ (void)contentSizeCategoryChanged;
+ (void)localeChanged;
- (CGRect)circleFrame;
- (CGRect)dayCircleFrame;
- (CGSize)roundedRectSize;
- (DayNavigationViewCell)initWithFrame:(CGRect)a3;
- (DayNavigationViewCellDelegate)delegate;
- (NSString)description;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_setUpInteraction;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)prepareForReuse;
- (void)pulseToday;
- (void)setCircled:(BOOL)a3 animated:(BOOL)a4;
- (void)setDate:(id)a3 forceStringUpdate:(BOOL)a4;
- (void)stopPulsing;
@end

@implementation DayNavigationViewCell

- (void)_setUpInteraction
{
  v3 = [[UIPointerInteraction alloc] initWithDelegate:self];
  [(DayNavigationViewCell *)self addInteraction:v3];
}

- (DayNavigationViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = DayNavigationViewCell;
  v3 = [(DayNavigationViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DayNavigationViewCell *)v3 _setUpInteraction];
  }

  return v4;
}

- (CGRect)circleFrame
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSString)description
{
  [(DayNavigationViewCell *)self frame];
  v3 = NSStringFromRect(v8);
  v4 = [(DayNavigationViewCell *)self date];
  v5 = [NSString stringWithFormat:@"frame: %@  date: %@", v3, v4];

  return v5;
}

- (CGRect)dayCircleFrame
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  [(DayNavigationViewCell *)self contentFrame];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (CGRectIsEmpty(v17) || ([v6 location], v16.x = v11, v16.y = v12, v18.origin.x = x, v18.origin.y = y, v18.size.width = width, v18.size.height = height, !CGRectContainsPoint(v18, v16)))
  {
    v13 = 0;
  }

  else
  {
    v13 = [UIPointerRegion regionWithRect:0 identifier:x, y, width, height];
  }

  return v13;
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100045D1C;
  v5[3] = &unk_10020EB98;
  v5[4] = self;
  [a5 addCompletion:{v5, a4}];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a4;
  v6 = [(DayNavigationViewCell *)self labelElementsVisible];
  [(DayNavigationViewCell *)self setLabelElementsVisible:1];
  [v5 rect];
  v7 = createImageViewFromView();
  v8 = [UIPreviewTarget alloc];
  [v5 rect];
  MidX = CGRectGetMidX(v22);
  [v5 rect];
  v10 = [v8 initWithContainer:self center:{MidX, CGRectGetMidY(v23)}];
  [v5 rect];
  v12 = v11;
  v14 = v13;

  [v7 setFrame:{CGPointZero.x, CGPointZero.y, v12, v14}];
  v15 = objc_alloc_init(UIPreviewParameters);
  v16 = [[UITargetedPreview alloc] initWithView:v7 parameters:v15 target:v10];
  [(DayNavigationViewCell *)self setLabelElementsVisible:v6];
  v17 = [UIPointerEffect effectWithPreview:v16];
  v18 = [(DayNavigationViewCell *)self preferredPointerShape];
  v19 = [UIPointerStyle styleWithEffect:v17 shape:v18];

  return v19;
}

+ (void)contentSizeCategoryChanged
{
  qword_10024E900 = 0xBFF0000000000000;
  v2 = qword_1002518A8;
  qword_1002518A8 = 0;

  v3 = qword_1002518B0;
  qword_1002518B0 = 0;

  v4 = qword_100251890;
  qword_100251890 = 0;

  v5 = qword_100251898;
  qword_100251898 = 0;

  v6 = qword_1002518A0;
  qword_1002518A0 = 0;
}

+ (double)_fontSize
{
  v2 = +[NSLocale currentLocale];
  v3 = [v2 objectForKey:NSLocaleLanguageCode];

  v4 = CUIKLocalizedStringForInteger();
  v5 = [v4 isEqual:@"൧"];

  v6 = [v3 isEqual:@"ml"];
  EKUICurrentWindowSize();
  if (v7 <= v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v7 < v8)
  {
    v7 = v8;
  }

  v10 = 23.0;
  if (v9 == 744.0 && v7 == 1133.0)
  {
    v11 = +[NSLocale currentLocale];
    v12 = [v11 localeIdentifier];
    v13 = [v12 hasPrefix:@"ja_"];

    v10 = 17.0;
    if ((v13 & 1) == 0)
    {
      v10 = 23.0;
    }
  }

  v14 = 17.0;
  if ((v6 & v5) != 0)
  {
    v14 = 14.0;
  }

  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:v14 shouldScaleForSmallerSizes:v10];
  v16 = v15;

  return v16;
}

+ (id)_normalFont
{
  [a1 _fontSize];
  v2 = qword_1002518A8;
  if (!qword_1002518A8)
  {
    v3 = [UIFont systemFontOfSize:?];
    v4 = qword_1002518A8;
    qword_1002518A8 = v3;

    v2 = qword_1002518A8;
  }

  return v2;
}

+ (id)_boldFont
{
  [a1 _fontSize];
  v2 = qword_1002518B0;
  if (!qword_1002518B0)
  {
    v3 = [UIFont boldSystemFontOfSize:?];
    v4 = qword_1002518B0;
    qword_1002518B0 = v3;

    v2 = qword_1002518B0;
  }

  return v2;
}

+ (id)_overlayFont
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:11.0 shouldScaleForSmallerSizes:17.0];

  return [UIFont systemFontOfSize:?];
}

+ (double)circleDiameter
{
  result = *&qword_10024E900;
  if (*&qword_10024E900 < 0.0)
  {
    v4 = objc_alloc_init(NSDateComponents);
    [v4 setYear:2014];
    [v4 setMonth:12];
    [v4 setDay:25];
    [v4 setHour:12];
    [v4 setSecond:0];
    [v4 setMinute:0];
    v5 = CUIKCalendar();
    v6 = [v5 dateFromComponents:v4];

    v7 = [a1 centerStringForDate:v6];
    v8 = [a1 _boldFont];
    v9 = [NSDictionary dictionaryWithObject:v8 forKey:NSFontAttributeName];

    [v7 sizeWithAttributes:v9];
    *&v11 = v10 * v10 + v11 * v11;
    v12 = sqrtf(*&v11);
    [objc_opt_class() defaultCircleDiameter];
    if (v13 < v12)
    {
      v13 = v12;
    }

    qword_10024E900 = ceil(v13);

    return *&qword_10024E900;
  }

  return result;
}

+ (double)roundedRectHeight
{
  [a1 yCenterForDayNumbers];
  CalRoundToScreenScale();
  v3 = [a1 _normalFont];
  [v3 lineHeight];
  CalRoundToScreenScale();

  CalRoundToScreenScale();
  v5 = v4;
  v6 = CUIKGetOverlayCalendar();

  if (v6)
  {
    v7 = [a1 _overlayFont];
    [v7 lineHeight];
    CalRoundToScreenScale();
    v5 = v5 + v8;
  }

  return v5 + 5.0;
}

+ (double)roundedRectBaselineOffset
{
  [a1 yCenterForDayNumbers];
  CalRoundToScreenScale();
  v3 = [a1 _normalFont];
  [v3 lineHeight];
  CalRoundToScreenScale();
  [a1 _fontSize];
  [TappableDayNumber firstLineBaselineOffsetForFontSize:?];
  CalRoundToScreenScale();
  v5 = v4;

  return v5;
}

+ (id)leftStringForDate:(id)a3
{
  v4 = a3;
  [a1 _generateFormatStringsIfNeeded];
  if (qword_100251890)
  {
    v5 = [a1 _leftDateFormatter];
    [v5 setDateFormat:qword_100251890];
    v6 = [v5 stringFromDate:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)centerStringForDate:(id)a3
{
  v4 = a3;
  [a1 _generateFormatStringsIfNeeded];
  if (qword_100251898)
  {
    v5 = [a1 _centerDateFormatter];
    [v5 setDateFormat:qword_100251898];
    v6 = [v5 stringFromDate:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)rightStringForDate:(id)a3
{
  v4 = a3;
  [a1 _generateFormatStringsIfNeeded];
  if (qword_1002518A0)
  {
    v5 = [a1 _rightDateFormatter];
    [v5 setDateFormat:qword_1002518A0];
    v6 = [v5 stringFromDate:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (double)_widthOfSpace
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000466B0;
  block[3] = &unk_10020F5F0;
  block[4] = a1;
  if (qword_1002518C0 != -1)
  {
    dispatch_once(&qword_1002518C0, block);
  }

  return *&qword_1002518B8;
}

+ (void)localeChanged
{
  [a1 _updateFormatter];
  v2 = qword_100251890;
  qword_100251890 = 0;

  v3 = qword_100251898;
  qword_100251898 = 0;

  v4 = qword_1002518A0;
  qword_1002518A0 = 0;

  qword_10024E900 = 0xBFF0000000000000;
}

+ (_NSRange)_rangeForFirstSequenceOfDCharacters:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = 0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v3)
  {
    v7 = v4;
    if (v4)
    {
      v8 = [v3 UTF8String];
      v9 = 0;
      v5 = 0;
      v10 = 0;
      do
      {
        v11 = v8[v9] == 100;
        if (v8[v9] == 100)
        {
          if (!v5)
          {
            v6 = v9;
          }

          ++v5;
        }

        else if (v10)
        {
          break;
        }

        ++v9;
        v10 = v11;
      }

      while (v7 != v9);
    }
  }

  v12 = v6;
  v13 = v5;
  result.length = v13;
  result.location = v12;
  return result;
}

+ (void)_generateFormatStringsIfNeeded
{
  if (!qword_100251898)
  {
    v2 = +[NSLocale currentLocale];
    v3 = [v2 localeIdentifier];
    v4 = [v3 isEqualToString:@"en_US"];

    v22 = xmmword_1001F81E0;
    if (v4)
    {
      byte_1002518C8 = 0;
      v5 = @"EEEd";
      v6 = [objc_opt_class() _rangeForFirstSequenceOfDCharacters:@"EEEd"];
      *&v22 = v6;
      *(&v22 + 1) = v7;
    }

    else
    {
      byte_1002518C8 = 1;
      v5 = GetFormatAnd_d_FieldRangeFor_Ed(v2, &v22);
      v6 = v22;
    }

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Scrubber cell: unable to generate date format, defaulting to US layout.", v21, 2u);
      }

      byte_1002518C8 = 0;
      v5 = @"EEEd";
      v6 = [objc_opt_class() _rangeForFirstSequenceOfDCharacters:@"EEEd"];
      v10 = v9;
      *&v22 = v6;
      *(&v22 + 1) = v9;
    }

    else
    {
      v10 = *(&v22 + 1);
    }

    v11 = [(__CFString *)v5 substringWithRange:v6, v10];
    if (v22)
    {
      v12 = [(__CFString *)v5 substringToIndex:?];
      v13 = v22;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v14 = *(&v22 + 1) + v13;
    if (v14 >= [(__CFString *)v5 length])
    {
      v15 = 0;
    }

    else
    {
      v15 = [(__CFString *)v5 substringFromIndex:v14];
    }

    v16 = qword_100251898;
    qword_100251898 = v11;
    v17 = v11;

    IsRightToLeft = CUIKLocaleIsRightToLeft();
    if (IsRightToLeft)
    {
      v19 = v15;
    }

    else
    {
      v19 = v12;
    }

    if (IsRightToLeft)
    {
      v20 = v12;
    }

    else
    {
      v20 = v15;
    }

    objc_storeStrong(&qword_100251890, v19);
    objc_storeStrong(&qword_1002518A0, v20);
  }
}

+ (id)_findFormatForLocale:(id)a3 usingExampleDate:(id)a4
{
  v6 = a3;
  v24 = a4;
  [a1 _widthOfSpace];
  v8 = v7 * -3.0 + 80.0;
  v9 = objc_alloc_init(NSDateFormatter);
  [v9 setLocale:v6];
  v10 = CUIKCalendar();
  [v9 setCalendar:v10];

  v11 = CUIKCalendar();
  v12 = [v11 timeZone];
  [v9 setTimeZone:v12];

  v13 = v8 + 1000.0;
  if (v8 + 1000.0 <= v8)
  {
    v17 = @"EEE d";
  }

  else
  {
    v14 = 0;
    v15 = @"EEE d";
    while (v14 < [&off_100219F48 count])
    {
      v16 = [&off_100219F48 objectAtIndexedSubscript:v14];
      v17 = [NSDateFormatter dateFormatFromTemplate:v16 options:0 locale:v6];

      [v9 setDateFormat:v17];
      v18 = [v9 stringFromDate:v24];
      v25 = NSFontAttributeName;
      v19 = [a1 _boldFont];
      v26 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v18 sizeWithAttributes:v20];
      v22 = v21;

      ++v14;
      v15 = v17;
      if (v22 <= v8)
      {
        goto LABEL_8;
      }
    }

    v17 = v15;
  }

LABEL_8:

  return v17;
}

+ (id)_leftDateFormatter
{
  v3 = qword_100251878;
  if (!qword_100251878)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    v5 = qword_100251878;
    qword_100251878 = v4;

    [a1 _updateFormatter];
    v3 = qword_100251878;
  }

  return v3;
}

+ (id)_centerDateFormatter
{
  v3 = qword_100251880;
  if (!qword_100251880)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    v5 = qword_100251880;
    qword_100251880 = v4;

    [a1 _updateFormatter];
    v3 = qword_100251880;
  }

  return v3;
}

+ (id)_rightDateFormatter
{
  v3 = qword_100251888;
  if (!qword_100251888)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    v5 = qword_100251888;
    qword_100251888 = v4;

    [a1 _updateFormatter];
    v3 = qword_100251888;
  }

  return v3;
}

+ (void)_updateFormatter
{
  v5 = +[NSLocale currentLocale];
  v2 = CUIKCalendar();
  v3 = CUIKCalendar();
  v4 = [v3 timeZone];

  [qword_100251878 setLocale:v5];
  [qword_100251880 setLocale:v5];
  [qword_100251888 setLocale:v5];
  [qword_100251878 setCalendar:v2];
  [qword_100251880 setCalendar:v2];
  [qword_100251888 setCalendar:v2];
  [qword_100251878 setTimeZone:v4];
  [qword_100251880 setTimeZone:v4];
  [qword_100251888 setTimeZone:v4];
}

+ (CGRect)badgeFrameFromDayNumberFrame:(CGRect)a3 isRightToLeft:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [objc_opt_class() badgeDiameter];
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetMidY(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGRectGetMidX(v14);

  CalRoundRectToScreenScale();
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (DayNavigationViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)roundedRectSize
{
  width = self->_roundedRectSize.width;
  height = self->_roundedRectSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setCircled:(BOOL)a3 animated:(BOOL)a4
{
  sub_100026F48();
  sub_1000475B0();

  NSRequestConcreteImplementation();
}

- (void)prepareForReuse
{
  sub_100026F48();
  sub_1000475B0();

  NSRequestConcreteImplementation();
}

- (void)pulseToday
{
  sub_100026F48();
  sub_1000475B0();

  NSRequestConcreteImplementation();
}

- (void)stopPulsing
{
  sub_100026F48();
  sub_1000475B0();

  NSRequestConcreteImplementation();
}

- (void)setDate:(id)a3 forceStringUpdate:(BOOL)a4
{
  sub_100026F48();
  sub_1000475B0();

  NSRequestConcreteImplementation();
}

@end