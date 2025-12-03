@interface WeekDayInitialsHeaderView
+ (id)dayInitialFont;
- (WeekDayInitialsHeaderView)initWithFrame:(CGRect)frame;
- (id)_automaticDayFrames;
- (id)dayFrames;
- (id)weekdayAbbreviations;
- (void)drawRect:(CGRect)rect;
- (void)setDayFrames:(id)frames;
@end

@implementation WeekDayInitialsHeaderView

- (id)weekdayAbbreviations
{
  v2 = +[NSLocale currentLocale];
  localeIdentifier = [v2 localeIdentifier];
  v4 = [localeIdentifier hasPrefix:@"ar"];

  if (v4)
  {
    CUIKWeekdayAbbreviations();
  }

  else
  {
    CUIKWeekdayVeryShortAbbreviations();
  }
  v5 = ;

  return v5;
}

- (id)dayFrames
{
  if (self->_useCustomDayFrames)
  {
    _automaticDayFrames = self->_dayFrames;
  }

  else
  {
    _automaticDayFrames = [(WeekDayInitialsHeaderView *)self _automaticDayFrames];
  }

  return _automaticDayFrames;
}

- (WeekDayInitialsHeaderView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = WeekDayInitialsHeaderView;
  v3 = [(WeekDayInitialsHeaderView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WeekDayInitialsHeaderView *)v3 setOpaque:0];
    [(WeekDayInitialsHeaderView *)v4 setClearsContextBeforeDrawing:1];
    layer = [(WeekDayInitialsHeaderView *)v4 layer];
    [layer setValue:&__kCFBooleanTrue forKeyPath:@"separatedOptions.enableContext"];
    [layer setNeedsDisplay];
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  v36 = [(WeekDayInitialsHeaderView *)self weekdayAbbreviations:rect.origin.x];
  dayInitialFont = [objc_opt_class() dayInitialFont];
  v34 = +[UIColor labelColor];
  v33 = WeekendTextColor();
  dayFrames = [(WeekDayInitialsHeaderView *)self dayFrames];
  [dayInitialFont lineHeight];
  CalCeilToScreenScale();
  v7 = v6;
  v35 = dayInitialFont;
  [dayInitialFont descender];
  dayInitialTextAlignment = [(WeekDayInitialsHeaderView *)self dayInitialTextAlignment];
  v32 = objc_alloc_init(NSMutableParagraphStyle);
  [v32 setAlignment:dayInitialTextAlignment];
  v9 = CUIKZeroIndexedWeekStart();
  if (CalTimeDirectionIsLeftToRight())
  {
    v10 = 1;
  }

  else
  {
    v9 = ([dayFrames count] + v9 - 1) % 7;
    v10 = -1;
  }

  v31 = v10;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = dayFrames;
  v11 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v30 = *v38;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        v15 = [v36 objectAtIndexedSubscript:v9];
        IsWeekend = CUIKDayOfWeekIsWeekend();
        v17 = v34;
        if (IsWeekend)
        {
          v17 = v33;
        }

        v41[0] = NSFontAttributeName;
        v41[1] = NSForegroundColorAttributeName;
        v42[0] = v35;
        v42[1] = v17;
        v41[2] = NSParagraphStyleAttributeName;
        v42[2] = v32;
        v18 = v17;
        v19 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
        v20 = [[NSAttributedString alloc] initWithString:v15 attributes:v19];
        [v14 CGRectValue];
        v22 = v21;
        v24 = v23;
        v26 = v25;

        [(WeekDayInitialsHeaderView *)self bounds];
        CGRectGetMaxY(v44);
        [(WeekDayInitialsHeaderView *)self bottomPadding];
        v45.origin.x = v22;
        v45.origin.y = v24;
        v45.size.width = v26;
        v45.size.height = v7;
        CGRectGetHeight(v45);
        CalRoundToScreenScale();
        [v20 drawInRect:{v22, v27, v26, v7}];
        v28 = v9 + v31;
        if (v9 + v31 < 0)
        {
          v28 += [obj count];
        }

        v9 = v28 % 7;
      }

      v12 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v12);
  }
}

- (void)setDayFrames:(id)frames
{
  framesCopy = frames;
  self->_useCustomDayFrames = 1;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(framesCopy, "count")}];
  if ([framesCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [framesCopy objectAtIndexedSubscript:v5];
      [v6 CGRectValue];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [(WeekDayInitialsHeaderView *)self dayFrameRightInset];
      v16 = [NSValue valueWithCGRect:v8, v10, v12 - v15, v14];
      [(NSArray *)v4 addObject:v16];

      ++v5;
    }

    while (v5 < [framesCopy count]);
  }

  dayFrames = self->_dayFrames;
  self->_dayFrames = v4;

  [(WeekDayInitialsHeaderView *)self setNeedsDisplay];
}

- (id)_automaticDayFrames
{
  v3 = [[NSMutableArray alloc] initWithCapacity:7];
  weekdayAbbreviations = [(WeekDayInitialsHeaderView *)self weekdayAbbreviations];
  v5 = [weekdayAbbreviations count];

  [(WeekDayInitialsHeaderView *)self bounds];
  if (v5)
  {
    v7 = (v6 + -1.0) / v5;
    v8 = 0.5;
    do
    {
      [(WeekDayInitialsHeaderView *)self bounds];
      v10 = v9;
      v12 = v11;
      CalRoundToScreenScale();
      v14 = v13;
      CalFloorToScreenScale();
      CalRoundToScreenScale();
      v16 = [NSValue valueWithCGRect:v14, v10, v15, v12];
      [v3 addObject:v16];

      v8 = v7 + v8;
      --v5;
    }

    while (v5);
  }

  return v3;
}

+ (id)dayInitialFont
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return _UISystemFontForSize(10);
}

@end