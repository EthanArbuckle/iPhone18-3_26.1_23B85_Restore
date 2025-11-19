@interface MonthDayNavigationTransitionView
- (CGRect)dayFrame;
- (CGRect)monthFrame;
- (CGRect)monthOccurrencesFrame;
- (CGSize)dayCellSize;
- (MonthDayNavigationTransitionView)initWithFrame:(CGRect)a3;
- (id)_selectedCell;
- (id)_todayCell;
- (void)_animateView:(id)a3 toPosition:(CGPoint)a4;
- (void)_setToDayStateAnimated:(BOOL)a3;
- (void)_setToMonthStateAnimated:(BOOL)a3;
- (void)_updateWeekendIndices;
- (void)animateToDayLayout;
- (void)animateToMonthLayout;
- (void)completeSetup;
- (void)setDayTypes:(id)a3 badgeColors:(id)a4 badgeLocales:(id)a5;
- (void)setStrings:(id)a3 overlayStrings:(id)a4 weekNumberString:(id)a5 todayInWeek:(BOOL)a6;
- (void)setUnderlineThickness:(double)a3 forOverlayStringAtIndex:(int64_t)a4;
- (void)setVerticallyCompressedState:(BOOL)a3;
@end

@implementation MonthDayNavigationTransitionView

- (MonthDayNavigationTransitionView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = MonthDayNavigationTransitionView;
  v3 = [(MonthDayNavigationTransitionView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MonthDayNavigationTransitionView *)v3 setSelectedIndex:-1];
    [(MonthDayNavigationTransitionView *)v4 setTodayIndex:-1];
    [(MonthDayNavigationTransitionView *)v4 setMonthBreakIndex:-1];
    v5 = objc_alloc_init(TopLineView);
    topLine = v4->_topLine;
    v4->_topLine = v5;

    [(MonthDayNavigationTransitionView *)v4 addSubview:v4->_topLine];
    v7 = +[UIColor clearColor];
    [(MonthDayNavigationTransitionView *)v4 setBackgroundColor:v7];
  }

  return v4;
}

- (void)setStrings:(id)a3 overlayStrings:(id)a4 weekNumberString:(id)a5 todayInWeek:(BOOL)a6
{
  v35 = a6;
  v36 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 count];
  self->_hasOverlay = v11 == [v36 count];
  v12 = [[NSMutableArray alloc] initWithCapacity:7];
  cells = self->_cells;
  self->_cells = v12;

  if ([v36 count])
  {
    v14 = 0;
    do
    {
      [(MonthDayNavigationTransitionView *)self dayCellSize];
      v16 = v15;
      v18 = v17;
      [(MonthDayNavigationTransitionView *)self dayCellSize];
      v20 = [[CompactDayNavigationViewCell alloc] initWithFrame:1 loadMonthAnimationState:self->_hasOverlay hasOverlay:1 sizeClass:v19 * v14, 0.0, v16, v18];
      [(CompactDayNavigationViewCell *)v20 setMatchesMonthView:1];
      v21 = +[UIColor clearColor];
      [(CompactDayNavigationViewCell *)v20 setBackgroundColor:v21];

      [(MonthDayNavigationTransitionView *)self addSubview:v20];
      [(NSMutableArray *)self->_cells addObject:v20];
      v22 = [v36 objectAtIndex:v14];
      [(CompactDayNavigationViewCell *)v20 setDisplayedString:v22];

      if (self->_hasOverlay)
      {
        v23 = [v9 objectAtIndex:v14];
        [(CompactDayNavigationViewCell *)v20 setOverlayString:v23];
      }

      ++v14;
    }

    while (v14 < [v36 count]);
  }

  self->_showWeekNumber = v10 != 0;
  if (v10)
  {
    v24 = objc_opt_new();
    weekNumberLabel = self->_weekNumberLabel;
    self->_weekNumberLabel = v24;

    v26 = +[CompactMonthWeekView weekNumberFont];
    [(UILabel *)self->_weekNumberLabel setFont:v26];

    [(UILabel *)self->_weekNumberLabel setText:v10];
    v27 = [CompactMonthWeekView weekNumberColorForThisWeek:v35];
    [(UILabel *)self->_weekNumberLabel setTextColor:v27];

    [(MonthDayNavigationTransitionView *)self addSubview:self->_weekNumberLabel];
  }

  [(MonthDayNavigationTransitionView *)self frame];
  v29 = v28;
  v31 = v30;
  [(MonthDayNavigationTransitionView *)self dayFrame];
  Width = CGRectGetWidth(v38);
  [(MonthDayNavigationTransitionView *)self monthFrame];
  v33 = CGRectGetWidth(v39);
  if (Width < v33)
  {
    Width = v33;
  }

  [(MonthDayNavigationTransitionView *)self dayCellSize];
  [(MonthDayNavigationTransitionView *)self setFrame:v29, v31, Width, v34];
}

- (void)setUnderlineThickness:(double)a3 forOverlayStringAtIndex:(int64_t)a4
{
  if ((a4 & 0x8000000000000000) == 0 && [(NSMutableArray *)self->_cells count]> a4)
  {
    v7 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:a4];
    [v7 setUnderlineThickness:a3];
  }
}

- (void)setDayTypes:(id)a3 badgeColors:(id)a4 badgeLocales:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v19 count];
  if (v10 == [(NSMutableArray *)self->_cells count])
  {
    v11 = [v8 count];
    if (v11 == [(NSMutableArray *)self->_cells count])
    {
      v12 = [v9 count];
      if (v12 == [(NSMutableArray *)self->_cells count]&& [(NSMutableArray *)self->_cells count]>= 1)
      {
        v13 = 0;
        do
        {
          v14 = [v19 objectAtIndexedSubscript:v13];
          v15 = [v14 integerValue];

          v16 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:v13];
          [v16 setBadgeType:v15];
          v17 = [v8 objectAtIndexedSubscript:v13];
          [v16 setBadgeColor:v17];

          v18 = [v9 objectAtIndexedSubscript:v13];
          [v16 setBadgeLocale:v18];

          ++v13;
        }

        while (v13 < [(NSMutableArray *)self->_cells count]);
      }
    }
  }
}

- (void)setVerticallyCompressedState:(BOOL)a3
{
  v3 = a3;
  self->_verticallyCompressedState = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_cells;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [*(*(&v9 + 1) + 8 * v8) setVerticallyCompressedState:{v3, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)completeSetup
{
  [(MonthDayNavigationTransitionView *)self _updateWeekendIndices];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_cells;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) layoutIfNeeded];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateWeekendIndices
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->_cells;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v21 + 1) + 8 * v7) setIsWeekend:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v8 = [(MonthDayNavigationTransitionView *)self weekendIndices];

  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(MonthDayNavigationTransitionView *)self weekendIndices];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v17 + 1) + 8 * v13) integerValue];
          if ((v14 & 0x8000000000000000) == 0)
          {
            v15 = v14;
            if (v14 < [(NSMutableArray *)self->_cells count])
            {
              v16 = [(NSMutableArray *)self->_cells objectAtIndex:v15];
              [v16 setIsWeekend:1];
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v11);
    }
  }
}

- (void)animateToDayLayout
{
  [(MonthDayNavigationTransitionView *)self _setToMonthStateAnimated:0];

  [(MonthDayNavigationTransitionView *)self _setToDayStateAnimated:1];
}

- (void)animateToMonthLayout
{
  [(MonthDayNavigationTransitionView *)self _setToDayStateAnimated:0];

  [(MonthDayNavigationTransitionView *)self _setToMonthStateAnimated:1];
}

- (void)_setToDayStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MonthDayNavigationTransitionView *)self monthOccurrencesSnapshot];

  if (v5)
  {
    v6 = [(MonthDayNavigationTransitionView *)self monthOccurrencesSnapshot];
    v7 = [v6 superview];

    if (!v7)
    {
      v8 = [(MonthDayNavigationTransitionView *)self monthOccurrencesSnapshot];
      [(MonthDayNavigationTransitionView *)self addSubview:v8];
    }

    v9 = [(MonthDayNavigationTransitionView *)self monthOccurrencesSnapshot];
    [(MonthDayNavigationTransitionView *)self bringSubviewToFront:v9];
  }

  v10 = [(MonthDayNavigationTransitionView *)self monthSummarySnapshots];
  if (![v10 count])
  {
    goto LABEL_16;
  }

  v11 = [(MonthDayNavigationTransitionView *)self monthSummarySnapshots];
  v12 = [v11 count];
  v13 = [(MonthDayNavigationTransitionView *)self monthSummaryFrames];
  v14 = [v13 count];

  if (v12 == v14)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = [(MonthDayNavigationTransitionView *)self monthSummarySnapshots];
    v15 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          v20 = [v19 superview];

          if (!v20)
          {
            [(MonthDayNavigationTransitionView *)self addSubview:v19];
          }

          [(MonthDayNavigationTransitionView *)self bringSubviewToFront:v19];
        }

        v16 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v16);
    }

LABEL_16:
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000FB2BC;
  v37[3] = &unk_10020EB00;
  v37[4] = self;
  v21 = objc_retainBlock(v37);
  v22 = [(MonthDayNavigationTransitionView *)self _todayCell];
  [v22 setIsToday:1];

  animateNavigationPreferringFRR();
  if (self->_selectedIndex != self->_todayIndex)
  {
    animateNavigationPreferringFRR();
    if (!v3)
    {
      v23 = [(MonthDayNavigationTransitionView *)self _selectedCell];
      [v23 layoutIfNeeded];

      v24 = [(MonthDayNavigationTransitionView *)self _todayCell];
      [v24 layoutIfNeeded];
    }
  }

  if (v3)
  {
    springAnimationDuration();
    v26 = v25;
    v27 = +[SpringFactory sharedFactory];
    v28 = navigationAnimationsPreferringFRR();
    [UIView _animateWithDuration:393216 delay:v27 options:v28 factory:0 animations:v26 completion:0.0];

    [(MonthDayNavigationTransitionView *)self dayFrame];
    v30 = v29;
    v32 = v31;
    springAnimationDuration();
    v34 = v33;
    v35 = +[SpringFactory sharedFactory];
    v36 = navigationAnimationsPreferringFRR();
    [UIView _animateWithDuration:393216 delay:v35 options:v36 factory:0 animations:v34 completion:0.0, _NSConcreteStackBlock, 3221225472, sub_1000FB8D0, &unk_10020ED88, self, 0, 0, v30, v32];

    [(MonthDayNavigationTransitionView *)self dayFrame];
    [(MonthDayNavigationTransitionView *)self _animateView:self toPosition:?];
  }

  else
  {
    (v21[2])(v21);
    [(MonthDayNavigationTransitionView *)self dayFrame];
    [(MonthDayNavigationTransitionView *)self setFrame:?];
  }
}

- (void)_setToMonthStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MonthDayNavigationTransitionView *)self monthOccurrencesSnapshot];

  if (v5)
  {
    v6 = [(MonthDayNavigationTransitionView *)self monthOccurrencesSnapshot];
    v7 = [v6 superview];

    if (!v7)
    {
      v8 = [(MonthDayNavigationTransitionView *)self monthOccurrencesSnapshot];
      [(MonthDayNavigationTransitionView *)self addSubview:v8];
    }

    v9 = [(MonthDayNavigationTransitionView *)self monthOccurrencesSnapshot];
    [(MonthDayNavigationTransitionView *)self bringSubviewToFront:v9];
  }

  v10 = [(MonthDayNavigationTransitionView *)self monthSummarySnapshots];
  if ([v10 count])
  {
    v11 = [(MonthDayNavigationTransitionView *)self monthSummarySnapshots];
    v12 = [v11 count];
    v13 = [(MonthDayNavigationTransitionView *)self monthSummaryFrames];
    v14 = [v13 count];

    if (v12 != v14)
    {
      goto LABEL_17;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = [(MonthDayNavigationTransitionView *)self monthSummarySnapshots];
    v15 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v42 + 1) + 8 * i);
          v20 = [v19 superview];

          if (!v20)
          {
            [(MonthDayNavigationTransitionView *)self addSubview:v19];
          }

          [(MonthDayNavigationTransitionView *)self bringSubviewToFront:v19];
        }

        v16 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v16);
    }
  }

LABEL_17:
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000FBEDC;
  v41[3] = &unk_10020EB00;
  v41[4] = self;
  v21 = objc_retainBlock(v41);
  v22 = [(MonthDayNavigationTransitionView *)self verticallyCompressedState];
  v23 = [(MonthDayNavigationTransitionView *)self _todayCell];
  [v23 setIsToday:1];

  if (v22)
  {
    animateNavigationPreferringFRR();
    if (self->_selectedIndex == self->_todayIndex)
    {
      goto LABEL_25;
    }

    animateNavigationPreferringFRR();
    if (v3)
    {
      goto LABEL_25;
    }

    v24 = [(MonthDayNavigationTransitionView *)self _selectedCell];
    [v24 layoutIfNeeded];

    v25 = [(MonthDayNavigationTransitionView *)self _todayCell];
    [v25 layoutIfNeeded];
  }

  else
  {
    v25 = navigationAnimationsPreferringFRR();
    v25[2]();
    if (self->_todayIndex != self->_selectedIndex)
    {
      v26 = navigationAnimationsPreferringFRR();
      v26[2]();
    }

    v27 = [(MonthDayNavigationTransitionView *)self _todayCell];
    [v27 layoutBelowIfNeeded];
  }

LABEL_25:
  if (v3)
  {
    springAnimationDuration();
    v29 = v28;
    v30 = +[SpringFactory sharedFactory];
    v31 = navigationAnimationsPreferringFRR();
    [UIView _animateWithDuration:393216 delay:v30 options:v31 factory:0 animations:v29 completion:0.0];

    [(MonthDayNavigationTransitionView *)self monthFrame];
    v33 = v32;
    v35 = v34;
    springAnimationDuration();
    v37 = v36;
    v38 = +[SpringFactory sharedFactory];
    origin = CGRectZero.origin;
    v39 = navigationAnimationsPreferringFRR();
    [UIView _animateWithDuration:393216 delay:v38 options:v39 factory:0 animations:v37 completion:0.0, _NSConcreteStackBlock, 3221225472, sub_1000FC934, &unk_10020ED88, self, origin, v33, v35];

    [(MonthDayNavigationTransitionView *)self monthFrame];
    [(MonthDayNavigationTransitionView *)self _animateView:self toPosition:?];
  }

  else
  {
    (v21[2])(v21);
    [(MonthDayNavigationTransitionView *)self monthFrame];
    [(MonthDayNavigationTransitionView *)self setFrame:?];
  }
}

- (id)_selectedCell
{
  if ([(MonthDayNavigationTransitionView *)self selectedIndex]< 0 || (v3 = [(MonthDayNavigationTransitionView *)self selectedIndex], v3 >= [(NSMutableArray *)self->_cells count]))
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_cells objectAtIndex:[(MonthDayNavigationTransitionView *)self selectedIndex]];
  }

  return v4;
}

- (id)_todayCell
{
  if ([(MonthDayNavigationTransitionView *)self todayIndex]< 0 || (v3 = [(MonthDayNavigationTransitionView *)self todayIndex], v3 >= [(NSMutableArray *)self->_cells count]))
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_cells objectAtIndex:[(MonthDayNavigationTransitionView *)self todayIndex]];
  }

  return v4;
}

- (void)_animateView:(id)a3 toPosition:(CGPoint)a4
{
  v4 = a3;
  springAnimationDuration();
  v6 = v5;
  v7 = +[SpringFactory sharedFactory];
  v10 = v4;
  v8 = v4;
  v9 = navigationAnimationsPreferringFRR();
  [UIView _animateWithDuration:393216 delay:v7 options:v9 factory:0 animations:v6 completion:0.0];
}

- (CGRect)dayFrame
{
  x = self->_dayFrame.origin.x;
  y = self->_dayFrame.origin.y;
  width = self->_dayFrame.size.width;
  height = self->_dayFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)dayCellSize
{
  width = self->_dayCellSize.width;
  height = self->_dayCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)monthFrame
{
  x = self->_monthFrame.origin.x;
  y = self->_monthFrame.origin.y;
  width = self->_monthFrame.size.width;
  height = self->_monthFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)monthOccurrencesFrame
{
  x = self->_monthOccurrencesFrame.origin.x;
  y = self->_monthOccurrencesFrame.origin.y;
  width = self->_monthOccurrencesFrame.size.width;
  height = self->_monthOccurrencesFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end