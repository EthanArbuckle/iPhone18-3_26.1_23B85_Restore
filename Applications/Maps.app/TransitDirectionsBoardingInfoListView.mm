@interface TransitDirectionsBoardingInfoListView
+ (id)defaultFinalButtonTitle;
- (BOOL)_shouldIncludeEntry:(id)a3;
- (CGPoint)_targetContentOffsetForView:(id)a3;
- (TransitDirectionsBoardingInfoListView)initWithFrame:(CGRect)a3;
- (double)_contentBottomAnchorAdjustment;
- (id)_closestViewToPoint:(CGPoint)a3 fromEdge:(unint64_t)a4;
- (id)_viewForEntry:(id)a3;
- (id)_viewForInstruction:(id)a3;
- (void)_applyUpdatedInfoViewsIfNeeded:(id)a3;
- (void)_dropPastDepartures;
- (void)_processUpcomingInfoViews:(id)a3;
- (void)_rebuildListView;
- (void)_refreshAllInfoViews;
- (void)_updateFixedWidthConstraints;
- (void)layoutSubviews;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setBoardingInfo:(id)a3;
- (void)setDropPastDepartures:(BOOL)a3;
- (void)setFinalButtonTitle:(id)a3 target:(id)a4 action:(SEL)a5;
- (void)setHighlighted:(BOOL)a3;
- (void)setPreboardingStrings:(id)a3;
@end

@implementation TransitDirectionsBoardingInfoListView

- (id)_closestViewToPoint:(CGPoint)a3 fromEdge:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4 != 2;
  v9 = [(UIStackView *)self->_stackView _mapkit_isRTL];
  v10 = [(UIStackView *)self->_stackView arrangedSubviews];
  v11 = v10;
  if (v9 == v8)
  {
    [v10 reverseObjectEnumerator];
  }

  else
  {
    [v10 objectEnumerator];
  }
  v12 = ;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v28;
LABEL_6:
    v18 = 0;
    v19 = v16;
    while (1)
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v16 = *(*(&v27 + 1) + 8 * v18);

      [v16 frame];
      v20 = v34.origin.x;
      v21 = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
      v24 = CGRectGetWidth(v34) * 0.349999994;
      v25 = -v24;
      if (a4 == 2)
      {
        v25 = v24;
      }

      v35.origin.x = v25 + v20;
      v35.origin.y = v21;
      v35.size.width = width;
      v35.size.height = height;
      v33.x = x;
      v33.y = y;
      if (CGRectContainsPoint(v35, v33))
      {
        break;
      }

      v18 = v18 + 1;
      v19 = v16;
      if (v15 == v18)
      {
        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v15)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (CGPoint)_targetContentOffsetForView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 frame];
    x = v6;
    y = v8;
    if ([(UIStackView *)self->_stackView _mapkit_isRTL])
    {
      [(UIScrollView *)self->_scrollView bounds];
      Width = CGRectGetWidth(v17);
      [v5 bounds];
      v11 = CGRectGetWidth(v18);
      v12 = 0.0;
      if (Width >= v11)
      {
        [(UIScrollView *)self->_scrollView bounds];
        v13 = CGRectGetWidth(v19);
        [v5 bounds];
        v12 = v13 - CGRectGetWidth(v20);
      }

      x = x - v12;
    }
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v8 = a5->x;
  y = a5->y;
  v10 = [(TransitDirectionsBoardingInfoListView *)self _mapkit_isRTL:a3];
  scrollBehavior = self->_scrollBehavior;
  if (scrollBehavior == 1)
  {
    v18 = [(UIStackView *)self->_stackView _mapkit_isRTL];
    v19 = [(UIStackView *)self->_stackView arrangedSubviews];
    v20 = v19;
    if (v18)
    {
      v21 = [v19 reverseObjectEnumerator];
      v22 = [v21 allObjects];

      v20 = v22;
    }

    v23 = [v20 indexOfObject:self->_closestViewWhenDragBegan];
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v24 = v23;
      if (x < 0.0 || v23 >= [v20 count] - 1)
      {
        v27 = x < 0.0 && v24 != 0;
        v25 = v27 << 63 >> 63;
      }

      else
      {
        v25 = 1;
      }

      v13 = [v20 objectAtIndexedSubscript:&v24[v25]];
    }

    closestViewWhenDragBegan = self->_closestViewWhenDragBegan;
    self->_closestViewWhenDragBegan = 0;

    if (v13)
    {
      goto LABEL_7;
    }
  }

  else if (!scrollBehavior)
  {
    v12 = x < 0.0 ? 2 : 8;
    v13 = [(TransitDirectionsBoardingInfoListView *)self _closestViewToPoint:v12 fromEdge:v8, y];
    if (v13)
    {
LABEL_7:
      [(TransitDirectionsBoardingInfoListView *)self _targetContentOffsetForView:v13];
      a5->x = v14;
      a5->y = v15;
    }
  }

  v16 = -x;
  if (!v10)
  {
    v16 = x;
  }

  if (v16 < 0.0)
  {
    v17 = 227;
  }

  else
  {
    v17 = 236;
  }

  v29 = +[MKMapService sharedService];
  [v29 captureUserAction:v17 onTarget:self->_targetForAnalytics eventValue:0];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  if (self->_scrollBehavior == 1)
  {
    [a3 contentOffset];
    v5 = [(TransitDirectionsBoardingInfoListView *)self _closestViewToPoint:0 fromEdge:?];
    closestViewWhenDragBegan = self->_closestViewWhenDragBegan;
    self->_closestViewWhenDragBegan = v5;
  }
}

- (void)_updateFixedWidthConstraints
{
  v3 = [(UIStackView *)self->_stackView arrangedSubviews];
  v4 = [v3 count];

  v5 = [[NSMutableArray alloc] initWithCapacity:v4];
  v6 = sub_10000FA08(self) == 5;
  v7 = [(UIStackView *)self->_stackView arrangedSubviews];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100D69F44;
  v12 = &unk_101652F18;
  v16 = v6;
  v14 = v5;
  v15 = v4;
  v13 = self;
  v8 = v5;
  [v7 enumerateObjectsUsingBlock:&v9];

  [NSLayoutConstraint activateConstraints:v8, v9, v10, v11, v12, v13];
}

- (void)setFinalButtonTitle:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a3;
  obj = a4;
  buttonTitle = self->_buttonTitle;
  self->_buttonTitle = v8;
  v10 = v8;

  objc_storeWeak(&self->_buttonTarget, obj);
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = 0;
  }

  self->_buttonAction = v11;
  v12 = [(UIStackView *)self->_stackView arrangedSubviews];
  v13 = [v12 lastObject];

  [v13 setButtonTitle:v10 target:obj action:a5];
}

- (void)_refreshAllInfoViews
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(UIStackView *)self->_stackView arrangedSubviews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        [*(*(&v7 + 1) + 8 * v6) _refreshContent];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setDropPastDepartures:(BOOL)a3
{
  if (self->_dropsPastDepartures != a3)
  {
    self->_dropsPastDepartures = a3;
    [(TransitDirectionsBoardingInfoListView *)self _rebuildListView];
  }
}

- (void)_applyUpdatedInfoViewsIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(UIStackView *)self->_stackView arrangedSubviews];
  v8 = v4;
  v6 = v5;
  if (v8 | v6)
  {
    v7 = [v8 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      [(UIStackView *)self->_stackView _maps_setArrangedSubviews:v8];
      [(TransitDirectionsBoardingInfoListView *)self _updateFixedWidthConstraints];
      -[UIScrollView setScrollEnabled:](self->_scrollView, "setScrollEnabled:", [v8 count] > 1);
      self->_needsResetContentOffset = 1;
      [(TransitDirectionsBoardingInfoListView *)self setNeedsLayout];
    }
  }
}

- (void)_processUpcomingInfoViews:(id)a3
{
  v4 = a3;
  v5 = [NSSet alloc];
  v6 = sub_100021DB0(v4, &stru_101652EC8);
  v7 = [v5 initWithArray:v6];

  if (![v7 count] && -[GEOTransitBoardingInfo hasSummaryTimeInstruction](self->_boardingInfo, "hasSummaryTimeInstruction"))
  {
    v8 = +[GEOPlatform sharedPlatform];
    if ([v8 isInternalInstall])
    {
      v9 = +[NSUserDefaults standardUserDefaults];
      v10 = [v9 BOOLForKey:@"__internal_MapsTransitDebugSuppressSummaryBoardingInfo"];

      if (v10)
      {
        if (![v4 count])
        {
          goto LABEL_13;
        }

LABEL_8:
        if (![(GEOTransitBoardingInfo *)self->_boardingInfo hasEndTimeInstruction])
        {
          goto LABEL_15;
        }

        v11 = [v4 lastObject];
        v12 = [v11 entryType];

        if (v12 == 2)
        {
          goto LABEL_15;
        }

        v13 = [(GEOTransitBoardingInfo *)self->_boardingInfo endTimeInstruction];
        v14 = [(TransitDirectionsBoardingInfoListView *)self _viewForInstruction:v13];

        [v14 setEntryType:2];
        goto LABEL_14;
      }
    }

    else
    {
    }

    v15 = [(GEOTransitBoardingInfo *)self->_boardingInfo summaryTimeInstruction];
    v16 = [(TransitDirectionsBoardingInfoListView *)self _viewForInstruction:v15];
    [v16 setEntryType:1];
    [v4 removeAllObjects];
    [v4 addObject:v16];

    if ([v4 count])
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if ([v4 count])
  {
    goto LABEL_8;
  }

LABEL_13:
  v17 = [(GEOTransitBoardingInfo *)self->_boardingInfo entrys];
  v18 = [v17 firstObject];
  v14 = [(TransitDirectionsBoardingInfoListView *)self _viewForEntry:v18];

LABEL_14:
  [v4 addObject:v14];

LABEL_15:
  v19 = [v7 count];
  if ([v4 count])
  {
    v20 = [v4 count] - 1;
  }

  else
  {
    v20 = 0;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100D6A620;
  v21[3] = &unk_101652EF0;
  v22 = v19 > 1;
  v21[4] = self;
  v21[5] = v20;
  [v4 enumerateObjectsUsingBlock:v21];
}

- (void)_rebuildListView
{
  v3 = objc_alloc_init(NSMutableArray);
  boardingInfo = self->_boardingInfo;
  if (boardingInfo)
  {
    v5 = [(GEOTransitBoardingInfo *)boardingInfo entrys];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(TransitDirectionsBoardingInfoView *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([(TransitDirectionsBoardingInfoListView *)self _shouldIncludeEntry:v10])
          {
            v11 = [(TransitDirectionsBoardingInfoListView *)self _viewForEntry:v10];
            [v3 addObject:v11];
          }
        }

        v7 = [(TransitDirectionsBoardingInfoView *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    goto LABEL_14;
  }

  if (self->_preboardingStrings)
  {
    v5 = [[TransitDirectionsBoardingInfoView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(TransitDirectionsBoardingInfoView *)v5 setPreboardingStrings:self->_preboardingStrings];
    [v3 addObject:v5];
LABEL_14:
  }

  [(TransitDirectionsBoardingInfoListView *)self _processUpcomingInfoViews:v3];
  [(TransitDirectionsBoardingInfoListView *)self _applyUpdatedInfoViewsIfNeeded:v3];
}

- (id)_viewForInstruction:(id)a3
{
  v3 = a3;
  v4 = [[TransitDirectionsBoardingInfoView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = [[NSMutableArray alloc] initWithCapacity:2];
  if ([v3 hasPrimaryText])
  {
    v6 = [GEOComposedString alloc];
    v7 = [v3 primaryText];
    v8 = [v6 initWithGeoFormattedString:v7];
    [v5 addObject:v8];
  }

  if ([v3 hasSecondaryText])
  {
    v9 = [GEOComposedString alloc];
    v10 = [v3 secondaryText];
    v11 = [v9 initWithGeoFormattedString:v10];
    [v5 addObject:v11];
  }

  v12 = [v5 copy];
  [(TransitDirectionsBoardingInfoView *)v4 setPreboardingStrings:v12];

  return v4;
}

- (id)_viewForEntry:(id)a3
{
  v4 = a3;
  v5 = [[TransitDirectionsBoardingInfoView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if ([v4 hasClearExitPlanInfo] && (objc_msgSend(v4, "clearExitPlanInfo") & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    if ([v4 hasExitPlanInfoOverride])
    {
      [v4 exitPlanInfoOverride];
    }

    else
    {
      [(GEOTransitBoardingInfo *)self->_boardingInfo exitPlanInfo];
    }
    v6 = ;
  }

  [(TransitDirectionsBoardingInfoView *)v5 setBoardingInfoEntry:v4 exitPlan:v6];

  return v5;
}

- (BOOL)_shouldIncludeEntry:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_dropsPastDepartures)
  {
    if ([v4 hasExpectedDepartureTime])
    {
      v6 = +[MKTransitItemReferenceDateUpdater referenceDate];
      v7 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v5 expectedDepartureTime]);
      [v7 timeIntervalSinceDate:v6];
      v9 = GEOTransitDepartureIsImminentDepartureTimeInterval() | (v8 >= 0.0);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

- (void)_dropPastDepartures
{
  v3 = [NSMutableArray alloc];
  v4 = [(UIStackView *)self->_stackView arrangedSubviews];
  v5 = [v3 initWithArray:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(UIStackView *)self->_stackView arrangedSubviews];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 entry];

        if (v12)
        {
          v13 = [v11 entry];
          v14 = [(TransitDirectionsBoardingInfoListView *)self _shouldIncludeEntry:v13];

          if ((v14 & 1) == 0)
          {
            [v5 removeObject:v11];
            [(UIStackView *)self->_stackView removeArrangedSubview:v11];
            [v11 removeFromSuperview];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(TransitDirectionsBoardingInfoListView *)self _processUpcomingInfoViews:v5];
  [(TransitDirectionsBoardingInfoListView *)self _applyUpdatedInfoViewsIfNeeded:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(UIStackView *)self->_stackView arrangedSubviews];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        [v11 setHighlighted:v3];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)setPreboardingStrings:(id)a3
{
  v5 = a3;
  preboardingStrings = self->_preboardingStrings;
  v10 = v5;
  v7 = preboardingStrings;
  if (v10 | v7 && (v8 = [v10 isEqual:v7], v7, v10, !v8))
  {
    objc_storeStrong(&self->_preboardingStrings, a3);
    boardingInfo = self->_boardingInfo;
    self->_boardingInfo = 0;

    [(TransitDirectionsBoardingInfoListView *)self _rebuildListView];
  }

  else if (self->_preboardingStrings)
  {
    [(TransitDirectionsBoardingInfoListView *)self _refreshAllInfoViews];
  }
}

- (void)setBoardingInfo:(id)a3
{
  v5 = a3;
  boardingInfo = self->_boardingInfo;
  v10 = v5;
  v7 = boardingInfo;
  if (v10 | v7 && (v8 = [v10 isEqual:v7], v7, v10, !v8))
  {
    objc_storeStrong(&self->_boardingInfo, a3);
    preboardingStrings = self->_preboardingStrings;
    self->_preboardingStrings = 0;

    [(TransitDirectionsBoardingInfoListView *)self _rebuildListView];
  }

  else if (self->_boardingInfo)
  {
    [(TransitDirectionsBoardingInfoListView *)self _dropPastDepartures];
    [(TransitDirectionsBoardingInfoListView *)self _refreshAllInfoViews];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsBoardingInfoListView;
  [(TransitDirectionsBoardingInfoListView *)&v5 layoutSubviews];
  if (self->_needsResetContentOffset)
  {
    self->_needsResetContentOffset = 0;
    [(UIStackView *)self->_stackView setNeedsLayout];
    [(UIStackView *)self->_stackView layoutIfNeeded];
    v3 = [(UIStackView *)self->_stackView arrangedSubviews];
    v4 = [v3 firstObject];
    [(TransitDirectionsBoardingInfoListView *)self _targetContentOffsetForView:v4];
    [(UIScrollView *)self->_scrollView setContentOffset:?];
  }
}

- (TransitDirectionsBoardingInfoListView)initWithFrame:(CGRect)a3
{
  v48.receiver = self;
  v48.super_class = TransitDirectionsBoardingInfoListView;
  v3 = [(TransitDirectionsBoardingInfoListView *)&v48 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(TransitDirectionsBoardingInfoListView *)v3 setAccessibilityIdentifier:v5];

    v6 = [objc_opt_class() defaultFinalButtonTitle];
    buttonTitle = v3->_buttonTitle;
    v3->_buttonTitle = v6;

    v3->_scrollBehavior = 1;
    v8 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    scrollView = v3->_scrollView;
    v3->_scrollView = v8;

    [(UIScrollView *)v3->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v3->_scrollView setDelegate:v3];
    [(UIScrollView *)v3->_scrollView setDirectionalLockEnabled:1];
    [(UIScrollView *)v3->_scrollView setAlwaysBounceVertical:0];
    [(UIScrollView *)v3->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v3->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v3->_scrollView setClipsToBounds:0];
    LODWORD(v10) = 1148846080;
    [(UIScrollView *)v3->_scrollView setContentCompressionResistancePriority:1 forAxis:v10];
    [(TransitDirectionsBoardingInfoListView *)v3 addSubview:v3->_scrollView];
    v11 = [[UIStackView alloc] initWithArrangedSubviews:&__NSArray0__struct];
    stackView = v3->_stackView;
    v3->_stackView = v11;

    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setAxis:0];
    [(UIStackView *)v3->_stackView setAlignment:1];
    [(UIStackView *)v3->_stackView setDistribution:3];
    v13 = sub_10000FA08(v3);
    v14 = 32.0;
    if (v13 == 5)
    {
      v14 = 0.0;
    }

    [(UIStackView *)v3->_stackView setSpacing:v14];
    LODWORD(v15) = 1132068864;
    [(UIStackView *)v3->_stackView setContentHuggingPriority:0 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [(UIStackView *)v3->_stackView setContentHuggingPriority:1 forAxis:v16];
    LODWORD(v17) = 1132068864;
    [(UIStackView *)v3->_stackView setContentCompressionResistancePriority:0 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(UIStackView *)v3->_stackView setContentCompressionResistancePriority:1 forAxis:v18];
    [(UIScrollView *)v3->_scrollView addSubview:v3->_stackView];
    v47 = [(UIScrollView *)v3->_scrollView topAnchor];
    v46 = [(TransitDirectionsBoardingInfoListView *)v3 topAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v49[0] = v45;
    v44 = [(UIScrollView *)v3->_scrollView leadingAnchor];
    v43 = [(TransitDirectionsBoardingInfoListView *)v3 leadingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v49[1] = v42;
    v41 = [(UIScrollView *)v3->_scrollView bottomAnchor];
    v40 = [(TransitDirectionsBoardingInfoListView *)v3 bottomAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v49[2] = v39;
    v38 = [(UIScrollView *)v3->_scrollView trailingAnchor];
    v37 = [(TransitDirectionsBoardingInfoListView *)v3 trailingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v49[3] = v36;
    v35 = [(UIStackView *)v3->_stackView topAnchor];
    v34 = [(UIScrollView *)v3->_scrollView topAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v49[4] = v33;
    v32 = [(UIStackView *)v3->_stackView bottomAnchor];
    v31 = [(UIScrollView *)v3->_scrollView bottomAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v49[5] = v30;
    v29 = [(UIStackView *)v3->_stackView leadingAnchor];
    v19 = [(UIScrollView *)v3->_scrollView leadingAnchor];
    v20 = [v29 constraintEqualToAnchor:v19];
    v49[6] = v20;
    v21 = [(UIStackView *)v3->_stackView trailingAnchor];
    v22 = [(UIScrollView *)v3->_scrollView trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v49[7] = v23;
    v24 = [(UIScrollView *)v3->_scrollView heightAnchor];
    v25 = [(UIStackView *)v3->_stackView heightAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v49[8] = v26;
    v27 = [NSArray arrayWithObjects:v49 count:9];
    [NSLayoutConstraint activateConstraints:v27];
  }

  return v3;
}

- (double)_contentBottomAnchorAdjustment
{
  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system15];
  }

  else
  {
    +[UIFont system17];
  }
  v2 = ;
  [v2 descender];
  v4 = v3;

  return v4;
}

+ (id)defaultFinalButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Transit Boarding Info] More" value:@"localized string not found" table:0];

  return v3;
}

@end