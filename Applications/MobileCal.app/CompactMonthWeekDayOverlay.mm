@interface CompactMonthWeekDayOverlay
+ (id)_attributes;
+ (id)_cachedImageForString:(id)a3 isWeekend:(BOOL)a4 underlineThickness:(double)a5 fontSize:(double)a6 style:(int64_t)a7;
+ (id)_generateImageForString:(id)a3 isWeekend:(BOOL)a4 underlineThickness:(double)a5 fontSize:(double)a6 style:(int64_t)a7;
- (void)setDate:(id)a3;
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

+ (id)_generateImageForString:(id)a3 isWeekend:(BOOL)a4 underlineThickness:(double)a5 fontSize:(double)a6 style:(int64_t)a7
{
  v11 = a3;
  v12 = [a1 _attributes];
  if (a4)
  {
    WeekendTextColor();
  }

  else
  {
    +[UIColor labelColor];
  }
  v13 = ;
  [v12 setObject:v13 forKeyedSubscript:NSForegroundColorAttributeName];

  v14 = [v12 objectForKeyedSubscript:NSFontAttributeName];
  [v14 pointSize];
  if (vabdd_f64(v15, a6) >= 2.22044605e-16)
  {
    v16 = [UIFont systemFontOfSize:a6];
    [v12 setObject:v16 forKeyedSubscript:NSFontAttributeName];
  }

  [v11 boundingRectWithSize:0 options:v12 attributes:0 context:{CGSizeZero.width, CGSizeZero.height}];
  CalCeilToScreenScale();
  v18 = v17;
  CalCeilToScreenScale();
  v20 = v19;
  v21 = a5 + 2.0 + v19;
  if (a5 <= 0.0)
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
  v30 = v11;
  v31 = v12;
  v34 = a5;
  v25 = v12;
  v26 = v11;
  v27 = [v24 imageWithActions:v29];

  return v27;
}

+ (id)_cachedImageForString:(id)a3 isWeekend:(BOOL)a4 underlineThickness:(double)a5 fontSize:(double)a6 style:(int64_t)a7
{
  v10 = a4;
  v12 = a3;
  if (qword_1002519B8 != -1)
  {
    sub_10016FEA4();
  }

  v13 = @"weekday";
  if (v10)
  {
    v13 = @"weekend";
  }

  v14 = [NSString stringWithFormat:@"%@:%@:%f:%f:%tu", v12, v13, *&a5, *&a6, a7];
  v15 = [qword_1002519B0 objectForKey:v14];
  if (!v15)
  {
    v15 = [a1 _generateImageForString:v12 isWeekend:v10 underlineThickness:a7 fontSize:a5 style:a6];
    [qword_1002519B0 setObject:v15 forKey:v14];
  }

  return v15;
}

- (void)setDate:(id)a3
{
  objc_storeStrong(&self->_date, a3);

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

    v9 = [(CompactMonthWeekDayOverlay *)self traitCollection];
    LODWORD(v7) = EKUIUsesLargeTextLayout();

    v10 = CUIKCalendar();
    v11 = [v10 isDateInWeekend:self->_date];

    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_10006F870;
    v39 = sub_10006F880;
    v40 = 0;
    v12 = [(CompactMonthWeekDayOverlay *)self traitCollection];
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
    [v12 performAsCurrentTraitCollection:v30];

    v14 = [v36[5] CGImage];
    v15 = [(CompactMonthWeekDayOverlay *)self layer];
    [v15 setContents:v14];

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
      v28 = [(CompactMonthWeekDayOverlay *)self superview];
      [v28 setNeedsLayout];
    }

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v29 = [(CompactMonthWeekDayOverlay *)self layer];
    [v29 setContents:0];
  }
}

@end