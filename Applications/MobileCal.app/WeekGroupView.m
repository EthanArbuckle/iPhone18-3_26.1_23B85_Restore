@interface WeekGroupView
- (BOOL)weekViewShouldAnnotateAppEntities:(id)a3 onDayStarting:(id)a4;
- (CGPoint)pointAtDate:(id)a3 isAllDay:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)description;
- (WeekGroupView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4 targetWindow:(id)a5 rightClickDelegate:(id)a6 isMultiDayView:(BOOL)a7;
- (WeekGroupViewDelegate)delegate;
- (id)_castedDayOccurrenceViewFromGenericView:(id)a3;
- (id)dateAtPoint:(CGPoint)a3 isAllDay:(BOOL *)a4 requireAllDayRegionInsistence:(BOOL)a5;
- (id)dateForXOffset:(double)a3;
- (id)occurrenceViewAtPoint:(CGPoint)a3 ignoreSelectedCopyView:(BOOL)a4;
- (id)presentationControllerForEditMenu;
- (id)selectedEventsForEditMenu;
- (id)weekViewForWeekAfter:(id)a3;
- (id)weekViewForWeekBefore:(id)a3;
- (int64_t)_secondAtPosition:(double)a3;
- (void)adjustForVisibleRect:(CGRect)a3;
- (void)emptySpaceClick;
- (void)emptySpaceClickedOnDate:(id)a3;
- (void)layoutSubviews;
- (void)loadDataAsyncWithCompletion:(id)a3 reverse:(BOOL)a4;
- (void)setFrame:(CGRect)a3;
- (void)setHighlightedDateComponents:(id)a3;
- (void)setIsInUse:(BOOL)a3;
- (void)setShowsTimeMarker:(BOOL)a3;
- (void)showOverlayMonthInCellAtOffset:(double)a3 animated:(BOOL)a4;
- (void)weekView:(id)a3 didSelectEvent:(id)a4 userInitiated:(BOOL)a5 dateSelected:(id)a6;
- (void)weekView:(id)a3 didSelectEvents:(id)a4 userInitiated:(BOOL)a5;
- (void)weekView:(id)a3 pointerDidTargetOccurrences:(id)a4;
- (void)weekView:(id)a3 receivedTapInAllDayAreaOnDate:(id)a4;
- (void)weekViewAllDaySectionDidScroll:(id)a3;
- (void)weekViewDidBeginDragging:(id)a3;
- (void)weekViewDidEndDecelerating:(id)a3;
- (void)weekViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)weekViewDidLayout:(id)a3;
- (void)weekViewDidScroll:(id)a3;
- (void)weekViewFirstVisibleSecondChanged:(int64_t)a3;
- (void)weekViewOccurrenceLayoutDidChange:(id)a3;
@end

@implementation WeekGroupView

- (WeekGroupView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4 targetWindow:(id)a5 rightClickDelegate:(id)a6 isMultiDayView:(BOOL)a7
{
  v7 = a7;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a5;
  v16 = a6;
  v58.receiver = self;
  v58.super_class = WeekGroupView;
  v17 = [(WeekGroupView *)&v58 initWithFrame:x, y, width, height];
  v18 = v17;
  if (v17)
  {
    v17->_isMultiDayView = v7;
    if (v7)
    {
      v19 = off_10020D550;
      v20 = [[MultiDayWeekView alloc] initWithFrame:a4 sizeClass:v15 targetWindow:v16 rightClickDelegate:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      weekView = v18->_weekView;
      v18->_weekView = &v20->super;
    }

    else
    {
      v19 = off_10020D578;
      v22 = [[WeekView alloc] initWithFrame:a4 sizeClass:v15 targetWindow:v16 rightClickDelegate:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      v23 = v18->_weekView;
      v18->_weekView = v22;

      [(WeekView *)v18->_weekView setAccessibilityIdentifier:@"weekView"];
    }

    [(WeekView *)v18->_weekView setDelegate:v18];
    [(WeekGroupView *)v18 addSubview:v18->_weekView];
    v24 = objc_alloc_init(UIView);
    gutterView = v18->_gutterView;
    v18->_gutterView = v24;

    v26 = [(__objc2_class *)*v19 weekSeparatorColor];
    [(UIView *)v18->_gutterView setBackgroundColor:v26];

    [(WeekGroupView *)v18 addSubview:v18->_gutterView];
    v27 = CalSolariumEnabled();
    v28 = v18->_weekView;
    if (v27)
    {
      [(WeekView *)v28 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v18->_gutterView setTranslatesAutoresizingMaskIntoConstraints:0];
      EKUISeparatorLineThickness();
      v30 = v29;
      v55 = [(WeekView *)v18->_weekView leadingAnchor];
      v54 = [(WeekGroupView *)v18 leadingAnchor];
      v53 = [v55 constraintEqualToAnchor:v54];
      v59[0] = v53;
      v52 = [(WeekView *)v18->_weekView trailingAnchor];
      v51 = [(WeekGroupView *)v18 trailingAnchor];
      v50 = [v52 constraintEqualToAnchor:v51];
      v59[1] = v50;
      v49 = [(WeekView *)v18->_weekView topAnchor];
      v48 = [(WeekGroupView *)v18 topAnchor];
      v47 = [v49 constraintEqualToAnchor:v48];
      v59[2] = v47;
      v46 = [(WeekView *)v18->_weekView bottomAnchor];
      v45 = [(WeekGroupView *)v18 bottomAnchor];
      v44 = [v46 constraintEqualToAnchor:v45];
      v59[3] = v44;
      v43 = [(UIView *)v18->_gutterView leadingAnchor];
      v42 = [(WeekGroupView *)v18 trailingAnchor];
      v41 = [v43 constraintEqualToAnchor:v42];
      v59[4] = v41;
      [(UIView *)v18->_gutterView widthAnchor];
      v31 = v57 = v15;
      [v31 constraintEqualToConstant:v30];
      v32 = v56 = v16;
      v59[5] = v32;
      v33 = [(UIView *)v18->_gutterView topAnchor];
      v34 = [(WeekGroupView *)v18 topAnchor];
      v35 = [v33 constraintEqualToAnchor:v34];
      v59[6] = v35;
      v36 = [(UIView *)v18->_gutterView bottomAnchor];
      v37 = [(WeekGroupView *)v18 bottomAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];
      v59[7] = v38;
      v39 = [NSArray arrayWithObjects:v59 count:8];
      [NSLayoutConstraint activateConstraints:v39];

      v16 = v56;
      v15 = v57;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v5 = [(WeekGroupView *)self weekStartDate];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 month]);
  v7 = [(WeekGroupView *)self weekStartDate];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 day]);
  v9 = [(WeekGroupView *)self weekStartDate];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 year]);
  v11 = [NSString stringWithFormat:@"<%@: %p frame = %@, weekStartDate = (%@ / %@ / %@)>", v3, self, v4, v6, v8, v10];;

  return v11;
}

- (void)setShowsTimeMarker:(BOOL)a3
{
  if (self->_showsTimeMarker != a3)
  {
    self->_showsTimeMarker = a3;
    [(WeekView *)self->_weekView setShowsTimeMarker:?];
  }
}

- (void)showOverlayMonthInCellAtOffset:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(WeekView *)self->_weekView frame];
  v7 = a3 - CGRectGetMinX(v10);
  weekView = self->_weekView;

  [(WeekView *)weekView showOverlayMonthInCellAtOffset:v4 animated:v7];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  [(WeekView *)self->_weekView frame];
  v6 = v5;
  [(UIView *)self->_gutterView frame];
  v8 = v6 + v7;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)adjustForVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setIsInUse:(BOOL)a3
{
  self->_isInUse = a3;
  if (!a3)
  {
    [(WeekView *)self->_weekView setIsInUse:0];
  }
}

- (void)weekViewDidBeginDragging:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekGroupDidBeginDragging:self];
  }
}

- (void)weekViewDidScroll:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekGroupDidScroll:self];
  }
}

- (void)weekViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 weekGroupDidEndDragging:self willDecelerate:v4];
  }
}

- (void)weekViewDidEndDecelerating:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekGroupDidEndDecelerating:self];
  }
}

- (void)weekViewAllDaySectionDidScroll:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekGroupAllDaySectionDidScroll:self];
  }
}

- (void)weekView:(id)a3 receivedTapInAllDayAreaOnDate:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 weekGroup:self didReceiveTapForDate:v8];
  }
}

- (id)weekViewForWeekBefore:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && (v6 = objc_loadWeakRetained(&self->_delegate), [v6 weekGroupForWeekBefore:self], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v8 = [v7 weekView];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)weekViewForWeekAfter:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && (v6 = objc_loadWeakRetained(&self->_delegate), [v6 weekGroupForWeekAfter:self], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v8 = [v7 weekView];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)presentationControllerForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained presentationControllerForEditMenu];

  return v3;
}

- (id)selectedEventsForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained selectedEventsForEditMenu];

  return v3;
}

- (void)setHighlightedDateComponents:(id)a3
{
  objc_storeStrong(&self->_highlightedDateComponents, a3);
  v5 = a3;
  [(WeekView *)self->_weekView setHighlightedDateComponents:v5];
}

- (void)loadDataAsyncWithCompletion:(id)a3 reverse:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  weekView = self->_weekView;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007D6A0;
  v9[3] = &unk_10020EBC8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(WeekView *)weekView loadDataAsyncWithCompletion:v9 reverse:v4];
}

- (void)weekView:(id)a3 didSelectEvent:(id)a4 userInitiated:(BOOL)a5 dateSelected:(id)a6
{
  v7 = a5;
  v13 = a4;
  v9 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 weekGroup:self didSelectEvent:v13 userInitiated:v7 dateSelected:v9];
  }
}

- (void)weekView:(id)a3 didSelectEvents:(id)a4 userInitiated:(BOOL)a5
{
  v5 = a5;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 weekGroup:self didSelectEvents:v10 userInitiated:v5];
  }
}

- (void)weekView:(id)a3 pointerDidTargetOccurrences:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 weekGroup:self pointerDidTargetOccurrences:v8];
  }
}

- (BOOL)weekViewShouldAnnotateAppEntities:(id)a3 onDayStarting:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 weekGroupViewShouldAnnotateAppEntities:self onDayStarting:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_secondAtPosition:(double)a3
{
  v4 = [(WeekView *)self->_weekView content];
  v5 = [v4 grid];
  v6 = [v5 secondAtPosition:a3];

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

- (id)dateForXOffset:(double)a3
{
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  MinX = 0.0;
  if (IsLeftToRight)
  {
    [(WeekView *)self->_weekView frame];
    MinX = CGRectGetMinX(v11);
  }

  v7 = a3 - MinX;
  weekView = self->_weekView;

  return [(WeekView *)weekView dateForXOffset:v7];
}

- (id)dateAtPoint:(CGPoint)a3 isAllDay:(BOOL *)a4 requireAllDayRegionInsistence:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  v9 = [(WeekGroupView *)self dateForXOffset:a3.x];
  v10 = [(WeekView *)self->_weekView calendar];
  v11 = [v10 timeZone];
  v12 = [EKCalendarDate calendarDateWithDateComponents:v9 timeZone:v11];

  v13 = [(WeekView *)self->_weekView scrollView];
  [v13 frame];
  v15 = y - v14;

  v16 = [(WeekView *)self->_weekView allDayView];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(WeekView *)self->_weekView allDayView];
  [(WeekGroupView *)self convertRect:v25 fromView:v18, v20, v22, v24];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  if (v5)
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
    v43 = [(WeekView *)self->_weekView scrollView];
    [v43 contentOffset];
    v42 = [(WeekGroupView *)self _secondAtPosition:fmax(v15, 0.0) + v44];
  }

  else
  {
    v42 = 86399;
  }

  v45 = [v12 calendarDateByComponentwiseAddingSeconds:v42];
  if (a4)
  {
    *a4 = y < MaxY;
  }

  return v45;
}

- (CGPoint)pointAtDate:(id)a3 isAllDay:(BOOL)a4
{
  [(WeekView *)self->_weekView pointAtDate:a3 isAllDay:a4];
  weekView = self->_weekView;

  [(WeekView *)weekView convertPoint:self toView:?];
  result.y = v7;
  result.x = v6;
  return result;
}

- (id)occurrenceViewAtPoint:(CGPoint)a3 ignoreSelectedCopyView:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(WeekGroupView *)self hitTest:0 withEvent:?];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10007DE7C;
  v19 = sub_10007DE8C;
  v20 = [(WeekGroupView *)self _castedDayOccurrenceViewFromGenericView:v8];
  if (v4 && [v16[5] isSelectedCopyView])
  {
    v9 = [v16[5] superview];
    v10 = v16[5];
    v16[5] = 0;

    v11 = [v9 subviews];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007DE94;
    v14[3] = &unk_10020FEA0;
    *&v14[6] = x;
    *&v14[7] = y;
    v14[4] = self;
    v14[5] = &v15;
    [v11 enumerateObjectsWithOptions:2 usingBlock:v14];

    v12 = v16[5];
  }

  else
  {
    v12 = v16[5];
  }

  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id)_castedDayOccurrenceViewFromGenericView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 occurrenceView];
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

- (void)emptySpaceClickedOnDate:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 emptySpaceClickedOnDate:v7];
  }
}

- (void)weekViewDidLayout:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekGroupViewDidLayout:self];
  }
}

- (void)weekViewOccurrenceLayoutDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekGroupViewOccurrenceLayoutDidChange:self];
  }
}

- (void)weekViewFirstVisibleSecondChanged:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 weekGroupViewFirstVisibleSecondChanged:a3];
  }
}

- (WeekGroupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end