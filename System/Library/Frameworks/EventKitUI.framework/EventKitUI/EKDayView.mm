@interface EKDayView
- (BOOL)_isTimeMarkerFullyUnobstructed;
- (BOOL)_showingAllDaySection;
- (BOOL)_viewContentShouldDrawSynchronously;
- (BOOL)allDayViewShouldAnnotateAppEntities:(id)entities;
- (BOOL)animatesTimeMarker;
- (BOOL)containsOccurrences;
- (BOOL)dayViewContentShouldAnnotateAppEntities:(id)entities onDayStarting:(id)starting;
- (BOOL)eventOccursOnThisDay:(id)day;
- (BOOL)isNowVisible;
- (BOOL)scrollTowardPoint:(CGPoint)point;
- (BOOL)showsTimeLabel;
- (BOOL)showsTimeLine;
- (BOOL)showsTimeMarker;
- (CGPoint)normalizedContentOffset;
- (CGPoint)pointAtDate:(double)date isAllDay:(BOOL)day;
- (CGRect)currentTimeRectInView:(id)view;
- (CGRect)currentTimeRectInView:(id)view requireThumb:(BOOL)thumb;
- (CGRect)rectForEvent:(id)event;
- (EKDayView)initWithFrame:(CGRect)frame sizeClass:(int64_t)class orientation:(int64_t)orientation displayDate:(id)date backgroundColor:(id)color opaque:(BOOL)opaque scrollbarShowsInside:(BOOL)inside isMiniPreviewInEventDetail:(BOOL)self0 rightClickDelegate:(id)self1;
- (EKDayViewDataSource)dataSource;
- (EKDayViewDelegate)delegate;
- (EKEvent)dimmedOccurrence;
- (NSArray)allOccurrenceViews;
- (NSString)description;
- (UIColor)gridLineColor;
- (UIVisualEffect)gridVisualEffect;
- (_NSRange)hoursToRender;
- (double)_adjustSecondBackwardForDSTHole:(double)result;
- (double)_adjustSecondForwardForDSTHole:(double)result;
- (double)_positionOfSecond:(int)second;
- (double)_scrollZoneTop;
- (double)_verticalOffset;
- (double)dateAtPoint:(CGPoint)point isAllDay:(BOOL *)day requireAllDayRegionInsistence:(BOOL)insistence;
- (double)leftContentInset;
- (double)minimumHourScale;
- (double)scrollBarOffset;
- (double)scrollOffset;
- (double)timedRegionYOrigin;
- (double)yPositionPerhapsMatchingAllDayOccurrence:(id)occurrence;
- (id)_generateVerticalGridExtensionImage;
- (id)allDayViewRequestsCurrentDisplayDate:(id)date;
- (id)dayViewContent:(id)content selectedCopyViewForOccurrenceView:(id)view;
- (id)occurrenceViewAtPoint:(CGPoint)point;
- (id)occurrenceViewForEvent:(id)event;
- (id)presentationControllerForEditMenu;
- (id)selectedEvent;
- (id)selectedEventsForEditMenu;
- (int)_secondAtPosition:(double)position;
- (int)firstVisibleSecond;
- (int64_t)_sizeClass;
- (void)_adjustForDateOrCalendarChange;
- (void)_clearVerticalGridExtensionImageCache;
- (void)_createAllDayViewWithSizeClass:(int64_t)class rightClickDelegate:(id)delegate;
- (void)_dayViewPinched:(id)pinched;
- (void)_disposeAllDayView;
- (void)_doubleTap:(id)tap;
- (void)_invalidateMarkerTimer;
- (void)_localeChanged;
- (void)_notifyDelegateOfFinishedScrollingToOccurrence;
- (void)_scrollToSecond:(int)second offset:(double)offset animated:(BOOL)animated whenFinished:(id)finished;
- (void)_scrollViewWillBeginDragging:(id)dragging;
- (void)_startMarkerTimer;
- (void)_timeViewTapped:(id)tapped;
- (void)_updateContentForSizeCategoryChange:(id)change;
- (void)_updateCurtain;
- (void)_updateVerticalGridExtensionsForScrollView:(id)view;
- (void)addViewToScollerTopPocket:(id)pocket;
- (void)addViewToScroller:(id)scroller isAllDay:(BOOL)day;
- (void)adjustForTimeZoneChanged;
- (void)adjustFrameToSpanToMidnightFromStartDate:(id)date;
- (void)allDayView:(id)view didSelectEvent:(id)event userInitiated:(BOOL)initiated;
- (void)allDayViewDidLayoutSubviews:(id)subviews;
- (void)attemptDisplayReviewPrompt;
- (void)bringEventToFront:(id)front;
- (void)dayViewContent:(id)content didCreateOccurrenceViews:(id)views;
- (void)dayViewContent:(id)content didSelectEvent:(id)event userInitiated:(BOOL)initiated dateSelected:(id)selected;
- (void)dayViewContent:(id)content didSelectEvents:(id)events userInitiated:(BOOL)initiated;
- (void)dayViewContent:(id)content didTapInEmptySpaceOnDay:(double)day;
- (void)dayViewContent:(id)content pointerDidTargetOccurrences:(id)occurrences;
- (void)dayViewContentDidCompleteAsyncLoadAndLayout:(id)layout;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)firstVisibleSecondChanged;
- (void)highlightHour:(double)hour;
- (void)insertViewForEvent:(id)event belowViewForOtherEvent:(id)otherEvent;
- (void)layoutSubviews;
- (void)loadData:(BOOL)data withCompletion:(id)completion;
- (void)reloadDataSynchronously;
- (void)removeFromSuperview;
- (void)resetOccurrenceViewColors;
- (void)scrollEventsIntoViewAnimated:(BOOL)animated;
- (void)scrollToDate:(id)date offset:(double)offset animated:(BOOL)animated whenFinished:(id)finished;
- (void)scrollToEvent:(id)event animated:(BOOL)animated completionBlock:(id)block;
- (void)scrollToNowAnimated:(BOOL)animated whenFinished:(id)finished;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)selectEvent:(id)event;
- (void)setAdditionalGridCurtainHeight:(double)height;
- (void)setAlignsMidnightToTop:(BOOL)top;
- (void)setAllowPinchingHourHeights:(BOOL)heights;
- (void)setAllowsOccurrenceSelection:(BOOL)selection;
- (void)setAnimatesTimeMarker:(BOOL)marker;
- (void)setBackgroundColor:(id)color;
- (void)setBottomContentInset:(double)inset;
- (void)setCalendar:(id)calendar;
- (void)setDimmedOccurrence:(id)occurrence;
- (void)setDisplayDate:(id)date;
- (void)setFirstVisibleSecond:(int)second;
- (void)setGridLineColor:(id)color;
- (void)setGridVisualEffect:(id)effect;
- (void)setHideMagicPocketBlur:(BOOL)blur;
- (void)setHourScale:(double)scale;
- (void)setNormalizedContentOffset:(CGPoint)offset;
- (void)setOpaque:(BOOL)opaque;
- (void)setOrientation:(int64_t)orientation;
- (void)setOutlineStyle:(int)style;
- (void)setScrollerYInset:(double)inset keepingYPointVisible:(double)visible;
- (void)setShouldEverShowTimeIndicators:(BOOL)indicators;
- (void)setShowOnlyAllDayArea:(BOOL)area;
- (void)setShowsTimeLabel:(BOOL)label;
- (void)setShowsTimeLine:(BOOL)line;
- (void)setShowsTimeMarker:(BOOL)marker;
- (void)setTimeZone:(id)zone;
- (void)setTopContentInset:(double)inset;
- (void)shouldAnnotateAppEntitiesChanged;
- (void)stopScrolling;
- (void)updateMarkerPosition;
- (void)willMoveToSuperview:(id)superview;
- (void)willMoveToWindow:(id)window;
@end

@implementation EKDayView

- (double)scrollBarOffset
{
  result = 10.0;
  if (self->_scrollbarShowsInside)
  {
    return 0.0;
  }

  return result;
}

- (EKDayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_adjustForDateOrCalendarChange
{
  self->_settingDate = 1;
  [(EKDayView *)self stopScrolling];
  v18 = [(NSCalendar *)self->_calendar dateFromComponents:self->_displayDate];
  [v18 timeIntervalSinceReferenceDate];
  v4 = v3;
  if (v3 != self->_dayStart)
  {
    v5 = [(NSDateComponents *)self->_displayDate copy];
    [v5 setHour:23];
    [v5 setMinute:59];
    [v5 setSecond:59];
    v6 = [(NSCalendar *)self->_calendar dateFromComponents:v5];
    self->_dayStart = v4;
    [v6 timeIntervalSinceReferenceDate];
    self->_dayEnd = v7;
    timeZone = [(NSCalendar *)self->_calendar timeZone];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_dayStart + -1.0];
    v10 = [timeZone nextDaylightSavingTimeTransitionAfterDate:v9];
    [v10 timeIntervalSinceReferenceDate];
    self->_nextDSTTransition = v11;

    [(EKDayViewContent *)self->_dayContent setStartDateWithDateComponents:self->_displayDate];
  }

  v12 = CUIKTodayComponents();
  v13 = [(NSDateComponents *)self->_displayDate era];
  v17 = 0;
  if (v13 == [v12 era])
  {
    year = [(NSDateComponents *)self->_displayDate year];
    if (year == [v12 year])
    {
      month = [(NSDateComponents *)self->_displayDate month];
      if (month == [v12 month])
      {
        v16 = [(NSDateComponents *)self->_displayDate day];
        if (v16 == [v12 day] && self->_shouldEverShowTimeIndicators)
        {
          v17 = 1;
        }
      }
    }
  }

  [(EKDayView *)self setShowsTimeLine:v17];
  [(EKDayView *)self setShowsTimeMarker:v17];
  [(EKDayTimeView *)self->_timeView setNeedsDisplay];
  self->_settingDate = 0;
}

- (void)stopScrolling
{
  scroller = self->_scroller;
  [(UIScrollView *)scroller contentOffset];

  [(UIScrollView *)scroller setContentOffset:0 animated:?];
}

- (void)_invalidateMarkerTimer
{
  [(NSTimer *)self->_timeMarkerTimer invalidate];
  timeMarkerTimer = self->_timeMarkerTimer;
  self->_timeMarkerTimer = 0;
}

- (BOOL)_showingAllDaySection
{
  allDayView = self->_allDayView;
  if (allDayView)
  {
    [(EKDayAllDayView *)allDayView frame];
    LOBYTE(allDayView) = v3 > 0.0;
  }

  return allDayView;
}

- (BOOL)isNowVisible
{
  result = [(EKDayView *)self _isTimeMarkerFullyUnobstructed];
  self->_isNowVisible = result;
  return result;
}

- (BOOL)_isTimeMarkerFullyUnobstructed
{
  [(EKDayView *)self currentTimeRectInView:self];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(EKDayView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UIScrollView *)self->_scroller contentInset];
  v20 = v14 + v19;
  v21 = v18 - v19;
  v22 = v12;
  v23 = v16;
  v24 = v4;
  v25 = v6;
  v26 = v8;
  v27 = v10;

  return CGRectContainsRect(*&v22, *&v24);
}

- (BOOL)showsTimeMarker
{
  grid = [(EKDayViewContent *)self->_dayContent grid];
  showsTimeMarker = [grid showsTimeMarker];

  return showsTimeMarker;
}

- (void)layoutSubviews
{
  v89.receiver = self;
  v89.super_class = EKDayView;
  [(EKDayView *)&v89 layoutSubviews];
  if (CalCanvasPocketEnabled())
  {
    topContentInset = self->_topContentInset;
  }

  else
  {
    [(UIScrollView *)self->_scroller contentInset];
    topContentInset = v4;
  }

  allDayView = self->_allDayView;
  if (allDayView)
  {
    [(EKDayAllDayView *)allDayView frame];
    v7 = v6;
    [(EKDayView *)self bounds];
    v9 = v8;
    [(EKDayAllDayView *)self->_allDayView naturalHeight];
    [(EKDayAllDayView *)self->_allDayView setFrame:v7, topContentInset, v9, v10];
    [(EKDayAllDayView *)self->_allDayView sizeToFit];
    v11 = CalCanvasPocketEnabled();
    [(EKDayAllDayView *)self->_allDayView naturalHeight];
    if (v11)
    {
      topContentInset = topContentInset + v12;
    }

    else
    {
      topContentInset = v12;
    }
  }

  [(EKDayView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(EKDayView *)self scrollBarOffset];
  v20 = v19;
  if (CalCanvasPocketEnabled())
  {
    [(EKDayView *)self bounds];
    [(UIView *)self->_emptyViewForPocket setFrame:0.0, 0.0];
  }

  v21 = v18 - topContentInset;
  v22 = v20 + v16;
  [(EKDayTimeView *)self->_timeView updateHourHeight];
  grid = [(EKDayViewContent *)self->_dayContent grid];
  [grid updateHourHeight];

  [EKDayTimeView defaultHeightForSizeClass:[(EKDayView *)self _sizeClass] orientation:self->_orientation withHourScale:self->_hourScale];
  v87 = v24;
  [EKDayTimeView timeWidthForOrientation:self->_orientation inViewHierarchy:self];
  v26 = v25;
  window = [(EKDayView *)self window];

  if (!window)
  {
    self->_layoutWhenJoiningViewHierarchy = 1;
  }

  [(EKDayView *)self leadingMargin];
  v85 = v26;
  v29 = v26 + v28;
  v86 = v14;
  v90.origin.x = v14;
  v90.origin.y = topContentInset;
  v88 = v22;
  v90.size.width = v22;
  v90.size.height = v21;
  CGRectGetWidth(v90);
  [(EKDayView *)self scrollBarOffset];
  [(EKDayView *)self trailingMargin];
  [(EKDayView *)self _verticalOffset];
  v31 = v30;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  v33 = v29;
  if ((IsLeftToRight & 1) == 0)
  {
    [(EKDayView *)self trailingMargin];
  }

  v84 = -v31;
  [(EKDayViewContent *)self->_dayContent setFrame:v33];
  [(UIScrollView *)self->_scroller contentOffset];
  v35 = v34;
  v37 = v36;
  v91.origin.x = v86;
  v91.origin.y = topContentInset;
  v38 = v88;
  v91.size.width = v88;
  v91.size.height = v21;
  [(UIScrollView *)self->_scroller setContentSize:CGRectGetWidth(v91), v87 + v31 * -2.0];
  [(UIScrollView *)self->_scroller setContentOffset:v35, v37];
  v39 = self->_allDayView;
  [EKDayTimeView timeInsetForSizeClass:[(EKDayView *)self _sizeClass] orientation:self->_orientation];
  [(EKDayAllDayView *)v39 setOccurrenceInset:v85 labelInset:v85 - v40];
  if (CalCanvasPocketEnabled())
  {
    [(EKDayView *)self bounds];
    v42 = v41;
    [(EKDayView *)self scrollBarOffset];
    v44 = v43 + v42;
    [(EKDayView *)self bounds];
    v46 = v45;
    [(UIScrollView *)self->_scroller frame];
    v97.origin.x = 0.0;
    v97.origin.y = 0.0;
    v97.size.width = v44;
    v97.size.height = v46;
    if (!CGRectEqualToRect(v92, v97))
    {
      [(UIScrollView *)self->_scroller setFrame:0.0, 0.0, v44, v46];
    }

    [(EKDayView *)self safeAreaInsets];
    [(UIScrollView *)self->_scroller setContentInset:topContentInset, 0.0];
    [(EKDayView *)self safeAreaInsets];
    [(UIScrollView *)self->_scroller setVerticalScrollIndicatorInsets:topContentInset, 0.0];
    v47 = v86;
    v38 = v88;
  }

  else
  {
    [(UIScrollView *)self->_scroller frame];
    v98.origin.x = v86;
    v98.origin.y = topContentInset;
    v98.size.width = v88;
    v98.size.height = v21;
    v47 = v86;
    if (!CGRectEqualToRect(v93, v98))
    {
      [(UIScrollView *)self->_scroller setFrame:v86, topContentInset, v88, v21];
    }
  }

  if (CalInterfaceIsLeftToRight())
  {
    v48 = v29 - v85;
  }

  else
  {
    [(EKDayViewContent *)self->_dayContent frame];
    v50 = v49;
    [(EKDayViewContent *)self->_dayContent frame];
    v48 = v50 + v51;
    v38 = v88;
  }

  [(EKDayTimeView *)self->_timeView setFrame:v48, v84, v85, v87];
  outlineStyle = self->_outlineStyle;
  if (outlineStyle == 2)
  {
    bottomLine = self->_bottomLine;
    v95.origin.x = v47;
    v95.origin.y = topContentInset;
    v95.size.width = v38;
    v95.size.height = v21;
    MaxY = CGRectGetMaxY(v95);
    [(EKDayView *)self scrollBarOffset];
    v56 = v38 - v29 - v57;
  }

  else
  {
    if (outlineStyle != 1)
    {
      goto LABEL_28;
    }

    bottomLine = self->_bottomLine;
    v94.origin.x = v47;
    v94.origin.y = topContentInset;
    v94.size.width = v38;
    v94.size.height = v21;
    MaxY = CGRectGetMaxY(v94);
    [(EKDayView *)self scrollBarOffset];
    v56 = v38 - v55;
    v29 = 0.0;
  }

  [(UIView *)bottomLine setFrame:v29, MaxY, v56, 1.0];
LABEL_28:
  v58 = CalCanvasPocketEventIndicatorEnabled();
  dayContent = self->_dayContent;
  [(UIScrollView *)self->_scroller bounds];
  v64 = v63;
  if (v58)
  {
    [(UIScrollView *)self->_scroller bounds];
    v66 = v65 + self->_topContentInset;
    [(EKDayAllDayView *)self->_allDayView naturalHeight];
    v68 = v66 + v67;
    [(UIScrollView *)self->_scroller bounds];
    v70 = v69;
    [(UIScrollView *)self->_scroller bounds];
    v72 = v71 - self->_topContentInset;
    [(EKDayAllDayView *)self->_allDayView naturalHeight];
    v74 = v72 - v73;
  }

  else
  {
    v75 = v60;
    v76 = v61;
    v77 = v62;
    [(EKDayViewContent *)self->_dayContent frame];
    v79 = -v78;
    v96.origin.x = v64;
    v96.origin.y = v75;
    v96.size.width = v76;
    v96.size.height = v77;
    *(&v74 - 3) = CGRectOffset(v96, 0.0, v79);
    v64 = v80;
    v68 = v81;
    v70 = v82;
  }

  [(EKDayViewContent *)dayContent rectBecameVisible:v64, v68, v70, v74];
  grid2 = [(EKDayViewContent *)self->_dayContent grid];
  [grid2 updateMarkerPosition];

  if (CalCanvasPocketEnabled())
  {
    [(EKDayView *)self _updateCurtain];
  }
}

- (int64_t)_sizeClass
{
  window = [(EKDayView *)self window];

  if (!window)
  {
    return self->_targetSizeClass;
  }

  return EKUIWidthSizeClassForViewHierarchy(self);
}

- (double)_verticalOffset
{
  alignsMidnightToTop = [(EKDayView *)self alignsMidnightToTop];
  result = 0.0;
  if (alignsMidnightToTop)
  {
    +[EKDayTimeView verticalPadding];
    return v4 + 1.0;
  }

  return result;
}

- (id)_generateVerticalGridExtensionImage
{
  [(EKDayView *)self bounds];
  v4 = v3;
  if (__verticalGridExtensionImageCache)
  {
    [__verticalGridExtensionImageCache size];
    v5 = __verticalGridExtensionImageCache;
    if (v6 == v4)
    {
      v7 = __verticalGridExtensionImageCache;
      goto LABEL_12;
    }

    if (__verticalGridExtensionImageCache)
    {
      __verticalGridExtensionImageCache = 0;
    }
  }

  _currentTraitCollection = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  traitCollection = [(EKDayView *)self traitCollection];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:traitCollection];

  isOpaque = [(EKDayView *)self isOpaque];
  v25.height = 1.0;
  v25.width = v4;
  UIGraphicsBeginImageContextWithOptions(v25, isOpaque, 0.0);
  if ([(EKDayView *)self isOpaque])
  {
    backgroundColor = [(UIScrollView *)self->_scroller backgroundColor];
    [backgroundColor CGColor];
    UISetColor();

    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.height = 1.0;
    v26.size.width = v4;
    UIRectFill(v26);
  }

  if (self->_outlineStyle)
  {
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [separatorColor CGColor];

    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetShouldAntialias(CurrentContext, 0);
    UISetColor();
    [(EKDayViewContent *)self->_dayContent frame];
    x = v27.origin.x;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v27.origin.y = 0.0;
    v27.size.width = 1.0;
    v27.size.height = 1.0;
    UIRectFill(v27);
    v28.origin.x = x;
    v28.origin.y = v16;
    v28.size.width = v18;
    v28.size.height = v20;
    v29.origin.x = CGRectGetMaxX(v28) + -1.0;
    v29.origin.y = 0.0;
    v29.size.width = 1.0;
    v29.size.height = 1.0;
    UIRectFill(v29);
    if (self->_outlineStyle == 1)
    {
      v30.origin.x = 0.0;
      v30.origin.y = 0.0;
      v30.size.width = 1.0;
      v30.size.height = 1.0;
      UIRectFill(v30);
    }
  }

  v21 = UIGraphicsGetImageFromCurrentImageContext();
  v22 = __verticalGridExtensionImageCache;
  __verticalGridExtensionImageCache = v21;

  UIGraphicsEndImageContext();
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:_currentTraitCollection];
  [(EKDayView *)self performSelector:sel__clearVerticalGridExtensionImageCache withObject:0 afterDelay:1.0];
  v7 = __verticalGridExtensionImageCache;

LABEL_12:

  return v7;
}

- (void)firstVisibleSecondChanged
{
  if (!self->_settingDate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = objc_loadWeakRetained(&self->_delegate);
        [v7 dayView:self firstVisibleSecondChanged:{-[EKDayView firstVisibleSecond](self, "firstVisibleSecond")}];
      }
    }
  }
}

- (int)firstVisibleSecond
{
  [(UIScrollView *)self->_scroller contentOffset];

  return [(EKDayView *)self _secondAtPosition:v3];
}

- (BOOL)showsTimeLine
{
  grid = [(EKDayViewContent *)self->_dayContent grid];
  showsTimeLine = [grid showsTimeLine];

  return showsTimeLine;
}

- (void)_startMarkerTimer
{
  if (!self->_timeMarkerTimer)
  {
    v12 = CUIKCalendar();
    v3 = CUIKCalendar();
    date = [MEMORY[0x1E695DF00] date];
    v5 = [v3 components:126 fromDate:date];

    v6 = [v12 dateFromComponents:v5];
    v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v7 setMinute:1];
    v8 = [v12 dateByAddingComponents:v7 toDate:v6 options:0];
    v9 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v8 interval:self target:sel_updateMarkerPosition selector:0 userInfo:1 repeats:60.0];
    timeMarkerTimer = self->_timeMarkerTimer;
    self->_timeMarkerTimer = v9;

    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop addTimer:self->_timeMarkerTimer forMode:*MEMORY[0x1E695D918]];
  }
}

- (void)shouldAnnotateAppEntitiesChanged
{
  [(EKDayViewContent *)self->_dayContent shouldAnnotateAppEntitiesChanged];
  allDayView = self->_allDayView;

  [(EKDayAllDayView *)allDayView shouldAnnotateAppEntitiesChanged];
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = EKDayView;
  [(EKDayView *)&v6 didMoveToWindow];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    -[UIScrollView setContentInsetAdjustmentBehavior:](self->_scroller, "setContentInsetAdjustmentBehavior:", [v5 dayViewContentInsetAdjustmentBehavior:self]);
  }
}

- (BOOL)_viewContentShouldDrawSynchronously
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 dayViewShouldDrawSynchronously:self];

  return v6;
}

- (EKDayView)initWithFrame:(CGRect)frame sizeClass:(int64_t)class orientation:(int64_t)orientation displayDate:(id)date backgroundColor:(id)color opaque:(BOOL)opaque scrollbarShowsInside:(BOOL)inside isMiniPreviewInEventDetail:(BOOL)self0 rightClickDelegate:(id)self1
{
  opaqueCopy = opaque;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v82[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  colorCopy = color;
  delegateCopy = delegate;
  v81.receiver = self;
  v81.super_class = EKDayView;
  height = [(EKDayView *)&v81 initWithFrame:x, y, width, height];
  v25 = height;
  if (height)
  {
    [(EKDayView *)height setAutoresizingMask:18];
    [(EKDayView *)v25 setOpaque:opaqueCopy];
    [(EKDayView *)v25 setBackgroundColor:colorCopy];
    [(EKDayView *)v25 bounds];
    v75 = v27;
    v76 = v26;
    rect = v28;
    v30 = v29;
    v25->_outlineStyle = 0;
    v25->_scrollbarShowsInside = inside;
    v25->_allowsOccurrenceSelection = 1;
    v25->_isMiniPreviewInEventDetail = detail;
    objc_storeStrong(&v25->_displayDate, date);
    v31 = CUIKCalendar();
    calendar = v25->_calendar;
    v25->_calendar = v31;

    [EKDayTimeView defaultHeightForSizeClass:class orientation:orientation];
    v34 = v33;
    if (EKUIHasFallbackSizingContext())
    {
      [EKDayTimeView timeWidthForOrientation:orientation inViewHierarchy:v25];
      v36 = v35;
    }

    else
    {
      v36 = 100.0;
    }

    +[EKDayTimeView defaultHourScale];
    v25->_hourScale = v37;
    v25->_shouldEverShowTimeIndicators = 1;
    v25->_targetSizeClass = class;
    v25->_leadingMargin = 0.0;
    v25->_trailingMargin = 0.0;
    v25->_additionalGridCurtainHeight = 0.0;
    [(EKDayView *)v25 setTodayScrollSecondBuffer:3600.0];
    [(EKDayView *)v25 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    [(EKDayView *)v25 scrollBarOffset];
    v47 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{v39, v41, v46 + v43, v45}];
    scroller = v25->_scroller;
    v25->_scroller = v47;

    [(UIScrollView *)v25->_scroller setBackgroundColor:colorCopy];
    [(UIScrollView *)v25->_scroller setOpaque:opaqueCopy];
    [(UIScrollView *)v25->_scroller setAutoresizingMask:18];
    [(UIScrollView *)v25->_scroller setDelegate:v25];
    [(UIScrollView *)v25->_scroller setContentInsetAdjustmentBehavior:2];
    if (CalCanvasPocketEnabled())
    {
      [(UIScrollView *)v25->_scroller setAutomaticallyAdjustsScrollIndicatorInsets:0];
      [(UIScrollView *)v25->_scroller _setPocketStyle:1 forEdge:1];
    }

    [(EKDayView *)v25 addSubview:v25->_scroller];
    if (CalCanvasPocketEnabled())
    {
      v49 = objc_alloc_init(MEMORY[0x1E69DD250]);
      emptyViewForPocket = v25->_emptyViewForPocket;
      v25->_emptyViewForPocket = v49;

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UIView *)v25->_emptyViewForPocket setBackgroundColor:clearColor];

      [(EKDayView *)v25 addSubview:v25->_emptyViewForPocket];
      [(EKDayView *)v25 addViewToScollerTopPocket:v25->_emptyViewForPocket];
    }

    v25->_allowPinchingHourHeights = 1;
    v52 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:v25 action:sel__dayViewPinched_];
    pinchGestureRecognizer = v25->_pinchGestureRecognizer;
    v25->_pinchGestureRecognizer = v52;

    [(UIScrollView *)v25->_scroller addGestureRecognizer:v25->_pinchGestureRecognizer];
    v54 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v25 action:sel__doubleTap_];
    doubleTapGestureRecognizer = v25->_doubleTapGestureRecognizer;
    v25->_doubleTapGestureRecognizer = v54;

    [(UITapGestureRecognizer *)v25->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
    [(UIScrollView *)v25->_scroller addGestureRecognizer:v25->_doubleTapGestureRecognizer];
    v56 = [[EKDayTimeView alloc] initWithFrame:class sizeClass:0.0, 0.0, v36, v34];
    timeView = v25->_timeView;
    v25->_timeView = v56;

    [(EKDayTimeView *)v25->_timeView setContentMode:3];
    [(EKDayTimeView *)v25->_timeView setOpaque:opaqueCopy];
    [(EKDayTimeView *)v25->_timeView setBackgroundColor:colorCopy];
    [(EKDayTimeView *)v25->_timeView setDelegate:v25];
    [(UIScrollView *)v25->_scroller addSubview:v25->_timeView];
    v58 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v25 action:sel__timeViewTapped_];
    [(EKDayTimeView *)v25->_timeView addGestureRecognizer:v58];
    v59 = [EKDayViewContent alloc];
    v83.origin.y = v75;
    v83.origin.x = v76;
    v83.size.width = v30;
    v83.size.height = rect;
    v60 = CGRectGetWidth(v83) - v36;
    if (v60 >= 0.0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0.0;
    }

    v62 = [(EKDayViewContent *)v59 initWithFrame:class sizeClass:orientation orientation:colorCopy backgroundColor:opaqueCopy opaque:v25->_isMiniPreviewInEventDetail isMiniPreviewInEventDetail:1 numberOfDaysToDisplay:v36, 0.0, v61, v34];
    dayContent = v25->_dayContent;
    v25->_dayContent = v62;

    if (delegateCopy)
    {
      v64 = v25->_dayContent;
      v65 = [[EKUIRightClickEmptySpaceInteraction alloc] initWithDelegate:delegateCopy];
      [(EKDayViewContent *)v64 addInteraction:v65];
    }

    [(EKDayViewContent *)v25->_dayContent setAutoresizingMask:2];
    grid = [(EKDayViewContent *)v25->_dayContent grid];
    [grid setAnimatesTimeMarker:1];

    grid2 = [(EKDayViewContent *)v25->_dayContent grid];
    [grid2 setShowsTimeMarker:0];

    [(EKDayViewContent *)v25->_dayContent setDelegate:v25];
    [(UIScrollView *)v25->_scroller addSubview:v25->_dayContent];
    [(UIScrollView *)v25->_scroller setContentSize:v30, v34];
    [(UIScrollView *)v25->_scroller setBounces:1];
    [(EKDayView *)v25 _createAllDayViewWithSizeClass:class rightClickDelegate:delegateCopy];
    [(EKDayView *)v25 setOrientation:orientation];
    [(EKDayViewContent *)v25->_dayContent setStartDateWithDateComponents:v25->_displayDate];
    [(EKDayView *)v25 _adjustForDateOrCalendarChange];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v25 selector:sel__localeChanged name:*MEMORY[0x1E6993308] object:0];
    [defaultCenter addObserver:v25 selector:sel__updateContentForSizeCategoryChange_ name:*MEMORY[0x1E69DDC48] object:0];
    v69 = dispatch_queue_create("dayReload", 0);
    reloadQueue = v25->_reloadQueue;
    v25->_reloadQueue = v69;

    objc_initWeak(&location, v25);
    v82[0] = objc_opt_class();
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:1];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __151__EKDayView_initWithFrame_sizeClass_orientation_displayDate_backgroundColor_opaque_scrollbarShowsInside_isMiniPreviewInEventDetail_rightClickDelegate___block_invoke;
    v78[3] = &unk_1E843EBE8;
    objc_copyWeak(&v79, &location);
    v72 = [(EKDayView *)v25 registerForTraitChanges:v71 withHandler:v78];

    objc_destroyWeak(&v79);
    objc_destroyWeak(&location);
  }

  return v25;
}

void __151__EKDayView_initWithFrame_sizeClass_orientation_displayDate_backgroundColor_opaque_scrollbarShowsInside_isMiniPreviewInEventDetail_rightClickDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[56] removeFromSuperview];
    v2 = v4[56];
    v4[56] = 0;

    [v4[57] removeFromSuperview];
    v3 = v4[57];
    v4[57] = 0;

    [v4 _clearVerticalGridExtensionImageCache];
    [v4 _updateVerticalGridExtensionsForScrollView:v4[65]];
    WeakRetained = v4;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = EKDayView;
  v4 = [(EKDayView *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ _displayDate: [%@]", v4, self->_displayDate];;

  return v5;
}

- (void)_localeChanged
{
  v3 = CUIKCalendar();
  [(EKDayView *)self setCalendar:v3];

  [(EKDayView *)self _adjustForDateOrCalendarChange];

  [(EKDayView *)self setNeedsLayout];
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  if (superviewCopy && ([superviewCopy window], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    if ([(EKDayView *)self showsTimeLine])
    {
      [(EKDayView *)self _startMarkerTimer];
    }
  }

  else
  {
    [(EKDayView *)self _invalidateMarkerTimer];
  }
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  window = [(EKDayView *)self window];
  if (!windowCopy || window)
  {
    if (!windowCopy)
    {
      [(EKDayView *)self _invalidateMarkerTimer];
    }
  }

  else if ([(EKDayView *)self showsTimeLine])
  {
    [(EKDayView *)self _startMarkerTimer];
  }

  if (self->_layoutWhenJoiningViewHierarchy)
  {
    EKUIPushFallbackSizingContextWithViewHierarchy(windowCopy);
    [(EKDayView *)self layoutSubviews];
    EKUIPopFallbackSizingContextWithViewHierarchy(windowCopy);
    self->_layoutWhenJoiningViewHierarchy = 0;
  }

  if (windowCopy)
  {
    [(EKDayView *)self shouldAnnotateAppEntitiesChanged];
  }
}

- (void)removeFromSuperview
{
  [(EKDayView *)self _invalidateMarkerTimer];
  v3.receiver = self;
  v3.super_class = EKDayView;
  [(EKDayView *)&v3 removeFromSuperview];
}

- (void)setOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  v10.receiver = self;
  v10.super_class = EKDayView;
  [(EKDayView *)&v10 setOpaque:?];
  [(UIScrollView *)self->_scroller setOpaque:opaqueCopy];
  [(EKDayTimeView *)self->_timeView setOpaque:opaqueCopy];
  backgroundColor = [(EKDayView *)self backgroundColor];
  if (opaqueCopy)
  {
    backgroundColor2 = [(EKDayView *)self backgroundColor];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v8 = [backgroundColor2 isEqual:clearColor];

    if (v8)
    {
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];

      backgroundColor = systemBackgroundColor;
    }
  }

  [(EKDayView *)self setBackgroundColor:backgroundColor];
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = EKDayView;
  colorCopy = color;
  [(EKDayView *)&v5 setBackgroundColor:colorCopy];
  [(UIScrollView *)self->_scroller setBackgroundColor:colorCopy, v5.receiver, v5.super_class];
  [(EKDayTimeView *)self->_timeView setBackgroundColor:colorCopy];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(EKDayView *)self _disposeAllDayView];
  [(UIScrollView *)self->_scroller setDelegate:0];
  [(EKDayView *)self _invalidateMarkerTimer];
  v4.receiver = self;
  v4.super_class = EKDayView;
  [(EKDayView *)&v4 dealloc];
}

- (void)setHideMagicPocketBlur:(BOOL)blur
{
  if (blur)
  {
    v3 = 15;
  }

  else
  {
    v3 = 0;
  }

  [(UIScrollView *)self->_scroller _setHiddenPocketEdges:v3];
}

- (void)adjustFrameToSpanToMidnightFromStartDate:(id)date
{
  dateCopy = date;
  v9 = CUIKCalendar();
  v5 = [v9 components:32 fromDate:dateCopy];

  hour = [v5 hour];
  v7 = 24.0 - [v5 hour] + 1.0 + 0.15;
  [EKDayTimeView hourHeightForSizeClass:[(EKDayView *)self _sizeClass] orientation:self->_orientation];
  if (v7 >= 24.0)
  {
    [(EKDayTimeView *)self->_timeView defaultHeight];
    v8 = 0.0;
  }

  else
  {
    v8 = (hour + -0.15) * 3600.0;
  }

  [(EKDayView *)self frame];
  [(EKDayView *)self setFrame:?];
  [(EKDayView *)self setFirstVisibleSecond:v8];
}

- (void)updateMarkerPosition
{
  window = [(EKDayView *)self window];

  if (window)
  {
    grid = [(EKDayViewContent *)self->_dayContent grid];
    [grid updateMarkerPosition];

    timeView = self->_timeView;

    [(EKDayTimeView *)timeView updateMarkerPosition];
  }
}

- (void)setDisplayDate:(id)date
{
  dateCopy = date;
  if (([dateCopy isEqual:self->_displayDate] & 1) == 0)
  {
    dateComponentsForDateOnly = [dateCopy dateComponentsForDateOnly];
    displayDate = self->_displayDate;
    self->_displayDate = dateComponentsForDateOnly;

    [(EKDayView *)self _adjustForDateOrCalendarChange];
    displayDateDidChangeCallback = [(EKDayView *)self displayDateDidChangeCallback];

    if (displayDateDidChangeCallback)
    {
      displayDateDidChangeCallback2 = [(EKDayView *)self displayDateDidChangeCallback];
      (displayDateDidChangeCallback2)[2](displayDateDidChangeCallback2, self->_displayDate);
    }
  }
}

- (void)setCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (([calendarCopy isEqual:self->_calendar] & 1) == 0)
  {
    v4 = [calendarCopy copy];
    calendar = self->_calendar;
    self->_calendar = v4;

    [(EKDayView *)self _adjustForDateOrCalendarChange];
    [(EKDayViewContent *)self->_dayContent setCalendar:calendarCopy];
  }
}

- (void)setShouldEverShowTimeIndicators:(BOOL)indicators
{
  self->_shouldEverShowTimeIndicators = indicators;
  if (!indicators)
  {
    [(EKDayView *)self setShowsTimeLine:0];

    [(EKDayView *)self setShowsTimeMarker:0];
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v5 = [zoneCopy isEqualToTimeZone:timeZone];

  if ((v5 & 1) == 0)
  {
    [(NSCalendar *)self->_calendar setTimeZone:zoneCopy];
    [(EKDayView *)self _adjustForDateOrCalendarChange];
    [(EKDayViewContent *)self->_dayContent setTimeZone:zoneCopy];
  }
}

- (void)setOrientation:(int64_t)orientation
{
  [(EKDayView *)self bounds];
  if (v5 > 0.0 && v5 < EKUIWidthForWindowSizeParadigm(4))
  {
    orientation = 4;
  }

  self->_orientation = orientation;
  [(EKDayViewContent *)self->_dayContent setOrientation:orientation];
  [(EKDayTimeView *)self->_timeView setOrientation:orientation];
  [(EKDayAllDayView *)self->_allDayView setOrientation:orientation];

  [(EKDayView *)self setNeedsLayout];
}

- (void)adjustForTimeZoneChanged
{
  v3 = CUIKCalendar();
  calendar = self->_calendar;
  self->_calendar = v3;

  timeZone = [(NSCalendar *)self->_calendar timeZone];
  [(EKDayView *)self _adjustForDateOrCalendarChange];
  [(EKDayViewContent *)self->_dayContent setTimeZone:timeZone];
  [(EKDayView *)self setNeedsLayout];
}

- (void)setShowsTimeMarker:(BOOL)marker
{
  markerCopy = marker;
  [(EKDayTimeView *)self->_timeView setShowsTimeMarker:?];
  grid = [(EKDayViewContent *)self->_dayContent grid];
  [grid setShowsTimeMarker:markerCopy];

  if (markerCopy && ([(EKDayView *)self superview], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {

    [(EKDayView *)self _startMarkerTimer];
  }

  else
  {

    [(EKDayView *)self _invalidateMarkerTimer];
  }
}

- (void)setShowsTimeLabel:(BOOL)label
{
  labelCopy = label;
  grid = [(EKDayViewContent *)self->_dayContent grid];
  timeMarker = [grid timeMarker];
  [timeMarker setShowsThumb:labelCopy];
}

- (BOOL)showsTimeLabel
{
  grid = [(EKDayViewContent *)self->_dayContent grid];
  timeMarker = [grid timeMarker];
  showsThumb = [timeMarker showsThumb];

  return showsThumb;
}

- (void)setAnimatesTimeMarker:(BOOL)marker
{
  markerCopy = marker;
  grid = [(EKDayViewContent *)self->_dayContent grid];
  [grid setAnimatesTimeMarker:markerCopy];
}

- (BOOL)animatesTimeMarker
{
  grid = [(EKDayViewContent *)self->_dayContent grid];
  animatesTimeMarker = [grid animatesTimeMarker];

  return animatesTimeMarker;
}

- (void)setShowsTimeLine:(BOOL)line
{
  lineCopy = line;
  grid = [(EKDayViewContent *)self->_dayContent grid];
  [grid setShowsTimeLine:lineCopy];
}

- (CGRect)currentTimeRectInView:(id)view
{
  [(EKDayView *)self currentTimeRectInView:view requireThumb:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)currentTimeRectInView:(id)view requireThumb:(BOOL)thumb
{
  thumbCopy = thumb;
  viewCopy = view;
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v10 = *(MEMORY[0x1E695F050] + 24);
  if ([(EKDayView *)self showsTimeMarker])
  {
    grid = [(EKDayViewContent *)self->_dayContent grid];
    timeMarker = [grid timeMarker];

    if (timeMarker && (!thumbCopy || [timeMarker showsThumb]))
    {
      [timeMarker currentTimeFrame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      superview = [timeMarker superview];
      [viewCopy convertRect:superview fromView:{v14, v16, v18, v20}];
      v7 = v22;
      v8 = v23;
      v9 = v24;
      v10 = v25;
    }
  }

  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)setAllowsOccurrenceSelection:(BOOL)selection
{
  if (self->_allowsOccurrenceSelection != selection)
  {
    selectionCopy = selection;
    self->_allowsOccurrenceSelection = selection;
    [(EKDayAllDayView *)self->_allDayView setAllowsOccurrenceSelection:?];
    dayContent = self->_dayContent;

    [(EKDayViewContent *)dayContent setAllowsOccurrenceSelection:selectionCopy];
  }
}

- (void)setOutlineStyle:(int)style
{
  if (self->_outlineStyle != style)
  {
    self->_outlineStyle = style;
    if (style)
    {
      if (!self->_bottomLine)
      {
        v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
        bottomLine = self->_bottomLine;
        self->_bottomLine = v4;

        v6 = self->_bottomLine;
        separatorColor = [MEMORY[0x1E69DC888] separatorColor];
        [(UIView *)v6 setBackgroundColor:separatorColor];

        [(EKDayView *)self addSubview:self->_bottomLine];
      }

      grid = [(EKDayViewContent *)self->_dayContent grid];
      [grid setShowsRightBorder:1];

      [(EKDayView *)self setShowsLeftBorder:1];
      [(EKDayTimeView *)self->_timeView setShowsLeftBorder:self->_outlineStyle == 1];
    }

    else
    {
      [(EKDayView *)self setContentMode:0];
      grid2 = [(EKDayViewContent *)self->_dayContent grid];
      [grid2 setShowsRightBorder:0];

      [(UIView *)self->_bottomLine removeFromSuperview];
    }

    [(EKDayView *)self needsDisplay];
  }
}

- (void)setFirstVisibleSecond:(int)second
{
  v3 = *&second;
  p_scrolledToFirstVisibleSecondForSize = &self->_scrolledToFirstVisibleSecondForSize;
  [(UIScrollView *)self->_scroller bounds];
  width = p_scrolledToFirstVisibleSecondForSize->width;
  height = p_scrolledToFirstVisibleSecondForSize->height;
  v10 = p_scrolledToFirstVisibleSecondForSize->width == v9 && height == v6;
  if (!v10 || [(EKDayView *)self firstVisibleSecond:width]!= v3)
  {
    [(UIScrollView *)self->_scroller contentSize:width];
    v12 = v11;
    [(UIScrollView *)self->_scroller bounds];
    v14 = v13;
    if (v3)
    {
      if (v3 == 86399)
      {
        v15 = v12 - v13;
      }

      else
      {
        [(EKDayView *)self _positionOfSecond:v3];
        v15 = v16;
      }
    }

    else
    {
      v15 = 0.0;
    }

    scroller = self->_scroller;
    [(UIScrollView *)scroller contentInset];
    if (v15 >= v12 + v18 - v14)
    {
      v19 = v12 + v18 - v14;
    }

    else
    {
      v19 = v15;
    }

    [(UIScrollView *)scroller setContentOffset:0.0, v19];
    [(UIScrollView *)self->_scroller bounds];
    p_scrolledToFirstVisibleSecondForSize->width = v20;
    p_scrolledToFirstVisibleSecondForSize->height = v21;

    [(EKDayView *)self firstVisibleSecondChanged];
  }
}

- (_NSRange)hoursToRender
{
  hoursToRender = [(EKDayTimeView *)self->_timeView hoursToRender];
  result.length = v3;
  result.location = hoursToRender;
  return result;
}

- (UIColor)gridLineColor
{
  grid = [(EKDayViewContent *)self->_dayContent grid];
  lineColor = [grid lineColor];

  return lineColor;
}

- (void)setGridLineColor:(id)color
{
  dayContent = self->_dayContent;
  colorCopy = color;
  grid = [(EKDayViewContent *)dayContent grid];
  [grid setLineColor:colorCopy];
}

- (UIVisualEffect)gridVisualEffect
{
  grid = [(EKDayViewContent *)self->_dayContent grid];
  gridVisualEffect = [grid gridVisualEffect];

  return gridVisualEffect;
}

- (void)setGridVisualEffect:(id)effect
{
  dayContent = self->_dayContent;
  effectCopy = effect;
  grid = [(EKDayViewContent *)dayContent grid];
  [grid setGridVisualEffect:effectCopy];
}

- (void)setAllowPinchingHourHeights:(BOOL)heights
{
  if (self->_allowPinchingHourHeights != heights)
  {
    self->_allowPinchingHourHeights = heights;
    scroller = self->_scroller;
    if (heights)
    {
      [(UIScrollView *)scroller addGestureRecognizer:self->_pinchGestureRecognizer];
      v5 = self->_scroller;
      doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;

      [(UIScrollView *)v5 addGestureRecognizer:doubleTapGestureRecognizer];
    }

    else
    {
      [(UIScrollView *)scroller removeGestureRecognizer:self->_pinchGestureRecognizer];
      v7 = self->_scroller;
      v8 = self->_doubleTapGestureRecognizer;

      [(UIScrollView *)v7 removeGestureRecognizer:v8];
    }
  }
}

- (double)scrollOffset
{
  [(UIScrollView *)self->_scroller contentOffset];
  v4 = v3;
  [(EKDayView *)self _verticalOffset];
  v6 = v4 - v5;
  [(UIScrollView *)self->_scroller frame];
  return v6 - v7;
}

- (CGPoint)normalizedContentOffset
{
  [(UIScrollView *)self->_scroller contentOffset];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_scroller contentSize];
  v8 = v6 / v7;
  v9 = v4;
  result.y = v8;
  result.x = v9;
  return result;
}

- (void)setNormalizedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  [(UIScrollView *)self->_scroller contentSize];
  v7 = y * v6;
  [(EKDayView *)self _verticalOffset];
  v9 = v8;
  [(UIScrollView *)self->_scroller frame];
  v11 = v7 + v9 + v10;
  scroller = self->_scroller;

  [(UIScrollView *)scroller setContentOffset:0 animated:x, v11];
}

- (void)scrollToEvent:(id)event animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  eventCopy = event;
  blockCopy = block;
  v10 = [(EKDayViewContent *)self->_dayContent occurrenceViewForEvent:eventCopy];
  v11 = v10;
  if (v10)
  {
    [v10 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__EKDayView_scrollToEvent_animated_completionBlock___block_invoke;
    aBlock[3] = &unk_1E843F2D0;
    v42 = blockCopy;
    v20 = _Block_copy(aBlock);
    if (([eventCopy isAllDay] & 1) == 0)
    {
      scroller = self->_scroller;
      [v11 frame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      superview = [v11 superview];
      [(UIScrollView *)scroller convertRect:superview fromView:v23, v25, v27, v29];
      v13 = v31;
      v17 = v32;
      v19 = v33;

      v34 = MEMORY[0x1E69930C8];
      startDate = [eventCopy startDate];
      timeZone = [(NSCalendar *)self->_calendar timeZone];
      v37 = [v34 calendarDateWithDate:startDate timeZone:timeZone];

      -[EKDayView _positionOfSecond:](self, "_positionOfSecond:", 3600 * [v37 hour] + 60 * objc_msgSend(v37, "minute") + objc_msgSend(v37, "second"));
      v15 = v38;
    }

    v43.origin.x = v13;
    v43.origin.y = v15;
    v43.size.width = v17;
    v43.size.height = v19;
    v44 = CGRectInset(v43, 0.0, -20.0);
    if (animatedCopy)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __52__EKDayView_scrollToEvent_animated_completionBlock___block_invoke_2;
      v39[3] = &unk_1E8441260;
      v39[4] = self;
      v40 = v44;
      [MEMORY[0x1E69DD250] animateWithDuration:v39 animations:v20 completion:0.4];
    }

    else
    {
      [(UIScrollView *)self->_scroller scrollRectToVisible:0 animated:v44.origin.x, v44.origin.y, v44.size.width, v44.size.height];
      v20[2](v20, 1);
    }
  }

  [(EKDayView *)self firstVisibleSecondChanged];
}

uint64_t __52__EKDayView_scrollToEvent_animated_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_scrollToSecond:(int)second offset:(double)offset animated:(BOOL)animated whenFinished:(id)finished
{
  animatedCopy = animated;
  finishedCopy = finished;
  [(EKDayView *)self layoutIfNeeded];
  [(UIScrollView *)self->_scroller bounds];
  v12 = v11;
  [(UIScrollView *)self->_scroller contentSize];
  v14 = v13;
  [(EKDayView *)self todayScrollSecondBuffer];
  v16 = second - v15;
  v17 = 0.0;
  v18 = fmax(v16, 0.0);
  if (v18)
  {
    if (v18 < 86399)
    {
      [(EKDayView *)self _positionOfSecond:?];
    }

    else
    {
      v17 = v14 - v12;
    }
  }

  v19 = v17 + offset;
  [(UIScrollView *)self->_scroller contentInset];
  v21 = v19 - v20;
  v22 = v14 - v12;
  [(UIScrollView *)self->_scroller contentInset];
  if (v21 >= v22 + v23)
  {
    v21 = v22 + v23;
  }

  if (animatedCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__EKDayView__scrollToSecond_offset_animated_whenFinished___block_invoke;
    aBlock[3] = &unk_1E843F2D0;
    v27 = finishedCopy;
    v24 = _Block_copy(aBlock);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __58__EKDayView__scrollToSecond_offset_animated_whenFinished___block_invoke_2;
    v25[3] = &unk_1E8441288;
    v25[4] = self;
    v25[5] = 0;
    *&v25[6] = v21;
    [MEMORY[0x1E69DD250] animateWithDuration:v25 animations:v24 completion:0.4];
  }

  else
  {
    [(UIScrollView *)self->_scroller setContentOffset:0.0, v21];
    if (finishedCopy)
    {
      finishedCopy[2](finishedCopy);
    }
  }

  [(EKDayView *)self firstVisibleSecondChanged];
}

uint64_t __58__EKDayView__scrollToSecond_offset_animated_whenFinished___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)scrollToDate:(id)date offset:(double)offset animated:(BOOL)animated whenFinished:(id)finished
{
  animatedCopy = animated;
  finishedCopy = finished;
  [date timeIntervalSinceReferenceDate];
  dayStart = self->_dayStart;
  if (v10 >= dayStart && v10 <= self->_dayEnd)
  {
    [(EKDayView *)self _scrollToSecond:(v10 - dayStart) offset:animatedCopy animated:finishedCopy whenFinished:offset];
  }
}

- (void)scrollToNowAnimated:(BOOL)animated whenFinished:(id)finished
{
  animatedCopy = animated;
  finishedCopy = finished;
  v7 = CUIKNowDate();
  [(EKDayView *)self scrollToDate:v7 animated:animatedCopy whenFinished:finishedCopy];
}

- (id)allDayViewRequestsCurrentDisplayDate:(id)date
{
  v3 = MEMORY[0x1E69930C8];
  dayStart = self->_dayStart;
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v6 = [v3 calendarDateWithAbsoluteTime:timeZone timeZone:dayStart];

  return v6;
}

- (id)presentationControllerForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  presentationControllerForEditMenu = [WeakRetained presentationControllerForEditMenu];

  return presentationControllerForEditMenu;
}

- (id)selectedEventsForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  selectedEventsForEditMenu = [WeakRetained selectedEventsForEditMenu];

  return selectedEventsForEditMenu;
}

- (void)attemptDisplayReviewPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 attemptDisplayReviewPrompt];
  }
}

- (NSArray)allOccurrenceViews
{
  array = [MEMORY[0x1E695DF70] array];
  occurrenceViews = [(EKDayAllDayView *)self->_allDayView occurrenceViews];
  [array addObjectsFromArray:occurrenceViews];

  occurrenceViews2 = [(EKDayViewContent *)self->_dayContent occurrenceViews];
  [array addObjectsFromArray:occurrenceViews2];

  v6 = [array copy];

  return v6;
}

- (void)bringEventToFront:(id)front
{
  frontCopy = front;
  v4 = [(EKDayView *)self occurrenceViewForEvent:?];
  if (v4 || ([(EKDayViewContent *)self->_dayContent occurrenceViewForEvent:frontCopy], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    superview = [v4 superview];
    [superview bringSubviewToFront:v5];
  }
}

- (void)insertViewForEvent:(id)event belowViewForOtherEvent:(id)otherEvent
{
  eventCopy = event;
  otherEventCopy = otherEvent;
  v7 = [(EKDayView *)self occurrenceViewForEvent:eventCopy];
  v8 = [(EKDayView *)self occurrenceViewForEvent:otherEventCopy];
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = [(EKDayViewContent *)self->_dayContent occurrenceViewForEvent:eventCopy];
    if (v9)
    {
LABEL_3:
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }
  }

  v9 = [(EKDayViewContent *)self->_dayContent occurrenceViewForEvent:otherEventCopy];
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v9)
  {
    superview = [v7 superview];
    v11 = superview;
    v12 = v7;
    v13 = v9;
  }

  else
  {
    isAllDay = [eventCopy isAllDay];
    superview = [v7 superview];
    v11 = superview;
    if (isAllDay)
    {
      v15 = 496;
    }

    else
    {
      v15 = 504;
    }

    v13 = *(&self->super.super.super.isa + v15);
    v12 = v7;
  }

  [superview insertSubview:v12 aboveSubview:v13];

LABEL_14:
}

- (void)setTopContentInset:(double)inset
{
  self->_topContentInset = inset;
  if ((CalCanvasPocketEnabled() & 1) == 0)
  {
    [(UIScrollView *)self->_scroller contentInset];
    scroller = self->_scroller;

    [(UIScrollView *)scroller setContentInset:inset];
  }
}

- (void)setBottomContentInset:(double)inset
{
  self->_bottomContentInset = inset;
  [(UIScrollView *)self->_scroller contentInset];
  scroller = self->_scroller;

  [(UIScrollView *)scroller setContentInset:?];
}

- (void)setAdditionalGridCurtainHeight:(double)height
{
  self->_additionalGridCurtainHeight = height;
  if (CalCanvasPocketEnabled())
  {

    [(EKDayView *)self _updateCurtain];
  }
}

- (double)leftContentInset
{
  if (CalInterfaceIsLeftToRight())
  {
    [(EKDayViewContent *)self->_dayContent frame];
    v4 = v3;
  }

  else
  {
    [(EKDayView *)self bounds];
    Width = CGRectGetWidth(v8);
    [(EKDayViewContent *)self->_dayContent frame];
    v4 = Width - CGRectGetMaxX(v9);
  }

  +[EKDayOccurrenceView barToBarGapWidth];
  return v4 + v6;
}

- (double)_positionOfSecond:(int)second
{
  grid = [(EKDayViewContent *)self->_dayContent grid];
  [grid positionOfSecond:second];
  v7 = v6;

  [(EKDayView *)self _verticalOffset];
  return v7 - v8;
}

- (int)_secondAtPosition:(double)position
{
  grid = [(EKDayViewContent *)self->_dayContent grid];
  [(EKDayView *)self _verticalOffset];
  position = [grid secondAtPosition:v6 + position];

  v8 = (self->_dayEnd - self->_dayStart);
  if (position < v8)
  {
    v8 = position;
  }

  if (position >= 0)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (void)setAlignsMidnightToTop:(BOOL)top
{
  if (self->_alignsMidnightToTop != top)
  {
    self->_alignsMidnightToTop = top;
    [(EKDayView *)self setNeedsLayout];
  }
}

- (void)setShowOnlyAllDayArea:(BOOL)area
{
  if (self->_showOnlyAllDayArea != area)
  {
    self->_showOnlyAllDayArea = area;
    [(UIScrollView *)self->_scroller setHidden:?];
    allDayView = self->_allDayView;
    v5 = !self->_showOnlyAllDayArea;

    [(EKDayAllDayView *)allDayView setShowsBorderLines:v5];
  }
}

- (void)_clearVerticalGridExtensionImageCache
{
  v2 = __verticalGridExtensionImageCache;
  __verticalGridExtensionImageCache = 0;
}

- (BOOL)eventOccursOnThisDay:(id)day
{
  if (!day)
  {
    return 0;
  }

  v3 = [(EKDayView *)self occurrenceViewForEvent:?];
  v4 = v3 != 0;

  return v4;
}

- (id)occurrenceViewForEvent:(id)event
{
  eventCopy = event;
  isAllDay = [eventCopy isAllDay];
  v6 = &OBJC_IVAR___EKDayView__dayContent;
  if (isAllDay)
  {
    v6 = &OBJC_IVAR___EKDayView__allDayView;
  }

  v7 = [*(&self->super.super.super.isa + *v6) occurrenceViewForEvent:eventCopy];

  return v7;
}

- (double)yPositionPerhapsMatchingAllDayOccurrence:(id)occurrence
{
  v4 = [(EKDayView *)self occurrenceViewForEvent:occurrence];
  v5 = v4;
  if (v4 && [(EKDayAllDayView *)v4 isAllDay])
  {
    [(EKDayAllDayView *)v5 bounds];
    selfCopy2 = self;
    v9 = v5;
  }

  else
  {
    allDayView = self->_allDayView;
    if (!allDayView)
    {
      v13 = 0.0;
      goto LABEL_8;
    }

    [(EKDayAllDayView *)allDayView nextAvailableOccurrenceViewYOrigin];
    v7 = v11;
    v9 = self->_allDayView;
    v6 = 0.0;
    selfCopy2 = self;
  }

  [(EKDayView *)selfCopy2 convertPoint:v9 fromView:v6, v7];
  v13 = v12;
LABEL_8:

  return v13;
}

- (CGRect)rectForEvent:(id)event
{
  v4 = [(EKDayView *)self occurrenceViewForEvent:event];
  v5 = v4;
  if (v4)
  {
    [v4 bounds];
    [(EKDayView *)self convertRect:v5 fromView:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)selectEvent:(id)event
{
  eventCopy = event;
  selectedEvent = [(EKDayView *)self selectedEvent];
  v5 = selectedEvent;
  if (selectedEvent != eventCopy)
  {
    if (!eventCopy || (v6 = [selectedEvent isAllDay], v6 != objc_msgSend(eventCopy, "isAllDay")))
    {
      if ([v5 isAllDay])
      {
        allDayView = self->_allDayView;
        if (!allDayView)
        {
          goto LABEL_9;
        }
      }

      else
      {
        allDayView = self->_dayContent;
      }

      [allDayView selectEvent:0];
    }

LABEL_9:
    if ([eventCopy isAllDay])
    {
      dayContent = self->_allDayView;
      if (!dayContent)
      {
        goto LABEL_14;
      }
    }

    else
    {
      dayContent = self->_dayContent;
    }

    [dayContent selectEvent:eventCopy];
  }

LABEL_14:
}

- (id)selectedEvent
{
  selectedEvent = [(EKDayViewContent *)self->_dayContent selectedEvent];
  if (!selectedEvent)
  {
    selectedEvent = [(EKDayAllDayView *)self->_allDayView selectedEvent];
  }

  return selectedEvent;
}

- (void)setDimmedOccurrence:(id)occurrence
{
  allDayView = self->_allDayView;
  occurrenceCopy = occurrence;
  [(EKDayAllDayView *)allDayView setDimmedOccurrence:occurrenceCopy];
  [(EKDayViewContent *)self->_dayContent setDimmedOccurrence:occurrenceCopy];
}

- (EKEvent)dimmedOccurrence
{
  dimmedOccurrence = [(EKDayAllDayView *)self->_allDayView dimmedOccurrence];
  if (!dimmedOccurrence)
  {
    dimmedOccurrence = [(EKDayViewContent *)self->_dayContent dimmedOccurrence];
  }

  return dimmedOccurrence;
}

- (BOOL)containsOccurrences
{
  occurrenceViews = [(EKDayAllDayView *)self->_allDayView occurrenceViews];
  v4 = [occurrenceViews count];

  if (v4 > 0)
  {
    return 1;
  }

  dayContent = self->_dayContent;

  return [(EKDayViewContent *)dayContent containsVisibleOccurrenceViews];
}

- (void)_notifyDelegateOfFinishedScrollingToOccurrence
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 dayViewDidFinishScrollingToOccurrence:self];
    }
  }
}

- (void)_scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  delegate = [(EKDayView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(EKDayView *)self delegate];
    [delegate2 dayView:self scrollViewWillBeginDragging:draggingCopy];
  }
}

- (void)_updateVerticalGridExtensionsForScrollView:(id)view
{
  [view contentOffset];
  v5 = v4;
  [(EKDayView *)self _verticalOffset];
  v7 = v6;
  topVerticalGridExtension = self->_topVerticalGridExtension;
  if (v5 >= -v6)
  {
    if (topVerticalGridExtension)
    {
      [(UIImageView *)self->_topVerticalGridExtension removeFromSuperview];
      v12 = self->_topVerticalGridExtension;
      self->_topVerticalGridExtension = 0;
    }
  }

  else
  {
    if (!topVerticalGridExtension)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      v10 = self->_topVerticalGridExtension;
      self->_topVerticalGridExtension = v9;

      _generateVerticalGridExtensionImage = [(EKDayView *)self _generateVerticalGridExtensionImage];
      [(UIImageView *)self->_topVerticalGridExtension setImage:_generateVerticalGridExtensionImage];

      [(UIImageView *)self->_topVerticalGridExtension setOpaque:[(EKDayView *)self isOpaque]];
      [(UIScrollView *)self->_scroller insertSubview:self->_topVerticalGridExtension atIndex:0];
      topVerticalGridExtension = self->_topVerticalGridExtension;
    }

    [(EKDayView *)self bounds];
    [(UIImageView *)topVerticalGridExtension setFrame:0.0, v5 - v7];
  }

  [(EKDayViewContent *)self->_dayContent bounds];
  v14 = v13;
  [(UIScrollView *)self->_scroller bounds];
  bottomVerticalGridExtension = self->_bottomVerticalGridExtension;
  if (v5 <= v14 - v15 - v7)
  {
    if (bottomVerticalGridExtension)
    {
      [(UIImageView *)self->_bottomVerticalGridExtension removeFromSuperview];
      v22 = self->_bottomVerticalGridExtension;
      self->_bottomVerticalGridExtension = 0;
    }
  }

  else
  {
    if (!bottomVerticalGridExtension)
    {
      v17 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      v18 = self->_bottomVerticalGridExtension;
      self->_bottomVerticalGridExtension = v17;

      _generateVerticalGridExtensionImage2 = [(EKDayView *)self _generateVerticalGridExtensionImage];
      [(UIImageView *)self->_bottomVerticalGridExtension setImage:_generateVerticalGridExtensionImage2];

      [(UIImageView *)self->_bottomVerticalGridExtension setOpaque:1];
      [(UIScrollView *)self->_scroller insertSubview:self->_bottomVerticalGridExtension atIndex:0];
      bottomVerticalGridExtension = self->_bottomVerticalGridExtension;
    }

    [(EKDayViewContent *)self->_dayContent bounds];
    v21 = v20 - v7;
    [(EKDayView *)self bounds];

    [(UIImageView *)bottomVerticalGridExtension setFrame:0.0, v21];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4 = MEMORY[0x1E696AD88];
  scrollCopy = scroll;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter postNotificationName:@"EmptySearchBarNeedsResignFirstResponderNotification" object:self];

  [(EKDayView *)self _updateVerticalGridExtensionsForScrollView:scrollCopy];
  superview = [(EKDayView *)self superview];

  if (superview)
  {
    v8 = CalCanvasPocketEventIndicatorEnabled();
    dayContent = self->_dayContent;
    [(UIScrollView *)self->_scroller bounds];
    v14 = v13;
    if (v8)
    {
      [(UIScrollView *)self->_scroller bounds];
      v16 = v15 + self->_topContentInset;
      [(EKDayAllDayView *)self->_allDayView naturalHeight];
      v18 = v16 + v17;
      [(UIScrollView *)self->_scroller bounds];
      v20 = v19;
      [(UIScrollView *)self->_scroller bounds];
      v22 = v21 - self->_topContentInset;
      [(EKDayAllDayView *)self->_allDayView naturalHeight];
      v24 = v22 - v23;
    }

    else
    {
      v25 = v10;
      v26 = v11;
      v27 = v12;
      [(EKDayViewContent *)self->_dayContent frame];
      v29 = -v28;
      v37.origin.x = v14;
      v37.origin.y = v25;
      v37.size.width = v26;
      v37.size.height = v27;
      *(&v24 - 3) = CGRectOffset(v37, 0.0, v29);
      v14 = v30;
      v18 = v31;
      v20 = v32;
    }

    [(EKDayViewContent *)dayContent rectBecameVisible:v14, v18, v20, v24];
  }

  delegate = [(EKDayView *)self delegate];
  v34 = objc_opt_respondsToSelector();

  if (v34)
  {
    delegate2 = [(EKDayView *)self delegate];
    [(UIScrollView *)self->_scroller contentOffset];
    [delegate2 dayView:self didUpdateScrollPosition:?];
  }

  if (CalCanvasPocketEnabled())
  {

    [(EKDayView *)self _updateCurtain];
  }
}

- (void)_updateCurtain
{
  [(UIScrollView *)self->_scroller contentOffset];
  v4 = v3;
  allDayView = self->_allDayView;
  if (allDayView)
  {
    [(EKDayAllDayView *)allDayView frame];
    MaxY = CGRectGetMaxY(v12);
  }

  else
  {
    MaxY = self->_topContentInset;
  }

  v7 = v4 + MaxY;
  grid = [(EKDayViewContent *)self->_dayContent grid];
  [(EKDayView *)self additionalGridCurtainHeight];
  [grid setCurtainHeight:v7 + v9];

  timeView = self->_timeView;

  [(EKDayTimeView *)timeView setCurtainHeight:v7];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  if (!decelerate && self->_userScrolling)
  {
    v7 = draggingCopy;
    [(EKDayView *)self firstVisibleSecondChanged];
    draggingCopy = v7;
    self->_userScrolling = 0;
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (self->_userScrolling)
  {
    [(EKDayView *)self firstVisibleSecondChanged];
    self->_userScrolling = 0;
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  if (self->_scrollingToOccurrence)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dayViewDidFinishScrollingToOccurrence:self];

    self->_scrollingToOccurrence = 0;
  }
}

- (void)_updateContentForSizeCategoryChange:(id)change
{
  [(EKDayAllDayView *)self->_allDayView updateLabelFont];
  timeMarker = [(EKDayTimeView *)self->_timeView timeMarker];
  [timeMarker invalidateFonts];

  grid = [(EKDayViewContent *)self->_dayContent grid];
  timeMarker2 = [grid timeMarker];
  [timeMarker2 invalidateFonts];

  +[EKDayTimeView defaultHourScale];
  [(EKDayView *)self setHourScale:?];
  [(EKDayView *)self reloadData];
  [(EKDayView *)self setNeedsLayout];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(timeMarker2) = objc_opt_respondsToSelector();

  if (timeMarker2)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 dayView:self didScaleDayViewWithScale:self->_hourScale];
  }
}

- (void)_createAllDayViewWithSizeClass:(int64_t)class rightClickDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!self->_allDayView)
  {
    v12 = delegateCopy;
    v7 = [EKDayAllDayView alloc];
    [(EKDayView *)self bounds];
    v8 = [(EKDayAllDayView *)v7 initWithFrame:class sizeClass:?];
    allDayView = self->_allDayView;
    self->_allDayView = v8;

    [(EKDayAllDayView *)self->_allDayView setDelegate:self];
    [(EKDayAllDayView *)self->_allDayView setAllowsOccurrenceSelection:self->_allowsOccurrenceSelection];
    [(EKDayAllDayView *)self->_allDayView setOrientation:self->_orientation];
    [(EKDayAllDayView *)self->_allDayView setShowsBorderLines:1];
    [(EKDayView *)self addSubview:self->_allDayView];
    if (CalCanvasPocketEnabled())
    {
      [(EKDayView *)self addViewToScollerTopPocket:self->_allDayView];
    }

    delegateCopy = v12;
    if (v12)
    {
      v10 = self->_allDayView;
      v11 = [[EKUIRightClickEmptySpaceInteraction alloc] initWithDelegate:v12];
      [(EKDayAllDayView *)v10 addInteraction:v11];

      delegateCopy = v12;
    }
  }
}

- (void)addViewToScollerTopPocket:(id)pocket
{
  v4 = MEMORY[0x1E69DD6C8];
  pocketCopy = pocket;
  v6 = [[v4 alloc] initWithScrollView:self->_scroller edge:1 style:0];
  [pocketCopy addInteraction:v6];
}

- (void)_disposeAllDayView
{
  allDayView = self->_allDayView;
  if (allDayView)
  {
    [(EKDayAllDayView *)allDayView removeFromSuperview];
    v4 = self->_allDayView;
    self->_allDayView = 0;
  }
}

- (void)scrollEventsIntoViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(EKDayView *)self layoutIfNeeded];
  if ([(EKDayView *)self scrollEventsInToViewIgnoresVisibility]|| (dayContent = self->_dayContent, [(EKDayView *)self bounds], [(EKDayView *)self convertRect:self->_dayContent toView:?], ![(EKDayViewContent *)dayContent eventsIntersectRect:?]))
  {
    [(EKDayView *)self setScrollEventsInToViewIgnoresVisibility:0];
    [(EKDayViewContent *)self->_dayContent firstEventSecond];
    if (v6 == -1.0)
    {
      self->_scrollToOccurrencesOnNextReload = 1;
    }

    else
    {

      [(EKDayView *)self _scrollToSecond:v6 animated:animatedCopy whenFinished:0];
    }
  }
}

- (void)setScrollerYInset:(double)inset keepingYPointVisible:(double)visible
{
  [(UIScrollView *)self->_scroller frame];
  MaxY = CGRectGetMaxY(v13);
  if (inset + visible > MaxY)
  {
    [(UIScrollView *)self->_scroller contentInset];
    v9 = v8 - inset;
    scroller = self->_scroller;
    [(UIScrollView *)scroller contentOffset];
    [(UIScrollView *)scroller setContentOffset:1 animated:0.0, v11 - v9 - MaxY + visible];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__EKDayView_setScrollerYInset_keepingYPointVisible___block_invoke;
  v12[3] = &unk_1E843F690;
  v12[4] = self;
  *&v12[5] = inset;
  [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.3];
}

uint64_t __52__EKDayView_setScrollerYInset_keepingYPointVisible___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 520) contentInset];
  v2 = *(*(a1 + 32) + 520);

  return [v2 setContentInset:?];
}

- (void)reloadDataSynchronously
{
  v3 = MEMORY[0x1E69930C8];
  dayStart = self->_dayStart;
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v18 = [v3 calendarDateWithAbsoluteTime:timeZone timeZone:dayStart];

  v6 = MEMORY[0x1E69930C8];
  dayEnd = self->_dayEnd;
  timeZone2 = [(NSCalendar *)self->_calendar timeZone];
  v9 = [v6 calendarDateWithAbsoluteTime:timeZone2 timeZone:dayEnd];

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v11 = [WeakRetained dayView:self eventsForStartDate:v18 endDate:v9];

  allDayOccurrences = [v11 allDayOccurrences];
  v13 = [allDayOccurrences count];

  allDayView = self->_allDayView;
  if (v13)
  {
    allDayOccurrences2 = [v11 allDayOccurrences];
    [(EKDayAllDayView *)allDayView setOccurrences:allDayOccurrences2];
  }

  else
  {
    [(EKDayAllDayView *)self->_allDayView setOccurrences:0];
  }

  timedOccurrences = [v11 timedOccurrences];
  existingTimedOcurrences = self->_existingTimedOcurrences;
  self->_existingTimedOcurrences = timedOccurrences;

  [(EKDayViewContent *)self->_dayContent setOccurrences:self->_existingTimedOcurrences];
  [(EKDayView *)self setNeedsLayout];
  [(EKDayView *)self layoutIfNeeded];
  if (self->_scrollToOccurrencesOnNextReload)
  {
    [(EKDayView *)self scrollEventsIntoViewAnimated:1];
    self->_scrollToOccurrencesOnNextReload = 0;
  }
}

- (void)loadData:(BOOL)data withCompletion:(id)completion
{
  completionCopy = completion;
  reloadQueue = self->_reloadQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EKDayView_loadData_withCompletion___block_invoke;
  block[3] = &unk_1E8441300;
  dataCopy = data;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(reloadQueue, block);
}

void __37__EKDayView_loadData_withCompletion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v54 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    [*(*(a1 + 32) + 504) saveTemporaryViews];
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  [*(*(v1 + 32) + 504) prepareForReuseIsReload:v2 & 1];
  v3 = MEMORY[0x1E69930C8];
  v4 = *(v1 + 32);
  v5 = *(v4 + 416);
  v6 = [*(v4 + 688) timeZone];
  v7 = [v3 calendarDateWithAbsoluteTime:v6 timeZone:v5];

  v8 = MEMORY[0x1E69930C8];
  v9 = *(v1 + 32);
  v10 = *(v9 + 424);
  v11 = [*(v9 + 688) timeZone];
  v12 = [v8 calendarDateWithAbsoluteTime:v11 timeZone:v10];

  WeakRetained = objc_loadWeakRetained((*(v1 + 32) + 656));
  v14 = [WeakRetained dayView:*(v1 + 32) eventsForStartDate:v7 endDate:v12];

  v15 = [v14 timedOccurrences];
  v16 = *(v1 + 32);
  v17 = *(v16 + 472);
  *(v16 + 472) = v15;

  v18 = [*(v1 + 32) _viewContentShouldDrawSynchronously];
  if ((v18 & 1) == 0)
  {
    [*(*(v1 + 32) + 504) loadAndLayoutOccurrences:*(*(v1 + 32) + 472) reverse:0];
  }

  v19 = [v14 allDayOccurrences];
  v20 = [v19 count];
  if (v20)
  {
    v21 = v20;
    v37 = v18;
    v39 = v14;
    v40 = v12;
    v41 = v7;
    v42 = v1;
    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:v20];
    v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:v21];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v38 = v19;
    obj = v19;
    v24 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v50;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v50 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v49 + 1) + 8 * i);
          v29 = CUIKCalendar();
          v30 = [v28 startDate];
          v31 = [v28 endDate];
          v32 = [v29 isDate:v30 inSameDayAsDate:v31];

          if (v32)
          {
            v33 = v23;
          }

          else
          {
            v33 = v22;
          }

          [v33 addObject:v28];
        }

        v25 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v25);
    }

    v34 = [v22 arrayByAddingObjectsFromArray:v23];

    v7 = v41;
    v1 = v42;
    v14 = v39;
    v12 = v40;
    v19 = v38;
    v18 = v37;
  }

  else
  {
    v34 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EKDayView_loadData_withCompletion___block_invoke_2;
  block[3] = &unk_1E84412D8;
  v47 = v18;
  v35 = *(v1 + 40);
  block[4] = *(v1 + 32);
  v45 = v34;
  v48 = *(v1 + 48);
  v46 = v35;
  v36 = v34;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __37__EKDayView_loadData_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(*(a1 + 32) + 504) loadAndLayoutOccurrences:*(*(a1 + 32) + 472) reverse:0];
  }

  [*(*(a1 + 32) + 496) setOccurrences:*(a1 + 40)];
  [*(*(a1 + 32) + 504) movePreloadedItemsToVisible];
  v2 = *(a1 + 32);
  v3 = *(v2 + 504);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__EKDayView_loadData_withCompletion___block_invoke_3;
  v4[3] = &unk_1E84412B0;
  v4[4] = v2;
  v6 = *(a1 + 57);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 applyLoadedOccurrencesWithBatching:0 animated:0 reverse:0 completion:v4];
}

uint64_t __37__EKDayView_loadData_withCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 504) clearTemporaryViews];
  }

  v2 = *(a1 + 32);
  if (v2[444] == 1)
  {
    [v2 scrollEventsIntoViewAnimated:1];
    *(*(a1 + 32) + 444) = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EKDayView_loadData_withCompletion___block_invoke_4;
  block[3] = &unk_1E843EC60;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v3 = [*(a1 + 32) contentDidChangeCallback];

  if (v3)
  {
    v4 = [*(a1 + 32) contentDidChangeCallback];
    v5 = [*(*(a1 + 32) + 496) occurrenceViews];
    v4[2](v4, [v5 count]);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  if ((*(a1 + 49) & 1) == 0)
  {
    return [*(*(a1 + 32) + 504) setNeedsLayout];
  }

  return result;
}

void __37__EKDayView_loadData_withCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 648));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 648));
    [v4 dayViewDidCompleteAsyncLoadAndLayout:*(a1 + 32)];
  }
}

- (void)resetOccurrenceViewColors
{
  v23 = *MEMORY[0x1E69E9840];
  occurrenceViews = [(EKDayViewContent *)self->_dayContent occurrenceViews];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [occurrenceViews countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(occurrenceViews);
        }

        [*(*(&v17 + 1) + 8 * v7++) forceUpdateColors];
      }

      while (v5 != v7);
      v5 = [occurrenceViews countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  occurrenceViews2 = [(EKDayAllDayView *)self->_allDayView occurrenceViews];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [occurrenceViews2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(occurrenceViews2);
        }

        [*(*(&v13 + 1) + 8 * v12++) forceUpdateColors];
      }

      while (v10 != v12);
      v10 = [occurrenceViews2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)allDayView:(id)view didSelectEvent:(id)event userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  eventCopy = event;
  [(EKDayView *)self selectEvent:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 dayView:self didSelectEvent:eventCopy userInitiated:initiatedCopy];
  }
}

- (void)allDayViewDidLayoutSubviews:(id)subviews
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 dayView:self didCreateOccurrenceViews:0];
  }
}

- (BOOL)allDayViewShouldAnnotateAppEntities:(id)entities
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = MEMORY[0x1E69930C8];
  dayStart = self->_dayStart;
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v9 = [v6 calendarDateWithAbsoluteTime:timeZone timeZone:dayStart];

  v10 = objc_loadWeakRetained(&self->_delegate);
  v11 = [v10 dayViewShouldAnnotateAppEntities:self onDayStarting:v9];

  return v11;
}

- (void)dayViewContent:(id)content didCreateOccurrenceViews:(id)views
{
  viewsCopy = views;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 dayView:self didCreateOccurrenceViews:viewsCopy];
    }
  }
}

- (void)dayViewContent:(id)content didSelectEvent:(id)event userInitiated:(BOOL)initiated dateSelected:(id)selected
{
  initiatedCopy = initiated;
  eventCopy = event;
  if ([(EKDayView *)self _sizeClass]== 1)
  {
    [(EKDayView *)self selectEvent:eventCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 dayView:self didSelectEvent:eventCopy userInitiated:initiatedCopy];
    }
  }
}

- (void)dayViewContent:(id)content pointerDidTargetOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 dayView:self pointerDidTargetOccurrences:occurrencesCopy];
    }
  }
}

- (void)dayViewContent:(id)content didSelectEvents:(id)events userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  eventsCopy = events;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 dayView:self didSelectEvents:eventsCopy userInitiated:initiatedCopy];
    }
  }
}

- (void)dayViewContent:(id)content didTapInEmptySpaceOnDay:(double)day
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = MEMORY[0x1E69930C8];
    timeZone = [(NSCalendar *)self->_calendar timeZone];
    v11 = [v8 calendarDateWithAbsoluteTime:timeZone timeZone:day];

    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 dayViewDidTapEmptySpace:self onDate:v11];
  }
}

- (void)dayViewContentDidCompleteAsyncLoadAndLayout:(id)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 dayViewDidCompleteAsyncLoadAndLayout:self];
  }
}

- (void)_timeViewTapped:(id)tapped
{
  if ([tapped state] == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 dayViewDidTapEmptySpace:self onDate:0];
    }
  }
}

- (id)dayViewContent:(id)content selectedCopyViewForOccurrenceView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 dayView:self selectedCopyViewForOccurrence:viewCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)dayViewContentShouldAnnotateAppEntities:(id)entities onDayStarting:(id)starting
{
  startingCopy = starting;
  delegate = [(EKDayView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(EKDayView *)self delegate];
    v9 = [delegate2 dayViewShouldAnnotateAppEntities:self onDayStarting:startingCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_doubleTap:(id)tap
{
  tapCopy = tap;
  [tapCopy locationInView:self];
  v6 = v5;
  grid = [(EKDayViewContent *)self->_dayContent grid];
  [tapCopy locationInView:grid];
  v9 = v8;
  v11 = v10;

  +[EKDayTimeView defaultHourScale];
  v13 = v12;
  v14 = v12 / self->_hourScale;
  [(EKDayView *)self setHourScale:v12];
  grid2 = [(EKDayViewContent *)self->_dayContent grid];
  [(EKDayView *)self convertPoint:grid2 fromView:v9, v11 * v14];
  v17 = v16;

  v18 = v17 - v6;
  [(UIScrollView *)self->_scroller contentOffset];
  v20 = v19;
  v22 = v18 + v21;
  [EKDayTimeView defaultHeightForSizeClass:[(EKDayView *)self _sizeClass] orientation:self->_orientation withHourScale:self->_hourScale];
  v24 = v23;
  [(UIScrollView *)self->_scroller frame];
  v26 = 0.0;
  if (v22 >= 0.0)
  {
    v26 = v22;
  }

  if (v26 >= v24 - v25)
  {
    v26 = v24 - v25;
  }

  [(UIScrollView *)self->_scroller setContentOffset:0 animated:v20, v26];
  [(EKDayView *)self layoutIfNeeded];
  [(EKDayViewContent *)self->_dayContent layoutIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v29 = objc_loadWeakRetained(&self->_delegate);
    [v29 dayView:self didScaleDayViewWithScale:v13];
  }
}

- (double)minimumHourScale
{
  [(EKDayView *)self frame];
  v4 = v3;
  if ([(EKDayView *)self _sizeClass]== 2)
  {
    orientation = 1;
  }

  else
  {
    orientation = self->_orientation;
  }

  [EKDayTimeView defaultHeightForSizeClass:[(EKDayView *)self _sizeClass] orientation:orientation];
  return fmax(v4 / v6, 0.7);
}

- (void)setHourScale:(double)scale
{
  [(EKDayView *)self maximumHourScale];
  if (v5 <= scale)
  {
    scale = v5;
  }

  [(EKDayView *)self minimumHourScale];
  if (scale < v6)
  {
    scale = v6;
  }

  self->_hourScale = scale;
  [(EKDayTimeView *)self->_timeView setHourHeightScale:scale];
  grid = [(EKDayViewContent *)self->_dayContent grid];
  [grid setGridHeightScale:scale];

  [EKDayTimeView defaultHeightForSizeClass:[(EKDayView *)self _sizeClass] orientation:self->_orientation withHourScale:self->_hourScale];
  [(UIScrollView *)self->_scroller contentSize];
  [(UIScrollView *)self->_scroller setContentSize:?];
  [(EKDayView *)self setNeedsLayout];
  dayContent = self->_dayContent;

  [(EKDayViewContent *)dayContent setNeedsLayout];
}

- (void)_dayViewPinched:(id)pinched
{
  pinchedCopy = pinched;
  state = [pinchedCopy state];
  if ((state - 3) <= 2)
  {
    [(EKDayViewContent *)self->_dayContent setReduceLayoutProcessingForAnimation:0];
    [(EKDayViewContent *)self->_dayContent setNeedsLayout];
    [(EKDayView *)self reloadDataSynchronously];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 dayView:self didScaleDayViewWithScale:self->_hourScale];
    }
  }

  numberOfTouches = [pinchedCopy numberOfTouches];
  if ((numberOfTouches | 2) == 2)
  {
    v9 = numberOfTouches;
    x = self->_lastPinchPoint1.x;
    y = self->_lastPinchPoint1.y;
    if (numberOfTouches)
    {
      [pinchedCopy locationOfTouch:0 inView:self];
      self->_lastPinchPoint1.x = v12;
      self->_lastPinchPoint1.y = v13;
    }

    if (state == 2)
    {
      if (v9)
      {
        v15 = pinchDistanceForGestureRecognizer(pinchedCopy, self);
        v17 = self->_lastPinchDistance.y;
        v18 = v16 / v17;
        v19 = v15 - self->_lastPinchDistance.x;
        if (v19 < 0.0)
        {
          v19 = -v19;
        }

        v20 = v16 - v17;
        if (v20 < 0.0)
        {
          v20 = -v20;
        }

        if (v19 <= v20)
        {
          v21 = v18;
        }

        else
        {
          v21 = 1.0;
        }

        self->_lastPinchDistance.x = v15;
        self->_lastPinchDistance.y = v16;
      }

      else
      {
        [pinchedCopy scale];
        v21 = fabs(v23 / self->_lastPinchScale);
        self->_lastPinchScale = v23;
      }

      v24 = v21 * self->_hourScale;
      [(EKDayView *)self minimumHourScale];
      v26 = v21 <= 1.0 && v24 < v25;
      if (v26 || ([(EKDayView *)self maximumHourScale], v24 > v27))
      {
        [(EKDayView *)self minimumHourScale];
        if (1.0 - v21 > 0.01 && v24 < v28)
        {
          goto LABEL_50;
        }

        [(EKDayView *)self maximumHourScale];
        v31 = v21 + -1.0;
        v21 = 1.0;
        if (v31 > 0.01 && v24 > v30)
        {
          goto LABEL_50;
        }
      }

      else
      {
        self->_hourScale = v24;
      }

      grid = [(EKDayViewContent *)self->_dayContent grid];
      v34 = grid;
      if (v9)
      {
        [grid convertPoint:self fromView:{x, y}];
      }

      else
      {
        [pinchedCopy locationInView:grid];
      }

      v37 = v35;
      v38 = v36;

      [(EKDayTimeView *)self->_timeView setHourHeightScale:self->_hourScale];
      grid2 = [(EKDayViewContent *)self->_dayContent grid];
      [grid2 setGridHeightScale:self->_hourScale];

      [EKDayTimeView defaultHeightForSizeClass:[(EKDayView *)self _sizeClass] orientation:self->_orientation withHourScale:self->_hourScale];
      v41 = v40;
      [(UIScrollView *)self->_scroller contentSize];
      [(UIScrollView *)self->_scroller setContentSize:?];
      [(EKDayView *)self setNeedsLayout];
      [(EKDayViewContent *)self->_dayContent setNeedsLayout];
      [(UIScrollView *)self->_scroller contentOffset];
      v43 = v42;
      v45 = v44;
      v46 = v21 * v38;
      grid3 = [(EKDayViewContent *)self->_dayContent grid];
      if (v9)
      {
        [(EKDayView *)self convertPoint:grid3 fromView:v37, v46];
        v49 = v48;

        v50 = v49 - self->_lastPinchPoint1.y;
        [(UIScrollView *)self->_scroller contentOffset];
        v43 = v51;
        v53 = v50 + v52;
      }

      else
      {
        [pinchedCopy locationInView:grid3];
        v55 = v54;

        v53 = v45 + v46 - v55;
      }

      [(UIScrollView *)self->_scroller frame];
      v57 = 0.0;
      if (v53 >= 0.0)
      {
        v57 = v53;
      }

      if (v57 >= v41 - v56)
      {
        v57 = v41 - v56;
      }

      [(UIScrollView *)self->_scroller setContentOffset:0 animated:v43, v57];
      v58 = objc_loadWeakRetained(&self->_delegate);
      v59 = objc_opt_respondsToSelector();

      if (v59)
      {
        v60 = objc_loadWeakRetained(&self->_delegate);
        [v60 dayView:self isPinchingDayViewWithScale:self->_hourScale];
      }
    }

    else if (state == 1)
    {
      if (v9)
      {
        self->_lastPinchDistance.x = pinchDistanceForGestureRecognizer(pinchedCopy, self);
        self->_lastPinchDistance.y = v14;
      }

      else
      {
        [pinchedCopy scale];
        self->_lastPinchScale = v22;
      }

      [(EKDayViewContent *)self->_dayContent setReduceLayoutProcessingForAnimation:1];
    }
  }

LABEL_50:
}

- (id)occurrenceViewAtPoint:(CGPoint)point
{
  v3 = [(EKDayView *)self hitTest:0 withEvent:point.x, point.y];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    occurrenceView = v3;
LABEL_5:
    v5 = occurrenceView;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    occurrenceView = [v3 occurrenceView];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (double)dateAtPoint:(CGPoint)point isAllDay:(BOOL *)day requireAllDayRegionInsistence:(BOOL)insistence
{
  insistenceCopy = insistence;
  y = point.y;
  [(UIScrollView *)self->_scroller contentOffset];
  v10 = y + v9;
  [(UIScrollView *)self->_scroller frame];
  v12 = v10 - v11;
  [(EKDayAllDayView *)self->_allDayView frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v25 = 0;
  if ([(EKDayView *)self _showingAllDaySection])
  {
    v21 = insistenceCopy ? v20 + -6.0 : v20;
    v22 = v14;
    v23 = v16;
    v24 = v18;
    if (y < CGRectGetMaxY(*(&v21 - 3)))
    {
      v25 = 1;
    }
  }

  [(EKDayView *)self _adjustSecondForwardForDSTHole:[(EKDayView *)self _secondAtPosition:fmax(v12, 0.0)]];
  dayStart = self->_dayStart;
  if (day)
  {
    *day = v25;
  }

  return dayStart + v26;
}

- (double)_adjustSecondForwardForDSTHole:(double)result
{
  nextDSTTransition = self->_nextDSTTransition;
  dayStart = self->_dayStart;
  if (nextDSTTransition >= dayStart)
  {
    dayEnd = self->_dayEnd;
    if (nextDSTTransition < dayEnd)
    {
      v6 = dayStart - dayEnd + 86399.0;
      v7 = dayStart + result;
      v8 = nextDSTTransition + v6;
      if (dayStart + result >= nextDSTTransition && v7 < v8)
      {
        return nextDSTTransition - dayStart + v6;
      }

      else if (v7 >= v8)
      {
        return result - v6;
      }
    }
  }

  return result;
}

- (double)_adjustSecondBackwardForDSTHole:(double)result
{
  nextDSTTransition = self->_nextDSTTransition;
  dayStart = self->_dayStart;
  if (nextDSTTransition >= dayStart)
  {
    dayEnd = self->_dayEnd;
    if (dayStart + result >= nextDSTTransition && nextDSTTransition < dayEnd)
    {
      return dayStart - dayEnd + 86399.0 + result;
    }
  }

  return result;
}

- (CGPoint)pointAtDate:(double)date isAllDay:(BOOL)day
{
  dayCopy = day;
  v7 = 0.0;
  if (CalInterfaceIsLeftToRight())
  {
    [(EKDayView *)self leftContentInset];
    v7 = v8;
  }

  [(EKDayView *)self _adjustSecondBackwardForDSTHole:date - self->_dayStart];
  if (dayCopy)
  {
    allDayView = self->_allDayView;
    if (allDayView)
    {
      [(EKDayAllDayView *)allDayView firstEventYOffset];
      v12 = v11;
    }

    else
    {
      v12 = 0.0;
    }
  }

  else
  {
    v13 = v9;
    [(UIScrollView *)self->_scroller frame];
    v15 = v14;
    [(UIScrollView *)self->_scroller contentOffset];
    v17 = v15 - v16;
    [(EKDayView *)self _positionOfSecond:v13];
    v12 = v18 + v17;
  }

  v19 = v7;
  result.y = v12;
  result.x = v19;
  return result;
}

- (double)_scrollZoneTop
{
  _sizeClass = [(EKDayView *)self _sizeClass];
  result = 40.0;
  if (_sizeClass != 2)
  {
    return 30.0;
  }

  return result;
}

- (BOOL)scrollTowardPoint:(CGPoint)point
{
  y = point.y;
  [(UIScrollView *)self->_scroller frame];
  MinY = CGRectGetMinY(v38);
  [(UIScrollView *)self->_scroller contentInset];
  v7 = MinY + v6;
  [(EKDayView *)self _scrollZoneTop];
  v9 = v8 + v7;
  [(UIScrollView *)self->_scroller frame];
  MaxY = CGRectGetMaxY(v39);
  [(UIScrollView *)self->_scroller contentInset];
  if (y >= v9)
  {
    v13 = MaxY - v11 + -40.0;
    if (y <= v13)
    {
      return 0;
    }

    v12 = y - v13;
  }

  else
  {
    v12 = v9 - y;
  }

  [(EKDayView *)self _scrollRate];
  v15 = v12 * v14;
  [(UIScrollView *)self->_scroller contentOffset];
  v17 = v16;
  v19 = v18;
  scroller = self->_scroller;
  if (y >= v9)
  {
    [(UIScrollView *)scroller bounds];
    v26 = v19 + v25;
    [(UIScrollView *)self->_scroller contentInset];
    v28 = v26 - v27;
    [(UIScrollView *)self->_scroller contentSize];
    if (v28 < v29)
    {
      [(UIScrollView *)self->_scroller contentSize];
      v32 = v31;
      [(UIScrollView *)self->_scroller contentInset];
      v34 = v32 + v33;
      [(UIScrollView *)self->_scroller bounds];
      v36 = v34 - v35;
      v30 = v15 + v19;
      v24 = fminf(v30, v36);
      goto LABEL_10;
    }
  }

  else
  {
    [(UIScrollView *)scroller contentInset];
    if (v19 + v21 > 0.0)
    {
      [(UIScrollView *)self->_scroller contentInset];
      *&v23 = v23;
      v22 = v19 - v15;
      v24 = fmaxf(v22, -*&v23);
LABEL_10:
      [(UIScrollView *)self->_scroller setContentOffset:v17, v24];
      return 1;
    }
  }

  return 0;
}

- (double)timedRegionYOrigin
{
  [(UIScrollView *)self->_scroller frame];
  v4 = v3;
  [(UIScrollView *)self->_scroller contentInset];
  return v4 + v5;
}

- (void)highlightHour:(double)hour
{
  [(EKDayView *)self _adjustSecondBackwardForDSTHole:hour * 3600.0];
  v5 = v4 / 3600.0;
  timeView = self->_timeView;

  [(EKDayTimeView *)timeView setHighlightedHour:v5];
}

- (void)addViewToScroller:(id)scroller isAllDay:(BOOL)day
{
  dayCopy = day;
  scrollerCopy = scroller;
  v18 = scrollerCopy;
  if (dayCopy)
  {
    [(EKDayAllDayView *)self->_allDayView addViewToScroller:scrollerCopy];
  }

  else
  {
    superview = [scrollerCopy superview];
    scroller = self->_scroller;

    if (superview != scroller)
    {
      superview2 = [v18 superview];
      [v18 frame];
      [superview2 convertRect:self->_scroller toView:?];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [(UIScrollView *)self->_scroller insertSubview:v18 aboveSubview:self->_dayContent];
      [v18 setFrame:{v11, v13, v15, v17}];
    }
  }
}

- (EKDayViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end