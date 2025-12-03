@interface EKUIYearMonthView
+ (double)heightForInterfaceOrientation:(int64_t)orientation windowSize:(CGSize)size heightSizeClass:(int64_t)class;
- (BOOL)_pointIntersectsMonthName:(CGPoint)name;
- (BOOL)_shouldUseRoundedRectInsteadOfCircle;
- (BOOL)containsCalendarDate:(id)date;
- (BOOL)isCurrentMonth;
- (BOOL)pointIsAboveMonthNameBaseline:(CGPoint)baseline;
- (BOOL)showWeekDayInitials;
- (CGPoint)_monthNameOriginPoint;
- (CGPoint)headerOrigin;
- (CGRect)_monthNameFrame;
- (CGRect)frameForGridOfDays:(BOOL)days;
- (CGRect)frameForTodayHighlight;
- (CGSize)roundedRectSizeForDayNumberString:(id)string;
- (EKUIYearMonthView)initWithCalendarDate:(id)date calendar:(id)calendar;
- (NSString)description;
- (UIColor)dayColor;
- (UIFont)dayNumberFont;
- (UIFont)headerFont;
- (UIFont)todayNumberFont;
- (UIFont)weekDayInitialsFont;
- (double)circleSize;
- (double)dayTextSize;
- (double)daysXAdjustLeft;
- (double)daysYAdjustTop;
- (double)headerFontKerning;
- (double)headerFontMaxSize;
- (double)headerFontMinSize;
- (double)headerXAdjust;
- (double)minHeaderFontSizeUsed;
- (double)roundedRectCornerRadius;
- (double)todayTextSize;
- (double)weekDayInitialsAdjustLeft;
- (double)weekDayInitialsAdjustTop;
- (double)xInset;
- (double)xSpacing;
- (double)yInset;
- (double)ySpacing;
- (id)_containerForPreview;
- (id)_imageForDayNumber:(id)number size:(CGSize)size underlineThickness:(double)thickness forPreview:(BOOL)preview;
- (id)_imageForMonthDays:(int64_t)days size:(CGSize)size underlineThickness:(double)thickness;
- (id)_imageForMonthName:(id)name;
- (id)_todayAttributes;
- (id)_weekDayInitialsImage;
- (id)calendarDateForPoint:(CGPoint)point;
- (id)monthNameForDate:(id)date;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (int64_t)_dayIndexForPoint:(CGPoint)point;
- (void)_adjustHidingViewToFrame:(CGRect)frame;
- (void)_drawDayNumber:(id)number size:(CGSize)size underlineThickness:(double)thickness atPoint:(CGPoint)point;
- (void)_drawMonthDays:(int64_t)days size:(CGSize)size underlineThickness:(double)thickness atPoint:(CGPoint)point;
- (void)_drawMonthName:(id)name atPoint:(CGPoint)point;
- (void)_drawWeekDayInitialsAtPoint:(CGPoint)point;
- (void)_getMetricsForDayIndex:(int64_t)index textFrame:(CGRect *)frame circleFrame:(CGRect *)circleFrame;
- (void)_reloadCachedValues;
- (void)_setUpInteraction;
- (void)_updateFirstOfMonthAndYearIndices;
- (void)_updateToday;
- (void)_warmImageCache;
- (void)drawRect:(CGRect)rect;
- (void)localeChanged;
- (void)overlaySignificantDatesChangedInRange:(id)range;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)pulseTodayCircle;
- (void)setCalendarDate:(id)date;
- (void)setOverlaySignificantDatesProvider:(id)provider;
- (void)tintColorDidChange;
@end

@implementation EKUIYearMonthView

- (EKUIYearMonthView)initWithCalendarDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v16.receiver = self;
  v16.super_class = EKUIYearMonthView;
  v8 = [(EKUIYearMonthView *)&v16 init];
  if (v8)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(EKUIYearMonthView *)v8 setBackgroundColor:systemBackgroundColor];

    objc_storeStrong(&v8->_calendar, calendar);
    calendarDateForMonth = [dateCopy calendarDateForMonth];
    calendarDate = v8->_calendarDate;
    v8->_calendarDate = calendarDateForMonth;

    calendarDateForEndOfMonth = [dateCopy calendarDateForEndOfMonth];
    endCalendarDate = v8->_endCalendarDate;
    v8->_endCalendarDate = calendarDateForEndOfMonth;

    [(EKUIYearMonthView *)v8 _reloadCachedValues];
    [(EKUIYearMonthView *)v8 setContentMode:3];
    [(EKUIYearMonthView *)v8 setWantsDeepColorDrawing:0];
    if ([(EKUIYearMonthView *)v8 shouldAddPreciseInteractivity])
    {
      [(EKUIYearMonthView *)v8 _setUpInteraction];
    }

    layer = [(EKUIYearMonthView *)v8 layer];
    [layer setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.enableContext"];
    [layer setNeedsDisplay];
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = EKUIYearMonthView;
  v4 = [(EKUIYearMonthView *)&v8 description];
  calendarDate = [(EKUIYearMonthView *)self calendarDate];
  v6 = [v3 stringWithFormat:@"%@\n\tcalendarDate: [%@]\n\t_endCalendarDate: [%@]", v4, calendarDate, self->_endCalendarDate];;

  return v6;
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext)
  {
    v5 = CurrentContext;
    if ([(EKUIYearMonthView *)self showMonthName])
    {
      [(EKUIYearMonthView *)self _monthNameOriginPoint];
      v7 = v6;
      v9 = v8;
      v10 = [(EKUIYearMonthView *)self _imageForMonthName:self->_monthString];
      if ((CalInterfaceIsLeftToRight() & 1) == 0)
      {
        [v10 size];
        v7 = v7 - v11;
      }

      tintColor = [(EKUIYearMonthView *)self tintColor];
      [tintColor set];

      [v10 drawAtPoint:{v7, v9}];
    }

    [(EKUIYearMonthView *)self bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(EKUIYearMonthView *)self xInset];
    v22 = v21;
    [(EKUIYearMonthView *)self yInset];
    v24 = v23;
    v105.origin.x = v14;
    v105.origin.y = v16;
    v105.size.width = v18;
    v105.size.height = v20;
    v106 = CGRectInset(v105, v22, v24);
    x = v106.origin.x;
    y = v106.origin.y;
    if ([(EKUIYearMonthView *)self showWeekDayInitials])
    {
      [(EKUIYearMonthView *)self weekDayInitialsAdjustLeft];
      v28 = x + v27;
      [(EKUIYearMonthView *)self weekDayInitialsAdjustTop];
      v30 = y + v29;
      _weekDayInitialsImage = [(EKUIYearMonthView *)self _weekDayInitialsImage];
      [_weekDayInitialsImage drawAtPoint:{v28, v30}];
    }

    [(EKUIYearMonthView *)self daysXAdjustLeft];
    v33 = x + v32;
    [(EKUIYearMonthView *)self daysYAdjustTop];
    v35 = y + v34;
    [(EKUIYearMonthView *)self xSpacing];
    v37 = v36;
    [(EKUIYearMonthView *)self ySpacing];
    v39 = v38;
    if (CalTimeDirectionIsLeftToRight())
    {
      firstDayIndex = self->_firstDayIndex;
      v41 = v33 + v37 * firstDayIndex;
      daysInWeek = self->_daysInWeek;
    }

    else
    {
      daysInWeek = self->_daysInWeek;
      firstDayIndex = self->_firstDayIndex;
      v41 = v33 + v37 * (daysInWeek + ~firstDayIndex);
    }

    _defaultTextColor = [objc_opt_class() _defaultTextColor];
    [_defaultTextColor set];

    calendarDate = [(EKUIYearMonthView *)self calendarDate];
    daysInMonth = [calendarDate daysInMonth];

    v46 = self->_firstDayIndex + daysInMonth;
    v47 = objc_alloc_init(MEMORY[0x1E69DC728]);
    [v47 moveToPoint:{0.0, v35}];
    [(EKUIYearMonthView *)self bounds];
    v49 = v48 + 0.0;
    [v47 addLineToPoint:{v48 + 0.0, v35}];
    v50 = v46 / 7;
    if (CalTimeDirectionIsLeftToRight())
    {
      [v47 addLineToPoint:{v49, v35 + v50 * v39}];
      v49 = v33 + (v46 % 7) * v37;
      [v47 addLineToPoint:{v49, v35 + v50 * v39}];
    }

    v51 = v35 + (v50 + 1) * v39;
    [v47 addLineToPoint:{v49, v51}];
    v101 = v39;
    if ((CalTimeDirectionIsLeftToRight() & 1) == 0)
    {
      [v47 addLineToPoint:{v33 + (7 * v50 - v46 + 7) * v37, v35 + (v50 + 1) * v39}];
      v51 = v51 - v39;
      [v47 addLineToPoint:{v33 + (7 * v50 - v46 + 7) * v37, v51}];
    }

    [v47 addLineToPoint:{0.0, v51}];
    [v47 closePath];
    v52 = UIGraphicsGetCurrentContext();
    CGContextSaveGState(v52);
    v100 = v47;
    [v47 addClip];
    v53 = self->_daysInWeek;
    v54 = ~self->_firstDayIndex;
    [(EKUIYearMonthView *)self bounds];
    v56 = v55;
    v58 = v57;
    [(EKUIYearMonthView *)self daysYAdjustTop];
    v60 = v58 - v59;
    v61 = *MEMORY[0x1E695EFF8];
    [(EKUIYearMonthView *)self daysYAdjustTop];
    v63 = v62;
    v99 = [(EKUIYearMonthView *)self _imageForMonthDays:v53 + v54 size:v56 underlineThickness:v60, 0.0];
    [v99 drawAtPoint:{v61, v63}];
    v64 = UIGraphicsGetCurrentContext();
    CGContextRestoreGState(v64);
    v65 = v101;
    if (daysInMonth)
    {
      v66 = 0;
      v67 = daysInWeek - firstDayIndex;
      v68 = -1.0;
      do
      {
        v69 = 0.0;
        if (v66 != self->_todayIndex)
        {
          firstOfOverlayYearIndices = self->_firstOfOverlayYearIndices;
          v71 = [MEMORY[0x1E696AD98] numberWithInteger:v66 + 1];
          LODWORD(firstOfOverlayYearIndices) = [(NSSet *)firstOfOverlayYearIndices containsObject:v71];

          if (firstOfOverlayYearIndices)
          {
            if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(self))
            {
              v69 = 2.0;
            }

            else
            {
              v69 = 1.5;
            }
          }

          else
          {
            firstOfOverlayMonthIndices = self->_firstOfOverlayMonthIndices;
            v73 = [MEMORY[0x1E696AD98] numberWithInteger:v66 + 1];
            LODWORD(firstOfOverlayMonthIndices) = [(NSSet *)firstOfOverlayMonthIndices containsObject:v73];

            if (firstOfOverlayMonthIndices)
            {
              if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(self))
              {
                v69 = 1.0;
              }

              else
              {
                v69 = 0.5;
              }
            }
          }
        }

        traitCollection = [(EKUIYearMonthView *)self traitCollection];
        v75 = EKUIUsesLargeTextYearView(traitCollection);

        if (v75)
        {
          v69 = v69 + v69;
        }

        if (v69 > 0.0 && v66 != self->_todayIndex)
        {
          v76 = CUIKLocalizedStringForInteger();
          CalRoundToScreenScale(v37);
          v78 = v77;
          CalRoundToScreenScale(v65);
          v80 = v79;
          CalRoundToScreenScale(v69);
          v82 = v81;
          v83 = v78;
          v68 = -1.0;
          v84 = v80;
          v65 = v101;
          v85 = [(EKUIYearMonthView *)self _imageForDayNumber:v76 size:v83 underlineThickness:v84, v82];
          [v85 drawAtPoint:{v41, v35}];
        }

        if (v67-- <= 1)
        {
          IsLeftToRight = CalTimeDirectionIsLeftToRight();
          v67 = self->_daysInWeek;
          if (IsLeftToRight)
          {
            v41 = v33;
          }

          else
          {
            v41 = v33 + v37 * (v67 - 1);
          }

          v35 = v65 + v35;
        }

        else
        {
          if (CalTimeDirectionIsLeftToRight())
          {
            v89 = 1.0;
          }

          else
          {
            v89 = v68;
          }

          v41 = v41 + v37 * v89;
        }

        ++v66;
      }

      while (daysInMonth != v66);
    }

    if ((self->_todayIndex & 0x8000000000000000) == 0)
    {
      v103 = 0u;
      v104 = 0u;
      memset(&v102, 0, sizeof(v102));
      [(EKUIYearMonthView *)self _getTodayNumberTextFrame:&v103 circleFrame:&v102];
      if ([(EKUIYearMonthView *)self vibrant])
      {
        v90 = c;
        CGContextSaveGState(c);
        tintColor2 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.52];
      }

      else
      {
        tintColor2 = [(EKUIYearMonthView *)self tintColor];
        v90 = c;
      }

      [tintColor2 set];

      if ([(EKUIYearMonthView *)self _shouldUseRoundedRectInsteadOfCircle])
      {
        v92 = MEMORY[0x1E69DC728];
        [(EKUIYearMonthView *)self roundedRectCornerRadius];
        v94 = [v92 bezierPathWithRoundedRect:*&v102.origin cornerRadius:{*&v102.size, v93}];
        [v94 fill];
      }

      else
      {
        CGContextFillEllipseInRect(v90, v102);
      }

      if ([(EKUIYearMonthView *)self vibrant])
      {
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [whiteColor set];

        CGContextSetBlendMode(v90, kCGBlendModeXOR);
      }

      v96 = CUIKLocalizedStringForInteger();
      _todayAttributes = [(EKUIYearMonthView *)self _todayAttributes];
      [v96 drawInRect:_todayAttributes withAttributes:{v103, v104}];

      if ([(EKUIYearMonthView *)self vibrant])
      {
        CGContextRestoreGState(v90);
      }
    }
  }
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = EKUIYearMonthView;
  [(EKUIYearMonthView *)&v4 tintColorDidChange];
  layer = [(EKUIYearMonthView *)self layer];
  [layer setNeedsDisplay];
}

- (BOOL)pointIsAboveMonthNameBaseline:(CGPoint)baseline
{
  y = baseline.y;
  [(EKUIYearMonthView *)self _monthNameOriginPoint];
  v6 = v5;
  headerFont = [(EKUIYearMonthView *)self headerFont];
  [headerFont ascender];
  v9 = v8;

  return y <= v6 + v9;
}

- (void)setCalendarDate:(id)date
{
  calendarDateForMonth = [date calendarDateForMonth];
  if (self->_calendarDate != calendarDateForMonth)
  {
    v7 = calendarDateForMonth;
    objc_storeStrong(&self->_calendarDate, calendarDateForMonth);
    calendarDateForEndOfMonth = [(EKCalendarDate *)v7 calendarDateForEndOfMonth];
    endCalendarDate = self->_endCalendarDate;
    self->_endCalendarDate = calendarDateForEndOfMonth;

    [(EKUIYearMonthView *)self _reloadCachedValues];
    calendarDateForMonth = v7;
  }
}

- (BOOL)containsCalendarDate:(id)date
{
  dateCopy = date;
  calendarDate = [(EKUIYearMonthView *)self calendarDate];
  v6 = [calendarDate compare:dateCopy];

  v7 = v6 != 1 && [(EKCalendarDate *)self->_endCalendarDate compare:dateCopy]!= -1;
  return v7;
}

- (CGRect)frameForGridOfDays:(BOOL)days
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)headerOrigin
{
  [(EKUIYearMonthView *)self _monthNameOriginPoint];
  v4 = v3;
  v6 = v5 + 0.5;
  traitCollection = [(EKUIYearMonthView *)self traitCollection];
  v8 = EKUIUsesLargeTextYearView(traitCollection);

  if (v8)
  {
    v9 = v6 + 0.5;
  }

  else
  {
    v9 = v6;
  }

  v10 = v4;
  result.y = v9;
  result.x = v10;
  return result;
}

- (void)_getMetricsForDayIndex:(int64_t)index textFrame:(CGRect *)frame circleFrame:(CGRect *)circleFrame
{
  todayNumberFont = [(EKUIYearMonthView *)self todayNumberFont];
  [todayNumberFont capHeight];
  v11 = v10;
  dayNumberFont = [(EKUIYearMonthView *)self dayNumberFont];
  [dayNumberFont capHeight];
  CalRoundToScreenScale((v11 - v13) * 0.5);
  v15 = v14;

  v16 = self->_firstDayIndex + index;
  v17 = v16 / self->_daysInWeek;
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  daysInWeek = self->_daysInWeek;
  v20 = v16 - daysInWeek * v17;
  v21 = daysInWeek + ~v16 + daysInWeek * v17;
  if (IsLeftToRight)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  [(EKUIYearMonthView *)self xInset];
  v24 = v23;
  [(EKUIYearMonthView *)self daysXAdjustLeft];
  v26 = v24 + v25;
  [(EKUIYearMonthView *)self yInset];
  v28 = v27;
  [(EKUIYearMonthView *)self daysYAdjustTop];
  v30 = v28 + v29;
  [(EKUIYearMonthView *)self xSpacing];
  v32 = v31;
  [(EKUIYearMonthView *)self ySpacing];
  v33 = v26 + v32 * v22;
  v61 = v34;
  v35 = v30 + v34 * v17;
  if ([(EKUIYearMonthView *)self _shouldUseRoundedRectInsteadOfCircle])
  {
    v36 = CUIKLocalizedStringForInteger();
    [(EKUIYearMonthView *)self roundedRectSizeForDayNumberString:v36];
    v38 = v37;
    v40 = v39;
  }

  else
  {
    if (index < 9)
    {
      [(EKUIYearMonthView *)self circleSize];
    }

    else
    {
      [(EKUIYearMonthView *)self circleSizeForDoubleDigit];
    }

    v40 = v41;
    v38 = v41;
  }

  v42 = v35 - v15;
  v43 = (v32 - v38) * 0.5;
  v44 = v33 + v43;
  if ([(EKUIYearMonthView *)self computeCircleFrameWithoutAdjustments])
  {
    todayNumberFont2 = [(EKUIYearMonthView *)self todayNumberFont];
    [todayNumberFont2 ascender];
    v47 = v42 + v46;
    todayNumberFont3 = [(EKUIYearMonthView *)self todayNumberFont];
    [todayNumberFont3 capHeight];
    v50 = v47 - v49 * 0.5 - v40 * 0.5;

    if (!frame)
    {
      goto LABEL_17;
    }

LABEL_16:
    frame->origin.x = CalRoundRectToScreenScale(v33, v42, v32, v61);
    frame->origin.y = v55;
    frame->size.width = v56;
    frame->size.height = v57;
    goto LABEL_17;
  }

  v51 = v42 + v43 + -0.5;
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(self))
  {
    v51 = v51 + -4.0;
    v42 = v42 + -1.0;
  }

  [(EKUIYearMonthView *)self circleFrameYAdjustment];
  v50 = v51 + v52;
  [(EKUIYearMonthView *)self circleFrameXAdjustment];
  v44 = v44 + v53;
  [(EKUIYearMonthView *)self todayTextYAdjustment];
  v42 = v42 + v54;
  if (frame)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (circleFrame)
  {
    circleFrame->origin.x = CalRoundRectToScreenScale(v44, v50, v38, v40);
    circleFrame->origin.y = v58;
    circleFrame->size.width = v59;
    circleFrame->size.height = v60;
  }
}

- (id)_todayAttributes
{
  v14[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v3 setAlignment:1];
  if ([(EKUIYearMonthView *)self vibrant])
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v4 = ;
  v13[0] = *MEMORY[0x1E69DB648];
  todayNumberFont = [(EKUIYearMonthView *)self todayNumberFont];
  v6 = *MEMORY[0x1E69DB688];
  v14[0] = todayNumberFont;
  v14[1] = v3;
  v7 = *MEMORY[0x1E69DB650];
  v13[1] = v6;
  v13[2] = v7;
  v14[2] = v4;
  v13[3] = *MEMORY[0x1E69DB660];
  v8 = MEMORY[0x1E696AD98];
  [(EKUIYearMonthView *)self todayNumberKerning];
  *&v9 = v9;
  v10 = [v8 numberWithFloat:v9];
  v14[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

- (void)pulseTodayCircle
{
  todayIndex = self->_todayIndex;
  if ((todayIndex & 0x8000000000000000) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    [(EKUIYearMonthView *)self _getTodayNumberTextFrame:&v19 circleFrame:&v17];
    IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(self);
    v5 = 1.0;
    if (IsRegularInViewHierarchy)
    {
      CalRoundToScreenScale(0.4);
    }

    *(&v19 + 1) = v5 + *(&v19 + 1);
    v6 = [EKUITodayCirclePulseView alloc];
    v7 = [(EKUITodayCirclePulseView *)v6 initWithFrame:v19, v20];
    [(EKUITodayCirclePulseView *)v7 setDontApplyCenteringOffset:1];
    if ([(EKUIYearMonthView *)self _shouldUseRoundedRectInsteadOfCircle])
    {
      [(EKUITodayCirclePulseView *)v7 setUsesRoundedRectInsteadOfCircle:1];
      [(EKUIYearMonthView *)self roundedRectCornerRadius];
      [(EKUITodayCirclePulseView *)v7 setRoundedRectCornerRadius:?];
      [(EKUITodayCirclePulseView *)v7 setFrame:v17, v18];
      [(EKUITodayCirclePulseView *)v7 setCircleShouldFillFrame:1];
    }

    else
    {
      [(EKUITodayCirclePulseView *)v7 setCircleDiameter:*&v18 + -0.5];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:todayIndex + 1];
    stringValue = [v8 stringValue];
    [(EKUITodayCirclePulseView *)v7 setString:stringValue];

    todayNumberFont = [(EKUIYearMonthView *)self todayNumberFont];
    [(EKUITodayCirclePulseView *)v7 setFont:todayNumberFont];

    _todayAttributes = [(EKUIYearMonthView *)self _todayAttributes];
    [(EKUITodayCirclePulseView *)v7 setAttributes:_todayAttributes];

    if ([(EKUIYearMonthView *)self _shouldUseRoundedRectInsteadOfCircle])
    {
      v12 = *(&v19 + 1) - *(&v17 + 1);
    }

    else
    {
      v13 = EKUIScaleFactor();
      v12 = 1.0;
      if (v13 > 1.0)
      {
        v12 = -0.5;
      }
    }

    [(EKUITodayCirclePulseView *)v7 setTextOffsetFromCircle:0.0, v12];
    [(EKUITodayCirclePulseView *)v7 layoutIfNeeded];
    [(EKUIYearMonthView *)self addSubview:v7];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __37__EKUIYearMonthView_pulseTodayCircle__block_invoke;
    v15[3] = &unk_1E843EC60;
    v16 = v7;
    v14 = v7;
    [(EKUITodayCirclePulseView *)v14 pulse:v15];
  }
}

- (CGRect)frameForTodayHighlight
{
  v2 = *(MEMORY[0x1E695F058] + 16);
  v7 = *MEMORY[0x1E695F058];
  v8 = v2;
  if ((self->_todayIndex & 0x8000000000000000) == 0)
  {
    [(EKUIYearMonthView *)self _getTodayNumberTextFrame:0 circleFrame:&v7];
  }

  v4 = *(&v7 + 1);
  v3 = *&v7;
  v6 = *(&v8 + 1);
  v5 = *&v8;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)_shouldUseRoundedRectInsteadOfCircle
{
  traitCollection = [(EKUIYearMonthView *)self traitCollection];
  v4 = EKUIUsesRoundedRectsInsteadOfCircles(traitCollection, v3);

  return v4;
}

- (void)localeChanged
{
  v3 = __weekDayInitialsImages;
  __weekDayInitialsImages = 0;

  [(EKUIYearMonthView *)self _reloadCachedValues];
}

- (double)roundedRectCornerRadius
{
  [(EKUIYearMonthView *)self circleSize];
  v3 = v2 / 4.5;

  CalRoundToScreenScale(v3);
  return result;
}

- (CGSize)roundedRectSizeForDayNumberString:(id)string
{
  [(EKUIYearMonthView *)self circleSize];
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIColor)dayColor
{
  v2 = objc_opt_class();

  return [v2 _defaultTextColor];
}

- (id)calendarDateForPoint:(CGPoint)point
{
  v4 = [(EKUIYearMonthView *)self _dayIndexForPoint:point.x, point.y];
  if (v4 < 0 || (v5 = v4, -[EKUIYearMonthView calendarDate](self, "calendarDate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 daysInMonth], v6, v5 >= v7))
  {
    v10 = 0;
  }

  else
  {
    calendarDate = [(EKUIYearMonthView *)self calendarDate];
    calendarDateForMonth = [calendarDate calendarDateForMonth];
    v10 = [calendarDateForMonth calendarDateByAddingDays:v5];
  }

  return v10;
}

- (int64_t)_dayIndexForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(EKUIYearMonthView *)self xInset];
  v7 = v6;
  [(EKUIYearMonthView *)self daysXAdjustLeft];
  v9 = v8;
  [(EKUIYearMonthView *)self yInset];
  v11 = v10;
  [(EKUIYearMonthView *)self daysYAdjustTop];
  v13 = v11 + v12;
  if (y < v13)
  {
    return -1;
  }

  v14 = v7 + v9;
  [(EKUIYearMonthView *)self xSpacing];
  v16 = v15;
  [(EKUIYearMonthView *)self ySpacing];
  v18 = ((y - v13) / v17);
  v19 = ((x - v14) / v16);
  firstDayIndex = self->_firstDayIndex;
  calendarDate = [(EKUIYearMonthView *)self calendarDate];
  v22 = ([calendarDate daysInMonth] + firstDayIndex) / self->_daysInWeek;

  if (v22 >= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = v22;
  }

  if (v18 < 0)
  {
    v23 = 0;
  }

  daysInWeek = self->_daysInWeek;
  v25 = daysInWeek - 1;
  if (daysInWeek > v19)
  {
    v25 = ((x - v14) / v16);
  }

  if (v19 >= 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v23 * daysInWeek;
  if (CalInterfaceIsLeftToRight())
  {
    v28 = v26 + v27 - self->_firstDayIndex;
    if ((v28 & 0x8000000000000000) != 0)
    {
      return -1;
    }
  }

  else
  {
    v28 = v27 - v26 + self->_firstDayIndex;
    if ((v28 & 0x8000000000000000) != 0)
    {
      return -1;
    }
  }

  calendarDate2 = [(EKUIYearMonthView *)self calendarDate];
  daysInMonth = [calendarDate2 daysInMonth];

  if (v28 >= daysInMonth)
  {
    return -1;
  }

  else
  {
    return v28;
  }
}

- (void)_setUpInteraction
{
  v3 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
  [(EKUIYearMonthView *)self addInteraction:v3];
}

- (CGRect)_monthNameFrame
{
  if (self->_monthString)
  {
    [(EKUIYearMonthView *)self _monthNameOriginPoint];
    v4 = v3;
    v6 = v5;
    v7 = [(EKUIYearMonthView *)self _imageForMonthName:self->_monthString];
    [v7 size];
    v9 = v8;
    [v7 size];
    v11 = v10;
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
  }

  v12 = v4;
  v13 = v6;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)_pointIntersectsMonthName:(CGPoint)name
{
  y = name.y;
  x = name.x;
  [(EKUIYearMonthView *)self _monthNameFrame];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)_adjustHidingViewToFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  hidingView = self->_hidingView;
  if (!hidingView)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v10 = self->_hidingView;
    self->_hidingView = v9;

    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIView *)self->_hidingView setBackgroundColor:systemBackgroundColor];

    [(EKUIYearMonthView *)self addSubview:self->_hidingView];
    hidingView = self->_hidingView;
  }

  [(UIView *)hidingView setHidden:0];
  v12 = self->_hidingView;

  [(UIView *)v12 setFrame:x, y, width, height];
}

- (id)_containerForPreview
{
  if (!self->_previewContainerView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    [(EKUIYearMonthView *)self bounds];
    v4 = [v3 initWithFrame:?];
    previewContainerView = self->_previewContainerView;
    self->_previewContainerView = v4;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)self->_previewContainerView setBackgroundColor:clearColor];

    [(UIView *)self->_previewContainerView setUserInteractionEnabled:0];
    [(EKUIYearMonthView *)self addSubview:self->_previewContainerView];
    [(UIView *)self->_previewContainerView setAutoresizingMask:18];
  }

  [(EKUIYearMonthView *)self bounds];
  [(UIView *)self->_previewContainerView setFrame:?];
  [(EKUIYearMonthView *)self bringSubviewToFront:self->_previewContainerView];
  v7 = self->_previewContainerView;

  return v7;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  if ([(EKUIYearMonthView *)self shouldAddPreciseInteractivity])
  {
    [requestCopy location];
    v7 = [(EKUIYearMonthView *)self _dayIndexForPoint:?];
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = v7;
      calendarDate = [(EKUIYearMonthView *)self calendarDate];
      daysInMonth = [calendarDate daysInMonth];

      if (v8 < daysInMonth)
      {
        memset(v22, 0, sizeof(v22));
        v20 = 0u;
        v21 = 0u;
        [(EKUIYearMonthView *)self _getMetricsForDayIndex:v8 textFrame:v22 circleFrame:&v20];
        v11 = MEMORY[0x1E69DCDC0];
        v13 = *(&v20 + 1);
        v12 = *&v20;
        v15 = *(&v21 + 1);
        v14 = *&v21;
        v16 = 0;
LABEL_7:
        v18 = [v11 regionWithRect:v16 identifier:{v12, v13, v14, v15}];
        goto LABEL_9;
      }
    }

    [requestCopy location];
    if ([(EKUIYearMonthView *)self _pointIntersectsMonthName:?])
    {
      v17 = MEMORY[0x1E69DCDC0];
      [(EKUIYearMonthView *)self _monthNameFrame];
      v16 = @"year_month_name";
      v11 = v17;
      goto LABEL_7;
    }
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  regionCopy = region;
  if ([(EKUIYearMonthView *)self shouldAddPreciseInteractivity])
  {
    [regionCopy rect];
    [(EKUIYearMonthView *)self _adjustHidingViewToFrame:?];
  }
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  if ([(EKUIYearMonthView *)self shouldAddPreciseInteractivity:interaction])
  {
    hidingView = self->_hidingView;

    [(UIView *)hidingView setHidden:1];
  }
}

- (CGPoint)_monthNameOriginPoint
{
  [(EKUIYearMonthView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(EKUIYearMonthView *)self xInset];
  v12 = v11;
  [(EKUIYearMonthView *)self yInset];
  v14 = v13;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v26 = CGRectInset(v25, v12, v14);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  if (CalInterfaceIsLeftToRight())
  {
    [(EKUIYearMonthView *)self headerXAdjust];
    v20 = x + v19;
  }

  else
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MaxX = CGRectGetMaxX(v27);
    [(EKUIYearMonthView *)self headerXAdjust];
    v20 = MaxX - v22;
  }

  v23 = y;
  result.y = v23;
  result.x = v20;
  return result;
}

- (void)_reloadCachedValues
{
  v3 = CUIKCalendar();
  calendar = self->_calendar;
  self->_calendar = v3;

  calendarDate = [(EKUIYearMonthView *)self calendarDate];
  date = [calendarDate date];

  [(NSCalendar *)self->_calendar rangeOfUnit:512 inUnit:4096 forDate:date];
  v7 = v6;
  v8 = [(NSCalendar *)self->_calendar components:528 fromDate:date];
  v9 = CUIKOneIndexedWeekStart();
  weekday = [v8 weekday];
  v11 = v7 - v9 + weekday;
  if (weekday > v9)
  {
    v11 = weekday - v9;
  }

  if (weekday == v9)
  {
    v11 = 0;
  }

  self->_firstDayIndex = v11;
  self->_daysInWeek = v7;
  if (CUIKCurrentLocaleRequiresUnabbrevatedMonthNames())
  {
    CUIKLongStringForMonth();
  }

  else
  {
    CUIKStringForMonth();
  }
  v12 = ;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v14 = [v12 capitalizedStringWithLocale:currentLocale];

  monthString = self->_monthString;
  self->_monthString = v14;

  self->_todayIndex = -1;
  [(EKUIYearMonthView *)self setNeedsDisplay];
  [(EKUIYearMonthView *)self _updateToday];
  [(EKUIYearMonthView *)self _updateFirstOfMonthAndYearIndices];
}

- (void)_updateFirstOfMonthAndYearIndices
{
  overlaySignificantDatesProvider = self->_overlaySignificantDatesProvider;
  date = [(EKCalendarDate *)self->_calendarDate date];
  v5 = [(EKUIOverlayCalendarSignificantDatesProvider *)overlaySignificantDatesProvider firstOfOverlayMonthsForCalendarMonth:date];
  firstOfOverlayMonthIndices = self->_firstOfOverlayMonthIndices;
  self->_firstOfOverlayMonthIndices = v5;

  v7 = self->_overlaySignificantDatesProvider;
  date2 = [(EKCalendarDate *)self->_calendarDate date];
  v9 = [(EKUIOverlayCalendarSignificantDatesProvider *)v7 firstOfOverlayYearsForCalendarMonth:date2];
  firstOfOverlayYearIndices = self->_firstOfOverlayYearIndices;
  self->_firstOfOverlayYearIndices = v9;

  [(EKUIYearMonthView *)self setNeedsDisplay];
}

- (void)overlaySignificantDatesChangedInRange:(id)range
{
  rangeCopy = range;
  v5 = rangeCopy;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = rangeCopy == 0;
  if (!rangeCopy || ([rangeCopy distinctRanges], v6 = objc_claimAutoreleasedReturnValue(), v7[0] = MEMORY[0x1E69E9820], v7[1] = 3221225472, v7[2] = __59__EKUIYearMonthView_overlaySignificantDatesChangedInRange___block_invoke, v7[3] = &unk_1E84408C8, v7[4] = self, v7[5] = &v8, objc_msgSend(v6, "enumerateObjectsUsingBlock:", v7), v6, (v9[3] & 1) != 0))
  {
    [(EKUIYearMonthView *)self _updateFirstOfMonthAndYearIndices];
  }

  _Block_object_dispose(&v8, 8);
}

void __59__EKUIYearMonthView_overlaySignificantDatesChangedInRange___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(*(a1 + 32) + 496);
  v6 = a2;
  v7 = [v5 date];
  v8 = [v6 containsDate:v7];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)setOverlaySignificantDatesProvider:(id)provider
{
  objc_storeStrong(&self->_overlaySignificantDatesProvider, provider);

  [(EKUIYearMonthView *)self _updateFirstOfMonthAndYearIndices];
}

- (void)_updateToday
{
  calendar = self->_calendar;
  v4 = CUIKTodayDate();
  v5 = [(NSCalendar *)calendar components:14 fromDate:v4];

  v6 = [(NSCalendar *)self->_calendar dateFromComponents:v5];
  calendarDate = [(EKUIYearMonthView *)self calendarDate];
  date = [calendarDate date];
  v9 = [v6 isEqualToDate:date];

  if (v9)
  {
    v11 = CUIKTodayComponents();

    todayIndex = self->_todayIndex;
    if (todayIndex != [v11 day] - 1)
    {
      self->_todayIndex = [v11 day] - 1;
      [(EKUIYearMonthView *)self setNeedsDisplay];
    }
  }

  else
  {
    v11 = v5;
  }
}

- (BOOL)isCurrentMonth
{
  v3 = MEMORY[0x1E69930C8];
  date = [MEMORY[0x1E695DF00] date];
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v6 = [v3 calendarDateWithDate:date timeZone:timeZone];

  LOBYTE(self) = [(EKUIYearMonthView *)self containsCalendarDate:v6];
  return self;
}

- (void)_drawMonthName:(id)name atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  nameCopy = name;
  [(EKUIYearMonthView *)self headerFontMaxSize];
  if (vabdd_f64(v8, *&_drawMonthName_atPoint__s_desiredFontSizeForSmallestUsedFontSize) >= 2.22044605e-16)
  {
    _drawMonthName_atPoint__s_smallestUsedFontSize = 0x7FF0000000000000;
  }

  [(EKUIYearMonthView *)self headerFontMaxSize];
  if (v9 >= *&_drawMonthName_atPoint__s_smallestUsedFontSize)
  {
    v10 = *&_drawMonthName_atPoint__s_smallestUsedFontSize;
  }

  else
  {
    v10 = v9;
  }

  [(EKUIYearMonthView *)self headerFontMinSize];
  v12 = v11;
  [(EKUIYearMonthView *)self bounds];
  Width = CGRectGetWidth(v46);
  [(EKUIYearMonthView *)self xSpacing];
  v15 = Width - v14;
  headerFont = [(EKUIYearMonthView *)self headerFont];
  fontDescriptor = [headerFont fontDescriptor];

  v18 = [MEMORY[0x1E69DB878] fontWithDescriptor:fontDescriptor size:v10];
  if ([(EKUIYearMonthView *)self isCurrentMonth])
  {
    [(EKUIYearMonthView *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v19 = ;
  v20 = MEMORY[0x1E695DF90];
  v21 = *MEMORY[0x1E69DB648];
  v22 = *MEMORY[0x1E69DB650];
  v23 = MEMORY[0x1E696AD98];
  [(EKUIYearMonthView *)self headerFontKerning];
  *&v24 = v24;
  v25 = [v23 numberWithFloat:v24];
  v26 = v19;
  v27 = [v20 dictionaryWithObjectsAndKeys:{v18, v21, v19, v22, v25, *MEMORY[0x1E69DB660], 0}];

  [nameCopy sizeWithAttributes:v27];
  v29 = v28;
  v31 = v30;
  if (v28 <= v15)
  {
    p_prots = &OBJC_PROTOCOL___EKAccountRefresherDelegate.prots;
    v33 = 0x1E69DC000uLL;
  }

  else
  {
    p_prots = (&OBJC_PROTOCOL___EKAccountRefresherDelegate + 16);
    v33 = 0x1E69DC000;
    if (v10 < v12)
    {
LABEL_13:
      v37 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
      [v37 setLineBreakMode:4];
      [v27 setObject:v37 forKey:*MEMORY[0x1E69DB688]];
    }

    else
    {
      while (1)
      {
        v34 = v18;
        v10 = v10 + -1.0;
        v18 = [MEMORY[0x1E69DB878] fontWithDescriptor:fontDescriptor size:v10];

        [v27 setObject:v18 forKey:v21];
        [nameCopy sizeWithAttributes:v27];
        v29 = v35;
        v31 = v36;
        if (v35 <= v15)
        {
          break;
        }

        if (v10 < v12)
        {
          goto LABEL_13;
        }
      }
    }
  }

  if (v10 < *(p_prots + 46))
  {
    *(p_prots + 46) = v10;
    v38 = +[EKUISemiConstantCache sharedInstance];
    [v38 setMinYearMonthHeaderFontSizeUsed:v10];

    [(EKUIYearMonthView *)self headerFontMaxSize];
    _drawMonthName_atPoint__s_desiredFontSizeForSmallestUsedFontSize = v39;
  }

  v44 = 0;
  v45 = 0;
  CTFontGetLanguageAwareOutsets();
  if (CalInterfaceIsLeftToRight())
  {
    v40 = &v44;
  }

  else
  {
    v40 = &v45;
  }

  v41 = CalCeilToScreenScale(v29 + *v40);
  v42 = ceil(v31 + 0.0 + 0.0);
  systemBackgroundColor = [*(v33 + 2184) systemBackgroundColor];
  [systemBackgroundColor setFill];

  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = v41;
  v47.size.height = v42;
  UIRectFill(v47);
  [nameCopy drawInRect:v27 withAttributes:{x, y, v41, v42}];
}

- (id)_imageForMonthName:(id)name
{
  nameCopy = name;
  if (_imageForMonthName__onceToken != -1)
  {
    [EKUIYearMonthView _imageForMonthName:];
  }

  v68 = nameCopy;
  if ((_imageForMonthName__warmingCache & 1) == 0)
  {
    v5 = +[EKUISemiConstantCache sharedInstance];
    [v5 minYearMonthHeaderFontSizeUsed];
    v7 = v6;

    if (v7 == 0.0)
    {
      _imageForMonthName__warmingCache = 1;
      [(EKUIYearMonthView *)self _warmImageCache];
      _imageForMonthName__warmingCache = 0;
    }
  }

  tintAdjustmentMode = [(EKUIYearMonthView *)self tintAdjustmentMode];
  v9 = MEMORY[0x1E696AD98];
  [(EKUIYearMonthView *)self bounds];
  *&v11 = v10;
  v12 = [v9 numberWithFloat:v11];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:EKUICurrentWindowSizeParadigmForViewHierarchy(self)];
  v67 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = @"normal";
  if (tintAdjustmentMode == 2)
  {
    v17 = @"dimmed";
  }

  else
  {
    v17 = @"normal";
  }

  stringValue = [v12 stringValue];
  stringValue2 = [v13 stringValue];
  if ([(EKUIYearMonthView *)self vibrant])
  {
    v16 = @"vibrant";
  }

  if ([(EKUIYearMonthView *)self isCurrentMonth])
  {
    v20 = @"current";
  }

  else
  {
    v20 = @"not";
  }

  traitCollection = [(EKUIYearMonthView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v23 = @"light";
  if (userInterfaceStyle == 2)
  {
    v23 = @"dark";
  }

  v64 = v16;
  v24 = v68;
  v25 = [v67 stringWithFormat:@"%@:%@:%@:%@:%@:%@:%@:%@", v68, v15, v17, stringValue, stringValue2, v64, v20, v23];

  v26 = [_imageForMonthName__s_cache objectForKey:v25];
  if (!v26)
  {
    v66 = v12;
    [(EKUIYearMonthView *)self headerFontMaxSize];
    if (vabdd_f64(v27, *&_imageForMonthName__s_desiredFontSizeForSmallestUsedFontSize) >= 2.22044605e-16)
    {
      _imageForMonthName__s_smallestUsedFontSize = 0x7FF0000000000000;
    }

    [(EKUIYearMonthView *)self headerFontMaxSize];
    if (v28 >= *&_imageForMonthName__s_smallestUsedFontSize)
    {
      v29 = *&_imageForMonthName__s_smallestUsedFontSize;
    }

    else
    {
      v29 = v28;
    }

    [(EKUIYearMonthView *)self headerFontMinSize];
    v31 = v30;
    [(EKUIYearMonthView *)self bounds];
    Width = CGRectGetWidth(v79);
    [(EKUIYearMonthView *)self xSpacing];
    v34 = Width - v33;
    headerFont = [(EKUIYearMonthView *)self headerFont];
    fontDescriptor = [headerFont fontDescriptor];

    v37 = [MEMORY[0x1E69DB878] fontWithDescriptor:fontDescriptor size:v29];
    v65 = v25;
    if ([(EKUIYearMonthView *)self isCurrentMonth])
    {
      [(EKUIYearMonthView *)self tintColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v38 = ;
    v39 = MEMORY[0x1E695DF90];
    v40 = *MEMORY[0x1E69DB648];
    v41 = *MEMORY[0x1E69DB650];
    v42 = MEMORY[0x1E696AD98];
    [(EKUIYearMonthView *)self headerFontKerning];
    *&v43 = v43;
    v44 = [v42 numberWithFloat:v43];
    v45 = [v39 dictionaryWithObjectsAndKeys:{v37, v40, v38, v41, v44, *MEMORY[0x1E69DB660], 0}];

    v46 = v68;
    [v68 sizeWithAttributes:v45];
    v48 = v47;
    v50 = v49;
    if (v47 > v34)
    {
      if (v29 < v31)
      {
LABEL_29:
        v54 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
        [v54 setLineBreakMode:4];
        [v45 setObject:v54 forKey:*MEMORY[0x1E69DB688]];

        v46 = v68;
      }

      else
      {
        while (1)
        {
          v51 = v37;
          v29 = v29 + -1.0;
          v37 = [MEMORY[0x1E69DB878] fontWithDescriptor:fontDescriptor size:v29];

          [v45 setObject:v37 forKey:v40];
          [v68 sizeWithAttributes:v45];
          v48 = v52;
          v50 = v53;
          if (v52 <= v34)
          {
            break;
          }

          if (v29 < v31)
          {
            goto LABEL_29;
          }
        }
      }
    }

    if (v29 < *&_imageForMonthName__s_smallestUsedFontSize)
    {
      _imageForMonthName__s_smallestUsedFontSize = *&v29;
      v55 = +[EKUISemiConstantCache sharedInstance];
      [v55 setMinYearMonthHeaderFontSizeUsed:v29];

      v46 = v68;
      [(EKUIYearMonthView *)self headerFontMaxSize];
      _imageForMonthName__s_desiredFontSizeForSmallestUsedFontSize = v56;
      [_imageForMonthName__s_cache removeAllObjects];
    }

    v76 = 0;
    v77 = 0;
    v75 = 0.0;
    v74 = 0.0;
    CTFontGetLanguageAwareOutsets();
    if (CalInterfaceIsLeftToRight())
    {
      v57 = &v76;
    }

    else
    {
      v57 = &v77;
    }

    v58 = CalCeilToScreenScale(v48 + *v57);
    v59 = ceil(v50 + v75 + v74);
    v60 = objc_opt_new();
    [v60 setScale:EKUIScaleFactor()];
    [v60 setOpaque:1];
    [v60 setPreferredRange:2];
    v61 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v60 format:{v58, v59}];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __40__EKUIYearMonthView__imageForMonthName___block_invoke_2;
    v69[3] = &unk_1E84408F0;
    v72 = v58;
    v73 = v59;
    v70 = v46;
    v71 = v45;
    v24 = v46;
    v62 = v45;
    v26 = [v61 imageWithActions:v69];
    v25 = v65;
    [_imageForMonthName__s_cache setObject:v26 forKey:v65];

    v12 = v66;
  }

  return v26;
}

void __40__EKUIYearMonthView__imageForMonthName___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _imageForMonthName__s_cache;
  _imageForMonthName__s_cache = v0;
}

uint64_t __40__EKUIYearMonthView__imageForMonthName___block_invoke_2(double *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setFill];

  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = v2;
  v9.size.height = v3;
  UIRectFill(v9);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);

  return [v5 drawInRect:v6 withAttributes:{0.0, 0.0, v2, v3}];
}

- (double)minHeaderFontSizeUsed
{
  v3 = +[EKUISemiConstantCache sharedInstance];
  [v3 minYearMonthHeaderFontSizeUsed];
  v5 = v4;

  if (v5 == 0.0)
  {
    [(EKUIYearMonthView *)self _warmImageCache];
  }

  v6 = +[EKUISemiConstantCache sharedInstance];
  [v6 minYearMonthHeaderFontSizeUsed];
  v8 = v7;

  return v8;
}

- (void)_warmImageCache
{
  monthSymbols = [(NSCalendar *)self->_calendar monthSymbols];
  v4 = [monthSymbols count];

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [(EKCalendarDate *)self->_calendarDate calendarDateByAddingMonths:i];
      date = [v6 date];
      v8 = [(EKUIYearMonthView *)self monthNameForDate:date];

      v9 = [(EKUIYearMonthView *)self _imageForMonthName:v8];
    }
  }
}

- (id)monthNameForDate:(id)date
{
  dateCopy = date;
  if (CUIKCurrentLocaleRequiresUnabbrevatedMonthNames())
  {
    CUIKLongStringForMonth();
  }

  else
  {
    CUIKStringForMonth();
  }
  v4 = ;

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [v4 capitalizedStringWithLocale:currentLocale];

  return v6;
}

- (void)_drawWeekDayInitialsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v27[3] = *MEMORY[0x1E69E9840];
  v6 = CUIKWeekdayVeryShortAbbreviations();
  [(EKUIYearMonthView *)self xSpacing];
  v8 = v7;
  v9 = CUIKZeroIndexedWeekStart();
  v10 = [v6 count];
  weekDayInitialsFont = [(EKUIYearMonthView *)self weekDayInitialsFont];
  [weekDayInitialsFont ascender];
  v13 = v12;
  [weekDayInitialsFont descender];
  CalRoundToScreenScale(v13 - v14);
  v16 = v15;
  if (CTFontGetLanguageAwareOutsets())
  {
    v16 = CalCeilToScreenScale(v16 + 0.0 + 0.0);
  }

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [systemBackgroundColor setFill];

  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = v8 * v10;
  v28.size.height = v16;
  UIRectFill(v28);
  v18 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v18 setAlignment:1];
  v19 = +[EKUIYearMonthView _defaultTextColor];
  if ([(EKUIYearMonthView *)self vibrant])
  {
    v20 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.52];

    v19 = v20;
  }

  v21 = *MEMORY[0x1E69DB688];
  v26[0] = *MEMORY[0x1E69DB648];
  v26[1] = v21;
  v27[0] = weekDayInitialsFont;
  v27[1] = v18;
  v26[2] = *MEMORY[0x1E69DB650];
  v27[2] = v19;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  if (v10)
  {
    v23 = v10;
    do
    {
      if (CalTimeDirectionIsLeftToRight())
      {
        v24 = v9 % v10;
      }

      else
      {
        v24 = v10 + ~(v9 % v10);
      }

      v25 = [v6 objectAtIndexedSubscript:v24];
      [v25 drawInRect:v22 withAttributes:{x, y, v8, v16}];
      x = v8 + x;

      ++v9;
      --v23;
    }

    while (v23);
  }
}

- (id)_weekDayInitialsImage
{
  if (!__weekDayInitialsImages)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = __weekDayInitialsImages;
    __weekDayInitialsImages = v3;
  }

  v5 = CUIKWeekdayVeryShortAbbreviations();
  [(EKUIYearMonthView *)self xSpacing];
  v7 = v6;
  v8 = [v5 count] * v6;
  v9 = MEMORY[0x1E696AEC0];
  traitCollection = [(EKUIYearMonthView *)self traitCollection];
  v11 = [v9 stringWithFormat:@"weekdayInitialImage:%d:%tu", v8, objc_msgSend(traitCollection, "userInterfaceStyle")];

  v12 = [__weekDayInitialsImages objectForKey:v11];
  if (!v12)
  {
    v13 = CUIKZeroIndexedWeekStart();
    v14 = [v5 count];
    weekDayInitialsFont = [(EKUIYearMonthView *)self weekDayInitialsFont];
    [weekDayInitialsFont ascender];
    v17 = v16;
    [weekDayInitialsFont descender];
    CalRoundToScreenScale(v17 - v18);
    v20 = v19;
    v35 = 0.0;
    v34 = 0.0;
    if (CTFontGetLanguageAwareOutsets())
    {
      v20 = CalCeilToScreenScale(v20 + v35 + v34);
    }

    v21 = objc_opt_new();
    [v21 setScale:EKUIScaleFactor()];
    [v21 setOpaque:1];
    [v21 setPreferredRange:2];
    v22 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v21 format:{v7 * v14, v20}];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __42__EKUIYearMonthView__weekDayInitialsImage__block_invoke;
    v25[3] = &unk_1E8440918;
    v28 = v7 * v14;
    v29 = v20;
    v25[4] = self;
    v26 = weekDayInitialsFont;
    v30 = v14;
    v31 = v13;
    v27 = v5;
    v32 = v7;
    v33 = v20;
    v23 = weekDayInitialsFont;
    v12 = [v22 imageWithActions:v25];
    [__weekDayInitialsImages setObject:v12 forKey:v11];
  }

  return v12;
}

void __42__EKUIYearMonthView__weekDayInitialsImage__block_invoke(uint64_t a1)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setFill];

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v2;
  v19.size.height = v3;
  UIRectFill(v19);
  v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v5 setAlignment:1];
  v6 = +[EKUIYearMonthView _defaultTextColor];
  if ([*(a1 + 32) vibrant])
  {
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.52];

    v6 = v7;
  }

  v8 = *(a1 + 40);
  v9 = *MEMORY[0x1E69DB688];
  v17[0] = *MEMORY[0x1E69DB648];
  v17[1] = v9;
  v18[0] = v8;
  v18[1] = v5;
  v17[2] = *MEMORY[0x1E69DB650];
  v18[2] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = 0;
    v14 = *MEMORY[0x1E695EFF8];
    v13 = *(MEMORY[0x1E695EFF8] + 8);
    do
    {
      v15 = (v12 + *(a1 + 80)) % v11;
      if ((CalTimeDirectionIsLeftToRight() & 1) == 0)
      {
        v15 = *(a1 + 72) + ~v15;
      }

      v16 = [*(a1 + 48) objectAtIndexedSubscript:v15];
      [v16 drawInRect:v10 withAttributes:{v14, v13, *(a1 + 88), *(a1 + 96)}];
      v14 = v14 + *(a1 + 88);

      ++v12;
      v11 = *(a1 + 72);
    }

    while (v12 < v11);
  }
}

- (void)_drawMonthDays:(int64_t)days size:(CGSize)size underlineThickness:(double)thickness atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(EKUIYearMonthView *)self bounds:size.width];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(EKUIYearMonthView *)self xInset];
  v20 = v19;
  [(EKUIYearMonthView *)self yInset];
  v22 = v21;
  v52.origin.x = v12;
  v52.origin.y = v14;
  v52.size.width = v16;
  v52.size.height = v18;
  v53 = CGRectInset(v52, v20, v22);
  v23 = v53.origin.x;
  v24 = v53.origin.y;
  [(EKUIYearMonthView *)self daysXAdjustLeft];
  v26 = v25;
  [(EKUIYearMonthView *)self xSpacing];
  v28 = v27;
  [(EKUIYearMonthView *)self ySpacing];
  v30 = v29;
  daysInWeek = self->_daysInWeek;
  v32 = 2 * daysInWeek - days + 29;
  v33 = v32 % daysInWeek;
  if (CalTimeDirectionIsLeftToRight())
  {
    firstDayIndex = self->_firstDayIndex;
  }

  else
  {
    firstDayIndex = self->_daysInWeek + ~self->_firstDayIndex;
  }

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [systemBackgroundColor setFill];

  [(EKUIYearMonthView *)self bounds];
  UIRectFill(v54);
  _defaultTextColor = [objc_opt_class() _defaultTextColor];
  [_defaultTextColor set];

  v37 = self->_firstDayIndex;
  v38 = v32 - v33;
  if (v38 - v37 >= 1)
  {
    v39 = 0;
    v40 = v26 + x + v23;
    v41 = y + v24;
    v42 = v40 + v28 * firstDayIndex;
    v43 = self->_daysInWeek - v37;
    do
    {
      ++v39;
      v44 = CUIKLocalizedStringForInteger();
      CalRoundToScreenScale(v28);
      v46 = v45;
      CalRoundToScreenScale(v30);
      [(EKUIYearMonthView *)self _drawDayNumber:v44 size:v46 underlineThickness:v47 atPoint:thickness, v42, v41];
      if (v43-- <= 1)
      {
        IsLeftToRight = CalTimeDirectionIsLeftToRight();
        v43 = self->_daysInWeek;
        if (IsLeftToRight)
        {
          v42 = v40;
        }

        else
        {
          v42 = v40 + v28 * (v43 - 1);
        }

        v41 = v30 + v41;
      }

      else
      {
        v50 = CalTimeDirectionIsLeftToRight();
        v51 = -1.0;
        if (v50)
        {
          v51 = 1.0;
        }

        v42 = v42 + v28 * v51;
      }
    }

    while (v39 < v38 - self->_firstDayIndex);
  }
}

- (id)_imageForMonthDays:(int64_t)days size:(CGSize)size underlineThickness:(double)thickness
{
  height = size.height;
  width = size.width;
  if (_imageForMonthDays_size_underlineThickness__onceToken != -1)
  {
    [EKUIYearMonthView _imageForMonthDays:size:underlineThickness:];
  }

  [(EKUIYearMonthView *)self bounds];
  v11 = v10;
  v12 = EKUICurrentWindowSizeParadigmForViewHierarchy(self);
  dayNumberFont = [(EKUIYearMonthView *)self dayNumberFont];
  [dayNumberFont pointSize];
  v15 = v14;

  dayColorKey = [(EKUIYearMonthView *)self dayColorKey];
  if (dayColorKey)
  {
    dayColorKey2 = [(EKUIYearMonthView *)self dayColorKey];
  }

  else
  {
    dayColorKey2 = @"default";
  }

  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  traitCollection = [(EKUIYearMonthView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v21 = @"light";
  if (userInterfaceStyle == 2)
  {
    v21 = @"dark";
  }

  v22 = [v18 initWithFormat:@"%d:%d:%f:%f:%d:%d:%@:%f:%@", days, v11, *&width, *&height, v12, v15, dayColorKey2, *&thickness, v21];

  v23 = [_imageForMonthDays_size_underlineThickness__cache objectForKey:v22];
  if (!v23)
  {
    [(EKUIYearMonthView *)self bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [(EKUIYearMonthView *)self xInset];
    v33 = v32;
    [(EKUIYearMonthView *)self yInset];
    v35 = v34;
    v53.origin.x = v25;
    v53.origin.y = v27;
    v53.size.width = v29;
    v53.size.height = v31;
    v54 = CGRectInset(v53, v33, v35);
    x = v54.origin.x;
    y = v54.origin.y;
    [(EKUIYearMonthView *)self daysXAdjustLeft];
    v39 = v38 + x;
    [(EKUIYearMonthView *)self xSpacing];
    v41 = v40;
    [(EKUIYearMonthView *)self ySpacing];
    v43 = v42;
    daysInWeek = self->_daysInWeek;
    v45 = (2 * daysInWeek - days + 29) / daysInWeek;
    v46 = v42 * v45;
    v47 = v45 * daysInWeek;
    v48 = objc_opt_new();
    [v48 setScale:EKUIScaleFactor()];
    [v48 setOpaque:1];
    [v48 setPreferredRange:2];
    v49 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v48 format:{width, v46}];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __64__EKUIYearMonthView__imageForMonthDays_size_underlineThickness___block_invoke_2;
    v51[3] = &unk_1E8440940;
    v51[5] = v41;
    *&v51[6] = v43;
    v51[4] = self;
    *&v51[7] = v39;
    *&v51[8] = y;
    v51[9] = v47;
    *&v51[10] = thickness;
    v23 = [v49 imageWithActions:v51];
    [_imageForMonthDays_size_underlineThickness__cache setObject:v23 forKey:v22];
  }

  return v23;
}

void __64__EKUIYearMonthView__imageForMonthDays_size_underlineThickness___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _imageForMonthDays_size_underlineThickness__cache;
  _imageForMonthDays_size_underlineThickness__cache = v0;
}

void __64__EKUIYearMonthView__imageForMonthDays_size_underlineThickness___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  v5 = *(a1 + 32);
  if (IsLeftToRight)
  {
    v6 = *(v5 + 424);
  }

  else
  {
    v6 = *(v5 + 432) + ~*(v5 + 424);
  }

  v7 = *(a1 + 40);
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v10 setFill];

  [*(a1 + 32) bounds];
  UIRectFill(v27);
  v11 = [objc_opt_class() _defaultTextColor];
  [v11 set];

  v12 = *(a1 + 32);
  v13 = *(v12 + 424);
  if (*(a1 + 72) > v13)
  {
    v14 = 0;
    v15 = v9 + v7 * v6;
    v16 = *(v12 + 432) - v13;
    do
    {
      ++v14;
      v17 = CUIKLocalizedStringForInteger();
      CalRoundToScreenScale(v2);
      v19 = v18;
      CalRoundToScreenScale(v3);
      v21 = [*(a1 + 32) _imageForDayNumber:v17 size:v19 underlineThickness:{v20, *(a1 + 80)}];
      [v21 drawAtPoint:{v15, v8}];
      if (v16-- <= 1)
      {
        v23 = CalTimeDirectionIsLeftToRight();
        v16 = *(*(a1 + 32) + 432);
        if (v23)
        {
          v15 = *(a1 + 56);
        }

        else
        {
          v15 = *(a1 + 56) + *(a1 + 40) * (v16 - 1);
        }

        v8 = v8 + *(a1 + 48);
      }

      else
      {
        v24 = *(a1 + 40);
        if (CalTimeDirectionIsLeftToRight())
        {
          v26 = 1.0;
        }

        else
        {
          v26 = -1.0;
        }

        v15 = v15 + v24 * v26;
      }
    }

    while (v14 < *(a1 + 72) - *(*(a1 + 32) + 424));
  }
}

- (void)_drawDayNumber:(id)number size:(CGSize)size underlineThickness:(double)thickness atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  height = size.height;
  width = size.width;
  v37[4] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v13 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v13 setAlignment:1];
  dayNumberFont = [(EKUIYearMonthView *)self dayNumberFont];
  v15 = +[EKUIYearMonthView _defaultTextColor];
  dayColorKey = [(EKUIYearMonthView *)self dayColorKey];
  if (dayColorKey)
  {
    v17 = dayColorKey;
    dayColor = [(EKUIYearMonthView *)self dayColor];

    if (dayColor)
    {
      dayColor2 = [(EKUIYearMonthView *)self dayColor];

      v15 = dayColor2;
    }
  }

  v20 = *MEMORY[0x1E69DB688];
  v36[0] = *MEMORY[0x1E69DB648];
  v36[1] = v20;
  v37[0] = dayNumberFont;
  v37[1] = v13;
  v21 = *MEMORY[0x1E69DB650];
  v37[2] = v15;
  v22 = *MEMORY[0x1E69DB660];
  v36[2] = v21;
  v36[3] = v22;
  v23 = MEMORY[0x1E696AD98];
  [(EKUIYearMonthView *)self dayNumberKerning];
  *&v24 = v24;
  v25 = [v23 numberWithFloat:v24];
  v37[3] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:4];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [systemBackgroundColor setFill];

  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  UIRectFill(v38);
  [numberCopy drawInRect:v26 withAttributes:{x, y, width, height}];
  if (thickness > 0.0)
  {
    v28 = CalendarAppTintColor();
    [v28 set];

    [numberCopy boundingRectWithSize:0 options:v26 attributes:0 context:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v30 = v29;
    CalRoundToScreenScale(x + (width - v29) * 0.5);
    v32 = v31;
    IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(self);
    v34 = 3.0;
    if (IsRegularInViewHierarchy)
    {
      v34 = 6.5;
    }

    CalRoundToScreenScale(y + height - v34);
    v39.origin.y = v35;
    v39.origin.x = v32;
    v39.size.width = v30;
    v39.size.height = thickness;
    UIRectFill(v39);
  }
}

- (id)_imageForDayNumber:(id)number size:(CGSize)size underlineThickness:(double)thickness forPreview:(BOOL)preview
{
  previewCopy = preview;
  height = size.height;
  width = size.width;
  v67[4] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  if (_imageForDayNumber_size_underlineThickness_forPreview__onceToken != -1)
  {
    [EKUIYearMonthView _imageForDayNumber:size:underlineThickness:forPreview:];
  }

  v49 = previewCopy;
  v51 = !previewCopy;
  [(EKUIYearMonthView *)self bounds];
  v12 = v11;
  v13 = EKUICurrentWindowSizeParadigmForViewHierarchy(self);
  dayColorKey = [(EKUIYearMonthView *)self dayColorKey];
  if (dayColorKey)
  {
    dayColorKey2 = [(EKUIYearMonthView *)self dayColorKey];
  }

  else
  {
    dayColorKey2 = @"default";
  }

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  traitCollection = [(EKUIYearMonthView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  dayNumberFont = [(EKUIYearMonthView *)self dayNumberFont];
  [dayNumberFont pointSize];
  v23 = v22;
  traitCollection2 = [(EKUIYearMonthView *)self traitCollection];
  if ([traitCollection2 userInterfaceStyle] == 2)
  {
    v25 = @"dark";
  }

  else
  {
    v25 = @"light";
  }

  v26 = [v16 initWithFormat:@"%@:%@:%@:%d:%d:%f:%@:%f%i:%@", numberCopy, v18, preferredContentSizeCategory, v12, v13, v23, dayColorKey2, *&thickness, v51, v25];

  v27 = [_imageForDayNumber_size_underlineThickness_forPreview__cache objectForKey:v26];
  if (!v27)
  {
    v48 = dayColorKey2;
    v28 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v28 setAlignment:1];
    dayNumberFont2 = [(EKUIYearMonthView *)self dayNumberFont];
    v30 = +[EKUIYearMonthView _defaultTextColor];
    dayColorKey3 = [(EKUIYearMonthView *)self dayColorKey];
    if (dayColorKey3)
    {
      v32 = dayColorKey3;
      dayColor = [(EKUIYearMonthView *)self dayColor];

      if (dayColor)
      {
        dayColor2 = [(EKUIYearMonthView *)self dayColor];

        v30 = dayColor2;
      }
    }

    v35 = *MEMORY[0x1E69DB688];
    v66[0] = *MEMORY[0x1E69DB648];
    v66[1] = v35;
    v67[0] = dayNumberFont2;
    v67[1] = v28;
    v36 = *MEMORY[0x1E69DB650];
    v67[2] = v30;
    v37 = *MEMORY[0x1E69DB660];
    v66[2] = v36;
    v66[3] = v37;
    v38 = MEMORY[0x1E696AD98];
    [(EKUIYearMonthView *)self dayNumberKerning];
    *&v39 = v39;
    v40 = [v38 numberWithFloat:v39];
    v67[3] = v40;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:4];
    v41 = v47 = v28;

    v42 = objc_opt_new();
    [v42 setScale:EKUIScaleFactor()];
    [v42 setOpaque:v51];
    [v42 setPreferredRange:2];
    v43 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v42 format:{width, height}];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __75__EKUIYearMonthView__imageForDayNumber_size_underlineThickness_forPreview___block_invoke_2;
    v52[3] = &unk_1E8440968;
    v64 = v51;
    v57 = 0;
    v58 = 0;
    v59 = width;
    v60 = height;
    v65 = v49;
    v61 = width;
    v62 = height;
    v53 = dayNumberFont2;
    v54 = numberCopy;
    v55 = v41;
    thicknessCopy = thickness;
    selfCopy = self;
    v44 = v41;
    v45 = dayNumberFont2;
    v27 = [v43 imageWithActions:v52];
    [_imageForDayNumber_size_underlineThickness_forPreview__cache setObject:v27 forKey:v26];

    dayColorKey2 = v48;
  }

  return v27;
}

void __75__EKUIYearMonthView__imageForDayNumber_size_underlineThickness_forPreview___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _imageForDayNumber_size_underlineThickness_forPreview__cache;
  _imageForDayNumber_size_underlineThickness_forPreview__cache = v0;
}

void __75__EKUIYearMonthView__imageForDayNumber_size_underlineThickness_forPreview___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = a2;
  if (*(a1 + 120) == 1)
  {
    v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v3 setFill];

    UIRectFill(*(a1 + 64));
  }

  if (*(a1 + 121) == 1)
  {
    v4 = *(a1 + 104) * 0.5;
    [*(a1 + 32) lineHeight];
    v6 = v4 - v5 * 0.5;
    v7 = *(a1 + 80);
    v8 = *(a1 + 88);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = 0.0;
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    v8 = *(a1 + 88);
  }

  [v9 drawInRect:v10 withAttributes:{v11, v6, v7, v8}];
  if (*(a1 + 112) > 0.0)
  {
    v12 = CalendarAppTintColor();
    [v12 set];

    [*(a1 + 40) boundingRectWithSize:0 options:*(a1 + 48) attributes:0 context:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v14 = v13;
    CalRoundToScreenScale((*(a1 + 96) - v13) * 0.5);
    v16 = v15;
    v17 = *(a1 + 104);
    IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(*(a1 + 56));
    v19 = 3.0;
    if (IsRegularInViewHierarchy)
    {
      v19 = 6.5;
    }

    CalRoundToScreenScale(v17 - v19);
    v23.origin.y = v20;
    v23.size.height = *(a1 + 112);
    v23.origin.x = v16;
    v23.size.width = v14;
    UIRectFill(v23);
  }
}

+ (double)heightForInterfaceOrientation:(int64_t)orientation windowSize:(CGSize)size heightSizeClass:(int64_t)class
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (double)xInset
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (double)yInset
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (double)headerXAdjust
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (double)headerFontMaxSize
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (double)headerFontMinSize
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (UIFont)headerFont
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  v2 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];

  return [v2 systemFontOfSize:?];
}

- (double)headerFontKerning
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (UIFont)dayNumberFont
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  v2 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];

  return [v2 systemFontOfSize:?];
}

- (UIFont)todayNumberFont
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  v2 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];

  return [v2 systemFontOfSize:?];
}

- (double)dayTextSize
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (double)todayTextSize
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (double)circleSize
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (double)daysXAdjustLeft
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (double)daysYAdjustTop
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (double)xSpacing
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (double)ySpacing
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (BOOL)showWeekDayInitials
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0;
}

- (double)weekDayInitialsAdjustLeft
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (double)weekDayInitialsAdjustTop
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0.0;
}

- (UIFont)weekDayInitialsFont
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  v2 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];

  return [v2 systemFontOfSize:?];
}

@end