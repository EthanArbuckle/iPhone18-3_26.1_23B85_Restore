@interface WeekAllDayView
+ (UIEdgeInsets)occurrencePaddingForSizeClass:(int64_t)class;
+ (double)_compactRoundedRectHeightForSizeClass:(int64_t)class;
+ (double)_fontSizeForSizeClass:(int64_t)class;
+ (double)_heightForWeekdayLabelsForSizeClass:(int64_t)class;
+ (double)_overlayFontSize;
+ (double)_yOffsetForWeekdayLabelsWithSizeClass:(int64_t)class;
+ (double)baselineForWeekdayLabelsWithSizeClass:(int64_t)class;
+ (double)dayLabelHeightWithSizeClass:(int64_t)class usesMultiDay:(BOOL)day;
+ (double)occurrenceInsetIntoScrollerWithSizeClassRegular:(BOOL)regular;
+ (id)_dayLabelFontForSizeClass:(int64_t)class;
+ (id)_todayDayLabelFontForSizeClass:(int64_t)class;
- (BOOL)_shouldAnnotateAppEntitiesForDay:(id)day;
- (BOOL)dateIsWeekend:(id)weekend;
- (BOOL)hasOccurrences;
- (BOOL)scrollerIsParentOfView:(id)view;
- (CGPoint)contentOffset;
- (CGRect)_frameForOccurrenceBlock:(id)block index:(unint64_t)index yPos:(double)pos padding:(double)padding;
- (CGRect)_numberFrameForDayIndex:(int64_t)index;
- (CGRect)_weekdayFrameForDayIndex:(int64_t)index;
- (CGSize)_circleSize;
- (CGSize)scrollerContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (Class)weekViewClass;
- (NSArray)occurrenceViews;
- (UIEdgeInsets)_occurrencePadding;
- (WeekAllDayView)initWithFrame:(CGRect)frame orientation:(int64_t)orientation numberOfDaysToDisplay:(unint64_t)display opaque:(BOOL)opaque backgroundColor:(id)color rightClickDelegate:(id)delegate;
- (WeekAllDayViewDelegate)delegate;
- (double)_dateForPoint:(CGPoint)point;
- (double)_dayWidth;
- (double)baselineForWeekdayNumbers;
- (double)firstEventYOffset;
- (double)heightForNumberOfOccurrences:(unint64_t)occurrences;
- (double)heightWithNoAllDayOccurrences;
- (double)multiDayAllDayHeightWithUserVisibleEarliestDate:(id)date latestDate:(id)latestDate;
- (double)naturalHeight;
- (double)nextAvailableOccurrenceViewYOriginForDay:(id)day;
- (double)occurrenceHeight;
- (double)occurrenceInsetIntoScroller;
- (double)scrollerContentHeightWithUserVisibleEarliestDate:(id)date latestDate:(id)latestDate withoutScroller:(BOOL)scroller;
- (id)_allDayOccurrenceBlocksForEvents:(id)events rangeStart:(id)start rangeEnd:(id)end;
- (id)_calendarOrderSortDescriptor;
- (id)_dayLabelColorAtDayIndex:(int64_t)index isWeekend:(BOOL)weekend;
- (id)_dayOccurrenceViewForEvent:(id)event block:(id)block;
- (id)_extractEventsEndingAfterTimeframeFrom:(id)from;
- (id)_extractEventsStartingBeforeTimeframeFrom:(id)from;
- (id)_getSortedBlocksFromOccurrenceBlocks:(id)blocks;
- (id)_numberOfDaysSortDescriptor;
- (id)_rangeEnd;
- (id)_rangeStart;
- (id)_sortBlocks:(id)blocks intoRowsUsingDataFrom:(id)from;
- (id)occurrenceViewForEvent:(id)event;
- (id)occurrenceViewForEvent:(id)event occurrenceDate:(id)date;
- (id)occurrenceViewForOccurrence:(id)occurrence;
- (id)presentationControllerForEditMenu;
- (id)selectedEventsForEditMenu;
- (int64_t)_dayIndexForToday;
- (int64_t)_specialDayTypeForOccurrence:(id)occurrence;
- (int64_t)dayIndexForCalendarDate:(id)date;
- (int64_t)daysToDisplay;
- (int64_t)rowIndexOfOccurrence:(id)occurrence;
- (unint64_t)_calendarOrderForCalendar:(id)calendar;
- (unint64_t)maxOccurrencesWithoutScroller;
- (void)_buildDayNumberViews;
- (void)_buildVerticalDaySeparators;
- (void)_computeDayStartsAndEndDate;
- (void)_contentSizeCategoryChanged:(id)changed;
- (void)_fadeInOccurrenceView:(id)view animated:(BOOL)animated;
- (void)_layoutDayNumberCells;
- (void)_layoutVerticalDaySeparators;
- (void)_localeChanged:(id)changed;
- (void)_tapReceived:(id)received;
- (void)_updateCell:(id)cell withBadgeDataIndex:(unint64_t)index;
- (void)_updateDayBadges;
- (void)_updateHeaderViewsIfNeeded;
- (void)_updateShouldAnnotateByDay;
- (void)addViewToScroller:(id)scroller;
- (void)attemptDisplayReviewPrompt;
- (void)clearTemporaryViews;
- (void)dayOccurrenceViewSelected:(id)selected source:(unint64_t)source;
- (void)dealloc;
- (void)emptySpaceClickForCalendarWeekDayEventContent:(id)content atPoint:(CGPoint)point;
- (void)iterateThroughEachAllDayRow:(id)row;
- (void)iterateThroughEachOccurrence:(id)occurrence;
- (void)layedOutRowsRemoveAllObjects;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)rectBecameVisible:(CGRect)visible;
- (void)saveTemporaryViews;
- (void)scrollToEvent:(id)event animating:(BOOL)animating;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)selectEvent:(id)event;
- (void)setAllowsOccurrenceSelection:(BOOL)selection;
- (void)setCalendar:(id)calendar;
- (void)setDimmedOccurrence:(id)occurrence;
- (void)setFixedDayWidth:(double)width;
- (void)setOccurrences:(id)occurrences animated:(BOOL)animated;
- (void)setOrientation:(int64_t)orientation;
- (void)setReceiveTapsInHeader:(BOOL)header;
- (void)setStartDate:(id)date;
- (void)setTimeZone:(id)zone;
- (void)setUseMultiDayHeaderStyle:(BOOL)style;
- (void)setUsesSmallText:(BOOL)text;
- (void)setViewsDimmed:(BOOL)dimmed forEvent:(id)event;
- (void)shouldAnnotateAppEntitiesChanged;
- (void)showOverlayMonthInCellAtOffset:(double)offset animated:(BOOL)animated;
- (void)updateSeparatorVisibility;
- (void)updateTotalRowCountWithContainerRect:(CGRect)rect;
@end

@implementation WeekAllDayView

- (int64_t)daysToDisplay
{
  weekViewClass = [(WeekAllDayView *)self weekViewClass];

  return [(objc_class *)weekViewClass numMultiDays];
}

- (Class)weekViewClass
{
  [(WeekAllDayView *)self useMultiDayHeaderStyle];
  v2 = objc_opt_class();

  return v2;
}

- (WeekAllDayView)initWithFrame:(CGRect)frame orientation:(int64_t)orientation numberOfDaysToDisplay:(unint64_t)display opaque:(BOOL)opaque backgroundColor:(id)color rightClickDelegate:(id)delegate
{
  opaqueCopy = opaque;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  delegateCopy = delegate;
  v50.receiver = self;
  v50.super_class = WeekAllDayView;
  height = [(WeekAllDayView *)&v50 initWithFrame:x, y, width, height];
  v20 = height;
  if (height)
  {
    [(WeekAllDayView *)height setAutoresizingMask:2];
    [(WeekAllDayView *)v20 setBackgroundColor:colorCopy];
    [(WeekAllDayView *)v20 setOpaque:opaqueCopy];
    v21 = CUIKCalendar();
    calendar = v20->_calendar;
    v20->_calendar = v21;

    v20->_orientation = orientation;
    v23 = objc_alloc_init(NSMutableArray);
    layedOutRows = v20->_layedOutRows;
    v20->_layedOutRows = v23;

    v25 = objc_alloc_init(NSMutableArray);
    layedOutRowsForEachDay = v20->_layedOutRowsForEachDay;
    v20->_layedOutRowsForEachDay = v25;

    v20->_daysToDisplay = display;
    v20->_allowsOccurrenceSelection = 1;
    v27 = [UIScrollView alloc];
    [(WeekViewAllDayContents *)v20->_contentView bounds];
    v28 = [v27 initWithFrame:?];
    scroller = v20->_scroller;
    v20->_scroller = v28;

    [(UIScrollView *)v20->_scroller setAutoresizingMask:2];
    [(UIScrollView *)v20->_scroller setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v20->_scroller setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v20->_scroller setBounces:1];
    [(UIScrollView *)v20->_scroller setScrollsToTop:0];
    [(UIScrollView *)v20->_scroller setDelegate:v20];
    if ((CalCanvasPocketEnabled() & 1) == 0)
    {
      v30 = CUIKAllDayBackgroundColor();
      [(UIScrollView *)v20->_scroller setBackgroundColor:v30];
    }

    [(UIScrollView *)v20->_scroller _setAutoScrollEnabled:0];
    [(WeekAllDayView *)v20 addSubview:v20->_scroller];
    v31 = [WeekViewAllDayContents alloc];
    [(WeekAllDayView *)v20 bounds];
    v32 = [(WeekViewAllDayContents *)v31 initWithFrame:?];
    contentView = v20->_contentView;
    v20->_contentView = v32;

    [(WeekViewAllDayContents *)v20->_contentView setAutoresizingMask:2];
    [(WeekViewAllDayContents *)v20->_contentView setDelegate:v20];
    if ((CalCanvasPocketEnabled() & 1) == 0)
    {
      v34 = CUIKAllDayBackgroundColor();
      [(WeekViewAllDayContents *)v20->_contentView setBackgroundColor:v34];
    }

    v35 = v20->_contentView;
    v36 = [[EKUIRightClickEmptySpaceInteraction alloc] initWithDelegate:delegateCopy];
    [(WeekViewAllDayContents *)v35 addInteraction:v36];

    [(UIScrollView *)v20->_scroller addSubview:v20->_contentView];
    v37 = objc_alloc_init(UIView);
    topSeparator = v20->_topSeparator;
    v20->_topSeparator = v37;

    v39 = +[UIColor separatorColor];
    [(UIView *)v20->_topSeparator setBackgroundColor:v39];

    [(UIView *)v20->_topSeparator setHidden:1];
    [(WeekAllDayView *)v20 addSubview:v20->_topSeparator];
    v40 = objc_alloc_init(UIView);
    bottomSeparator = v20->_bottomSeparator;
    v20->_bottomSeparator = v40;

    v42 = +[UIColor separatorColor];
    [(UIView *)v20->_bottomSeparator setBackgroundColor:v42];

    [(UIView *)v20->_bottomSeparator setHidden:1];
    [(WeekAllDayView *)v20 addSubview:v20->_bottomSeparator];
    if (CalSystemSolariumEnabled() && (CalCanvasPocketEnabled() & 1) == 0)
    {
      v43 = [UIVisualEffectView alloc];
      v44 = CalNavBarBlurEffect();
      v45 = [v43 initWithEffect:v44];

      [(WeekAllDayView *)v20 bounds];
      [v45 setFrame:?];
      [v45 setAutoresizingMask:18];
      [(WeekAllDayView *)v20 addSubview:v45];
      [(WeekAllDayView *)v20 sendSubviewToBack:v45];
    }

    v46 = objc_opt_new();
    temporaryViewCacheByDay = v20->_temporaryViewCacheByDay;
    v20->_temporaryViewCacheByDay = v46;

    v48 = +[NSNotificationCenter defaultCenter];
    [v48 addObserver:v20 selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];
    [v48 addObserver:v20 selector:"_significantTimeChanged:" name:CUIKCalendarModelSignificantTimeChangeNotification object:0];
    [v48 addObserver:v20 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v20;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CUIKLocaleChangedNotification object:0];
  [v3 removeObserver:self name:CUIKCalendarModelSignificantTimeChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = WeekAllDayView;
  [(WeekAllDayView *)&v4 dealloc];
}

- (void)_localeChanged:(id)changed
{
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy())
  {
    +[LargeDayNavigationViewCell localeChanged];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_dayNumberViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) updateOverlay];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(WeekAllDayView *)self _setNeedsHeaderUpdate];
}

- (void)_contentSizeCategoryChanged:(id)changed
{
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();
  v5 = off_10020D4E0;
  if (!IsRegularInViewHierarchy)
  {
    v5 = off_10020D548;
  }

  [(__objc2_class *)*v5 contentSizeCategoryChanged];

  [(WeekAllDayView *)self _setNeedsHeaderUpdate];
}

- (void)iterateThroughEachAllDayRow:(id)row
{
  rowCopy = row;
  if ([(WeekAllDayView *)self splitMultiDayEvents])
  {
    v35 = 0uLL;
    v36 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v5 = self->_layedOutRowsForEachDay;
    v23 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v23)
    {
      v6 = 0;
      v7 = *v34;
      v22 = *v34;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v34 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v33 + 1) + 8 * i);
          v32 = 0;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = 0;
            v14 = *v29;
            while (2)
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v29 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                rowCopy[2](rowCopy, v6, *(*(&v28 + 1) + 8 * j), v13, &v32);
                if (v32)
                {

                  goto LABEL_28;
                }

                ++v13;
              }

              v12 = [v10 countByEnumeratingWithState:&v28 objects:v38 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          ++v6;
          v7 = v22;
        }

        v23 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v5 = self->_layedOutRows;
    v16 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v25;
LABEL_20:
      v20 = 0;
      while (1)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v5);
        }

        v21 = *(*(&v24 + 1) + 8 * v20);
        v32 = 0;
        rowCopy[2](rowCopy, -1, v21, v18, &v32);
        if (v32)
        {
          break;
        }

        ++v18;
        if (v17 == ++v20)
        {
          v17 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v37 count:16];
          if (v17)
          {
            goto LABEL_20;
          }

          break;
        }
      }
    }
  }

LABEL_28:
}

- (void)iterateThroughEachOccurrence:(id)occurrence
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100028B40;
  v5[3] = &unk_10020EF70;
  occurrenceCopy = occurrence;
  v4 = occurrenceCopy;
  [(WeekAllDayView *)self iterateThroughEachAllDayRow:v5];
}

- (void)setUseMultiDayHeaderStyle:(BOOL)style
{
  if (self->_useMultiDayHeaderStyle != style)
  {
    self->_useMultiDayHeaderStyle = style;
    [(WeekAllDayView *)self updateSeparatorVisibility];
  }
}

- (void)updateSeparatorVisibility
{
  if (self->_useMultiDayHeaderStyle)
  {
    topSeparator = self->_topSeparator;
    v4 = 1;
LABEL_5:
    [(UIView *)topSeparator setHidden:v4];
    v6 = 0;
    goto LABEL_7;
  }

  showSeparatorLines = self->_showSeparatorLines;
  topSeparator = self->_topSeparator;
  if (showSeparatorLines)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v6 = 1;
  [(UIView *)topSeparator setHidden:1];
LABEL_7:
  bottomSeparator = self->_bottomSeparator;

  [(UIView *)bottomSeparator setHidden:v6];
}

- (void)setUsesSmallText:(BOOL)text
{
  if (self->_usesSmallText != text)
  {
    v7 = v3;
    v8 = v4;
    self->_usesSmallText = text;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100028DB8;
    v5[3] = &unk_10020EF90;
    textCopy = text;
    [(WeekAllDayView *)self iterateThroughEachOccurrence:v5];
  }
}

- (void)layedOutRowsRemoveAllObjects
{
  if ([(WeekAllDayView *)self splitMultiDayEvents])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_layedOutRowsForEachDay;
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

          [*(*(&v9 + 1) + 8 * v7) removeAllObjects];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  else
  {
    layedOutRows = self->_layedOutRows;

    [(NSMutableArray *)layedOutRows removeAllObjects];
  }
}

- (void)showOverlayMonthInCellAtOffset:(double)offset animated:(BOOL)animated
{
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy())
  {
    dayNumberViews = self->_dayNumberViews;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100028FFC;
    v8[3] = &unk_10020EFB8;
    v8[4] = self;
    *&v8[5] = offset;
    animatedCopy = animated;
    [(NSArray *)dayNumberViews enumerateObjectsUsingBlock:v8];
  }
}

- (CGPoint)contentOffset
{
  [(UIScrollView *)self->_scroller contentOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(WeekAllDayView *)self setNeedsLayout];
  }
}

- (double)occurrenceHeight
{
  v3 = EKUIWidthSizeClassForViewHierarchy();
  v4 = [(objc_class *)[(WeekAllDayView *)self weekViewClass] usesSmallTextForIsCompact:v3 == 1];
  v5 = +[EKUISemiConstantCache sharedInstance];
  v6 = v5;
  if (v4)
  {
    [v5 weekAllDayOccurrenceHeightSmallText];
    v8 = v7;

    if (v8 < 0.0)
    {
      [EKDayOccurrenceView heightForAllDayOccurrenceForSizeClass:v3 usesSmallText:1];
      CalRoundToScreenScale();
      v10 = v9;
      v11 = +[EKUISemiConstantCache sharedInstance];
      [v11 setWeekAllDayOccurrenceHeightSmallText:v10];
    }

    v12 = +[EKUISemiConstantCache sharedInstance];
    [v12 weekAllDayOccurrenceHeightSmallText];
  }

  else
  {
    [v5 weekAllDayOccurrenceHeight];
    v15 = v14;

    if (v15 < 0.0)
    {
      [EKDayOccurrenceView heightForAllDayOccurrenceForSizeClass:v3 usesSmallText:0];
      CalRoundToScreenScale();
      v17 = v16;
      v18 = +[EKUISemiConstantCache sharedInstance];
      [v18 setWeekAllDayOccurrenceHeight:v17];
    }

    v12 = +[EKUISemiConstantCache sharedInstance];
    [v12 weekAllDayOccurrenceHeight];
  }

  v19 = v13;

  return v19;
}

- (void)_computeDayStartsAndEndDate
{
  if (self->_startDate && self->_calendar)
  {
    obj = [[NSMutableArray alloc] initWithCapacity:self->_daysToDisplay];
    timeZone = [(NSCalendar *)self->_calendar timeZone];
    v4 = [EKCalendarDate calendarDateWithDateComponents:self->_startDate timeZone:timeZone];
    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    if (IsLeftToRight)
    {
      v6 = 1;
    }

    else
    {
      v7 = [v4 calendarDateByAddingDays:self->_daysToDisplay - 1];

      v6 = -1;
      v4 = v7;
    }

    v8 = obj;
    if (self->_daysToDisplay)
    {
      v9 = 0;
      do
      {
        [v8 addObject:v4];
        v10 = [v4 calendarDateByAddingDays:v6];

        v8 = obj;
        ++v9;
        v4 = v10;
      }

      while (v9 < self->_daysToDisplay);
    }

    else
    {
      v10 = v4;
    }

    objc_storeStrong(&self->_dayStarts, v8);
    if (IsLeftToRight)
    {
      [obj lastObject];
    }

    else
    {
      [obj firstObject];
    }
    v11 = ;
    allComponents = [v11 allComponents];
    endDate = self->_endDate;
    self->_endDate = allComponents;

    [(WeekAllDayView *)self _buildDayNumberViews];
    [(WeekAllDayView *)self _updateShouldAnnotateByDay];
  }
}

- (BOOL)_shouldAnnotateAppEntitiesForDay:(id)day
{
  dayCopy = day;
  shouldAnnotateByDay = self->_shouldAnnotateByDay;
  if (!shouldAnnotateByDay)
  {
    [(WeekAllDayView *)self _updateShouldAnnotateByDay];
    shouldAnnotateByDay = self->_shouldAnnotateByDay;
  }

  v6 = [(NSMutableDictionary *)shouldAnnotateByDay objectForKeyedSubscript:dayCopy];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)_updateShouldAnnotateByDay
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    shouldAnnotateByDay = self->_shouldAnnotateByDay;
    if (shouldAnnotateByDay)
    {
      [(NSMutableDictionary *)shouldAnnotateByDay removeAllObjects];
    }

    else
    {
      v6 = [NSMutableDictionary dictionaryWithCapacity:self->_daysToDisplay];
      v7 = self->_shouldAnnotateByDay;
      self->_shouldAnnotateByDay = v6;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = self->_dayStarts;
    v8 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = objc_loadWeakRetained(&self->_delegate);
          v14 = [v13 weekAllDayViewShouldAnnotateAppEntities:self onDayStarting:v12];

          v15 = [NSNumber numberWithBool:v14];
          v16 = self->_shouldAnnotateByDay;
          date = [v12 date];
          [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:date];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }
}

- (void)shouldAnnotateAppEntitiesChanged
{
  [(WeekAllDayView *)self _updateShouldAnnotateByDay];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000296AC;
  v3[3] = &unk_10020EFE0;
  v3[4] = self;
  [(WeekAllDayView *)self iterateThroughEachOccurrence:v3];
}

- (void)setStartDate:(id)date
{
  dateCopy = date;
  if (([dateCopy isEqual:self->_startDate] & 1) == 0)
  {
    dateComponentsForDateOnly = [dateCopy dateComponentsForDateOnly];
    startDate = self->_startDate;
    self->_startDate = dateComponentsForDateOnly;

    [(WeekAllDayView *)self _computeDayStartsAndEndDate];
    [(WeekAllDayView *)self _setNeedsHeaderUpdate];
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

    [(WeekAllDayView *)self _computeDayStartsAndEndDate];
    [(WeekAllDayView *)self _setNeedsHeaderUpdate];
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
    [(WeekAllDayView *)self _computeDayStartsAndEndDate];
    [(WeekAllDayView *)self _setNeedsHeaderUpdate];
  }
}

- (void)setFixedDayWidth:(double)width
{
  if (self->_fixedDayWidth != width)
  {
    self->_fixedDayWidth = width;
    [(WeekAllDayView *)self setNeedsLayout];
  }
}

- (void)rectBecameVisible:(CGRect)visible
{
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  [(UIScrollView *)self->_scroller contentSize:visible.origin.x];
  v8 = v7;
  [(WeekAllDayView *)self updateTotalRowCountWithContainerRect:x, y, width, v7];
  self->_latestVisibleRect.origin.x = x;
  self->_latestVisibleRect.origin.y = y;
  self->_latestVisibleRect.size.width = width;
  self->_latestVisibleRect.size.height = v8;
}

- (id)occurrenceViewForOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  v5 = occurrenceCopy;
  if (occurrenceCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_100029B38;
    v15 = sub_100029B48;
    v16 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100029B50;
    v8[3] = &unk_10020F008;
    v9 = occurrenceCopy;
    v10 = &v11;
    [(WeekAllDayView *)self iterateThroughEachOccurrence:v8];
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)scrollToEvent:(id)event animating:(BOOL)animating
{
  animatingCopy = animating;
  eventCopy = event;
  if (self->_scroller)
  {
    v10 = eventCopy;
    if (animatingCopy && !self->_scrollingToOccurrence)
    {
      objc_storeStrong(&self->_scrollingToOccurrence, event);
    }

    v8 = [(WeekAllDayView *)self occurrenceViewForOccurrence:v10];
    scroller = self->_scroller;
    [v8 frame];
    [(UIScrollView *)scroller scrollRectToVisible:animatingCopy animated:?];
  }

  _objc_release_x2();
}

- (void)setAllowsOccurrenceSelection:(BOOL)selection
{
  if (self->_allowsOccurrenceSelection != selection)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_allowsOccurrenceSelection = selection;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100029D44;
    v5[3] = &unk_10020EFE0;
    v5[4] = self;
    [(WeekAllDayView *)self iterateThroughEachOccurrence:v5];
  }
}

- (void)setViewsDimmed:(BOOL)dimmed forEvent:(id)event
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029E40;
  v7[3] = &unk_10020F030;
  eventCopy = event;
  dimmedCopy = dimmed;
  v6 = eventCopy;
  [(WeekAllDayView *)self iterateThroughEachOccurrence:v7];
}

- (BOOL)hasOccurrences
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029FA8;
  v4[3] = &unk_10020F058;
  v4[4] = &v5;
  [(WeekAllDayView *)self iterateThroughEachOccurrence:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)selectEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy && self->_selectedEvent != eventCopy)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002A148;
    v7[3] = &unk_10020F008;
    v8 = eventCopy;
    v9 = &v10;
    [(WeekAllDayView *)self iterateThroughEachOccurrence:v7];
    if ((v11[3] & 1) == 0)
    {
      v6 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v15 = "[WeekAllDayView selectEvent:]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s: Asked to select an event we can't find!", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v10, 8);
  }
}

- (void)setDimmedOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  if (([occurrenceCopy isEqual:self->_dimmedOccurrence] & 1) == 0)
  {
    if (self->_dimmedOccurrence)
    {
      [(WeekAllDayView *)self setViewsDimmed:0 forEvent:?];
    }

    objc_storeStrong(&self->_dimmedOccurrence, occurrence);
    if (self->_dimmedOccurrence)
    {
      [(WeekAllDayView *)self setViewsDimmed:1 forEvent:?];
    }
  }
}

- (NSArray)occurrenceViews
{
  +[NSMutableArray array];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002A30C;
  v3 = v5[3] = &unk_10020EFE0;
  v6 = v3;
  [(WeekAllDayView *)self iterateThroughEachOccurrence:v5];

  return v3;
}

- (id)occurrenceViewForEvent:(id)event
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100029B38;
  v14 = sub_100029B48;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A48C;
  v7[3] = &unk_10020F008;
  eventCopy = event;
  v8 = eventCopy;
  v9 = &v10;
  [(WeekAllDayView *)self iterateThroughEachOccurrence:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (int64_t)dayIndexForCalendarDate:(id)date
{
  dateCopy = date;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_dayStarts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    v10 = -1;
    do
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v14 + 1) + 8 * v11) isEqual:{dateCopy, v14}])
        {
          v10 = v12;
        }

        ++v12;
        v11 = v11 + 1;
      }

      while (v7 != v11);
      v8 += v7;
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (id)occurrenceViewForEvent:(id)event occurrenceDate:(id)date
{
  eventCopy = event;
  dateCopy = date;
  useMultiDayHeaderStyle = [(WeekAllDayView *)self useMultiDayHeaderStyle];
  if (dateCopy && (useMultiDayHeaderStyle & 1) != 0)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100029B38;
    v19 = sub_100029B48;
    v20 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002A9C4;
    v11[3] = &unk_10020F080;
    v14 = [(WeekAllDayView *)self dayIndexForCalendarDate:dateCopy];
    v12 = eventCopy;
    v13 = &v15;
    [(WeekAllDayView *)self iterateThroughEachAllDayRow:v11];
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = [(WeekAllDayView *)self occurrenceViewForEvent:eventCopy];
  }

  return v9;
}

- (id)_getSortedBlocksFromOccurrenceBlocks:(id)blocks
{
  blocksCopy = blocks;
  v5 = [NSArray alloc];
  _calendarOrderSortDescriptor = [(WeekAllDayView *)self _calendarOrderSortDescriptor];
  _numberOfDaysSortDescriptor = [(WeekAllDayView *)self _numberOfDaysSortDescriptor];
  v8 = [v5 initWithObjects:{_calendarOrderSortDescriptor, _numberOfDaysSortDescriptor, 0}];

  v9 = [blocksCopy sortedArrayUsingDescriptors:v8];

  return v9;
}

- (void)addViewToScroller:(id)scroller
{
  scrollerCopy = scroller;
  if (self->_scroller)
  {
    v16 = scrollerCopy;
    superview = [scrollerCopy superview];
    scroller = self->_scroller;

    scrollerCopy = v16;
    if (superview != scroller)
    {
      superview2 = [v16 superview];
      [v16 frame];
      [superview2 convertRect:self->_scroller toView:?];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [(UIScrollView *)self->_scroller addSubview:v16];
      [v16 setFrame:{v9, v11, v13, v15}];
      scrollerCopy = v16;
    }
  }
}

- (BOOL)scrollerIsParentOfView:(id)view
{
  scroller = self->_scroller;
  superview = [view superview];
  LOBYTE(scroller) = scroller == superview;

  return scroller;
}

- (void)prepareForReuse
{
  v3 = [NSMutableSet setWithCapacity:0];
  reusableViews = self->_reusableViews;
  self->_reusableViews = v3;

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002ADC0;
  v5[3] = &unk_10020EFE0;
  v5[4] = self;
  [(WeekAllDayView *)self iterateThroughEachOccurrence:v5];
  [(WeekAllDayView *)self layedOutRowsRemoveAllObjects];
}

- (void)saveTemporaryViews
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002AEB0;
  v2[3] = &unk_10020EFE0;
  v2[4] = self;
  [(WeekAllDayView *)self iterateThroughEachOccurrence:v2];
}

- (void)clearTemporaryViews
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(NSMutableDictionary *)self->_temporaryViewCacheByDay allKeys];
  v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v15 = *v21;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [(NSMutableDictionary *)self->_temporaryViewCacheByDay objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i)];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        allKeys = [v6 allKeys];
        v8 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v17;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v17 != v10)
              {
                objc_enumerationMutation(allKeys);
              }

              v12 = [v6 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * j)];
              v13 = v12;
              if (v12)
              {
                [v12 setHidden:1];
                [v13 setOccurrence:0];
                [(NSMutableSet *)self->_reusableViews addObject:v13];
              }
            }

            v9 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v9);
        }

        [v6 removeAllObjects];
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }
}

- (id)_allDayOccurrenceBlocksForEvents:(id)events rangeStart:(id)start rangeEnd:(id)end
{
  eventsCopy = events;
  startCopy = start;
  endCopy = end;
  v34 = +[NSMutableArray array];
  LOBYTE(end) = [(WeekAllDayView *)self splitMultiDayEvents];
  v11 = [eventsCopy count];
  if (end)
  {
    if (v11)
    {
      v12 = 0;
      v31 = eventsCopy;
      do
      {
        v13 = [eventsCopy objectAtIndex:{v12, v31}];
        startCalendarDate = [v13 startCalendarDate];
        v33 = v13;
        endCalendarDate = [v13 endCalendarDate];
        v15 = [endCalendarDate differenceInDays:startCalendarDate];
        if ((v15 & 0x8000000000000000) == 0)
        {
          v16 = 0;
          v17 = (v15 + 1);
          do
          {
            v18 = [startCalendarDate calendarDateByAddingDays:v16];
            calendarDateForEndOfDay = [v18 calendarDateForEndOfDay];
            if ([v18 compare:startCopy] != -1 && objc_msgSend(calendarDateForEndOfDay, "compare:", endCopy) != 1)
            {
              v20 = CUIKDayRangeForOccurenceDates();
              v22 = [[EKAllDayOccurrenceBlock alloc] initWithEventIndex:v12 calendarOrder:v12 dayRange:v20, v21];
              [v34 addObject:v22];
            }

            ++v16;
          }

          while (v17 != v16);
        }

        ++v12;
        eventsCopy = v31;
      }

      while (v12 < [v31 count]);
    }
  }

  else if (v11)
  {
    v23 = 0;
    do
    {
      v24 = [eventsCopy objectAtIndex:v23];
      startCalendarDate2 = [v24 startCalendarDate];
      endCalendarDate2 = [v24 endCalendarDate];
      v27 = CUIKDayRangeForOccurenceDates();
      v29 = [[EKAllDayOccurrenceBlock alloc] initWithEventIndex:v23 calendarOrder:v23 dayRange:v27, v28];
      [v34 addObject:v29];

      ++v23;
    }

    while (v23 < [eventsCopy count]);
  }

  return v34;
}

- (id)_dayOccurrenceViewForEvent:(id)event block:(id)block
{
  eventCopy = event;
  blockCopy = block;
  temporaryViewCacheByDay = self->_temporaryViewCacheByDay;
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [blockCopy rangeStart]);
  v10 = [(NSMutableDictionary *)temporaryViewCacheByDay objectForKeyedSubscript:v9];

  if (!v10)
  {
    goto LABEL_6;
  }

  calendarItemIdentifier = [eventCopy calendarItemIdentifier];
  if (!calendarItemIdentifier || ([v10 objectForKeyedSubscript:calendarItemIdentifier], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_6:
    anyObject = [(NSMutableSet *)self->_reusableViews anyObject];
    if (anyObject)
    {
      v13 = anyObject;
      [(NSMutableSet *)self->_reusableViews removeObject:anyObject];
      [v13 prepareForReuse];
    }

    else
    {
      v13 = [EKDayOccurrenceView occurrenceViewWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      [(WeekViewAllDayContents *)self->_contentView addSubview:v13];
    }

    goto LABEL_9;
  }

  v13 = v12;
  [v10 setObject:0 forKeyedSubscript:calendarItemIdentifier];

LABEL_9:
  [v13 setHidden:0];
  [v13 setUsesSmallText:self->_usesSmallText];
  [v13 setOccurrence:eventCopy];
  _rangeStart = [(WeekAllDayView *)self _rangeStart];
  v16 = [_rangeStart calendarDateByAddingDays:{objc_msgSend(blockCopy, "rangeStart")}];

  startCalendarDate = [eventCopy startCalendarDate];
  v18 = [v16 differenceInDays:startCalendarDate];

  [v13 setOccurrenceDateIndex:v18];
  [v13 setDelegate:self];
  [v13 setUserInteractionEnabled:self->_allowsOccurrenceSelection];
  [v13 setDimmed:0];
  [v13 setHideText:0];
  [v13 setAllDayDrawingStyle:1];
  [v13 setOpaque:1];
  v19 = [(NSArray *)self->_dayStarts count];
  LOBYTE(startCalendarDate) = CalTimeDirectionIsLeftToRight();
  rangeStart = [blockCopy rangeStart];
  v21 = rangeStart;
  if (startCalendarDate)
  {
    rangeEnd = [blockCopy rangeEnd];
  }

  else
  {
    v21 = v19 + ~rangeStart;
    rangeEnd = (v19 + ~[blockCopy rangeEnd]);
  }

  if (v21 < v19 && rangeEnd < v19)
  {
    startCalendarDate2 = [eventCopy startCalendarDate];
    [startCalendarDate2 absoluteTime];
    v25 = v24;
    v26 = [(NSArray *)self->_dayStarts objectAtIndexedSubscript:v21];
    [v26 absoluteTime];
    v42 = blockCopy;
    v27 = v16;
    v28 = v10;
    v30 = v25 < v29;

    endCalendarDate = [eventCopy endCalendarDate];
    calendarDateForDay = [endCalendarDate calendarDateForDay];
    [calendarDateForDay absoluteTime];
    v34 = v33;
    v35 = [(NSArray *)self->_dayStarts objectAtIndexedSubscript:rangeEnd];
    [v35 absoluteTime];
    v37 = v34 > v36;

    v38 = v30;
    v10 = v28;
    v16 = v27;
    blockCopy = v42;
    [v13 setHasPrecedingDuration:v38];
    [v13 setHasTrailingDuration:v37];
  }

  [v13 setMultiAllDayRoundCorners:{-[WeekAllDayView useMultiDayHeaderStyle](self, "useMultiDayHeaderStyle")}];
  [(WeekAllDayView *)self _occurrencePadding];
  [v13 setPadding:?];
  startDate = [eventCopy startDate];
  v40 = [(WeekAllDayView *)self _shouldAnnotateAppEntitiesForDay:startDate];

  [v13 setShouldAnnotateAppEntities:v40];
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy())
  {
    +[EKDayOccurrenceView defaultMargin];
    CalFloorToScreenScale();
    CalFloorToScreenScale();
    [v13 setMargin:?];
  }

  [v13 setNeedsDisplay];

  return v13;
}

- (void)_fadeInOccurrenceView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v6 = viewCopy;
  if (animatedCopy)
  {
    [viewCopy setAlpha:0.0];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002B940;
    v7[3] = &unk_10020EB00;
    v8 = v6;
    [UIView animateWithDuration:v7 animations:0.300000012];
  }

  else
  {
    [viewCopy setAlpha:1.0];
  }
}

- (id)_rangeStart
{
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  dayStarts = self->_dayStarts;
  if (IsLeftToRight)
  {
    [(NSArray *)dayStarts firstObject];
  }

  else
  {
    [(NSArray *)dayStarts lastObject];
  }
  v5 = ;

  return v5;
}

- (id)_rangeEnd
{
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  dayStarts = self->_dayStarts;
  if (IsLeftToRight)
  {
    [(NSArray *)dayStarts lastObject];
  }

  else
  {
    [(NSArray *)dayStarts firstObject];
  }
  v5 = ;
  calendarDateForEndOfDay = [v5 calendarDateForEndOfDay];

  return calendarDateForEndOfDay;
}

- (void)setOccurrences:(id)occurrences animated:(BOOL)animated
{
  animatedCopy = animated;
  occurrencesCopy = occurrences;
  v5 = [NSMutableArray arrayWithCapacity:self->_daysToDisplay];
  v6 = [NSMutableArray arrayWithCapacity:self->_daysToDisplay];
  v7 = [NSMutableArray arrayWithCapacity:self->_daysToDisplay];
  if (SLODWORD(self->_daysToDisplay) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = [NSNumber numberWithInteger:0];
      [(NSArray *)v5 addObject:v9];

      v10 = +[UIColor clearColor];
      [(NSArray *)v6 addObject:v10];

      [(NSArray *)v7 addObject:&stru_1002133B8];
      ++v8;
    }

    while (v8 < SLODWORD(self->_daysToDisplay));
  }

  v109 = v6;
  v110 = v5;
  v106 = v7;
  _rangeStart = [(WeekAllDayView *)self _rangeStart];
  [(WeekAllDayView *)self _rangeEnd];
  v99 = v111 = _rangeStart;
  v12 = [(WeekAllDayView *)self _allDayOccurrenceBlocksForEvents:occurrencesCopy rangeStart:_rangeStart rangeEnd:?];
  selfCopy = self;
  v105 = v12;
  if ([v12 count])
  {
    v13 = 0;
    do
    {
      v14 = [v12 objectAtIndexedSubscript:v13];
      v15 = [occurrencesCopy objectAtIndex:{objc_msgSend(v14, "eventIndex")}];
      v16 = [(WeekAllDayView *)self _dayOccurrenceViewForEvent:v15 block:v14];
      [v14 setOccurrenceView:v16];

      occurrenceView = [v14 occurrenceView];
      [(WeekAllDayView *)self _fadeInOccurrenceView:occurrenceView animated:animatedCopy];

      v18 = [(WeekAllDayView *)self _specialDayTypeForOccurrence:v15];
      v19 = v110;
      if (v18)
      {
        v20 = v18;
        for (i = [v14 rangeStart]; i <= objc_msgSend(v14, "rangeEnd"); ++i)
        {
          if (i < [(NSArray *)v19 count])
          {
            v22 = [NSNumber numberWithInteger:v20];
            [(NSArray *)v110 replaceObjectAtIndex:i withObject:v22];

            calendar = [v15 calendar];
            v24 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [calendar CGColor]);
            [(NSArray *)v109 replaceObjectAtIndex:i withObject:v24];

            calendar2 = [v15 calendar];
            locale = [calendar2 locale];
            v27 = locale;
            if (locale)
            {
              v28 = locale;
            }

            else
            {
              v28 = &stru_1002133B8;
            }

            [(NSArray *)v7 replaceObjectAtIndex:i withObject:v28];

            v19 = v110;
          }
        }
      }

      ++v13;
      v12 = v105;
      self = selfCopy;
    }

    while (v13 < [v105 count]);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    v31 = objc_loadWeakRetained(&self->_delegate);
    v32 = [v31 weekAllDayViewForTimeframeBefore:self];
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_loadWeakRetained(&self->_delegate);
  v34 = objc_opt_respondsToSelector();

  if (v34)
  {
    v35 = objc_loadWeakRetained(&self->_delegate);
    v36 = [v35 weekAllDayViewForTimeframeAfter:self];
  }

  else
  {
    v36 = 0;
  }

  v37 = [(WeekAllDayView *)self _extractEventsStartingBeforeTimeframeFrom:v12];
  v96 = v37;
  if (v32)
  {
    v38 = [(WeekAllDayView *)self _sortBlocks:v37 intoRowsUsingDataFrom:v32];
  }

  else
  {
    v38 = v37;
  }

  v98 = v32;
  [v12 addObjectsFromArray:{v38, v38}];
  if (v36)
  {
    v39 = [(WeekAllDayView *)self _extractEventsEndingAfterTimeframeFrom:v12];
    v40 = [(WeekAllDayView *)self _sortBlocks:v39 intoRowsUsingDataFrom:v36];
    [v12 addObjectsFromArray:v40];
  }

  v100 = [(WeekAllDayView *)self _getSortedBlocksFromOccurrenceBlocks:v12];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v41 = self->_reusableViews;
  v42 = [(NSMutableSet *)v41 countByEnumeratingWithState:&v128 objects:v136 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v129;
    do
    {
      for (j = 0; j != v43; j = j + 1)
      {
        if (*v129 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [*(*(&v128 + 1) + 8 * j) removeFromSuperview];
      }

      v43 = [(NSMutableSet *)v41 countByEnumeratingWithState:&v128 objects:v136 count:16];
    }

    while (v43);
  }

  v46 = [[NSMutableArray alloc] initWithArray:v100];
  v47 = objc_loadWeakRetained(&self->_delegate);
  v48 = objc_opt_respondsToSelector();

  if (v48)
  {
    v49 = [(WeekAllDayView *)self _extractEventsEndingAfterTimeframeFrom:v12];
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v50 = [v49 countByEnumeratingWithState:&v124 objects:v135 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v125;
      do
      {
        for (k = 0; k != v51; k = k + 1)
        {
          if (*v125 != v52)
          {
            objc_enumerationMutation(v49);
          }

          [v46 removeObject:*(*(&v124 + 1) + 8 * k)];
        }

        v51 = [v49 countByEnumeratingWithState:&v124 objects:v135 count:16];
      }

      while (v51);
    }

    [v49 addObjectsFromArray:v46];
  }

  else
  {
    v49 = v46;
  }

  v54 = objc_loadWeakRetained(&self->_delegate);
  v55 = objc_opt_respondsToSelector();

  if (v55)
  {
    v56 = [(WeekAllDayView *)self _extractEventsStartingBeforeTimeframeFrom:v12];
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v57 = [v56 countByEnumeratingWithState:&v120 objects:v134 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v121;
      do
      {
        for (m = 0; m != v58; m = m + 1)
        {
          if (*v121 != v59)
          {
            objc_enumerationMutation(v56);
          }

          [v49 removeObject:*(*(&v120 + 1) + 8 * m)];
        }

        v58 = [v56 countByEnumeratingWithState:&v120 objects:v134 count:16];
      }

      while (v58);
    }

    [v56 addObjectsFromArray:v49];
  }

  else
  {
    v56 = v49;
  }

  v97 = v36;
  v104 = v56;
  if ([(WeekAllDayView *)self splitMultiDayEvents])
  {
    [(NSMutableArray *)self->_layedOutRowsForEachDay removeAllObjects];
    v61 = v111;
    if ([(WeekAllDayView *)self daysToDisplay]>= 1)
    {
      v62 = 0;
      do
      {
        v63 = +[NSMutableArray array];
        [(NSMutableArray *)self->_layedOutRowsForEachDay addObject:v63];
        v101 = v62;
        v64 = [v61 calendarDateByAddingDays:v62];
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v65 = v56;
        v66 = [v65 countByEnumeratingWithState:&v116 objects:v133 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v117;
          do
          {
            for (n = 0; n != v67; n = n + 1)
            {
              if (*v117 != v68)
              {
                objc_enumerationMutation(v65);
              }

              v70 = *(*(&v116 + 1) + 8 * n);
              v71 = [v61 calendarDateByAddingDays:{objc_msgSend(v70, "rangeStart")}];
              if (![v64 compare:v71])
              {
                v72 = objc_alloc_init(EKAllDayRow);
                [(EKAllDayRow *)v72 addOccurrenceBlock:v70];
                [v63 addObject:v72];

                v61 = v111;
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v116 objects:v133 count:16];
          }

          while (v67);
        }

        v62 = v101 + 1;
        self = selfCopy;
        v56 = v104;
      }

      while (v101 + 1 < [(WeekAllDayView *)selfCopy daysToDisplay]);
    }

    [v56 removeAllObjects];
  }

  else if ([v56 count])
  {
    v73 = 0;
    v74 = &OBJC_IVAR___EventSummaryData__endDate;
    do
    {
      while (v73 >= [(NSMutableArray *)self->_layedOutRows count])
      {
        layedOutRows = self->_layedOutRows;
        v76 = objc_alloc_init((v74 + 970));
        [(NSMutableArray *)layedOutRows addObject:v76];
      }

      v102 = v73;
      v77 = [(NSMutableArray *)self->_layedOutRows objectAtIndex:v73];
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v78 = v56;
      for (ii = v78; ; v78 = ii)
      {
        v80 = [v78 countByEnumeratingWithState:&v112 objects:v132 count:16];
        if (!v80)
        {
          break;
        }

        v81 = 0;
        v82 = *v113;
        v83 = -1;
        do
        {
          for (jj = 0; jj != v80; jj = jj + 1)
          {
            if (*v113 != v82)
            {
              objc_enumerationMutation(ii);
            }

            v85 = *(*(&v112 + 1) + 8 * jj);
            v86 = [v77 spaceGapFor:v85];
            if (v86 != -1 && v86 < v83)
            {
              v88 = v86;
              v89 = v85;

              v81 = v89;
              v83 = v88;
            }
          }

          v80 = [ii countByEnumeratingWithState:&v112 objects:v132 count:16];
        }

        while (v80);

        if (!v81)
        {
          goto LABEL_88;
        }

        [v77 addOccurrenceBlock:v81];
        [ii removeObject:v81];

        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
      }

LABEL_88:
      v73 = v102 + 1;

      self = selfCopy;
      v56 = v104;
      v74 = &OBJC_IVAR___EventSummaryData__endDate;
    }

    while ([ii count]);
  }

  specialDayTypes = self->_specialDayTypes;
  self->_specialDayTypes = v110;
  v91 = v110;

  dayBadgeColors = self->_dayBadgeColors;
  self->_dayBadgeColors = v109;
  v93 = v109;

  dayBadgeLocales = self->_dayBadgeLocales;
  self->_dayBadgeLocales = v106;

  [(WeekAllDayView *)self _updateDayBadges];
  [(WeekAllDayView *)self setNeedsLayout];
}

- (id)_sortBlocks:(id)blocks intoRowsUsingDataFrom:(id)from
{
  blocksCopy = blocks;
  fromCopy = from;
  if ([(WeekAllDayView *)self splitMultiDayEvents])
  {
    v21 = blocksCopy;
  }

  else
  {
    v21 = +[NSMutableArray array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = blocksCopy;
    obj = blocksCopy;
    v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          occurrenceView = [v12 occurrenceView];
          occurrence = [occurrenceView occurrence];
          v15 = [fromCopy rowIndexOfOccurrence:occurrence];

          if ((v15 & 0x8000000000000000) != 0)
          {
            [v21 addObject:v12];
          }

          else
          {
            while (v15 >= [(NSMutableArray *)self->_layedOutRows count])
            {
              v16 = objc_alloc_init(EKAllDayRow);
              [(NSMutableArray *)self->_layedOutRows addObject:v16];
            }

            v17 = [(NSMutableArray *)self->_layedOutRows objectAtIndex:v15];
            if ([v17 spaceGapFor:v12] == -1)
            {
              [v21 addObject:v12];
            }

            else
            {
              [v17 addOccurrenceBlock:v12];
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    blocksCopy = v19;
  }

  return v21;
}

- (id)_extractEventsStartingBeforeTimeframeFrom:(id)from
{
  fromCopy = from;
  v5 = +[NSMutableArray array];
  calendar = self->_calendar;
  startDate = [(WeekAllDayView *)self startDate];
  v8 = [(NSCalendar *)calendar dateFromComponents:startDate];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = fromCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        occurrenceView = [v14 occurrenceView];
        occurrence = [occurrenceView occurrence];
        startDate2 = [occurrence startDate];

        if ([startDate2 compare:v8] == -1)
        {
          [v5 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  [v9 removeObjectsInArray:v5];

  return v5;
}

- (id)_extractEventsEndingAfterTimeframeFrom:(id)from
{
  fromCopy = from;
  v5 = +[NSMutableArray array];
  v6 = [(NSCalendar *)self->_calendar dateFromComponents:self->_endDate];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = fromCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        occurrenceView = [v12 occurrenceView];
        occurrence = [occurrenceView occurrence];
        endDate = [occurrence endDate];

        if ([v6 compare:endDate] == -1)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [v7 removeObjectsInArray:v5];

  return v5;
}

- (int64_t)_specialDayTypeForOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  if (_os_feature_enabled_impl())
  {
    specialDayType = [occurrenceCopy specialDayType];
    if ((specialDayType & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v5 = specialDayType;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)heightWithNoAllDayOccurrences
{
  EKUISeparatorLineThickness();
  v4 = v3;
  v5 = objc_opt_class();
  [v5 dayLabelHeightWithSizeClass:EKUIWidthSizeClassForViewHierarchy() usesMultiDay:{-[WeekAllDayView useMultiDayHeaderStyle](self, "useMultiDayHeaderStyle")}];
  return v4 + v6;
}

- (double)heightForNumberOfOccurrences:(unint64_t)occurrences
{
  occurrencesCopy = occurrences;
  maxOccurrencesWithoutScroller = [(WeekAllDayView *)self maxOccurrencesWithoutScroller];
  if (maxOccurrencesWithoutScroller + 0.5 <= occurrencesCopy)
  {
    v6 = maxOccurrencesWithoutScroller + 0.5;
  }

  else
  {
    v6 = occurrencesCopy;
  }

  [(WeekAllDayView *)self heightWithNoAllDayOccurrences];
  if (v6 > 0.0)
  {
    [(WeekAllDayView *)self occurrenceHeight];
    EKUISeparatorLineThickness();
    EKUICurrentWidthSizeClassIsRegularInViewHierarchy();
    [(WeekAllDayView *)self occurrenceInsetIntoScroller];
  }

  CalRoundToScreenScale();
  return result;
}

- (double)naturalHeight
{
  totalRowCount = [(WeekAllDayView *)self totalRowCount];

  [(WeekAllDayView *)self heightForNumberOfOccurrences:totalRowCount];
  return result;
}

- (double)multiDayAllDayHeightWithUserVisibleEarliestDate:(id)date latestDate:(id)latestDate
{
  [(WeekAllDayView *)self scrollerContentHeightWithUserVisibleEarliestDate:date latestDate:latestDate withoutScroller:1];
  EKUISeparatorLineThickness();
  [(WeekAllDayView *)self heightWithNoAllDayOccurrences];

  CalRoundToScreenScale();
  return result;
}

- (double)scrollerContentHeightWithUserVisibleEarliestDate:(id)date latestDate:(id)latestDate withoutScroller:(BOOL)scroller
{
  scrollerCopy = scroller;
  dateCopy = date;
  latestDateCopy = latestDate;
  totalRowCount = [(WeekAllDayView *)self totalRowCount];
  if (scrollerCopy)
  {
    totalRowCount2 = [(WeekAllDayView *)self totalRowCount];
    if (totalRowCount2 > [(WeekAllDayView *)self maxOccurrencesWithoutScroller])
    {
      totalRowCount = [(WeekAllDayView *)self maxOccurrencesWithoutScroller];
    }
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = self->_layedOutRowsForEachDay;
  v49 = [(NSMutableArray *)obj countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v49)
  {
    selfCopy = self;
    v48 = *v69;
    if (dateCopy)
    {
      v9 = latestDateCopy == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
    v11 = 0.0;
    while (1)
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v69 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v68 + 1) + 8 * i);
        [(WeekAllDayView *)self occurrenceHeight];
        v15 = v14;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v16 = v13;
        v54 = [v16 countByEnumeratingWithState:&v64 objects:v73 count:16];
        if (!v54)
        {

          v17 = 0;
          v18 = 0.0;
          goto LABEL_49;
        }

        v50 = i;
        v51 = v16;
        v17 = 0;
        v53 = *v65;
        v18 = 0.0;
        do
        {
          v19 = 0;
          do
          {
            if (*v65 != v53)
            {
              objc_enumerationMutation(v51);
            }

            v55 = v19;
            v56 = v17;
            v20 = *(*(&v64 + 1) + 8 * v19);
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            occurrenceBlocks = [v20 occurrenceBlocks];
            v22 = [occurrenceBlocks countByEnumeratingWithState:&v60 objects:v72 count:16];
            if (!v22)
            {
              v25 = 0.0;
              goto LABEL_38;
            }

            v23 = v22;
            v24 = *v61;
            v25 = 0.0;
            v58 = *v61;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v61 != v24)
                {
                  objc_enumerationMutation(occurrenceBlocks);
                }

                occurrenceView = [*(*(&v60 + 1) + 8 * j) occurrenceView];
                v28 = occurrenceView;
                if (!v10)
                {
                  goto LABEL_30;
                }

                occurrence = [occurrenceView occurrence];
                startCalendarDate = [occurrence startCalendarDate];
                if ([startCalendarDate compare:latestDateCopy] != -1)
                {

                  goto LABEL_34;
                }

                occurrence2 = [v28 occurrence];
                endCalendarDate = [occurrence2 endCalendarDate];
                v33 = occurrenceBlocks;
                v34 = v10;
                v35 = [endCalendarDate compare:dateCopy];

                v24 = v58;
                v9 = v35 == 1;
                v10 = v34;
                occurrenceBlocks = v33;
                if (v9)
                {
LABEL_30:
                  currentImageState = [v28 currentImageState];
                  requiresLanguageAwarePadding = [currentImageState requiresLanguageAwarePadding];

                  v38 = v15;
                  if (requiresLanguageAwarePadding)
                  {
                    currentImageState2 = [v28 currentImageState];
                    [currentImageState2 totalLanguageAwareHeightPadding];
                    v38 = v15 + v40;
                  }

                  if (v38 > v25)
                  {
                    v25 = v38;
                  }
                }

LABEL_34:
              }

              v23 = [occurrenceBlocks countByEnumeratingWithState:&v60 objects:v72 count:16];
            }

            while (v23);
LABEL_38:

            v17 = v56;
            v41 = v18 + v25;
            if (v25 > 0.0)
            {
              v17 = v56 + 1;
            }

            if (v25 > 0.0 && v56 < totalRowCount)
            {
              v18 = v18 + v25;
            }

            v19 = v55 + 1;
          }

          while ((v55 + 1) != v54);
          v54 = [v51 countByEnumeratingWithState:&v64 objects:v73 count:{16, v41}];
        }

        while (v54);

        if (v17)
        {
          self = selfCopy;
          [(WeekAllDayView *)selfCopy occurrenceInsetIntoScroller];
          v18 = v18 + v42;
          i = v50;
          if (v17 > totalRowCount)
          {
            [(WeekAllDayView *)selfCopy occurrenceHeight];
            v44 = v18 + v43 * 0.5 + totalRowCount * 3.0;
            goto LABEL_50;
          }
        }

        else
        {
          self = selfCopy;
          i = v50;
        }

LABEL_49:
        v44 = v18 + v17 * 3.0;
LABEL_50:
        if (v44 > v11)
        {
          v11 = v44;
        }
      }

      v49 = [(NSMutableArray *)obj countByEnumeratingWithState:&v68 objects:v74 count:16];
      if (!v49)
      {
        goto LABEL_56;
      }
    }
  }

  v11 = 0.0;
LABEL_56:

  return v11;
}

- (void)updateTotalRowCountWithContainerRect:(CGRect)rect
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D1F0;
  v4[3] = &unk_10020F0A8;
  rectCopy = rect;
  v4[4] = &v6;
  [(WeekAllDayView *)self iterateThroughEachAllDayRow:v4];
  [(WeekAllDayView *)self setTotalRowCount:v7[3] + 1];
  _Block_object_dispose(&v6, 8);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  fixedDayHeight = self->_fixedDayHeight;
  if (fixedDayHeight <= 0.0)
  {
    if ([(WeekAllDayView *)self useMultiDayHeaderStyle])
    {
      [(WeekAllDayView *)self multiDayAllDayHeightWithUserVisibleEarliestDate:0 latestDate:0];
    }

    else
    {
      [(WeekAllDayView *)self naturalHeight];
    }

    fixedDayHeight = v6;
  }

  fixedDayWidth = self->_fixedDayWidth;
  if (fixedDayWidth > 0.0)
  {
    width = fixedDayWidth * self->_daysToDisplay;
  }

  v8 = width;
  result.height = fixedDayHeight;
  result.width = v8;
  return result;
}

- (double)_dayWidth
{
  result = self->_fixedDayWidth;
  if (result <= 0.0)
  {
    [(WeekViewAllDayContents *)self->_contentView bounds];

    CalRoundToScreenScale();
  }

  return result;
}

- (void)setReceiveTapsInHeader:(BOOL)header
{
  if (self->_receiveTapsInHeader != header)
  {
    self->_receiveTapsInHeader = header;
    tapGestureRecognizer = self->_tapGestureRecognizer;
    if (header)
    {
      if (!tapGestureRecognizer)
      {
        v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tapReceived:"];
        v6 = self->_tapGestureRecognizer;
        self->_tapGestureRecognizer = v5;

        v7 = self->_tapGestureRecognizer;

        [(WeekAllDayView *)self addGestureRecognizer:v7];
      }
    }

    else if (tapGestureRecognizer)
    {
      [(WeekAllDayView *)self removeGestureRecognizer:self->_tapGestureRecognizer];
      v8 = self->_tapGestureRecognizer;
      self->_tapGestureRecognizer = 0;
    }
  }
}

- (void)_tapReceived:(id)received
{
  [received locationInView:self];

  [(WeekAllDayView *)self emptySpaceClickForCalendarWeekDayEventContent:0 atPoint:?];
}

+ (UIEdgeInsets)occurrencePaddingForSizeClass:(int64_t)class
{
  +[EKDayOccurrenceView defaultPadding];
  v5 = v4;
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v7 = v6;
  if (class == 1)
  {
    v8 = 0.0;
    [v6 _scaledValueForValue:0.0];
  }

  else
  {
    [v6 _scaledValueForValue:2.0];
    CalRoundToScreenScale();
    v8 = v9;
  }

  CalRoundToScreenScale();
  v11 = v10;

  v12 = 0.0;
  v13 = v11;
  v14 = v8;
  v15 = v5;
  result.right = v12;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)_occurrencePadding
{
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = objc_opt_class();

  [v3 occurrencePaddingForSizeClass:v2];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

+ (double)_fontSizeForSizeClass:(int64_t)class
{
  EKUIMultiwindowAssert();
  if (class == 2)
  {
    v4 = 17.0;
  }

  else
  {
    v4 = 18.0;
  }

  v5 = CUIKGetOverlayCalendar();
  if (v5)
  {
    v6 = 28.0;
  }

  else
  {
    v6 = 40.0;
  }

  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:v4 shouldScaleForSmallerSizes:v6];

  CalRoundToScreenScale();
  return result;
}

+ (double)_overlayFontSize
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:10.0 shouldScaleForSmallerSizes:15.5];

  CalRoundToScreenScale();
  return result;
}

+ (double)_compactRoundedRectHeightForSizeClass:(int64_t)class
{
  [self _fontSizeForSizeClass:class];
  v5 = v4;
  v6 = CUIKGetOverlayCalendar();
  if (v6)
  {
    [self _overlayFontSize];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  [CompactDayNavigationViewCell contentHeightForFontSize:v5 overlayFontSize:v8];
  CalRoundToScreenScale();
  v10 = v9;

  return fmin(v10, 47.0);
}

- (void)_buildDayNumberViews
{
  if (!self->_dayNumberViews)
  {
    v3 = [NSMutableArray arrayWithCapacity:self->_daysToDisplay];
    if (self->_daysToDisplay)
    {
      v4 = 0;
      do
      {
        if ([(WeekAllDayView *)self useMultiDayHeaderStyle])
        {
          v5 = objc_alloc_init(MultiDayNavigationViewCell);
        }

        else
        {
          v5 = objc_alloc_init(LargeDayNavigationViewCell);
          traitCollection = [(WeekAllDayView *)self traitCollection];
          [(DayNavigationViewCell *)v5 setUsesRoundedRectInsteadOfCircle:EKUIUsesRoundedRectsInsteadOfCircles()];

          [(MultiDayNavigationViewCell *)v5 setUserInteractionEnabled:0];
          backgroundColor = [(WeekAllDayView *)self backgroundColor];
          [(MultiDayNavigationViewCell *)v5 setBackgroundColor:backgroundColor];
        }

        [(WeekAllDayView *)self addSubview:v5];
        [(NSArray *)v3 addObject:v5];

        ++v4;
      }

      while (v4 < self->_daysToDisplay);
    }

    dayNumberViews = self->_dayNumberViews;
    self->_dayNumberViews = v3;
  }
}

- (void)_buildVerticalDaySeparators
{
  v3 = self->_daysToDisplay - 1;
  weekSeparatorColor = [(objc_class *)[(WeekAllDayView *)self weekViewClass] weekSeparatorColor];
  for (i = [NSMutableArray arrayWithCapacity:v3];
  {
    v5 = objc_alloc_init(UIView);
    [v5 setBackgroundColor:weekSeparatorColor];
    [(WeekAllDayView *)self addSubview:v5];
    [(NSArray *)i addObject:v5];
  }

  verticalDaySeparators = self->_verticalDaySeparators;
  self->_verticalDaySeparators = i;
}

- (void)_layoutDayNumberCells
{
  if (self->_daysToDisplay)
  {
    v3 = 0;
    do
    {
      v4 = [(NSArray *)self->_dayNumberViews objectAtIndexedSubscript:v3];
      [(WeekAllDayView *)self _numberFrameForDayIndex:v3];
      [v4 setFrame:?];

      ++v3;
    }

    while (v3 < self->_daysToDisplay);
  }
}

- (void)_layoutVerticalDaySeparators
{
  [(WeekAllDayView *)self bounds];
  [(WeekAllDayView *)self _dayWidth];
  v4 = v3;
  v5 = self->_daysToDisplay - 1;
  EKUISeparatorLineThickness();
  if (CalCanvasPocketEnabled())
  {
    v6 = objc_opt_class();
    [v6 dayLabelHeightWithSizeClass:EKUIWidthSizeClassForViewHierarchy() usesMultiDay:{-[WeekAllDayView useMultiDayHeaderStyle](self, "useMultiDayHeaderStyle")}];
  }

  if (v5)
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      v8 = v4 + v8;
      v9 = [(NSArray *)self->_verticalDaySeparators objectAtIndexedSubscript:v7];
      [(WeekAllDayView *)self useMultiDayHeaderStyle];
      CalRoundToScreenScale();
      [v9 setFrame:?];

      ++v7;
    }

    while (v5 != v7);
  }
}

- (CGRect)_numberFrameForDayIndex:(int64_t)index
{
  if ([(WeekAllDayView *)self useMultiDayHeaderStyle])
  {
    y = CGRectZero.origin.y;
    EKUISeparatorLineThickness();
    [(WeekAllDayView *)self _dayWidth];
    CalRoundToScreenScale();
    v6 = v5;
    [(WeekAllDayView *)self _dayWidth];
    CalRoundToScreenScale();
    v8 = v7;
    [MultiDayNavigationViewCell heightRequiredWithSizeClass:EKUIWidthSizeClassForViewHierarchy()];
LABEL_3:
    v10 = v9;
    goto LABEL_14;
  }

  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
    [(WeekAllDayView *)self _dayWidth];
    CalRoundToScreenScale();
    v6 = v11;
    [(WeekAllDayView *)self _dayWidth];
    CalRoundToScreenScale();
    v8 = v12;
    traitCollection = [(WeekAllDayView *)self traitCollection];
    v14 = EKUIUsesRoundedRectsInsteadOfCircles();

    if (v14)
    {
      v15 = EKUIWidthSizeClassForViewHierarchy();
      v16 = objc_opt_class();
      [v16 dayLabelHeightWithSizeClass:EKUIWidthSizeClassForViewHierarchy() usesMultiDay:{-[WeekAllDayView useMultiDayHeaderStyle](self, "useMultiDayHeaderStyle")}];
      [objc_opt_class() _heightForWeekdayLabelsForSizeClass:v15];
      [objc_opt_class() _compactRoundedRectHeightForSizeClass:v15];
      CalRoundToScreenScale();
      CalRoundToScreenScale();
      v18 = v17;
      CalRoundToScreenScale();
      if (v18 >= v19)
      {
        y = v18;
      }

      else
      {
        y = v19;
      }

      [objc_opt_class() _compactRoundedRectHeightForSizeClass:v15];
      goto LABEL_3;
    }

    +[LargeDayNavigationViewCell circleDiameter];
    v10 = v24;
LABEL_13:
    y = 0.0;
    goto LABEL_14;
  }

  [(WeekAllDayView *)self _circleSize];
  v8 = v20;
  v10 = v21;
  [(WeekAllDayView *)self _dayWidth];
  CalCeilToScreenScale();
  v6 = v22;
  traitCollection2 = [(WeekAllDayView *)self traitCollection];
  if (EKUIUsesRoundedRectsInsteadOfCircles())
  {

    goto LABEL_13;
  }

  +[LargeDayNavigationViewCell dayLabelBaseHeight];
  v30 = v29;
  +[LargeDayNavigationViewCell circleDiameter];
  v32 = v31;

  y = 0.0;
  if (v30 >= v32)
  {
    +[LargeDayNavigationViewCell dayLabelYMargin];
    CalRoundToScreenScale();
    y = v33;
  }

LABEL_14:
  v25 = v6;
  v26 = y;
  v27 = v8;
  v28 = v10;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

+ (double)_yOffsetForWeekdayLabelsWithSizeClass:(int64_t)class
{
  EKUIMultiwindowAssert();
  v5 = EKUIUsesRoundedRectsInsteadOfCircles();
  if (class == 1 && v5)
  {
    [objc_opt_class() dayLabelHeightWithSizeClass:1 usesMultiDay:0];
    v7 = v6;
    CalRoundToScreenScale();
    v9 = v7 - v8;
    [self _heightForWeekdayLabelsForSizeClass:1];
    return v9 - v10;
  }

  else
  {

    CalRoundToScreenScale();
  }

  return result;
}

+ (double)_heightForWeekdayLabelsForSizeClass:(int64_t)class
{
  if (!EKUIUsesRoundedRectsInsteadOfCircles())
  {
    return 20.0;
  }

  v5 = [self _dayLabelFontForSizeClass:class];
  [v5 lineHeight];
  CalRoundToScreenScale();
  v7 = v6;

  return v7;
}

+ (double)baselineForWeekdayLabelsWithSizeClass:(int64_t)class
{
  v5 = +[EKUISemiConstantCache sharedInstance];
  [v5 weekAllDayBaselineForLargeFormatWeekView];
  v7 = v6;

  v8 = +[EKUISemiConstantCache sharedInstance];
  [v8 weekAllDayBaselineForSmallFormatWeekView];
  v10 = v9;

  if (v7 < 0.0 || v10 < 0.0)
  {
    v11 = objc_opt_new();
    v12 = [self _dayLabelFontForSizeClass:class];
    [v11 setFont:v12];

    [self _heightForWeekdayLabelsForSizeClass:class];
    [v11 setFrame:{0.0, 0.0, 20.0, v13}];
    [v11 _firstLineBaselineOffsetFromBoundsTop];
    v15 = v14;
    if (EKUIUsesRoundedRectsInsteadOfCircles())
    {
      [self _yOffsetForWeekdayLabelsWithSizeClass:class];
      v17 = v16;
      +[LargeDayNavigationViewCell roundedRectBaselineOffset];
      v7 = v18;
    }

    else
    {
      CalRoundToScreenScale();
      v7 = v15 + v19;
      CalRoundToScreenScale();
      v17 = v20;
    }

    v10 = v15 + v17;
    v21 = +[EKUISemiConstantCache sharedInstance];
    [v21 setWeekAllDayBaselineForLargeFormatWeekView:v7];

    v22 = +[EKUISemiConstantCache sharedInstance];
    [v22 setWeekAllDayBaselineForLargeFormatWeekView:v10];
  }

  if (class == 2)
  {
    return v7;
  }

  else
  {
    return v10;
  }
}

- (CGRect)_weekdayFrameForDayIndex:(int64_t)index
{
  [(WeekAllDayView *)self _dayWidth];
  CalRoundToScreenScale();
  v5 = v4;
  v6 = objc_opt_class();
  [v6 _yOffsetForWeekdayLabelsWithSizeClass:EKUIWidthSizeClassForViewHierarchy()];
  v8 = v7;
  [(WeekAllDayView *)self _dayWidth];
  CalRoundToScreenScale();
  v10 = v9;
  v11 = objc_opt_class();
  [v11 _heightForWeekdayLabelsForSizeClass:EKUIWidthSizeClassForViewHierarchy()];
  v13 = v12;
  v14 = v5;
  v15 = v8;
  v16 = v10;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)_dayLabelColorAtDayIndex:(int64_t)index isWeekend:(BOOL)weekend
{
  weekendCopy = weekend;
  v5 = [(NSArray *)self->_dayStarts objectAtIndexedSubscript:index];
  [v5 absoluteTime];
  v7 = v6;

  v8 = CUIKTodayDate();
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  if (!weekendCopy || v7 == v10)
  {
    v11 = +[UIColor labelColor];
  }

  else
  {
    v11 = WeekendTextColor();
  }

  return v11;
}

- (CGSize)_circleSize
{
  [CompactDayNavigationViewCell standardCircleDiameterForSizeClass:EKUIWidthSizeClassForViewHierarchy()];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)_dayLabelFontForSizeClass:(int64_t)class
{
  EKUIMultiwindowAssert();
  v4 = +[EKUISemiConstantCache sharedInstance];
  v5 = v4;
  if (class == 1)
  {
    [v4 weekAllDayLabelFontCompact];
  }

  else
  {
    [v4 weekAllDayLabelFontRegular];
  }
  v6 = ;

  return v6;
}

+ (id)_todayDayLabelFontForSizeClass:(int64_t)class
{
  EKUIMultiwindowAssert();
  v4 = +[EKUISemiConstantCache sharedInstance];
  v5 = v4;
  if (class == 1)
  {
    [v4 weekAllDayTodayLabelFontCompact];
  }

  else
  {
    [v4 weekAllDayTodayLabelFontRegular];
  }
  v6 = ;

  return v6;
}

- (int64_t)_dayIndexForToday
{
  v3 = CUIKTodayDate();
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  if (![(NSArray *)self->_dayStarts count])
  {
    return -1;
  }

  v6 = 0;
  while (1)
  {
    v7 = [(NSArray *)self->_dayStarts objectAtIndex:v6];
    [v7 absoluteTime];
    v9 = v8;

    if (v5 == v9)
    {
      break;
    }

    if (++v6 >= [(NSArray *)self->_dayStarts count])
    {
      return -1;
    }
  }

  return v6;
}

- (unint64_t)maxOccurrencesWithoutScroller
{
  if (qword_100251840 != -1)
  {
    sub_10016F9E8();
  }

  v3 = qword_100251838;
  AnchoredValueCurrentWindowHeight(self);
  [v3 valueForSize:?];
  return vcvtmd_u64_f64(v4);
}

- (double)baselineForWeekdayNumbers
{
  if (![(NSArray *)self->_dayNumberViews count])
  {
    return -1.0;
  }

  firstObject = [(NSArray *)self->_dayNumberViews firstObject];
  [firstObject baselineOffsetFromTop];
  v5 = v4;
  [firstObject frame];
  v7 = v6;
  v9 = v8;
  superview = [firstObject superview];
  [(WeekAllDayView *)self convertPoint:superview fromView:v7, v9];
  v12 = v11;

  v13 = v5 + v12;
  return v13;
}

+ (double)occurrenceInsetIntoScrollerWithSizeClassRegular:(BOOL)regular
{
  result = 3.0;
  if (regular)
  {
    CalRoundToScreenScale();
    v5 = v4;
    EKUISeparatorLineThickness();
    return v5 + v6;
  }

  return result;
}

- (double)occurrenceInsetIntoScroller
{
  v2 = objc_opt_class();
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();

  [v2 occurrenceInsetIntoScrollerWithSizeClassRegular:IsRegularInViewHierarchy];
  return result;
}

- (unint64_t)_calendarOrderForCalendar:(id)calendar
{
  calendarCopy = calendar;
  eventStore = [calendarCopy eventStore];
  v5 = [eventStore calendarsForEntityType:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      v9 += v8;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v14 + 1) + 8 * v11) isEqual:{calendarCopy, v14}])
        {
          v9 = v12;
          goto LABEL_12;
        }

        ++v12;
        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_12:

  return v9;
}

- (double)firstEventYOffset
{
  [(WeekAllDayView *)self occurrenceInsetIntoScroller];
  v3 = objc_opt_class();
  [v3 dayLabelHeightWithSizeClass:EKUIWidthSizeClassForViewHierarchy() usesMultiDay:{-[WeekAllDayView useMultiDayHeaderStyle](self, "useMultiDayHeaderStyle")}];

  CalRoundToScreenScale();
  return result;
}

- (double)nextAvailableOccurrenceViewYOriginForDay:(id)day
{
  dayCopy = day;
  [dayCopy absoluteTime];
  v6 = v5;
  v7 = [(WeekAllDayView *)self dayIndexForCalendarDate:dayCopy];
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v9 = [EKCalendarDate calendarDateWithAbsoluteTime:timeZone timeZone:v6];

  v10 = [(NSArray *)self->_dayStarts objectAtIndex:0];
  [v9 dayOfWeek];
  [v10 dayOfWeek];
  [(WeekAllDayView *)self _dayWidth];
  CalRoundToScreenScale();
  [(WeekAllDayView *)self occurrenceInsetIntoScroller];
  [(UIScrollView *)self->_scroller contentOffset];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002EA8C;
  v14[3] = &unk_10020F080;
  v14[5] = v15;
  v14[6] = v7;
  v14[4] = self;
  [(WeekAllDayView *)self iterateThroughEachAllDayRow:v14];
  [(WeekAllDayView *)self occurrenceHeight];
  [(WeekAllDayView *)self firstEventYOffset];
  [(WeekAllDayView *)self occurrenceInsetIntoScroller];
  [(UIScrollView *)self->_scroller contentOffset];
  CalRoundToScreenScale();
  v12 = v11;
  _Block_object_dispose(v15, 8);

  return v12;
}

- (CGRect)_frameForOccurrenceBlock:(id)block index:(unint64_t)index yPos:(double)pos padding:(double)padding
{
  blockCopy = block;
  [(WeekAllDayView *)self _dayWidth];
  [blockCopy rangeStart];
  if ((CalTimeDirectionIsLeftToRight() & 1) == 0)
  {
    [(WeekAllDayView *)self frame];
    CGRectGetWidth(v20);
    [blockCopy rangeStart];
    [blockCopy length];
  }

  [(WeekAllDayView *)self occurrenceInsetIntoScroller];
  [blockCopy length];
  [(WeekAllDayView *)self occurrenceHeight];
  CalRoundRectToScreenScale();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)dateIsWeekend:(id)weekend
{
  weekendCopy = weekend;
  v5 = +[CUIKPreferences sharedPreferences];
  overrideLocaleWeekends = [v5 overrideLocaleWeekends];

  if (overrideLocaleWeekends)
  {
    v7 = [weekendCopy dayOfWeek] == 7 || objc_msgSend(weekendCopy, "dayOfWeek") == 1;
  }

  else
  {
    calendar = self->_calendar;
    date = [weekendCopy date];
    v7 = [(NSCalendar *)calendar isDateInWeekend:date];
  }

  return v7;
}

- (void)_updateHeaderViewsIfNeeded
{
  if (self->_needsHeaderUpdate && self->_dayStarts)
  {
    _dayIndexForToday = [(WeekAllDayView *)self _dayIndexForToday];
    if (self->_daysToDisplay)
    {
      v4 = _dayIndexForToday;
      v5 = 0;
      do
      {
        v6 = [(NSArray *)self->_dayStarts objectAtIndexedSubscript:v5];
        v7 = [(WeekAllDayView *)self dateIsWeekend:v6];
        if ([(NSArray *)self->_dayNumberViews count])
        {
          v8 = [(NSArray *)self->_dayNumberViews objectAtIndexedSubscript:v5];
          date = [v6 date];
          [v8 setDate:date forceStringUpdate:1];

          [v8 setIsToday:v4 == v5];
          [v8 setIsWeekend:v7];
          [v8 setCircled:v4 == v5];
          [(WeekAllDayView *)self _updateCell:v8 withBadgeDataIndex:v5];
          if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = v8;
            }

            else
            {
              v10 = 0;
            }

            v11 = v10;
            if (v7)
            {
              v12 = [(WeekAllDayView *)self _dayLabelColorAtDayIndex:v5 isWeekend:1];
              [v11 setWeekendColor:v12];
            }

            if ([v11 usesRoundedRectInsteadOfCircle])
            {
              [v11 contentWidth];
              v14 = v13 + 20.0;
              [v11 roundedRectSize];
              if (v14 > v15)
              {
                [v11 roundedRectSize];
                [v11 setRoundedRectSize:v14];
              }
            }
          }
        }

        ++v5;
      }

      while (v5 < self->_daysToDisplay);
    }

    self->_needsHeaderUpdate = 0;
  }
}

- (void)_updateDayBadges
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_dayNumberViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [(WeekAllDayView *)self _updateCell:*(*(&v9 + 1) + 8 * v8) withBadgeDataIndex:v6++, v9];
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_updateCell:(id)cell withBadgeDataIndex:(unint64_t)index
{
  cellCopy = cell;
  if ([(NSArray *)self->_specialDayTypes count]<= index || [(NSArray *)self->_dayBadgeColors count]<= index)
  {
    [cellCopy setBadgeType:0];
  }

  else
  {
    v6 = [(NSArray *)self->_specialDayTypes objectAtIndex:index];
    integerValue = [v6 integerValue];

    v8 = [(NSArray *)self->_dayBadgeColors objectAtIndex:index];
    v9 = [(NSArray *)self->_dayBadgeLocales objectAtIndex:index];
    if ([v9 isEqual:&stru_1002133B8])
    {

      v9 = 0;
    }

    [cellCopy setBadgeColor:v8];
    [cellCopy setBadgeType:integerValue];
    [cellCopy setBadgeLocale:v9];
  }
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = WeekAllDayView;
  [(WeekAllDayView *)&v37 layoutSubviews];
  [(WeekAllDayView *)self _updateHeaderViewsIfNeeded];
  [(WeekAllDayView *)self _layoutDayNumberCells];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  occurrenceViews = [(WeekAllDayView *)self occurrenceViews];
  v4 = [occurrenceViews countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v4)
  {
    v5 = *v34;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(occurrenceViews);
        }

        [*(*(&v33 + 1) + 8 * i) layoutIfNeeded];
      }

      v4 = [occurrenceViews countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v4);
  }

  if (!self->_verticalDaySeparators)
  {
    [(WeekAllDayView *)self _buildVerticalDaySeparators];
  }

  [(WeekAllDayView *)self _layoutVerticalDaySeparators];
  [(WeekAllDayView *)self bounds];
  v8 = v7;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_100029B38;
  v31[4] = sub_100029B48;
  v32 = +[NSMutableDictionary dictionary];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10002F5AC;
  v29[3] = &unk_10020F130;
  v29[4] = self;
  v29[5] = v31;
  v29[6] = v30;
  v29[7] = 0;
  [(WeekAllDayView *)self iterateThroughEachAllDayRow:v29];
  [(WeekAllDayView *)self occurrenceInsetIntoScroller];
  EKUICurrentWidthSizeClassIsRegularInViewHierarchy();
  CalRoundToScreenScale();
  v10 = v9;
  v11 = objc_opt_class();
  [v11 dayLabelHeightWithSizeClass:EKUIWidthSizeClassForViewHierarchy() usesMultiDay:{-[WeekAllDayView useMultiDayHeaderStyle](self, "useMultiDayHeaderStyle")}];
  v13 = v12;
  [(WeekAllDayView *)self bounds];
  v15 = v14;
  EKUISeparatorLineThickness();
  [(UIView *)self->_topSeparator setFrame:0.0, v13, v8, v16];
  v17 = v15 - v13;
  v39.origin.x = 0.0;
  v39.origin.y = v13;
  v39.size.width = v8;
  v39.size.height = v17;
  MaxY = CGRectGetMaxY(v39);
  v19 = 0.0;
  if (v17 > 0.0)
  {
    EKUISeparatorLineThickness();
    v19 = v20;
  }

  EKUISeparatorLineThickness();
  [(UIView *)self->_bottomSeparator setFrame:0.0, MaxY - v19, v8, v21];
  v22 = 1.0;
  if (v17 <= 0.0)
  {
    v22 = 0.0;
  }

  [(UIView *)self->_topSeparator setAlpha:v22];
  [(UIScrollView *)self->_scroller frame];
  v41.origin.x = 0.0;
  v41.origin.y = v13;
  v41.size.width = v8;
  v41.size.height = v17;
  if (!CGRectEqualToRect(v40, v41))
  {
    [(UIScrollView *)self->_scroller setFrame:0.0, v13, v8, v17];
  }

  [(UIScrollView *)self->_scroller contentSize];
  if (v24 != v8 || v23 != v10)
  {
    [(UIScrollView *)self->_scroller setContentSize:v8, v10];
  }

  [(WeekViewAllDayContents *)self->_contentView setFrame:0.0, 0.0, v8, v10];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = objc_loadWeakRetained(&self->_delegate);
    occurrenceViews2 = [(WeekAllDayView *)self occurrenceViews];
    [v27 weekAllDayView:self didCreateOccurrenceViews:occurrenceViews2];
  }

  [(WeekAllDayView *)self rectBecameVisible:self->_latestVisibleRect.origin.x, self->_latestVisibleRect.origin.y, self->_latestVisibleRect.size.width, self->_latestVisibleRect.size.height];
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v31, 8);
}

- (double)_dateForPoint:(CGPoint)point
{
  x = point.x;
  [(WeekViewAllDayContents *)self->_contentView frame:point.x];
  v6 = (x / floor(v5 / self->_daysToDisplay));
  if ((CalTimeDirectionIsLeftToRight() & 1) == 0)
  {
    v6 = self->_daysToDisplay + ~v6;
  }

  if ([(NSArray *)self->_dayStarts count])
  {
    v7 = [(NSArray *)self->_dayStarts objectAtIndex:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 calendarDateByAddingDays:v6];
  [v8 absoluteTime];
  v10 = v9;

  return v10;
}

- (int64_t)rowIndexOfOccurrence:(id)occurrence
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002FA7C;
  v7[3] = &unk_10020F158;
  occurrenceCopy = occurrence;
  v8 = occurrenceCopy;
  v9 = &v10;
  [(WeekAllDayView *)self iterateThroughEachAllDayRow:v7];
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (id)_calendarOrderSortDescriptor
{
  v2 = qword_100251848;
  if (!qword_100251848)
  {
    v3 = [[NSSortDescriptor alloc] initWithKey:@"calendarOrder" ascending:1];
    v4 = qword_100251848;
    qword_100251848 = v3;

    v2 = qword_100251848;
  }

  return v2;
}

- (id)_numberOfDaysSortDescriptor
{
  v2 = qword_100251850;
  if (!qword_100251850)
  {
    v3 = [[NSSortDescriptor alloc] initWithKey:@"lengthForSorting" ascending:0];
    v4 = qword_100251850;
    qword_100251850 = v3;

    v2 = qword_100251850;
  }

  return v2;
}

+ (double)dayLabelHeightWithSizeClass:(int64_t)class usesMultiDay:(BOOL)day
{
  if (day)
  {
    [MultiDayNavigationViewCell heightRequiredWithSizeClass:class];
  }

  else
  {
    [LargeDayNavigationViewCell heightRequiredWithSizeClass:class usesMultiDayStyle:?];
  }

  CalRoundToScreenScale();
  return result;
}

- (CGSize)scrollerContentSize
{
  [(UIScrollView *)self->_scroller contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if (self->_allowsOccurrenceSelection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 weekAllDayViewStartDrag:self];
    }
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  if (self->_scrollingToOccurrence)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 weekAllDayView:self didFinishScrollingToOccurrence:self->_scrollingToOccurrence];
    }

    scrollingToOccurrence = self->_scrollingToOccurrence;
    self->_scrollingToOccurrence = 0;
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekAllDayViewDidScroll:self];
  }
}

- (void)dayOccurrenceViewSelected:(id)selected source:(unint64_t)source
{
  selectedCopy = selected;
  if (source == 1 && EKUICurrentWidthSizeClassIsRegularInViewHierarchy() && (v6 = objc_loadWeakRetained(&self->_delegate), v7 = objc_opt_respondsToSelector(), v6, (v7 & 1) != 0))
  {
    isReminderStack = [selectedCopy isReminderStack];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (isReminderStack)
    {
      occurrences = [selectedCopy occurrences];
      [WeakRetained weekAllDayView:self pointerDidTargetOccurrences:occurrences];
    }

    else
    {
      occurrences = [selectedCopy occurrence];
      v15 = [NSArray arrayWithObject:occurrences];
      [WeakRetained weekAllDayView:self pointerDidTargetOccurrences:v15];
    }
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    occurrences = [selectedCopy occurrence];
    v13 = [EKDayOccurrenceView isUserInitiated:source];
    occurrenceDate = [selectedCopy occurrenceDate];
    [WeakRetained weekAllDayView:self didSelectEvent:occurrences userInitiated:v13 dateSelected:occurrenceDate];
  }

LABEL_9:
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

- (void)emptySpaceClickForCalendarWeekDayEventContent:(id)content atPoint:(CGPoint)point
{
  if (self->_allowsOccurrenceSelection)
  {
    y = point.y;
    x = point.x;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [(WeekAllDayView *)self _dateForPoint:x, y];
      [v9 weekAllDayViewEmptySpaceClick:self onDay:?];
    }
  }
}

- (WeekAllDayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end