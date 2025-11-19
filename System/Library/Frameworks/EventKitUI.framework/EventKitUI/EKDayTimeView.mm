@interface EKDayTimeView
+ (CGRect)_timeLineExtensionFrameForTimeWidth:(double)a3 timeMarker:(id)a4 timeLabelXPosition:(double)a5 yPosition:(double)a6;
+ (CGRect)timeMarkerFrameForTotalWidth:(double)a3 timeWidth:(double)a4 timeMarker:(id)a5 hourHeight:(double)a6 topPadding:(double)a7;
+ (double)_dynamicFontSizeForOrientation:(int64_t)a3;
+ (double)_timeTextWidthForSizeClass:(int64_t)a3 orientation:(int64_t)a4 inViewHierarchy:(id)a5;
+ (double)_timeVerticalInsetForOrientation:(int64_t)a3 inViewHierarchy:(id)a4;
+ (double)_widthForOrientation:(int64_t)a3 sizeClass:(int64_t)a4 excludeCurrentTime:(BOOL)a5;
+ (double)defaultHeightForSizeClass:(int64_t)a3 orientation:(int64_t)a4;
+ (double)defaultHeightForSizeClass:(int64_t)a3 orientation:(int64_t)a4 withHourScale:(double)a5;
+ (double)heightOfHourTextForHour:(int64_t)a3 orientation:(int64_t)a4;
+ (double)hourHeightForSizeClass:(int64_t)a3 orientation:(int64_t)a4;
+ (double)positionOfSecond:(int64_t)a3 hourHeight:(double)a4 topPadding:(double)a5 clampToBounds:(BOOL)a6;
+ (double)timeInsetForSizeClass:(int64_t)a3 orientation:(int64_t)a4;
+ (double)timeWidthForOrientation:(int64_t)a3 inViewHierarchy:(id)a4;
+ (id)_hourFontForOrientation:(int64_t)a3;
+ (id)_noonAttributedStringForString:(id)a3 orientation:(int64_t)a4;
+ (id)_noonFontForOrientation:(int64_t)a3;
+ (id)noonAttributedStringComponentsForOrientation:(int64_t)a3;
+ (id)noonAttributedStringForOrientation:(int64_t)a3;
+ (id)noonString;
+ (void)_calculateWidthForSizeClass:(int64_t)a3 orientation:(int64_t)a4 excludeCurrentTime:(BOOL)a5 inViewHierarchy:(id)a6;
+ (void)_invalidateWidth;
+ (void)_registerForInvalidation;
+ (void)_setWidth:(double)a3 forOrientation:(int64_t)a4 sizeClass:(int64_t)a5 excludeCurrentTime:(BOOL)a6;
- (CGSize)sizeThatFits:(CGSize)a3;
- (EKDayTimeView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4;
- (EKDayTimeViewDelegate)delegate;
- (UIColor)timeColor;
- (_NSRange)hoursToRender;
- (double)_timeMarkerAlpha;
- (double)defaultHeight;
- (double)timeWidth;
- (int64_t)_sizeClass;
- (void)_flushTimeStringImageCache;
- (void)_fontSizeChanged;
- (void)_localeChanged;
- (void)_sizeClassChanged;
- (void)_updateMarkerAlpha;
- (void)dealloc;
- (void)drawRect:(CGRect)a3 forContentView:(id)a4 withHourRange:(_NSRange)a5;
- (void)layoutFrames;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setCurtainHeight:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlightedHour:(double)a3;
- (void)setHourHeightScale:(double)a3;
- (void)setHoursToRender:(_NSRange)a3;
- (void)setNeedsDisplay;
- (void)setOpaque:(BOOL)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setShowsLeftBorder:(BOOL)a3;
- (void)setShowsRightBorder:(BOOL)a3;
- (void)setShowsTimeMarker:(BOOL)a3;
- (void)setShowsTimeMarkerExtension:(BOOL)a3;
- (void)setTimeColor:(id)a3;
- (void)setTimeMarkerExtensionColor:(id)a3;
- (void)setVisualEffect:(id)a3;
- (void)updateMarkerPosition;
- (void)viewTintColorDidChangeForView:(id)a3 toColor:(id)a4;
@end

@implementation EKDayTimeView

+ (void)_registerForInvalidation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EKDayTimeView__registerForInvalidation__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_registerForInvalidation_onceToken_0 != -1)
  {
    dispatch_once(&_registerForInvalidation_onceToken_0, block);
  }
}

void __41__EKDayTimeView__registerForInvalidation__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__invalidateCachedValues name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)layoutFrames
{
  v2 = 408;
  if (self->_contentViews)
  {
    if (self->_hourHeight >= 0.0)
    {
      [(EKDayTimeView *)self frame];
      if (v4 > 0.0)
      {
        [(EKDayTimeView *)self frame];
        v6 = v5;
        v7 = 0;
        v8 = *MEMORY[0x1E695F058];
        v9 = 0.0;
        v10 = &OBJC_IVAR___EKUIViewHierarchyFromComponents__ekui_tintColor;
        v11 = 0x1E696A000;
        v12 = 25;
        do
        {
          [(EKDayTimeView *)self hourHeight];
          v14 = 1024.0 - v13;
          if (v12 == 25)
          {
            v15 = v14 + 0.5;
            hoursToPad = self->_hoursToPad;
            [(EKDayTimeView *)self hourHeight];
            v14 = v15 - (hoursToPad * v17 + 18.0);
          }

          v18 = v6 - v9;
          if (v14 >= v6 - v9)
          {
            v19 = v6 - v9;
          }

          else
          {
            v19 = v14;
          }

          if (v19 <= 0.0)
          {
            break;
          }

          [(EKDayTimeView *)self hourHeight];
          *&v20 = v19 / v20;
          v21 = vcvtms_s32_f32(*&v20);
          if (v12 >= v21)
          {
            v22 = v21;
          }

          else
          {
            v22 = v12;
          }

          v51 = v22;
          if (v7 >= [*(&self->super.super.super.isa + v2) count])
          {
            v23 = objc_alloc_init(EKDayTimeContentView);
            [(EKDayTimeContentView *)v23 setWantsDeepColorDrawing:0];
            [(EKDayTimeContentView *)v23 setOwner:self];
            [(EKDayTimeContentView *)v23 setOpaque:[(EKDayTimeView *)self isOpaque]];
            if (([(EKDayTimeView *)self isOpaque]& 1) != 0)
            {
              [MEMORY[0x1E69DC888] systemBackgroundColor];
            }

            else
            {
              [MEMORY[0x1E69DC888] clearColor];
            }
            v27 = ;
            [(EKDayTimeContentView *)v23 setBackgroundColor:v27];

            [(EKDayTimeContentView *)v23 setNeedsDisplayOnBoundsChange:1];
            v26 = objc_alloc_init(EKUIVisualEffectView);
            [(EKUIVisualEffectView *)v26 setTintColorDelegate:self];
            v28 = [(EKUIVisualEffectView *)v26 contentView];
            [v28 addSubview:v23];

            [(EKDayTimeView *)self addSubview:v26];
            [*(&self->super.super.super.isa + v2) addObject:v23];
            v29 = v2;
            v30 = v10;
            v31 = *(&self->super.super.super.isa + v10[849]);
            v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v23];
            v32 = v31;
            v10 = v30;
            v2 = v29;
            [v32 setObject:v26 forKey:v25];
          }

          else
          {
            v23 = [*(&self->super.super.super.isa + v2) objectAtIndex:v7];
            v24 = *(&self->super.super.super.isa + v10[849]);
            v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v23];
            v26 = [v24 objectForKey:v25];
          }

          [(EKDayTimeView *)self frame];
          v34 = v33;
          v35 = v12 <= v21;
          v11 = 0x1E696A000uLL;
          if (!v35)
          {
            v36 = v51 + 0.5;
            if (v12 == 25)
            {
              v37 = v36 + self->_hoursToPad;
              [(EKDayTimeView *)self hourHeight];
              v39 = v37 * v38 + 18.0;
            }

            else
            {
              v40 = v36 + 0.5;
              [(EKDayTimeView *)self hourHeight];
              v39 = v40 * v41;
            }

            CalRoundToScreenScale(v39);
            v18 = v42;
          }

          [(EKUIVisualEffectView *)v26 setFrame:v8, v9, v34, v18];
          [(EKDayTimeContentView *)v23 setFrame:0.0, 0.0, v34, v18];
          [(EKDayTimeContentView *)v23 setHourRange:25 - v12, v51];
          v12 += ~v51;
          v9 = v9 + v18;
          ++v7;
        }

        while (v12 > 0);
        while (v7 < [*(&self->super.super.super.isa + v2) count])
        {
          v43 = [*(&self->super.super.super.isa + v2) lastObject];
          [v43 setOwner:0];
          [*(&self->super.super.super.isa + v2) removeLastObject];
          v44 = v10[849];
          v45 = *(&self->super.super.super.isa + v44);
          v46 = [*(v11 + 3776) stringWithFormat:@"%p", v43];
          v47 = [v45 objectForKey:v46];

          [v47 removeFromSuperview];
          v48 = *(&self->super.super.super.isa + v44);
          v49 = [v43 description];
          [v48 removeObjectForKey:v49];
        }

        if (CalCanvasPocketEnabled())
        {
          [(EKDayTimeView *)self bringSubviewToFront:self->_curtain];
        }

        [(EKDayTimeView *)self bringSubviewToFront:self->_timeMarker];
        timeMarkerExtension = self->_timeMarkerExtension;

        [(EKDayTimeView *)self bringSubviewToFront:timeMarkerExtension];
      }
    }
  }
}

- (void)setNeedsDisplay
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_contentViews;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setNeedsDisplay];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (int64_t)_sizeClass
{
  v3 = [(EKDayTimeView *)self window];

  if (!v3)
  {
    return self->_targetSizeClass;
  }

  return EKUIWidthSizeClassForViewHierarchy(self);
}

- (void)_flushTimeStringImageCache
{
  v2 = 0;
  cachedHours = self->_cachedHours;
  do
  {
    v4 = cachedHours[v2];
    cachedHours[v2] = 0;

    ++v2;
  }

  while (v2 != 25);
}

- (double)timeWidth
{
  result = self->_timeWidth;
  if (result == 0.0)
  {
    [EKDayTimeView timeWidthForOrientation:self->_orientation inViewHierarchy:self];
    self->_timeWidth = result;
  }

  return result;
}

- (EKDayTimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = EKDayTimeView;
  [(EKDayTimeView *)&v3 layoutSubviews];
  [(EKDayTimeView *)self updateMarkerPosition];
}

- (void)updateMarkerPosition
{
  if (self->_timeMarker && [(EKDayTimeView *)self showsTimeMarker])
  {
    [(EKCurrentTimeMarkerView *)self->_timeMarker updateTime];
    v3 = objc_opt_class();
    [(EKDayTimeView *)self bounds];
    v5 = v4;
    [(EKDayTimeView *)self timeWidth];
    v7 = v6;
    timeMarker = self->_timeMarker;
    [(EKDayTimeView *)self hourHeight];
    v10 = v9;
    [(EKDayTimeView *)self topPadding];
    [v3 timeMarkerFrameForTotalWidth:timeMarker timeWidth:v5 timeMarker:v7 hourHeight:v10 topPadding:v11];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(EKCurrentTimeMarkerView *)self->_timeMarker setFrame:?];
    v23.origin.x = v13;
    v23.origin.y = v15;
    v23.size.width = v17;
    v23.size.height = v19;
    CGRectGetMidY(v23);
    if (self->_showsTimeMarkerExtension)
    {
      v20 = objc_opt_class();
      [(EKDayTimeView *)self timeWidth];
      [v20 _timeLineExtensionFrameForTimeWidth:self->_timeMarker timeMarker:? timeLabelXPosition:? yPosition:?];
      [(UIView *)self->_timeMarkerExtension setFrame:?];
    }

    [(EKDayTimeView *)self _updateMarkerAlpha];
    v21 = [(EKDayTimeView *)self delegate];

    if (v21)
    {

      [(EKDayTimeView *)self setNeedsDisplay];
    }
  }
}

+ (void)_invalidateWidth
{
  __HourWidthPortraitRegular = 0;
  __HourWidthPortraitCompact = 0;
  __HourWidthLandscapeRegular = 0;
  __HourWidthLandscapeCompact = 0;
  __HourWidthExcludingCurrentTimePortraitRegular = 0;
  __HourWidthExcludingCurrentTimePortraitCompact = 0;
  __HourWidthExcludingCurrentTimeLandscapeRegular = 0;
  __HourWidthExcludingCurrentTimeLandscapeCompact = 0;
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"EKDayTimeViewHourWidthChangedNotification" object:0];
}

+ (double)_dynamicFontSizeForOrientation:(int64_t)a3
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v4 = [v3 fontDescriptor];
  [v4 pointSize];
  v6 = v5;

  CalRoundToScreenScale(v6);
  return fmin(v7, 24.0);
}

+ (id)_hourFontForOrientation:(int64_t)a3
{
  [a1 _dynamicFontSizeForOrientation:a3];
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:v3 * 1.36363636];
  v5 = [MEMORY[0x1E69DB878] cuik_createFontFromFont:v4 withFontGrade:2];

  return v5;
}

+ (id)_noonFontForOrientation:(int64_t)a3
{
  [a1 _dynamicFontSizeForOrientation:a3];
  v3 = MEMORY[0x1E69DB878];

  return [v3 systemFontOfSize:? weight:?];
}

+ (void)_calculateWidthForSizeClass:(int64_t)a3 orientation:(int64_t)a4 excludeCurrentTime:(BOOL)a5 inViewHierarchy:(id)a6
{
  v61 = a5;
  v69[1] = *MEMORY[0x1E69E9840];
  v9 = a6;
  EKUIMultiwindowAssert(a3 != 0, @"Unspecified size class", v10, v11, v12, v13, v14, v15, v56);
  [objc_opt_class() allDayWidth];
  v17 = *&__AllDayWidth;
  if (*&__AllDayWidth <= 0.0)
  {
    __AllDayWidth = v16;
    v17 = *&v16;
  }

  v62 = v9;
  v18 = fmax(v17, 0.0);
  v19 = [EKCurrentTimeMarkerView timeMarkerFontForSizeClass:a3];
  v20 = CUIKTodayComponents();
  [v20 setHour:22];
  [v20 setMinute:45];
  v21 = CUIKCalendar();
  v22 = [v21 dateFromComponents:v20];

  v23 = *MEMORY[0x1E6992E88];
  v24 = [MEMORY[0x1E695DFE8] calendarTimeZone];
  v59 = v22;
  v25 = [v22 localizedStringWithFormat:v23 timeZone:v24];

  v68 = *MEMORY[0x1E69DB648];
  v69[0] = v19;
  v60 = v19;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
  v58 = v25;
  [v25 sizeWithAttributes:v26];
  v28 = v27;

  if (v18 >= v28 + 10.0 + 2.0)
  {
    v29 = v18;
  }

  else
  {
    v29 = v28 + 10.0 + 2.0;
  }

  v30 = CUIKTodayComponents();
  [v30 setHour:10];
  v31 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
  [v30 setTimeZone:v31];

  v32 = CUIKCalendar();
  v33 = [v32 dateFromComponents:v30];

  v34 = MEMORY[0x1E69933D8];
  [a1 _dynamicFontSizeForOrientation:1];
  v57 = v33;
  v35 = [v34 stylizedTimelineHourStringForHourDate:v33 baseFontSize:?];
  [v35 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
  v37 = v36;
  v38 = a1;
  v39 = a4;
  v40 = [a1 noonAttributedStringComponentsForOrientation:a4];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v41 = [v40 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v64;
    do
    {
      v44 = 0;
      do
      {
        if (*v64 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [*(*(&v63 + 1) + 8 * v44) boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
        if (v45 > v37)
        {
          v37 = v45;
        }

        ++v44;
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v42);
  }

  if (v29 >= v37 + 8.0 + 1.0)
  {
    v46 = v29;
  }

  else
  {
    v46 = v37 + 8.0 + 1.0;
  }

  if (a3 != 2)
  {
    v49 = v39;
    v47 = v62;
    v50 = v38;
    if ((v39 - 1) <= 1)
    {
      v55 = 4.5;
LABEL_27:
      v54 = v46 + v55 + 6.0;
      goto LABEL_28;
    }

LABEL_26:
    v55 = 3.0;
    goto LABEL_27;
  }

  v47 = v62;
  v48 = EKUIIsExtended(v62);
  v49 = v39;
  v50 = v38;
  if (v39 - 3) <= 1 && (v48)
  {
    goto LABEL_26;
  }

  v51 = 37.0;
  if ((v39 - 1) >= 2)
  {
    v51 = 31.0;
  }

  v52 = v51 + v46;
  CalRoundToScreenScale(5.5);
  v54 = v52 + v53;
LABEL_28:
  [v50 _setWidth:v49 forOrientation:a3 sizeClass:v61 excludeCurrentTime:v54];
}

+ (id)noonString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Noon_timeline_indicator" value:@"Noon" table:0];

  return v3;
}

+ (id)noonAttributedStringForOrientation:(int64_t)a3
{
  v5 = [a1 noonString];
  v6 = [a1 _noonAttributedStringForString:v5 orientation:a3];

  return v6;
}

+ (id)noonAttributedStringComponentsForOrientation:(int64_t)a3
{
  v5 = [a1 noonString];
  v6 = [v5 componentsSeparatedByString:@" "];

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__EKDayTimeView_noonAttributedStringComponentsForOrientation___block_invoke;
  v10[3] = &unk_1E8442448;
  v8 = v7;
  v11 = v8;
  v12 = a1;
  v13 = a3;
  [v6 enumerateObjectsUsingBlock:v10];

  return v8;
}

void __62__EKDayTimeView_noonAttributedStringComponentsForOrientation___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _noonAttributedStringForString:a2 orientation:*(a1 + 48)];
  [v2 addObject:v3];
}

+ (id)_noonAttributedStringForString:(id)a3 orientation:(int64_t)a4
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _noonFontForOrientation:a4];
  v8 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  if (CUIKLocaleIsRightToLeft())
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  [v8 setAlignment:v9];
  v10 = *MEMORY[0x1E69DB648];
  v17[0] = v7;
  v11 = *MEMORY[0x1E69DB650];
  v16[0] = v10;
  v16[1] = v11;
  v12 = [MEMORY[0x1E69DC888] cuik_timelineHourColor];
  v16[2] = *MEMORY[0x1E69DB688];
  v17[1] = v12;
  v17[2] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v13];

  return v14;
}

+ (double)_timeTextWidthForSizeClass:(int64_t)a3 orientation:(int64_t)a4 inViewHierarchy:(id)a5
{
  v8 = a5;
  [a1 _widthForOrientation:a4 sizeClass:a3 excludeCurrentTime:0];
  if (v9 == 0.0)
  {
    [a1 _calculateWidthForSizeClass:a3 orientation:a4 excludeCurrentTime:0 inViewHierarchy:v8];
    [a1 _widthForOrientation:a4 sizeClass:a3 excludeCurrentTime:0];
  }

  v10 = v9;

  return v10;
}

+ (void)_setWidth:(double)a3 forOrientation:(int64_t)a4 sizeClass:(int64_t)a5 excludeCurrentTime:(BOOL)a6
{
  v6 = a6;
  v26 = *MEMORY[0x1E69E9840];
  v9 = a4 - 1;
  v10 = !a6;
  v11 = (a4 - 1) > 1 || !a6;
  if (v11 || a5 != 2)
  {
    if (a5 == 2)
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v9 < 2)
      {
        v10 = 1;
      }

      if (v10 || a5 != 2)
      {
        if (a5 == 2)
        {
          v10 = 1;
        }

        if (v10)
        {
          v12 = (a4 - 1) > 1 || a6;
          if ((a4 - 1) > 1 || a6 || a5 != 2)
          {
            if (a5 == 2)
            {
              v12 = 1;
            }

            if (v12)
            {
              v13 = v9 < 2 || a6;
              if (v13 || a5 != 2)
              {
                if (a5 == 2)
                {
                  v13 = 1;
                }

                if (v13)
                {
                  v14 = kEKUILogHandle;
                  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
                  {
                    v15 = v14;
                    v16 = objc_opt_class();
                    v17 = NSStringFromClass(v16);
                    v18 = 138413058;
                    v19 = v17;
                    v20 = 1024;
                    v21 = v6;
                    v22 = 2048;
                    v23 = a4;
                    v24 = 2048;
                    v25 = a5;
                    _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_ERROR, "[%@] Unhandled combination of excludeCurrentTime:%d, orientation:%ld, sizeClass:%ld when trying to setWidth", &v18, 0x26u);
                  }
                }

                else
                {
                  __HourWidthLandscapeCompact = *&a3;
                }
              }

              else
              {
                __HourWidthLandscapeRegular = *&a3;
              }
            }

            else
            {
              __HourWidthPortraitCompact = *&a3;
            }
          }

          else
          {
            __HourWidthPortraitRegular = *&a3;
          }
        }

        else
        {
          __HourWidthExcludingCurrentTimeLandscapeCompact = *&a3;
        }
      }

      else
      {
        __HourWidthExcludingCurrentTimeLandscapeRegular = *&a3;
      }
    }

    else
    {
      __HourWidthExcludingCurrentTimePortraitCompact = *&a3;
    }
  }

  else
  {
    __HourWidthExcludingCurrentTimePortraitRegular = *&a3;
  }
}

+ (double)_widthForOrientation:(int64_t)a3 sizeClass:(int64_t)a4 excludeCurrentTime:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3 - 1;
  v9 = !a5;
  v10 = (a3 - 1) > 1 || !a5;
  if (v10 || a4 != 2)
  {
    if (a4 == 2)
    {
      v10 = 1;
    }

    if (v10)
    {
      if (v8 < 2)
      {
        v9 = 1;
      }

      if (v9 || a4 != 2)
      {
        if (a4 == 2)
        {
          v9 = 1;
        }

        if (v9)
        {
          v12 = (a3 - 1) > 1 || a5;
          if ((a3 - 1) > 1 || a5 || a4 != 2)
          {
            if (a4 == 2)
            {
              v12 = 1;
            }

            if (v12)
            {
              v13 = v8 < 2 || a5;
              if (v13 || a4 != 2)
              {
                if (a4 == 2)
                {
                  v13 = 1;
                }

                if (v13)
                {
                  v14 = kEKUILogHandle;
                  v11 = 0;
                  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
                  {
                    v15 = v14;
                    v16 = objc_opt_class();
                    v17 = NSStringFromClass(v16);
                    v19 = 138413058;
                    v20 = v17;
                    v21 = 1024;
                    v22 = v5;
                    v23 = 2048;
                    v24 = a3;
                    v25 = 2048;
                    v26 = a4;
                    _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_ERROR, "[%@] Unhandled combination of excludeCurrentTime:%d, orientation:%ld, sizeClass:%ld when trying to get width, returning 0", &v19, 0x26u);
                  }
                }

                else
                {
                  v11 = __HourWidthLandscapeCompact;
                }
              }

              else
              {
                v11 = __HourWidthLandscapeRegular;
              }
            }

            else
            {
              v11 = __HourWidthPortraitCompact;
            }
          }

          else
          {
            v11 = __HourWidthPortraitRegular;
          }
        }

        else
        {
          v11 = __HourWidthExcludingCurrentTimeLandscapeCompact;
        }
      }

      else
      {
        v11 = __HourWidthExcludingCurrentTimeLandscapeRegular;
      }
    }

    else
    {
      v11 = __HourWidthExcludingCurrentTimePortraitCompact;
    }
  }

  else
  {
    v11 = __HourWidthExcludingCurrentTimePortraitRegular;
  }

  return *&v11;
}

+ (double)timeInsetForSizeClass:(int64_t)a3 orientation:(int64_t)a4
{
  EKUIMultiwindowAssert(a3 != 0, @"Size class not specified.", a3, a4, v4, v5, v6, v7, v10);
  if (a3 != 2)
  {
    return 6.0;
  }

  CalRoundToScreenScale(5.5);
  return result;
}

+ (double)_timeVerticalInsetForOrientation:(int64_t)a3 inViewHierarchy:(id)a4
{
  v5 = a4;
  v6 = 0.0;
  if ((MEMORY[0x1D38B98D0]() & 1) == 0)
  {
    IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v5);
    v8 = -3.0;
    if ((a3 - 1) >= 2)
    {
      v8 = -3.5;
    }

    if (IsRegularInViewHierarchy)
    {
      v6 = -3.5;
    }

    else
    {
      v6 = v8;
    }
  }

  return v6;
}

+ (double)timeWidthForOrientation:(int64_t)a3 inViewHierarchy:(id)a4
{
  v6 = a4;
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v6))
  {
    CalRoundToScreenScale(5.5);
    v8 = v7;
    v9 = 44.0;
    if ((((a3 - 3) < 2) & EKUIIsExtended(v6)) != 0)
    {
      v10 = 44.0;
    }

    else
    {
      v10 = 0.0;
    }
  }

  else
  {
    v8 = 6.0;
    v10 = 0.0;
    if ((a3 - 1) >= 2)
    {
      v9 = 47.0;
      if (MGGetBoolAnswer())
      {
        v11 = [MEMORY[0x1E69DC938] currentDevice];
        if ([v11 userInterfaceIdiom])
        {
        }

        else
        {
          v12 = [MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp];

          if (v12)
          {
            v10 = 20.0;
            if ((a3 - 3) <= 1)
            {
              if (EKUICurrentWindowSizeParadigmForViewHierarchy(v6) == 0x8000000)
              {
                v10 = 52.0;
              }

              else
              {
                v10 = 44.0;
              }
            }
          }
        }
      }
    }

    else
    {
      v9 = 51.0;
    }
  }

  [a1 _timeTextWidthForSizeClass:EKUIWidthSizeClassForViewHierarchy(v6) orientation:a3 inViewHierarchy:v6];
  v14 = v8 + v13;
  if (v14 < v9)
  {
    v14 = v9;
  }

  CalRoundToScreenScale(v10 + v14);
  v16 = v15;

  return v16;
}

+ (double)hourHeightForSizeClass:(int64_t)a3 orientation:(int64_t)a4
{
  [a1 _registerForInvalidation];
  EKUIMultiwindowAssert(a3 != 0, @"Unspecified size class", v6, v7, v8, v9, v10, v11, v19);
  v12 = 44.0;
  if ((a4 - 1) < 2)
  {
    v12 = 50.0;
  }

  if (a3 == 2)
  {
    v13 = 65.0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDCF8], v12}];
  v15 = [v14 fontDescriptor];
  [v15 pointSize];
  v17 = v16;

  CalRoundToScreenScale(v13 * (v17 / 17.0));
  return result;
}

+ (double)defaultHeightForSizeClass:(int64_t)a3 orientation:(int64_t)a4
{
  v6 = objc_opt_class();

  [v6 defaultHeightForSizeClass:a3 orientation:a4 withHourScale:1.0];
  return result;
}

- (double)defaultHeight
{
  [EKDayTimeView defaultHeightForSizeClass:[(EKDayTimeView *)self _sizeClass] orientation:self->_orientation withHourScale:self->_hourHeightScale];
  hoursToPad = self->_hoursToPad;
  if (hoursToPad > 0.0)
  {
    return result + hoursToPad * self->_hourHeight * 2.0;
  }

  return result;
}

+ (double)defaultHeightForSizeClass:(int64_t)a3 orientation:(int64_t)a4 withHourScale:(double)a5
{
  [EKDayTimeView hourHeightForSizeClass:a3 orientation:a4];
  v8 = v7 * a5;

  [a1 defaultHeightForNumHours:24 scaledHourHeight:v8];
  return result;
}

+ (double)heightOfHourTextForHour:(int64_t)a3 orientation:(int64_t)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 _hourFontForOrientation:a4];
  v5 = CUIKStringForHour();
  v10 = *MEMORY[0x1E69DB648];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 sizeWithAttributes:v6];
  v8 = v7;

  return v8;
}

- (EKDayTimeView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4
{
  v38[4] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = EKDayTimeView;
  v5 = [(EKDayTimeView *)&v37 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_highlightedHour = -1.0;
    v5->_hourHeight = -1.0;
    [objc_opt_class() defaultHourScale];
    v6->_hourHeightScale = v7;
    v6->_targetSizeClass = a4;
    v8 = [MEMORY[0x1E69DC888] cuik_todayTimelineColor];
    timeMarkerExtensionColor = v6->_timeMarkerExtensionColor;
    v6->_timeMarkerExtensionColor = v8;

    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(EKDayTimeView *)v6 setBackgroundColor:v10];

    v11 = CalendarAppTintColor();
    [(EKDayTimeView *)v6 setTintColor:v11];

    v6->_hoursToRender = xmmword_1D3600B20;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contentViews = v6->_contentViews;
    v6->_contentViews = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    visualEffectViews = v6->_visualEffectViews;
    v6->_visualEffectViews = v14;

    [(EKDayTimeView *)v6 layoutFrames];
    if (CalCanvasPocketEnabled())
    {
      v16 = objc_opt_new();
      curtain = v6->_curtain;
      v6->_curtain = v16;

      v18 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(UIView *)v6->_curtain setBackgroundColor:v18];

      [(UIView *)v6->_curtain setTranslatesAutoresizingMaskIntoConstraints:0];
      [(EKDayTimeView *)v6 addSubview:v6->_curtain];
      v19 = [(UIView *)v6->_curtain heightAnchor];
      v20 = [v19 constraintEqualToConstant:0.0];
      curtainHeightConstraint = v6->_curtainHeightConstraint;
      v6->_curtainHeightConstraint = v20;

      v34 = MEMORY[0x1E696ACD8];
      v36 = [(UIView *)v6->_curtain leadingAnchor];
      v35 = [(EKDayTimeView *)v6 leadingAnchor];
      v22 = [v36 constraintEqualToAnchor:v35];
      v38[0] = v22;
      v23 = [(UIView *)v6->_curtain trailingAnchor];
      v24 = [(EKDayTimeView *)v6 trailingAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];
      v38[1] = v25;
      v26 = [(UIView *)v6->_curtain topAnchor];
      v27 = [(EKDayTimeView *)v6 topAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      v38[2] = v28;
      v38[3] = v6->_curtainHeightConstraint;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
      [v34 activateConstraints:v29];
    }

    v30 = [MEMORY[0x1E696AD88] defaultCenter];
    [v30 addObserver:v6 selector:sel__localeChanged name:*MEMORY[0x1E6993308] object:0];

    v31 = [MEMORY[0x1E696AD88] defaultCenter];
    [v31 addObserver:v6 selector:sel__fontSizeChanged name:*MEMORY[0x1E69DDC48] object:0];

    v32 = [MEMORY[0x1E696AD88] defaultCenter];
    [v32 addObserver:v6 selector:sel__sizeClassChanged name:*MEMORY[0x1E6993358] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_contentViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setOwner:0];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = EKDayTimeView;
  [(EKDayTimeView *)&v8 dealloc];
}

- (void)_localeChanged
{
  [(EKDayTimeView *)self _flushTimeStringImageCache];
  +[EKDayTimeView _invalidateWidth];
  [(EKDayTimeView *)self _invalidateTimeWidth];

  [(EKDayTimeView *)self setNeedsDisplay];
}

- (void)_fontSizeChanged
{
  [(EKDayTimeView *)self _flushTimeStringImageCache];
  +[EKDayTimeView _invalidateWidth];
  [(EKDayTimeView *)self _invalidateTimeWidth];

  [(EKDayTimeView *)self setNeedsDisplay];
}

- (void)_sizeClassChanged
{
  [(EKDayTimeView *)self _flushTimeStringImageCache];
  +[EKDayTimeView _invalidateWidth];
  [(EKDayTimeView *)self _invalidateTimeWidth];

  [(EKDayTimeView *)self setNeedsDisplay];
}

- (void)setHoursToRender:(_NSRange)a3
{
  if (self->_hoursToRender.location != a3.location || self->_hoursToRender.length != a3.length)
  {
    self->_hoursToRender = a3;
    [(EKDayTimeView *)self setNeedsDisplay];
  }
}

- (void)setHourHeightScale:(double)a3
{
  self->_hourHeightScale = a3;
  [(EKDayTimeView *)self updateHourHeight];
  [(EKDayTimeView *)self layoutFrames];

  [(EKDayTimeView *)self setNeedsDisplay];
}

- (void)setOpaque:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = EKDayTimeView;
  [(EKDayTimeView *)&v19 setOpaque:?];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_contentViews;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        [v9 setOpaque:v3];
        v10 = [(EKDayTimeView *)self backgroundColor];
        if (v3)
        {
          v11 = [MEMORY[0x1E69DC888] clearColor];
          v12 = [v10 isEqual:v11];

          if (v12)
          {
            v13 = [MEMORY[0x1E69DC888] systemBackgroundColor];

            v10 = v13;
          }
        }

        [v9 setBackgroundColor:v10];
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = EKDayTimeView;
  v4 = a3;
  [(EKDayTimeView *)&v5 setBackgroundColor:v4];
  [(UIView *)self->_curtain setBackgroundColor:v4, v5.receiver, v5.super_class];
}

- (void)setShowsLeftBorder:(BOOL)a3
{
  v4 = *(self + 424);
  if ((v4 & 1) != a3)
  {
    *(self + 424) = v4 & 0xFE | a3;
    v6 = [(EKDayTimeView *)self superview];
    [v6 setNeedsLayout];

    [(EKDayTimeView *)self setNeedsLayout];

    [(EKDayTimeView *)self setNeedsDisplay];
  }
}

- (void)setShowsRightBorder:(BOOL)a3
{
  v3 = *(self + 424);
  if (((((v3 & 2) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *(self + 424) = v3 & 0xFD | v4;
    [(EKDayTimeView *)self setNeedsDisplay];
  }
}

- (void)setHighlightedHour:(double)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_highlightedHour != a3)
  {
    [(EKDayTimeView *)self scaledHourHeight];
    v6 = v5;
    hoursToPad = self->_hoursToPad;
    v8 = 18.0;
    if (hoursToPad > 0.0)
    {
      v8 = hoursToPad * self->_hourHeight + 18.0;
    }

    [(EKDayTimeView *)self bounds];
    v10 = v9;
    [(EKDayTimeView *)self bounds];
    v12 = v11;
    [(EKDayTimeView *)self bounds];
    v14 = v13;
    highlightedHour = self->_highlightedHour;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = self->_contentViews;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = v8 - (v10 + 5.0);
      v20 = v19 + v6 * a3;
      v21 = v19 + v6 * highlightedHour;
      v22 = v6 + 10.0;
      v23 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(v16);
          }

          v25 = *(*(&v26 + 1) + 8 * i);
          [v25 convertRect:self fromView:{v12, v21, v14, v22, v26}];
          [v25 setNeedsDisplayInRect:?];
          [v25 convertRect:self fromView:{v12, v20, v14, v22}];
          [v25 setNeedsDisplayInRect:?];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    self->_highlightedHour = a3;
  }
}

- (void)setTimeColor:(id)a3
{
  v5 = a3;
  if (self->_timeColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_timeColor, a3);
    [(EKDayTimeView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (UIColor)timeColor
{
  timeColor = self->_timeColor;
  if (!timeColor)
  {
    v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v5 = self->_timeColor;
    self->_timeColor = v4;

    timeColor = self->_timeColor;
  }

  return timeColor;
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(EKDayTimeView *)self updateHourHeight];
    [(EKDayTimeView *)self _invalidateTimeWidth];
    [(EKDayTimeView *)self _flushTimeStringImageCache];
    [(EKDayTimeView *)self setNeedsDisplay];
    [(EKDayTimeView *)self setNeedsLayout];

    [(EKDayTimeView *)self layoutFrames];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(EKDayTimeView *)self timeWidth:a3.width];
  v5 = v4;
  [(EKDayTimeView *)self defaultHeight];
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = CalCeilToScreenScale(a3.size.height);
  v8.receiver = self;
  v8.super_class = EKDayTimeView;
  [(EKDayTimeView *)&v8 setFrame:x, y, width, v7];
  [(EKDayTimeView *)self layoutFrames];
  [(EKDayTimeView *)self _invalidateTimeWidth];
}

- (void)drawRect:(CGRect)a3 forContentView:(id)a4 withHourRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v158[1] = *MEMORY[0x1E69E9840];
  v131 = a4;
  [v131 bounds];
  v123 = v9;
  v124 = v8;
  v143 = v10;
  rect = v11;
  v128 = CUIKShow24Hours();
  v12 = [(EKDayTimeView *)self traitCollection];
  v13 = [v12 userInterfaceStyle] == 2;

  if (self->_cachedHoursAreDark != v13)
  {
    self->_cachedHoursAreDark = v13;
    [(EKDayTimeView *)self _flushTimeStringImageCache];
  }

  if (location)
  {
    v14 = self->_hourHeight * 0.5;
  }

  else
  {
    v14 = self->_hoursToPad * self->_hourHeight + 18.0;
  }

  CalRoundToScreenScale(v14);
  v16 = v15;
  hourHeight = self->_hourHeight;
  v18 = ceil((CGRectGetMaxY(a3) + location * hourHeight - v15) / hourHeight);
  if (v18 > (length + location))
  {
    v18 = (length + location);
  }

  if (v18 >= 24)
  {
    v19 = 24;
  }

  else
  {
    v19 = v18;
  }

  v139 = v16;
  v140 = hourHeight;
  v20 = floor((a3.origin.y - v16) / hourHeight);
  if (v20 <= location)
  {
    v20 = location;
  }

  v21 = v20;
  [EKDayTimeView timeInsetForSizeClass:EKUIWidthSizeClassForViewHierarchy(self) orientation:self->_orientation];
  v138 = v22;
  [objc_opt_class() _timeVerticalInsetForOrientation:self->_orientation inViewHierarchy:self];
  v137 = v23;
  v24 = [(EKDayTimeView *)self delegate];
  [v24 currentTimeRectInView:v131];
  v26 = v25;
  v142 = v27;
  v29 = v28;
  v31 = v30;

  v32 = *MEMORY[0x1E695F060];
  v33 = *(MEMORY[0x1E695F060] + 8);
  v34 = &OBJC_IVAR___EKUIViewHierarchyFromComponents__ekui_tintColor;
  v122 = location;
  if (v19 >= v21)
  {
    v35 = 0;
    p_hoursToRender = &self->_hoursToRender;
    v125 = *MEMORY[0x1E69DB648];
    v37 = v21;
    v134 = v21 - location;
    v135 = v19 - v21;
    v38 = ~v19 + v21;
    v132 = v38;
    v133 = &self->super.super.super.isa + v21;
    v39 = v133;
    v147 = v31;
    v148.origin.x = v26;
    v127 = self;
    v146 = v29;
    v126 = v21;
    v136 = v21;
    do
    {
      v40 = v37 + v35;
      if (p_hoursToRender->location <= v37 + v35 && v37 + v35 - p_hoursToRender->location < p_hoursToRender->length)
      {
        v42 = v133[v35 + 61];
        [(EKDayTimeView *)self timeWidth];
        v44 = v43;
        if (v42)
        {
          [(objc_class *)v42 size];
          v46 = v45;
          v48 = v47;
        }

        else
        {
          v49 = objc_opt_new();
          [v49 setHour:v40];
          v50 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
          v144 = v49;
          v51 = [v50 dateFromComponents:v49];

          v129 = v51;
          if ((v40 != 12) | v128 & 1)
          {
            v52 = MEMORY[0x1E69933D8];
            [objc_opt_class() _dynamicFontSizeForOrientation:self->_orientation];
            [v52 stylizedTimelineHourStringForHourDate:v51 baseFontSize:?];
          }

          else
          {
            [objc_opt_class() noonAttributedStringForOrientation:self->_orientation];
          }
          v53 = ;
          v54 = [v53 attribute:v125 atIndex:0 effectiveRange:{0, v122}];
          v155 = 0.0;
          v156 = 0.0;
          v153 = 0.0;
          v154 = 0.0;
          CTFontGetLanguageAwareOutsets();
          [v53 size];
          v56 = v55;
          v58 = v57;
          v59 = self;
          v60 = objc_opt_class();
          [v60 _timeTextWidthForSizeClass:EKUIWidthSizeClassForViewHierarchy(v131) orientation:v59->_orientation inViewHierarchy:v131];
          if (v61 >= v56)
          {
            v46 = v56 + v156 + v155;
            v64 = v58 + v154;
          }

          else
          {
            [v53 boundingRectWithSize:1 options:0 context:?];
            v46 = v155 + v156 + v62;
            v64 = v63 + v154;
          }

          v48 = v64 + v153;
          v65 = MEMORY[0x1E69DCAB8];
          *&v148.origin.y = MEMORY[0x1E69E9820];
          *&v148.size.width = 3221225472;
          *&v148.size.height = __55__EKDayTimeView_drawRect_forContentView_withHourRange___block_invoke;
          v149 = &unk_1E8442470;
          v150 = v53;
          v151 = v46;
          v152 = v64 + v153;
          v66 = v53;
          v42 = [v65 cuik_drawImageWithSize:&v148.origin.y drawBlock:{v46, v48}];
          objc_storeStrong(v39 + 61, v42);

          self = v127;
          v21 = v126;
          v34 = &OBJC_IVAR___EKUIViewHierarchyFromComponents__ekui_tintColor;
        }

        v67 = *(&self->super.super.super.isa + v34[844]) == (v21 + v35);
        if (v33 < 0.001)
        {
          v67 = 1;
        }

        if (v67)
        {
          v33 = v48;
        }

        v145 = v33;
        if (v67)
        {
          v68 = v46;
        }

        else
        {
          v68 = v32;
        }

        IsLeftToRight = CalInterfaceIsLeftToRight();
        v70 = v44 - v138 - v46;
        if (!IsLeftToRight)
        {
          v70 = v138;
        }

        CalRoundToScreenScale(v70);
        v72 = v71;
        v159.size.height = 1.0;
        v159.origin.x = v44;
        v159.origin.y = v139 + v140 * (v134 + v35) - v143;
        v159.size.width = rect;
        MaxY = CGRectGetMaxY(v159);
        CalRoundToScreenScale(v137 + MaxY + v48 * -0.5);
        v75 = v74;
        if (v135 != v35 && v35 || (v174.origin.x = v72, v174.origin.y = v74, v174.size.width = v46, v174.size.height = v48, CGRectIntersectsRect(a3, v174)))
        {
          v160.origin.x = v72;
          v160.origin.y = v75;
          v160.size.width = v46;
          v160.size.height = v48;
          v161 = CGRectInset(v160, 0.0, 3.5);
          x = v161.origin.x;
          y = v161.origin.y;
          width = v161.size.width;
          height = v161.size.height;
          MinY = CGRectGetMinY(v161);
          v162.size.height = v147;
          v162.origin.x = v148.origin.x;
          v162.origin.y = v142;
          v162.size.width = v146;
          if (MinY > CGRectGetMaxY(v162) || (v163.origin.x = x, v163.origin.y = y, v163.size.width = width, v163.size.height = height, v81 = CGRectGetMaxY(v163), v164.size.height = v147, v164.origin.x = v148.origin.x, v164.origin.y = v142, v164.size.width = v146, v81 < CGRectGetMinY(v164)))
          {
            [(objc_class *)v42 drawAtPoint:v72, v75, v122];
          }
        }

        v31 = v147;
        v26 = v148.origin.x;
        v32 = v68;
        v33 = v145;
        v29 = v146;
        v37 = v136;
        v38 = v132;
      }

      ++v35;
      ++v39;
    }

    while (v38 + v35);
  }

  v82 = v34[844];
  if (*(&self->super.super.super.isa + v82) >= 0.0)
  {
    [objc_opt_class() _dynamicFontSizeForOrientation:self->_orientation];
    v83 = [MEMORY[0x1E69DB878] systemFontOfSize:? weight:?];
    v84 = *(&self->super.super.super.isa + v82);
    v85 = v84;
    v86 = (v84 - v84) * 60.0;
    v87 = (v86 / 15.0);
    *&v86 = v86;
    v88 = (roundf(*&v86) / 5.0);
    if (v88 > 0xB || ((1 << v88) & 0x882) == 0)
    {
      if (v87 <= 0)
      {
LABEL_78:

        goto LABEL_79;
      }

      v90 = v32;
      v91 = CUIKLocalizedStringForInteger();
    }

    else
    {
      v90 = v32;
      v91 = CUIKLocalizedStringForIntegerWithMinimumTwoDigits();
    }

    v92 = v91;
    v93 = [@":" stringByAppendingString:{v91, v122}];

    v157 = *MEMORY[0x1E69DB648];
    v158[0] = v83;
    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v158 forKeys:&v157 count:1];
    [v93 sizeWithAttributes:v94];
    v96 = v95;

    [(EKDayTimeView *)self contentScaleFactor];
    if (v97 == 1.0)
    {
      v98 = 1.0;
    }

    else
    {
      v98 = 0.0;
    }

    if (CalInterfaceIsLeftToRight())
    {
      [(EKDayTimeView *)self timeWidth];
      v100 = v99 - v138 - v96 + v98;
    }

    else
    {
      v100 = v138 - v98;
    }

    v101 = v139 - v143 + -7.0 + v140 * (v85 - v122) + v140 * 0.25 * v87;
    v102 = v140 * 0.25 + -4.0;
    if (v33 < v102)
    {
      v102 = v33;
    }

    v103 = v102 + v101;
    if (v88 == 1)
    {
      v104 = v103;
    }

    else
    {
      v104 = v139 - v143 + -7.0 + v140 * (v85 - v122) + v140 * 0.25 * v87;
    }

    IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(self);
    v106 = -1.5;
    if (IsRegularInViewHierarchy)
    {
      v106 = 1.0;
    }

    v107 = v101 + v106;
    if (v87 != 3)
    {
      v107 = v104;
    }

    v108 = 0.5;
    if (IsRegularInViewHierarchy)
    {
      v108 = 2.0;
    }

    v109 = v104 + v108;
    if (v87 == 1 || v88 == 1)
    {
      v111 = v109;
    }

    else
    {
      v111 = v107;
    }

    v165.origin.x = v100;
    v165.origin.y = v111;
    v165.size.width = v90;
    v165.size.height = v33;
    v112 = CGRectGetMinY(v165);
    v166.origin.x = v26;
    v166.origin.y = v142;
    v166.size.width = v29;
    v166.size.height = v31;
    if (v112 > CGRectGetMaxY(v166) || (v167.origin.x = v100, v167.origin.y = v111, v167.size.width = v90, v167.size.height = v33, v113 = CGRectGetMaxY(v167), v168.origin.x = v26, v168.origin.y = v142, v168.size.width = v29, v168.size.height = v31, v113 < CGRectGetMinY(v168)))
    {
      v114 = [MEMORY[0x1E69DC888] cuik_timelineHourColor];
      [v114 CGColor];
      UISetColor();

      [v93 _legacy_drawAtPoint:v83 withFont:{CalRoundPointToScreenScale(v100, v111)}];
    }

    goto LABEL_78;
  }

LABEL_79:
  v115 = [MEMORY[0x1E69DC888] separatorColor];
  if (*(self + 424))
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    CGContextSetShouldAntialias(CurrentContext, 0);
    [v115 CGColor];
    UISetColor();
    v117 = EKUISeparatorLineThickness();
    v169.size.height = v123;
    v169.origin.x = v124;
    v169.origin.y = v143;
    v169.size.width = rect;
    v170.size.height = CGRectGetHeight(v169);
    v170.origin.x = 0.0;
    v170.origin.y = 0.0;
    v170.size.width = v117;
    UIRectFill(v170);
  }

  if ((*(self + 424) & 2) != 0)
  {
    v118 = UIGraphicsGetCurrentContext();
    CGContextSaveGState(v118);
    CGContextSetShouldAntialias(v118, 0);
    [v115 CGColor];
    UISetColor();
    v171.origin.x = v124;
    v171.origin.y = v143;
    v171.size.width = rect;
    v171.size.height = v123;
    v119 = CGRectGetWidth(v171);
    v120 = v119 - EKUISeparatorLineThickness();
    v121 = EKUISeparatorLineThickness();
    v172.origin.x = v124;
    v172.origin.y = v143;
    v172.size.width = rect;
    v172.size.height = v123;
    v173.size.height = CGRectGetHeight(v172);
    v173.origin.y = 0.0;
    v173.origin.x = v120;
    v173.size.width = v121;
    UIRectFill(v173);
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = EKDayTimeView;
  [(EKDayTimeView *)&v5 setSemanticContentAttribute:?];
  [(EKCurrentTimeMarkerView *)self->_timeMarker setSemanticContentAttribute:a3];
}

- (void)setVisualEffect:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_visualEffect != v5)
  {
    objc_storeStrong(&self->_visualEffect, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(NSMutableDictionary *)self->_visualEffectViews allValues];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setEffect:v5];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setShowsTimeMarker:(BOOL)a3
{
  if (self->_showsTimeMarker != a3)
  {
    timeMarker = self->_timeMarker;
    if (a3)
    {
      if (timeMarker)
      {
        [(EKCurrentTimeMarkerView *)timeMarker removeFromSuperview];
      }

      v6 = [[EKCurrentTimeMarkerView alloc] initWithFrame:[(EKDayTimeView *)self _sizeClass] sizeClass:0.0, 0.0, 10.0, 10.0];
      v7 = self->_timeMarker;
      self->_timeMarker = v6;

      [(EKCurrentTimeMarkerView *)self->_timeMarker setAutoresizingMask:2];
      [(EKCurrentTimeMarkerView *)self->_timeMarker setShowsThumb:self->_showsTimeMarkerExtension];
      [(EKCurrentTimeMarkerView *)self->_timeMarker setShowsLine:0];
      [(EKDayTimeView *)self bounds];
      v9 = v8;
      [(EKDayTimeView *)self timeWidth];
      v11 = v10;
      v12 = self->_timeMarker;
      [(EKDayTimeView *)self hourHeight];
      v14 = v13;
      [(EKDayTimeView *)self topPadding];
      [EKDayTimeView timeMarkerFrameForTotalWidth:v12 timeWidth:v9 timeMarker:v11 hourHeight:v14 topPadding:v15];
      [(EKCurrentTimeMarkerView *)self->_timeMarker setFrame:?];
      [(EKDayTimeView *)self addSubview:self->_timeMarker];
      [(EKDayTimeView *)self setNeedsLayout];
      [(EKCurrentTimeMarkerView *)self->_timeMarker setAlpha:0.0];
      [(UIView *)self->_timeMarkerExtension setAlpha:0.0];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __36__EKDayTimeView_setShowsTimeMarker___block_invoke;
      v31[3] = &unk_1E843EC60;
      v31[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v31 animations:0.2];
    }

    else
    {
      [(EKCurrentTimeMarkerView *)timeMarker setShowsThumb:0];
      [(EKCurrentTimeMarkerView *)self->_timeMarker setShowsLine:0];
      [(EKDayTimeView *)self _timeMarkerAlpha];
      v17 = v16;
      [(EKCurrentTimeMarkerView *)self->_timeMarker setAlpha:?];
      [(UIView *)self->_timeMarkerExtension setAlpha:v17];
      v18 = self->_timeMarker;
      v19 = self->_timeMarker;
      self->_timeMarker = 0;

      v20 = MEMORY[0x1E69DD250];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __36__EKDayTimeView_setShowsTimeMarker___block_invoke_2;
      v28[3] = &unk_1E843EFB8;
      v29 = v18;
      v30 = self;
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __36__EKDayTimeView_setShowsTimeMarker___block_invoke_3;
      v26 = &unk_1E843EC10;
      v27 = v29;
      v21 = v29;
      [v20 animateWithDuration:v28 animations:&v23 completion:0.2];
    }

    self->_showsTimeMarker = a3;
    v22 = [(EKDayTimeView *)self delegate:v23];

    if (v22)
    {
      [(EKDayTimeView *)self setNeedsDisplay];
    }
  }
}

uint64_t __36__EKDayTimeView_setShowsTimeMarker___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _timeMarkerAlpha];
  v3 = v2;
  [*(*(a1 + 32) + 456) setAlpha:?];
  v4 = *(*(a1 + 32) + 464);

  return [v4 setAlpha:v3];
}

uint64_t __36__EKDayTimeView_setShowsTimeMarker___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(*(a1 + 40) + 464);

  return [v2 setAlpha:0.0];
}

- (void)setShowsTimeMarkerExtension:(BOOL)a3
{
  if (self->_showsTimeMarkerExtension != a3)
  {
    self->_showsTimeMarkerExtension = a3;
    if (a3)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
      timeMarkerExtension = self->_timeMarkerExtension;
      self->_timeMarkerExtension = v5;

      [(UIView *)self->_timeMarkerExtension setBackgroundColor:self->_timeMarkerExtensionColor];
      [(EKDayTimeView *)self addSubview:self->_timeMarkerExtension];
    }

    else
    {
      [(UIView *)self->_timeMarkerExtension removeFromSuperview];
      v7 = self->_timeMarkerExtension;
      self->_timeMarkerExtension = 0;
    }

    [(EKDayTimeView *)self setNeedsLayout];
  }
}

- (void)setTimeMarkerExtensionColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_timeMarkerExtensionColor] & 1) == 0)
  {
    objc_storeStrong(&self->_timeMarkerExtensionColor, a3);
    [(UIView *)self->_timeMarkerExtension setBackgroundColor:v5];
  }
}

+ (double)positionOfSecond:(int64_t)a3 hourHeight:(double)a4 topPadding:(double)a5 clampToBounds:(BOOL)a6
{
  v6 = a3 & ~(a3 >> 63);
  if (v6 >= 86400)
  {
    v6 = 86400;
  }

  if (!a6)
  {
    v6 = a3;
  }

  CalRoundToScreenScale(a5 + a4 * 24.0 * (v6 / 86400.0));
  return result;
}

+ (CGRect)timeMarkerFrameForTotalWidth:(double)a3 timeWidth:(double)a4 timeMarker:(id)a5 hourHeight:(double)a6 topPadding:(double)a7
{
  v12 = a5;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  v14 = [v12 showsThumb];
  v15 = 0.0;
  if (IsLeftToRight)
  {
    if (v14)
    {
      [v12 markerWidth];
      v17 = a4 - v16;
      [v12 markerInset];
      v15 = v17 - v18;
      a3 = a3 - v15;
    }
  }

  else if (v14)
  {
    [v12 markerWidth];
    v20 = a3 - a4 + v19;
    [v12 markerInset];
    a3 = v20 + v21;
  }

  v22 = CUIKNowComponents();
  [a1 positionOfSecond:(objc_msgSend(v22 hourHeight:"second") + (3600 * objc_msgSend(v22 topPadding:"hour") + 60 * objc_msgSend(v22 clampToBounds:{"minute"))), 1, a6, a7}];
  v24 = v23;
  [v12 bounds];
  v26 = v24 + v25 * -0.5;
  [v12 bounds];
  v28 = v27;

  v29 = v15;
  v30 = v26;
  v31 = a3;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

+ (CGRect)_timeLineExtensionFrameForTimeWidth:(double)a3 timeMarker:(id)a4 timeLabelXPosition:(double)a5 yPosition:(double)a6
{
  v8 = a4;
  v9 = 0.0;
  if (CalInterfaceIsLeftToRight())
  {
    [v8 markerWidth];
    v9 = v10 + a5;
  }

  [v8 extensionLineHeight];
  v12 = v11;
  v13 = a6 + v11 * -0.5;
  [v8 markerInset];
  v15 = v14;

  v16 = v9;
  v17 = v13;
  v18 = v15;
  v19 = v12;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)viewTintColorDidChangeForView:(id)a3 toColor:(id)a4
{
  v6 = a4;
  v5 = [(EKDayTimeView *)self visualEffect];

  if (v5)
  {
    [(EKDayTimeView *)self setTimeColor:v6];
    [(EKDayTimeView *)self setNeedsDisplay];
  }
}

- (void)setCurtainHeight:(double)a3
{
  self->_curtainHeight = a3;
  [(EKDayTimeView *)self _updateMarkerAlpha];
  v5 = fmax(a3, 0.0);
  curtainHeightConstraint = self->_curtainHeightConstraint;

  [(NSLayoutConstraint *)curtainHeightConstraint setConstant:v5];
}

- (void)_updateMarkerAlpha
{
  if (CalCanvasPocketEnabled())
  {
    [(EKDayTimeView *)self _timeMarkerAlpha];
    v4 = v3;
    [(EKCurrentTimeMarkerView *)self->_timeMarker setAlpha:?];
    timeMarkerExtension = self->_timeMarkerExtension;

    [(UIView *)timeMarkerExtension setAlpha:v4];
  }
}

- (double)_timeMarkerAlpha
{
  v3 = 1.0;
  if (CalCanvasPocketEnabled())
  {
    [(EKCurrentTimeMarkerView *)self->_timeMarker frame];
    v4 = fmax((CGRectGetMidY(v6) - self->_curtainHeight) / 10.0, 0.0);
    if (v4 <= 1.0)
    {
      return v4;
    }

    else
    {
      return 1.0;
    }
  }

  return v3;
}

- (_NSRange)hoursToRender
{
  p_hoursToRender = &self->_hoursToRender;
  location = self->_hoursToRender.location;
  length = p_hoursToRender->length;
  result.length = length;
  result.location = location;
  return result;
}

@end