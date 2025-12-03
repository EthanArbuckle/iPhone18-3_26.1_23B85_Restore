@interface WeekGroupView
- (BOOL)weekViewShouldAnnotateAppEntities:(id)entities onDayStarting:(id)starting;
- (CGPoint)pointAtDate:(id)date isAllDay:(BOOL)day;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)description;
- (WeekGroupView)initWithFrame:(CGRect)frame sizeClass:(int64_t)class targetWindow:(id)window rightClickDelegate:(id)delegate isMultiDayView:(BOOL)view;
- (WeekGroupViewDelegate)delegate;
- (id)_castedDayOccurrenceViewFromGenericView:(id)view;
- (id)dateAtPoint:(CGPoint)point isAllDay:(BOOL *)day requireAllDayRegionInsistence:(BOOL)insistence;
- (id)dateForXOffset:(double)offset;
- (id)occurrenceViewAtPoint:(CGPoint)point ignoreSelectedCopyView:(BOOL)view;
- (id)presentationControllerForEditMenu;
- (id)selectedEventsForEditMenu;
- (id)weekViewForWeekAfter:(id)after;
- (id)weekViewForWeekBefore:(id)before;
- (int64_t)_secondAtPosition:(double)position;
- (void)adjustForVisibleRect:(CGRect)rect;
- (void)emptySpaceClick;
- (void)emptySpaceClickedOnDate:(id)date;
- (void)layoutSubviews;
- (void)loadDataAsyncWithCompletion:(id)completion reverse:(BOOL)reverse;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightedDateComponents:(id)components;
- (void)setIsInUse:(BOOL)use;
- (void)setShowsTimeMarker:(BOOL)marker;
- (void)showOverlayMonthInCellAtOffset:(double)offset animated:(BOOL)animated;
- (void)weekView:(id)view didSelectEvent:(id)event userInitiated:(BOOL)initiated dateSelected:(id)selected;
- (void)weekView:(id)view didSelectEvents:(id)events userInitiated:(BOOL)initiated;
- (void)weekView:(id)view pointerDidTargetOccurrences:(id)occurrences;
- (void)weekView:(id)view receivedTapInAllDayAreaOnDate:(id)date;
- (void)weekViewAllDaySectionDidScroll:(id)scroll;
- (void)weekViewDidBeginDragging:(id)dragging;
- (void)weekViewDidEndDecelerating:(id)decelerating;
- (void)weekViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)weekViewDidLayout:(id)layout;
- (void)weekViewDidScroll:(id)scroll;
- (void)weekViewFirstVisibleSecondChanged:(int64_t)changed;
- (void)weekViewOccurrenceLayoutDidChange:(id)change;
@end

@implementation WeekGroupView

- (WeekGroupView)initWithFrame:(CGRect)frame sizeClass:(int64_t)class targetWindow:(id)window rightClickDelegate:(id)delegate isMultiDayView:(BOOL)view
{
  viewCopy = view;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  windowCopy = window;
  delegateCopy = delegate;
  v58.receiver = self;
  v58.super_class = WeekGroupView;
  height = [(WeekGroupView *)&v58 initWithFrame:x, y, width, height];
  v18 = height;
  if (height)
  {
    height->_isMultiDayView = viewCopy;
    if (viewCopy)
    {
      v19 = off_10020D550;
      v20 = [[MultiDayWeekView alloc] initWithFrame:class sizeClass:windowCopy targetWindow:delegateCopy rightClickDelegate:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      weekView = v18->_weekView;
      v18->_weekView = &v20->super;
    }

    else
    {
      v19 = off_10020D578;
      v22 = [[WeekView alloc] initWithFrame:class sizeClass:windowCopy targetWindow:delegateCopy rightClickDelegate:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      v23 = v18->_weekView;
      v18->_weekView = v22;

      [(WeekView *)v18->_weekView setAccessibilityIdentifier:@"weekView"];
    }

    [(WeekView *)v18->_weekView setDelegate:v18];
    [(WeekGroupView *)v18 addSubview:v18->_weekView];
    v24 = objc_alloc_init(UIView);
    gutterView = v18->_gutterView;
    v18->_gutterView = v24;

    weekSeparatorColor = [(__objc2_class *)*v19 weekSeparatorColor];
    [(UIView *)v18->_gutterView setBackgroundColor:weekSeparatorColor];

    [(WeekGroupView *)v18 addSubview:v18->_gutterView];
    v27 = CalSolariumEnabled();
    v28 = v18->_weekView;
    if (v27)
    {
      [(WeekView *)v28 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v18->_gutterView setTranslatesAutoresizingMaskIntoConstraints:0];
      EKUISeparatorLineThickness();
      v30 = v29;
      leadingAnchor = [(WeekView *)v18->_weekView leadingAnchor];
      leadingAnchor2 = [(WeekGroupView *)v18 leadingAnchor];
      v53 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v59[0] = v53;
      trailingAnchor = [(WeekView *)v18->_weekView trailingAnchor];
      trailingAnchor2 = [(WeekGroupView *)v18 trailingAnchor];
      v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v59[1] = v50;
      topAnchor = [(WeekView *)v18->_weekView topAnchor];
      topAnchor2 = [(WeekGroupView *)v18 topAnchor];
      v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v59[2] = v47;
      bottomAnchor = [(WeekView *)v18->_weekView bottomAnchor];
      bottomAnchor2 = [(WeekGroupView *)v18 bottomAnchor];
      v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v59[3] = v44;
      leadingAnchor3 = [(UIView *)v18->_gutterView leadingAnchor];
      trailingAnchor3 = [(WeekGroupView *)v18 trailingAnchor];
      v41 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3];
      v59[4] = v41;
      [(UIView *)v18->_gutterView widthAnchor];
      v31 = v57 = windowCopy;
      [v31 constraintEqualToConstant:v30];
      v32 = v56 = delegateCopy;
      v59[5] = v32;
      topAnchor3 = [(UIView *)v18->_gutterView topAnchor];
      topAnchor4 = [(WeekGroupView *)v18 topAnchor];
      v35 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v59[6] = v35;
      bottomAnchor3 = [(UIView *)v18->_gutterView bottomAnchor];
      bottomAnchor4 = [(WeekGroupView *)v18 bottomAnchor];
      v38 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v59[7] = v38;
      v39 = [NSArray arrayWithObjects:v59 count:8];
      [NSLayoutConstraint activateConstraints:v39];

      delegateCopy = v56;
      windowCopy = v57;
    }

    else
    {
      [(WeekView *)v28 setAutoresizingMask:16];
      [(UIView *)v18->_gutterView setAutoresizingMask:16];
      [(WeekGroupView *)v18 setAutoresizingMask:16];
    }
  }

  return v18;
}

- (void)layoutSubviews
{
  if (CalSolariumEnabled())
  {
    v14.receiver = self;
    v14.super_class = WeekGroupView;
    [(WeekGroupView *)&v14 layoutSubviews];
  }

  else
  {
    [(WeekGroupView *)self frame];
    v4 = v3;
    [(WeekView *)self->_weekView sizeThatFits:v5, v3];
    v6 = 0.0;
    [(WeekView *)self->_weekView setFrame:0.0, 0.0, v7, v4];
    EKUISeparatorLineThickness();
    v9 = v8;
    if (CalCanvasPocketEnabled())
    {
      [(WeekGroupView *)self safeAreaInsets];
      v6 = v10;
      if (!self->_isMultiDayView)
      {
        [WeekAllDayView dayLabelHeightWithSizeClass:EKUIWidthSizeClassForViewHierarchy() usesMultiDay:self->_isMultiDayView];
        v6 = v6 + v11;
      }
    }

    [(WeekView *)self->_weekView frame];
    gutterView = self->_gutterView;

    [(UIView *)gutterView setFrame:v12, v6, v9, v4 - v6];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CalSolariumEnabled())
  {
    v11.receiver = self;
    v11.super_class = WeekGroupView;
    [(WeekGroupView *)&v11 setFrame:x, y, width, height];
  }

  else
  {
    [(WeekGroupView *)self frame];
    v9 = vabdd_f64(width, v8);
    v10.receiver = self;
    v10.super_class = WeekGroupView;
    [(WeekGroupView *)&v10 setFrame:x, y, width, height];
    if (v9 >= 2.22044605e-16)
    {
      [(WeekView *)self->_weekView updateDayWidth];
    }
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  [(WeekGroupView *)self frame];
  v4 = NSStringFromRect(v14);
  weekStartDate = [(WeekGroupView *)self weekStartDate];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [weekStartDate month]);
  weekStartDate2 = [(WeekGroupView *)self weekStartDate];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [weekStartDate2 day]);
  weekStartDate3 = [(WeekGroupView *)self weekStartDate];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [weekStartDate3 year]);
  v11 = [NSString stringWithFormat:@"<%@: %p frame = %@, weekStartDate = (%@ / %@ / %@)>", v3, self, v4, v6, v8, v10];;

  return v11;
}

- (void)setShowsTimeMarker:(BOOL)marker
{
  if (self->_showsTimeMarker != marker)
  {
    self->_showsTimeMarker = marker;
    [(WeekView *)self->_weekView setShowsTimeMarker:?];
  }
}

- (void)showOverlayMonthInCellAtOffset:(double)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  [(WeekView *)self->_weekView frame];
  v7 = offset - CGRectGetMinX(v10);
  weekView = self->_weekView;

  [(WeekView *)weekView showOverlayMonthInCellAtOffset:animatedCopy animated:v7];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  [(WeekView *)self->_weekView frame];
  v6 = v5;
  [(UIView *)self->_gutterView frame];
  v8 = v6 + v7;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)adjustForVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(WeekView *)self->_weekView frame];
  v9 = width - v8;
  weekView = self->_weekView;
  if (v9 >= 0.0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0.0;
  }

  [(WeekView *)weekView adjustForVisibleRect:x, y, v11, height];
}

- (void)setIsInUse:(BOOL)use
{
  self->_isInUse = use;
  if (!use)
  {
    [(WeekView *)self->_weekView setIsInUse:0];
  }
}

- (void)weekViewDidBeginDragging:(id)dragging
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekGroupDidBeginDragging:self];
  }
}

- (void)weekViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekGroupDidScroll:self];
  }
}

- (void)weekViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 weekGroupDidEndDragging:self willDecelerate:decelerateCopy];
  }
}

- (void)weekViewDidEndDecelerating:(id)decelerating
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekGroupDidEndDecelerating:self];
  }
}

- (void)weekViewAllDaySectionDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekGroupAllDaySectionDidScroll:self];
  }
}

- (void)weekView:(id)view receivedTapInAllDayAreaOnDate:(id)date
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 weekGroup:self didReceiveTapForDate:dateCopy];
  }
}

- (id)weekViewForWeekBefore:(id)before
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && (v6 = objc_loadWeakRetained(&self->_delegate), [v6 weekGroupForWeekBefore:self], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    weekView = [v7 weekView];
  }

  else
  {
    weekView = 0;
  }

  return weekView;
}

- (id)weekViewForWeekAfter:(id)after
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && (v6 = objc_loadWeakRetained(&self->_delegate), [v6 weekGroupForWeekAfter:self], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    weekView = [v7 weekView];
  }

  else
  {
    weekView = 0;
  }

  return weekView;
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

- (void)setHighlightedDateComponents:(id)components
{
  objc_storeStrong(&self->_highlightedDateComponents, components);
  componentsCopy = components;
  [(WeekView *)self->_weekView setHighlightedDateComponents:componentsCopy];
}

- (void)loadDataAsyncWithCompletion:(id)completion reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  completionCopy = completion;
  weekView = self->_weekView;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007D6A0;
  v9[3] = &unk_10020EBC8;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(WeekView *)weekView loadDataAsyncWithCompletion:v9 reverse:reverseCopy];
}

- (void)weekView:(id)view didSelectEvent:(id)event userInitiated:(BOOL)initiated dateSelected:(id)selected
{
  initiatedCopy = initiated;
  eventCopy = event;
  selectedCopy = selected;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 weekGroup:self didSelectEvent:eventCopy userInitiated:initiatedCopy dateSelected:selectedCopy];
  }
}

- (void)weekView:(id)view didSelectEvents:(id)events userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  eventsCopy = events;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 weekGroup:self didSelectEvents:eventsCopy userInitiated:initiatedCopy];
  }
}

- (void)weekView:(id)view pointerDidTargetOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 weekGroup:self pointerDidTargetOccurrences:occurrencesCopy];
  }
}

- (BOOL)weekViewShouldAnnotateAppEntities:(id)entities onDayStarting:(id)starting
{
  startingCopy = starting;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 weekGroupViewShouldAnnotateAppEntities:self onDayStarting:startingCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_secondAtPosition:(double)position
{
  content = [(WeekView *)self->_weekView content];
  grid = [content grid];
  v6 = [grid secondAtPosition:position];

  if (v6 >= 0x1517F)
  {
    v7 = 86399;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (id)dateForXOffset:(double)offset
{
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  MinX = 0.0;
  if (IsLeftToRight)
  {
    [(WeekView *)self->_weekView frame];
    MinX = CGRectGetMinX(v11);
  }

  v7 = offset - MinX;
  weekView = self->_weekView;

  return [(WeekView *)weekView dateForXOffset:v7];
}

- (id)dateAtPoint:(CGPoint)point isAllDay:(BOOL *)day requireAllDayRegionInsistence:(BOOL)insistence
{
  insistenceCopy = insistence;
  y = point.y;
  v9 = [(WeekGroupView *)self dateForXOffset:point.x];
  calendar = [(WeekView *)self->_weekView calendar];
  timeZone = [calendar timeZone];
  v12 = [EKCalendarDate calendarDateWithDateComponents:v9 timeZone:timeZone];

  scrollView = [(WeekView *)self->_weekView scrollView];
  [scrollView frame];
  v15 = y - v14;

  allDayView = [(WeekView *)self->_weekView allDayView];
  [allDayView bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  allDayView2 = [(WeekView *)self->_weekView allDayView];
  [(WeekGroupView *)self convertRect:allDayView2 fromView:v18, v20, v22, v24];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  if (insistenceCopy)
  {
    v34 = v33 + -10.0;
  }

  else
  {
    v34 = v33;
  }

  v35 = v27;
  v36 = v29;
  v37 = v31;
  MaxY = CGRectGetMaxY(*(&v34 - 3));
  if (y < MaxY || (-[WeekView scrollView](self->_weekView, "scrollView"), v39 = objc_claimAutoreleasedReturnValue(), [v39 frame], v41 = v40, v39, v15 <= v41))
  {
    scrollView2 = [(WeekView *)self->_weekView scrollView];
    [scrollView2 contentOffset];
    v42 = [(WeekGroupView *)self _secondAtPosition:fmax(v15, 0.0) + v44];
  }

  else
  {
    v42 = 86399;
  }

  v45 = [v12 calendarDateByComponentwiseAddingSeconds:v42];
  if (day)
  {
    *day = y < MaxY;
  }

  return v45;
}

- (CGPoint)pointAtDate:(id)date isAllDay:(BOOL)day
{
  [(WeekView *)self->_weekView pointAtDate:date isAllDay:day];
  weekView = self->_weekView;

  [(WeekView *)weekView convertPoint:self toView:?];
  result.y = v7;
  result.x = v6;
  return result;
}

- (id)occurrenceViewAtPoint:(CGPoint)point ignoreSelectedCopyView:(BOOL)view
{
  viewCopy = view;
  y = point.y;
  x = point.x;
  v8 = [(WeekGroupView *)self hitTest:0 withEvent:?];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10007DE7C;
  v19 = sub_10007DE8C;
  v20 = [(WeekGroupView *)self _castedDayOccurrenceViewFromGenericView:v8];
  if (viewCopy && [v16[5] isSelectedCopyView])
  {
    superview = [v16[5] superview];
    v10 = v16[5];
    v16[5] = 0;

    subviews = [superview subviews];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007DE94;
    v14[3] = &unk_10020FEA0;
    *&v14[6] = x;
    *&v14[7] = y;
    v14[4] = self;
    v14[5] = &v15;
    [subviews enumerateObjectsWithOptions:2 usingBlock:v14];

    v12 = v16[5];
  }

  else
  {
    v12 = v16[5];
  }

  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id)_castedDayOccurrenceViewFromGenericView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    occurrenceView = viewCopy;
LABEL_5:
    v5 = occurrenceView;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    occurrenceView = [viewCopy occurrenceView];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)emptySpaceClick
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 emptySpaceClick];
  }
}

- (void)emptySpaceClickedOnDate:(id)date
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 emptySpaceClickedOnDate:dateCopy];
  }
}

- (void)weekViewDidLayout:(id)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekGroupViewDidLayout:self];
  }
}

- (void)weekViewOccurrenceLayoutDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekGroupViewOccurrenceLayoutDidChange:self];
  }
}

- (void)weekViewFirstVisibleSecondChanged:(int64_t)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 weekGroupViewFirstVisibleSecondChanged:changed];
  }
}

- (WeekGroupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end