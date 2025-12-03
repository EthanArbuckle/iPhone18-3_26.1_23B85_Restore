@interface EKDayTimeView
+ (CGRect)_timeLineExtensionFrameForTimeWidth:(double)width timeMarker:(id)marker timeLabelXPosition:(double)position yPosition:(double)yPosition;
+ (CGRect)timeMarkerFrameForTotalWidth:(double)width timeWidth:(double)timeWidth timeMarker:(id)marker hourHeight:(double)height topPadding:(double)padding;
+ (double)_dynamicFontSizeForOrientation:(int64_t)orientation;
+ (double)_timeTextWidthForSizeClass:(int64_t)class orientation:(int64_t)orientation inViewHierarchy:(id)hierarchy;
+ (double)_timeVerticalInsetForOrientation:(int64_t)orientation inViewHierarchy:(id)hierarchy;
+ (double)_widthForOrientation:(int64_t)orientation sizeClass:(int64_t)class excludeCurrentTime:(BOOL)time;
+ (double)defaultHeightForSizeClass:(int64_t)class orientation:(int64_t)orientation;
+ (double)defaultHeightForSizeClass:(int64_t)class orientation:(int64_t)orientation withHourScale:(double)scale;
+ (double)heightOfHourTextForHour:(int64_t)hour orientation:(int64_t)orientation;
+ (double)hourHeightForSizeClass:(int64_t)class orientation:(int64_t)orientation;
+ (double)positionOfSecond:(int64_t)second hourHeight:(double)height topPadding:(double)padding clampToBounds:(BOOL)bounds;
+ (double)timeInsetForSizeClass:(int64_t)class orientation:(int64_t)orientation;
+ (double)timeWidthForOrientation:(int64_t)orientation inViewHierarchy:(id)hierarchy;
+ (id)_hourFontForOrientation:(int64_t)orientation;
+ (id)_noonAttributedStringForString:(id)string orientation:(int64_t)orientation;
+ (id)_noonFontForOrientation:(int64_t)orientation;
+ (id)noonAttributedStringComponentsForOrientation:(int64_t)orientation;
+ (id)noonAttributedStringForOrientation:(int64_t)orientation;
+ (id)noonString;
+ (void)_calculateWidthForSizeClass:(int64_t)class orientation:(int64_t)orientation excludeCurrentTime:(BOOL)time inViewHierarchy:(id)hierarchy;
+ (void)_invalidateWidth;
+ (void)_registerForInvalidation;
+ (void)_setWidth:(double)width forOrientation:(int64_t)orientation sizeClass:(int64_t)class excludeCurrentTime:(BOOL)time;
- (CGSize)sizeThatFits:(CGSize)fits;
- (EKDayTimeView)initWithFrame:(CGRect)frame sizeClass:(int64_t)class;
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
- (void)drawRect:(CGRect)rect forContentView:(id)view withHourRange:(_NSRange)range;
- (void)layoutFrames;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setCurtainHeight:(double)height;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightedHour:(double)hour;
- (void)setHourHeightScale:(double)scale;
- (void)setHoursToRender:(_NSRange)render;
- (void)setNeedsDisplay;
- (void)setOpaque:(BOOL)opaque;
- (void)setOrientation:(int64_t)orientation;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setShowsLeftBorder:(BOOL)border;
- (void)setShowsRightBorder:(BOOL)border;
- (void)setShowsTimeMarker:(BOOL)marker;
- (void)setShowsTimeMarkerExtension:(BOOL)extension;
- (void)setTimeColor:(id)color;
- (void)setTimeMarkerExtensionColor:(id)color;
- (void)setVisualEffect:(id)effect;
- (void)updateMarkerPosition;
- (void)viewTintColorDidChangeForView:(id)view toColor:(id)color;
@end

@implementation EKDayTimeView

+ (void)_registerForInvalidation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EKDayTimeView__registerForInvalidation__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
            contentView = [(EKUIVisualEffectView *)v26 contentView];
            [contentView addSubview:v23];

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
          lastObject = [*(&self->super.super.super.isa + v2) lastObject];
          [lastObject setOwner:0];
          [*(&self->super.super.super.isa + v2) removeLastObject];
          v44 = v10[849];
          v45 = *(&self->super.super.super.isa + v44);
          v46 = [*(v11 + 3776) stringWithFormat:@"%p", lastObject];
          v47 = [v45 objectForKey:v46];

          [v47 removeFromSuperview];
          v48 = *(&self->super.super.super.isa + v44);
          v49 = [lastObject description];
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
  window = [(EKDayTimeView *)self window];

  if (!window)
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
    delegate = [(EKDayTimeView *)self delegate];

    if (delegate)
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"EKDayTimeViewHourWidthChangedNotification" object:0];
}

+ (double)_dynamicFontSizeForOrientation:(int64_t)orientation
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  fontDescriptor = [v3 fontDescriptor];
  [fontDescriptor pointSize];
  v6 = v5;

  CalRoundToScreenScale(v6);
  return fmin(v7, 24.0);
}

+ (id)_hourFontForOrientation:(int64_t)orientation
{
  [self _dynamicFontSizeForOrientation:orientation];
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:v3 * 1.36363636];
  v5 = [MEMORY[0x1E69DB878] cuik_createFontFromFont:v4 withFontGrade:2];

  return v5;
}

+ (id)_noonFontForOrientation:(int64_t)orientation
{
  [self _dynamicFontSizeForOrientation:orientation];
  v3 = MEMORY[0x1E69DB878];

  return [v3 systemFontOfSize:? weight:?];
}

+ (void)_calculateWidthForSizeClass:(int64_t)class orientation:(int64_t)orientation excludeCurrentTime:(BOOL)time inViewHierarchy:(id)hierarchy
{
  timeCopy = time;
  v69[1] = *MEMORY[0x1E69E9840];
  hierarchyCopy = hierarchy;
  EKUIMultiwindowAssert(class != 0, @"Unspecified size class", v10, v11, v12, v13, v14, v15, v56);
  [objc_opt_class() allDayWidth];
  v17 = *&__AllDayWidth;
  if (*&__AllDayWidth <= 0.0)
  {
    __AllDayWidth = v16;
    v17 = *&v16;
  }

  v62 = hierarchyCopy;
  v18 = fmax(v17, 0.0);
  v19 = [EKCurrentTimeMarkerView timeMarkerFontForSizeClass:class];
  v20 = CUIKTodayComponents();
  [v20 setHour:22];
  [v20 setMinute:45];
  v21 = CUIKCalendar();
  v22 = [v21 dateFromComponents:v20];

  v23 = *MEMORY[0x1E6992E88];
  calendarTimeZone = [MEMORY[0x1E695DFE8] calendarTimeZone];
  v59 = v22;
  v25 = [v22 localizedStringWithFormat:v23 timeZone:calendarTimeZone];

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
  [self _dynamicFontSizeForOrientation:1];
  v57 = v33;
  v35 = [v34 stylizedTimelineHourStringForHourDate:v33 baseFontSize:?];
  [v35 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
  v37 = v36;
  selfCopy = self;
  orientationCopy = orientation;
  v40 = [self noonAttributedStringComponentsForOrientation:orientation];
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

  if (class != 2)
  {
    v49 = orientationCopy;
    v47 = v62;
    v50 = selfCopy;
    if ((orientationCopy - 1) <= 1)
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
  v49 = orientationCopy;
  v50 = selfCopy;
  if (orientationCopy - 3) <= 1 && (v48)
  {
    goto LABEL_26;
  }

  v51 = 37.0;
  if ((orientationCopy - 1) >= 2)
  {
    v51 = 31.0;
  }

  v52 = v51 + v46;
  CalRoundToScreenScale(5.5);
  v54 = v52 + v53;
LABEL_28:
  [v50 _setWidth:v49 forOrientation:class sizeClass:timeCopy excludeCurrentTime:v54];
}

+ (id)noonString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Noon_timeline_indicator" value:@"Noon" table:0];

  return v3;
}

+ (id)noonAttributedStringForOrientation:(int64_t)orientation
{
  noonString = [self noonString];
  v6 = [self _noonAttributedStringForString:noonString orientation:orientation];

  return v6;
}

+ (id)noonAttributedStringComponentsForOrientation:(int64_t)orientation
{
  noonString = [self noonString];
  v6 = [noonString componentsSeparatedByString:@" "];

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__EKDayTimeView_noonAttributedStringComponentsForOrientation___block_invoke;
  v10[3] = &unk_1E8442448;
  v8 = v7;
  v11 = v8;
  selfCopy = self;
  orientationCopy = orientation;
  [v6 enumerateObjectsUsingBlock:v10];

  return v8;
}

void __62__EKDayTimeView_noonAttributedStringComponentsForOrientation___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _noonAttributedStringForString:a2 orientation:*(a1 + 48)];
  [v2 addObject:v3];
}

+ (id)_noonAttributedStringForString:(id)string orientation:(int64_t)orientation
{
  v17[3] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v7 = [self _noonFontForOrientation:orientation];
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
  cuik_timelineHourColor = [MEMORY[0x1E69DC888] cuik_timelineHourColor];
  v16[2] = *MEMORY[0x1E69DB688];
  v17[1] = cuik_timelineHourColor;
  v17[2] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:v13];

  return v14;
}

+ (double)_timeTextWidthForSizeClass:(int64_t)class orientation:(int64_t)orientation inViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  [self _widthForOrientation:orientation sizeClass:class excludeCurrentTime:0];
  if (v9 == 0.0)
  {
    [self _calculateWidthForSizeClass:class orientation:orientation excludeCurrentTime:0 inViewHierarchy:hierarchyCopy];
    [self _widthForOrientation:orientation sizeClass:class excludeCurrentTime:0];
  }

  v10 = v9;

  return v10;
}

+ (void)_setWidth:(double)width forOrientation:(int64_t)orientation sizeClass:(int64_t)class excludeCurrentTime:(BOOL)time
{
  timeCopy = time;
  v26 = *MEMORY[0x1E69E9840];
  v9 = orientation - 1;
  v10 = !time;
  v11 = (orientation - 1) > 1 || !time;
  if (v11 || class != 2)
  {
    if (class == 2)
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v9 < 2)
      {
        v10 = 1;
      }

      if (v10 || class != 2)
      {
        if (class == 2)
        {
          v10 = 1;
        }

        if (v10)
        {
          v12 = (orientation - 1) > 1 || time;
          if ((orientation - 1) > 1 || time || class != 2)
          {
            if (class == 2)
            {
              v12 = 1;
            }

            if (v12)
            {
              v13 = v9 < 2 || time;
              if (v13 || class != 2)
              {
                if (class == 2)
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
                    v21 = timeCopy;
                    v22 = 2048;
                    orientationCopy = orientation;
                    v24 = 2048;
                    classCopy = class;
                    _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_ERROR, "[%@] Unhandled combination of excludeCurrentTime:%d, orientation:%ld, sizeClass:%ld when trying to setWidth", &v18, 0x26u);
                  }
                }

                else
                {
                  __HourWidthLandscapeCompact = *&width;
                }
              }

              else
              {
                __HourWidthLandscapeRegular = *&width;
              }
            }

            else
            {
              __HourWidthPortraitCompact = *&width;
            }
          }

          else
          {
            __HourWidthPortraitRegular = *&width;
          }
        }

        else
        {
          __HourWidthExcludingCurrentTimeLandscapeCompact = *&width;
        }
      }

      else
      {
        __HourWidthExcludingCurrentTimeLandscapeRegular = *&width;
      }
    }

    else
    {
      __HourWidthExcludingCurrentTimePortraitCompact = *&width;
    }
  }

  else
  {
    __HourWidthExcludingCurrentTimePortraitRegular = *&width;
  }
}

+ (double)_widthForOrientation:(int64_t)orientation sizeClass:(int64_t)class excludeCurrentTime:(BOOL)time
{
  timeCopy = time;
  v27 = *MEMORY[0x1E69E9840];
  v8 = orientation - 1;
  v9 = !time;
  v10 = (orientation - 1) > 1 || !time;
  if (v10 || class != 2)
  {
    if (class == 2)
    {
      v10 = 1;
    }

    if (v10)
    {
      if (v8 < 2)
      {
        v9 = 1;
      }

      if (v9 || class != 2)
      {
        if (class == 2)
        {
          v9 = 1;
        }

        if (v9)
        {
          v12 = (orientation - 1) > 1 || time;
          if ((orientation - 1) > 1 || time || class != 2)
          {
            if (class == 2)
            {
              v12 = 1;
            }

            if (v12)
            {
              v13 = v8 < 2 || time;
              if (v13 || class != 2)
              {
                if (class == 2)
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
                    v22 = timeCopy;
                    v23 = 2048;
                    orientationCopy = orientation;
                    v25 = 2048;
                    classCopy = class;
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

+ (double)timeInsetForSizeClass:(int64_t)class orientation:(int64_t)orientation
{
  EKUIMultiwindowAssert(class != 0, @"Size class not specified.", class, orientation, v4, v5, v6, v7, v10);
  if (class != 2)
  {
    return 6.0;
  }

  CalRoundToScreenScale(5.5);
  return result;
}

+ (double)_timeVerticalInsetForOrientation:(int64_t)orientation inViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  v6 = 0.0;
  if ((MEMORY[0x1D38B98D0]() & 1) == 0)
  {
    IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(hierarchyCopy);
    v8 = -3.0;
    if ((orientation - 1) >= 2)
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

+ (double)timeWidthForOrientation:(int64_t)orientation inViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(hierarchyCopy))
  {
    CalRoundToScreenScale(5.5);
    v8 = v7;
    v9 = 44.0;
    if ((((orientation - 3) < 2) & EKUIIsExtended(hierarchyCopy)) != 0)
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
    if ((orientation - 1) >= 2)
    {
      v9 = 47.0;
      if (MGGetBoolAnswer())
      {
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        if ([currentDevice userInterfaceIdiom])
        {
        }

        else
        {
          currentProcessIsFirstPartyCalendarApp = [MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp];

          if (currentProcessIsFirstPartyCalendarApp)
          {
            v10 = 20.0;
            if ((orientation - 3) <= 1)
            {
              if (EKUICurrentWindowSizeParadigmForViewHierarchy(hierarchyCopy) == 0x8000000)
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

  [self _timeTextWidthForSizeClass:EKUIWidthSizeClassForViewHierarchy(hierarchyCopy) orientation:orientation inViewHierarchy:hierarchyCopy];
  v14 = v8 + v13;
  if (v14 < v9)
  {
    v14 = v9;
  }

  CalRoundToScreenScale(v10 + v14);
  v16 = v15;

  return v16;
}

+ (double)hourHeightForSizeClass:(int64_t)class orientation:(int64_t)orientation
{
  [self _registerForInvalidation];
  EKUIMultiwindowAssert(class != 0, @"Unspecified size class", v6, v7, v8, v9, v10, v11, v19);
  v12 = 44.0;
  if ((orientation - 1) < 2)
  {
    v12 = 50.0;
  }

  if (class == 2)
  {
    v13 = 65.0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDCF8], v12}];
  fontDescriptor = [v14 fontDescriptor];
  [fontDescriptor pointSize];
  v17 = v16;

  CalRoundToScreenScale(v13 * (v17 / 17.0));
  return result;
}

+ (double)defaultHeightForSizeClass:(int64_t)class orientation:(int64_t)orientation
{
  v6 = objc_opt_class();

  [v6 defaultHeightForSizeClass:class orientation:orientation withHourScale:1.0];
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

+ (double)defaultHeightForSizeClass:(int64_t)class orientation:(int64_t)orientation withHourScale:(double)scale
{
  [EKDayTimeView hourHeightForSizeClass:class orientation:orientation];
  v8 = v7 * scale;

  [self defaultHeightForNumHours:24 scaledHourHeight:v8];
  return result;
}

+ (double)heightOfHourTextForHour:(int64_t)hour orientation:(int64_t)orientation
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [self _hourFontForOrientation:orientation];
  v5 = CUIKStringForHour();
  v10 = *MEMORY[0x1E69DB648];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 sizeWithAttributes:v6];
  v8 = v7;

  return v8;
}

- (EKDayTimeView)initWithFrame:(CGRect)frame sizeClass:(int64_t)class
{
  v38[4] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = EKDayTimeView;
  v5 = [(EKDayTimeView *)&v37 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_highlightedHour = -1.0;
    v5->_hourHeight = -1.0;
    [objc_opt_class() defaultHourScale];
    v6->_hourHeightScale = v7;
    v6->_targetSizeClass = class;
    cuik_todayTimelineColor = [MEMORY[0x1E69DC888] cuik_todayTimelineColor];
    timeMarkerExtensionColor = v6->_timeMarkerExtensionColor;
    v6->_timeMarkerExtensionColor = cuik_todayTimelineColor;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(EKDayTimeView *)v6 setBackgroundColor:clearColor];

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

      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(UIView *)v6->_curtain setBackgroundColor:systemBackgroundColor];

      [(UIView *)v6->_curtain setTranslatesAutoresizingMaskIntoConstraints:0];
      [(EKDayTimeView *)v6 addSubview:v6->_curtain];
      heightAnchor = [(UIView *)v6->_curtain heightAnchor];
      v20 = [heightAnchor constraintEqualToConstant:0.0];
      curtainHeightConstraint = v6->_curtainHeightConstraint;
      v6->_curtainHeightConstraint = v20;

      v34 = MEMORY[0x1E696ACD8];
      leadingAnchor = [(UIView *)v6->_curtain leadingAnchor];
      leadingAnchor2 = [(EKDayTimeView *)v6 leadingAnchor];
      v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v38[0] = v22;
      trailingAnchor = [(UIView *)v6->_curtain trailingAnchor];
      trailingAnchor2 = [(EKDayTimeView *)v6 trailingAnchor];
      v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v38[1] = v25;
      topAnchor = [(UIView *)v6->_curtain topAnchor];
      topAnchor2 = [(EKDayTimeView *)v6 topAnchor];
      v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v38[2] = v28;
      v38[3] = v6->_curtainHeightConstraint;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
      [v34 activateConstraints:v29];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__localeChanged name:*MEMORY[0x1E6993308] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__fontSizeChanged name:*MEMORY[0x1E69DDC48] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v6 selector:sel__sizeClassChanged name:*MEMORY[0x1E6993358] object:0];
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

- (void)setHoursToRender:(_NSRange)render
{
  if (self->_hoursToRender.location != render.location || self->_hoursToRender.length != render.length)
  {
    self->_hoursToRender = render;
    [(EKDayTimeView *)self setNeedsDisplay];
  }
}

- (void)setHourHeightScale:(double)scale
{
  self->_hourHeightScale = scale;
  [(EKDayTimeView *)self updateHourHeight];
  [(EKDayTimeView *)self layoutFrames];

  [(EKDayTimeView *)self setNeedsDisplay];
}

- (void)setOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
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
        [v9 setOpaque:opaqueCopy];
        backgroundColor = [(EKDayTimeView *)self backgroundColor];
        if (opaqueCopy)
        {
          clearColor = [MEMORY[0x1E69DC888] clearColor];
          v12 = [backgroundColor isEqual:clearColor];

          if (v12)
          {
            systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];

            backgroundColor = systemBackgroundColor;
          }
        }

        [v9 setBackgroundColor:backgroundColor];
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = EKDayTimeView;
  colorCopy = color;
  [(EKDayTimeView *)&v5 setBackgroundColor:colorCopy];
  [(UIView *)self->_curtain setBackgroundColor:colorCopy, v5.receiver, v5.super_class];
}

- (void)setShowsLeftBorder:(BOOL)border
{
  v4 = *(self + 424);
  if ((v4 & 1) != border)
  {
    *(self + 424) = v4 & 0xFE | border;
    superview = [(EKDayTimeView *)self superview];
    [superview setNeedsLayout];

    [(EKDayTimeView *)self setNeedsLayout];

    [(EKDayTimeView *)self setNeedsDisplay];
  }
}

- (void)setShowsRightBorder:(BOOL)border
{
  v3 = *(self + 424);
  if (((((v3 & 2) == 0) ^ border) & 1) == 0)
  {
    if (border)
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

- (void)setHighlightedHour:(double)hour
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_highlightedHour != hour)
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
      v20 = v19 + v6 * hour;
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

    self->_highlightedHour = hour;
  }
}

- (void)setTimeColor:(id)color
{
  colorCopy = color;
  if (self->_timeColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_timeColor, color);
    [(EKDayTimeView *)self setNeedsDisplay];
    colorCopy = v6;
  }
}

- (UIColor)timeColor
{
  timeColor = self->_timeColor;
  if (!timeColor)
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v5 = self->_timeColor;
    self->_timeColor = secondaryLabelColor;

    timeColor = self->_timeColor;
  }

  return timeColor;
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(EKDayTimeView *)self updateHourHeight];
    [(EKDayTimeView *)self _invalidateTimeWidth];
    [(EKDayTimeView *)self _flushTimeStringImageCache];
    [(EKDayTimeView *)self setNeedsDisplay];
    [(EKDayTimeView *)self setNeedsLayout];

    [(EKDayTimeView *)self layoutFrames];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(EKDayTimeView *)self timeWidth:fits.width];
  v5 = v4;
  [(EKDayTimeView *)self defaultHeight];
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = CalCeilToScreenScale(frame.size.height);
  v8.receiver = self;
  v8.super_class = EKDayTimeView;
  [(EKDayTimeView *)&v8 setFrame:x, y, width, v7];
  [(EKDayTimeView *)self layoutFrames];
  [(EKDayTimeView *)self _invalidateTimeWidth];
}

- (void)drawRect:(CGRect)rect forContentView:(id)view withHourRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v158[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy bounds];
  v123 = v9;
  v124 = v8;
  v143 = v10;
  rect = v11;
  v128 = CUIKShow24Hours();
  traitCollection = [(EKDayTimeView *)self traitCollection];
  v13 = [traitCollection userInterfaceStyle] == 2;

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
  v18 = ceil((CGRectGetMaxY(rect) + location * hourHeight - v15) / hourHeight);
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
  v20 = floor((rect.origin.y - v16) / hourHeight);
  if (v20 <= location)
  {
    v20 = location;
  }

  v21 = v20;
  [EKDayTimeView timeInsetForSizeClass:EKUIWidthSizeClassForViewHierarchy(self) orientation:self->_orientation];
  v138 = v22;
  [objc_opt_class() _timeVerticalInsetForOrientation:self->_orientation inViewHierarchy:self];
  v137 = v23;
  delegate = [(EKDayTimeView *)self delegate];
  [delegate currentTimeRectInView:viewCopy];
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
    selfCopy = self;
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
          calGregorianGMTCalendar = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
          v144 = v49;
          v51 = [calGregorianGMTCalendar dateFromComponents:v49];

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
          selfCopy2 = self;
          v60 = objc_opt_class();
          [v60 _timeTextWidthForSizeClass:EKUIWidthSizeClassForViewHierarchy(viewCopy) orientation:selfCopy2->_orientation inViewHierarchy:viewCopy];
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

          self = selfCopy;
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
        if (v135 != v35 && v35 || (v174.origin.x = v72, v174.origin.y = v74, v174.size.width = v46, v174.size.height = v48, CGRectIntersectsRect(rect, v174)))
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
      cuik_timelineHourColor = [MEMORY[0x1E69DC888] cuik_timelineHourColor];
      [cuik_timelineHourColor CGColor];
      UISetColor();

      [v93 _legacy_drawAtPoint:v83 withFont:{CalRoundPointToScreenScale(v100, v111)}];
    }

    goto LABEL_78;
  }

LABEL_79:
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  if (*(self + 424))
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    CGContextSetShouldAntialias(CurrentContext, 0);
    [separatorColor CGColor];
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
    [separatorColor CGColor];
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

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = EKDayTimeView;
  [(EKDayTimeView *)&v5 setSemanticContentAttribute:?];
  [(EKCurrentTimeMarkerView *)self->_timeMarker setSemanticContentAttribute:attribute];
}

- (void)setVisualEffect:(id)effect
{
  v16 = *MEMORY[0x1E69E9840];
  effectCopy = effect;
  if (self->_visualEffect != effectCopy)
  {
    objc_storeStrong(&self->_visualEffect, effect);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allValues = [(NSMutableDictionary *)self->_visualEffectViews allValues];
    v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v11 + 1) + 8 * v10++) setEffect:effectCopy];
        }

        while (v8 != v10);
        v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setShowsTimeMarker:(BOOL)marker
{
  if (self->_showsTimeMarker != marker)
  {
    timeMarker = self->_timeMarker;
    if (marker)
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
      selfCopy = self;
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __36__EKDayTimeView_setShowsTimeMarker___block_invoke_3;
      v26 = &unk_1E843EC10;
      v27 = v29;
      v21 = v29;
      [v20 animateWithDuration:v28 animations:&v23 completion:0.2];
    }

    self->_showsTimeMarker = marker;
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

- (void)setShowsTimeMarkerExtension:(BOOL)extension
{
  if (self->_showsTimeMarkerExtension != extension)
  {
    self->_showsTimeMarkerExtension = extension;
    if (extension)
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

- (void)setTimeMarkerExtensionColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_timeMarkerExtensionColor] & 1) == 0)
  {
    objc_storeStrong(&self->_timeMarkerExtensionColor, color);
    [(UIView *)self->_timeMarkerExtension setBackgroundColor:colorCopy];
  }
}

+ (double)positionOfSecond:(int64_t)second hourHeight:(double)height topPadding:(double)padding clampToBounds:(BOOL)bounds
{
  secondCopy = second & ~(second >> 63);
  if (secondCopy >= 86400)
  {
    secondCopy = 86400;
  }

  if (!bounds)
  {
    secondCopy = second;
  }

  CalRoundToScreenScale(padding + height * 24.0 * (secondCopy / 86400.0));
  return result;
}

+ (CGRect)timeMarkerFrameForTotalWidth:(double)width timeWidth:(double)timeWidth timeMarker:(id)marker hourHeight:(double)height topPadding:(double)padding
{
  markerCopy = marker;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  showsThumb = [markerCopy showsThumb];
  v15 = 0.0;
  if (IsLeftToRight)
  {
    if (showsThumb)
    {
      [markerCopy markerWidth];
      v17 = timeWidth - v16;
      [markerCopy markerInset];
      v15 = v17 - v18;
      width = width - v15;
    }
  }

  else if (showsThumb)
  {
    [markerCopy markerWidth];
    v20 = width - timeWidth + v19;
    [markerCopy markerInset];
    width = v20 + v21;
  }

  v22 = CUIKNowComponents();
  [self positionOfSecond:(objc_msgSend(v22 hourHeight:"second") + (3600 * objc_msgSend(v22 topPadding:"hour") + 60 * objc_msgSend(v22 clampToBounds:{"minute"))), 1, height, padding}];
  v24 = v23;
  [markerCopy bounds];
  v26 = v24 + v25 * -0.5;
  [markerCopy bounds];
  v28 = v27;

  v29 = v15;
  v30 = v26;
  widthCopy = width;
  v32 = v28;
  result.size.height = v32;
  result.size.width = widthCopy;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

+ (CGRect)_timeLineExtensionFrameForTimeWidth:(double)width timeMarker:(id)marker timeLabelXPosition:(double)position yPosition:(double)yPosition
{
  markerCopy = marker;
  v9 = 0.0;
  if (CalInterfaceIsLeftToRight())
  {
    [markerCopy markerWidth];
    v9 = v10 + position;
  }

  [markerCopy extensionLineHeight];
  v12 = v11;
  v13 = yPosition + v11 * -0.5;
  [markerCopy markerInset];
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

- (void)viewTintColorDidChangeForView:(id)view toColor:(id)color
{
  colorCopy = color;
  visualEffect = [(EKDayTimeView *)self visualEffect];

  if (visualEffect)
  {
    [(EKDayTimeView *)self setTimeColor:colorCopy];
    [(EKDayTimeView *)self setNeedsDisplay];
  }
}

- (void)setCurtainHeight:(double)height
{
  self->_curtainHeight = height;
  [(EKDayTimeView *)self _updateMarkerAlpha];
  v5 = fmax(height, 0.0);
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