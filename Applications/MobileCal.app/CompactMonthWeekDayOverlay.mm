@interface CompactMonthWeekDayOverlay
+ (id)_attributes;
+ (id)_cachedImageForString:(id)string isWeekend:(BOOL)weekend underlineThickness:(double)thickness fontSize:(double)size style:(int64_t)style;
+ (id)_generateImageForString:(id)string isWeekend:(BOOL)weekend underlineThickness:(double)thickness fontSize:(double)size style:(int64_t)style;
- (void)setDate:(id)date;
- (void)update;
@end

@implementation CompactMonthWeekDayOverlay

+ (id)_attributes
{
  if (qword_1002519A8 != -1)
  {
    sub_10016FE90();
  }

  v3 = qword_1002519A0;

  return v3;
}

+ (id)_generateImageForString:(id)string isWeekend:(BOOL)weekend underlineThickness:(double)thickness fontSize:(double)size style:(int64_t)style
{
  stringCopy = string;
  _attributes = [self _attributes];
  if (weekend)
  {
    WeekendTextColor();
  }

  else
  {
    +[UIColor labelColor];
  }
  v13 = ;
  [_attributes setObject:v13 forKeyedSubscript:NSForegroundColorAttributeName];

  v14 = [_attributes objectForKeyedSubscript:NSFontAttributeName];
  [v14 pointSize];
  if (vabdd_f64(v15, size) >= 2.22044605e-16)
  {
    v16 = [UIFont systemFontOfSize:size];
    [_attributes setObject:v16 forKeyedSubscript:NSFontAttributeName];
  }

  [stringCopy boundingRectWithSize:0 options:_attributes attributes:0 context:{CGSizeZero.width, CGSizeZero.height}];
  CalCeilToScreenScale();
  v18 = v17;
  CalCeilToScreenScale();
  v20 = v19;
  v21 = thickness + 2.0 + v19;
  if (thickness <= 0.0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = +[UIGraphicsImageRendererFormat defaultFormat];
  v24 = [[UIGraphicsImageRenderer alloc] initWithSize:v23 format:{v18, v22}];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10006F310;
  v29[3] = &unk_10020FBA8;
  v32 = v18;
  v33 = v20;
  v30 = stringCopy;
  v31 = _attributes;
  thicknessCopy = thickness;
  v25 = _attributes;
  v26 = stringCopy;
  v27 = [v24 imageWithActions:v29];

  return v27;
}

+ (id)_cachedImageForString:(id)string isWeekend:(BOOL)weekend underlineThickness:(double)thickness fontSize:(double)size style:(int64_t)style
{
  weekendCopy = weekend;
  stringCopy = string;
  if (qword_1002519B8 != -1)
  {
    sub_10016FEA4();
  }

  v13 = @"weekday";
  if (weekendCopy)
  {
    v13 = @"weekend";
  }

  style = [NSString stringWithFormat:@"%@:%@:%f:%f:%tu", stringCopy, v13, *&thickness, *&size, style];
  v15 = [qword_1002519B0 objectForKey:style];
  if (!v15)
  {
    v15 = [self _generateImageForString:stringCopy isWeekend:weekendCopy underlineThickness:style fontSize:thickness style:size];
    [qword_1002519B0 setObject:v15 forKey:style];
  }

  return v15;
}

- (void)setDate:(id)date
{
  objc_storeStrong(&self->_date, date);

  [(CompactMonthWeekDayOverlay *)self update];
}

- (void)update
{
  if (self->_date)
  {
    v3 = CUIKGetOverlayCalendar();
    v4 = [v3 components:1073741848 fromDate:self->_date];

    v5 = 0.0;
    if ([v4 day] == 1)
    {
      v5 = 1.0;
      if ([v4 month] == 1)
      {
        if ([v4 isLeapMonth])
        {
          v5 = 1.0;
        }

        else
        {
          v5 = 1.5;
        }
      }
    }

    date = self->_date;
    v7 = CUIKGetOverlayCalendar();
    v8 = [CUIKDateStrings overlayShortStringForDate:date inCalendar:v7];

    traitCollection = [(CompactMonthWeekDayOverlay *)self traitCollection];
    LODWORD(v7) = EKUIUsesLargeTextLayout();

    v10 = CUIKCalendar();
    v11 = [v10 isDateInWeekend:self->_date];

    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_10006F870;
    v39 = sub_10006F880;
    v40 = 0;
    traitCollection2 = [(CompactMonthWeekDayOverlay *)self traitCollection];
    v30[1] = 3221225472;
    v30[0] = _NSConcreteStackBlock;
    v30[2] = sub_10006F888;
    v30[3] = &unk_10020FBF0;
    if (v7)
    {
      v5 = v5 + v5;
    }

    v32 = &v35;
    v30[4] = self;
    v13 = v8;
    v31 = v13;
    v34 = v11;
    v33 = v5;
    [traitCollection2 performAsCurrentTraitCollection:v30];

    cGImage = [v36[5] CGImage];
    layer = [(CompactMonthWeekDayOverlay *)self layer];
    [layer setContents:cGImage];

    [(CompactMonthWeekDayOverlay *)self frame];
    v17 = v16;
    v19 = v18;
    [v36[5] size];
    if (v17 != v21 || v19 != v20)
    {
      [(CompactMonthWeekDayOverlay *)self frame];
      v23 = v22;
      v25 = v24;
      [v36[5] size];
      [(CompactMonthWeekDayOverlay *)self setFrame:v23, v25, v26, v27];
      superview = [(CompactMonthWeekDayOverlay *)self superview];
      [superview setNeedsLayout];
    }

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    layer2 = [(CompactMonthWeekDayOverlay *)self layer];
    [layer2 setContents:0];
  }
}

@end