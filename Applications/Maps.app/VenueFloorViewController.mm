@interface VenueFloorViewController
- (BOOL)isFocusedOnVenue:(id)a3;
- (BOOL)isHidden;
- (BOOL)lacksSearchResultsForFloorOrdinal:(id)a3;
- (BOOL)shouldBeHidden;
- (UIView)closedPlaceholderView;
- (VenueFloorViewController)initWithDelegate:(id)a3 venuesManager:(id)a4 visualEffectDisabled:(BOOL)a5;
- (VenueFloorViewControllerDelegate)delegate;
- (VenuesManager)venuesManager;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)keyCommands;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)delayConstraintSetupWhileExecuting:(id)a3;
- (void)didChangeConstraints;
- (void)didChangeFocusedVenue:(id)a3 focusedBuilding:(id)a4 displayedFloorOrdinal:(signed __int16)a5;
- (void)didChangeSearchResultsInVenue;
- (void)didClose;
- (void)didFinishHiding;
- (void)didFinishShowing;
- (void)didOpen;
- (void)didStartHiding;
- (void)didStartShowing;
- (void)handleCloseButtonTap;
- (void)handleTap:(id)a3;
- (void)loadView;
- (void)scrollToDisplayedFloorAnimated:(BOOL)a3;
- (void)scrollToFloorOrdinal:(signed __int16)a3 animated:(BOOL)a4;
- (void)setBlurGroupName:(id)a3;
- (void)setDisplayedFloorOrdinal:(signed __int16)a3 animated:(BOOL)a4;
- (void)setForceHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setHidden:(BOOL)a3;
- (void)setOpen:(BOOL)a3 animated:(BOOL)a4;
- (void)setUserLocationFloorOrdinal:(id)a3;
- (void)setVenue:(id)a3 focusedBuilding:(id)a4 animated:(BOOL)a5 forceUpdate:(BOOL)a6;
- (void)setupGestures;
- (void)updateCloseButtonVisibility;
- (void)updateDisplayedFloorAnimated:(BOOL)a3;
- (void)updateFloorOptimalOpenHeightConstraint;
- (void)updateForOpenChangedAnimated:(BOOL)a3;
- (void)updateHiddenAnimated:(BOOL)a3 completion:(id)a4;
- (void)updateShowSelectionWithForceClipCorners:(BOOL)a3;
- (void)updateVenueAndBuildingsAnimated:(BOOL)a3 forced:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation VenueFloorViewController

- (VenuesManager)venuesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_venuesManager);

  return WeakRetained;
}

- (VenueFloorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didClose
{
  v3 = [(VenueFloorViewController *)self delegate];
  [v3 venueFloorViewControllerDidClose:self];
}

- (void)didOpen
{
  v3 = [(VenueFloorViewController *)self delegate];
  [v3 venueFloorViewControllerDidOpen:self];
}

- (void)didFinishShowing
{
  v3 = [(VenueFloorViewController *)self delegate];
  [v3 venueFloorViewControllerDidFinishShowing:self];
}

- (void)didStartShowing
{
  v3 = [(VenueFloorViewController *)self delegate];
  [v3 venueFloorViewControllerDidStartShowing:self];
}

- (void)didFinishHiding
{
  v3 = [(VenueFloorViewController *)self delegate];
  [v3 venueFloorViewControllerDidFinishHiding:self];
}

- (void)didStartHiding
{
  v3 = [(VenueFloorViewController *)self delegate];
  [v3 venueFloorViewControllerDidStartHiding:self];
}

- (void)didChangeConstraints
{
  v3 = [(VenueFloorViewController *)self delegate];
  [v3 venueFloorViewControllerDidChangeConstraints:self];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(VenueFloorViewController *)self floorOrdinals];
  v7 = [v5 item];

  v15 = [v6 objectAtIndexedSubscript:v7];

  v8 = [(VenueFloorViewController *)self shortFloorNames];
  v9 = [v8 objectForKeyedSubscript:v15];

  [(VenueFloorViewController *)self captureUserAction:4006 onTarget:644 eventValue:v9];
  v10 = [(VenueFloorViewController *)self venuesManager];
  v11 = [v15 shortValue];
  v12 = [(VenueFloorViewController *)self venue];
  [v10 setDisplayedFloorOrdinal:v11 forBuildingsInVenue:v12];

  v13 = [(VenueFloorViewController *)self venuesManager];
  v14 = [v13 mapView];
  [v14 setUserTrackingMode:0];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 row] & 0x8000000000000000) != 0 || (v8 = objc_msgSend(v7, "item"), -[VenueFloorViewController floorOrdinals](self, "floorOrdinals"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8 >= v10))
  {
    v14 = objc_opt_new();
  }

  else
  {
    v11 = [(VenueFloorViewController *)self floorOrdinals];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];

    if (v12)
    {
      v13 = +[VenueFloorPickerCell reuseIdentifier];
      v14 = [v6 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v7];

      v15 = [(VenueFloorViewController *)self shortFloorNames];
      v16 = [v15 objectForKeyedSubscript:v12];

      [v14 setFloorOrdinal:v12];
      [v14 setFloorName:v16];
      v17 = [(VenueFloorViewController *)self userLocationFloorOrdinal];
      [v14 setIsUserLocation:{+[NSNumber number:isEqualToNumber:](NSNumber, "number:isEqualToNumber:", v12, v17)}];

      [v14 setShowSelection:{-[VenueFloorViewController isOpen](self, "isOpen")}];
      [v14 setLacksSearchResults:{-[VenueFloorViewController lacksSearchResultsForFloorOrdinal:](self, "lacksSearchResultsForFloorOrdinal:", v12)}];
    }

    else
    {
      v14 = objc_opt_new();
    }
  }

  return v14;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(VenueFloorViewController *)self floorOrdinals:a3];
  v5 = [v4 count];

  return v5;
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v8 = a5;
  v12 = objc_alloc_init(GEOPlaceActionDetails);
  v9 = [(VenueFloorViewController *)self venue];
  v10 = [v9 businessID];

  if (v10)
  {
    [v12 setBusinessID:v10];
  }

  v11 = +[MKMapService sharedService];
  [v11 captureUserAction:v6 onTarget:v5 eventValue:v8 placeActionDetails:v12];
}

- (void)scrollToFloorOrdinal:(signed __int16)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(VenueFloorViewController *)self floorOrdinals];
  v8 = [NSNumber numberWithShort:v5];
  v9 = [v7 indexOfObject:v8];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [NSIndexPath indexPathForItem:v9 inSection:0];
    v10 = [(VenueFloorViewController *)self floorCollectionView];
    [v10 scrollToItemAtIndexPath:v11 atScrollPosition:2 animated:v4];
  }
}

- (void)scrollToDisplayedFloorAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(VenueFloorViewController *)self venue];

  if (v5)
  {
    v7 = [(VenueFloorViewController *)self venuesManager];
    v6 = [(VenueFloorViewController *)self venue];
    -[VenueFloorViewController scrollToFloorOrdinal:animated:](self, "scrollToFloorOrdinal:animated:", [v7 displayedFloorOrdinalForBuildingsInVenue:v6], v3);
  }
}

- (void)setDisplayedFloorOrdinal:(signed __int16)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(VenueFloorViewController *)self floorOrdinals];
  v8 = [NSNumber numberWithShort:v5];
  v9 = [v7 indexOfObject:v8];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = [NSIndexPath indexPathForItem:v9 inSection:0];
    if (v10)
    {
      v15 = v10;
      v11 = [(VenueFloorViewController *)self floorCollectionView];
      v12 = [v11 indexPathsForSelectedItems];
      v13 = [v12 containsObject:v15];

      if ((v13 & 1) == 0)
      {
        v14 = [(VenueFloorViewController *)self floorCollectionView];
        [v14 selectItemAtIndexPath:v15 animated:v4 scrollPosition:2];
      }

      v10 = v15;
    }
  }
}

- (void)updateDisplayedFloorAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(VenueFloorViewController *)self venue];

  if (v5)
  {
    v7 = [(VenueFloorViewController *)self venuesManager];
    v6 = [(VenueFloorViewController *)self venue];
    -[VenueFloorViewController setDisplayedFloorOrdinal:animated:](self, "setDisplayedFloorOrdinal:animated:", [v7 displayedFloorOrdinalForBuildingsInVenue:v6], v3);
  }
}

- (void)setVenue:(id)a3 focusedBuilding:(id)a4 animated:(BOOL)a5 forceUpdate:(BOOL)a6
{
  v7 = a5;
  v10 = a3;
  v11 = [(VKVenueFeatureMarker *)v10 buildings];
  v12 = v11;
  v13 = &__NSArray0__struct;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  if (![(VenueFloorViewController *)self floorsDirty]&& !a6 && self->_venue == v10)
  {
    v33 = self;
    v34 = v7;
    v32 = 0;
    goto LABEL_22;
  }

  objc_storeStrong(&self->_venue, a3);
  [(VenueFloorViewController *)self setFloorsDirty:1];
  if ([(VenueFloorViewController *)self isHidden]|| ![(VenueFloorViewController *)self shouldBeHidden]|| !v7)
  {
    v38 = v7;
    v40 = v10;
    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v39 = v14;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v46;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v45 + 1) + 8 * i);
          v23 = [v22 floorOrdinals];
          [v16 addObjectsFromArray:v23];

          v24 = [v22 shortFloorNames];
          [v15 addEntriesFromDictionary:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v19);
    }

    v25 = [v16 allObjects];
    v26 = [v25 sortedArrayUsingSelector:"compare:"];
    v27 = [v26 reverseObjectEnumerator];
    v28 = [v27 allObjects];

    if (!a6)
    {
      v29 = [(VenueFloorViewController *)self floorOrdinals];
      if ([NSArray array:v28 isEqualToArray:v29])
      {
        v30 = [(VenueFloorViewController *)self shortFloorNames];
        v31 = [NSDictionary dictionary:v15 isEqualToDictionary:v30];

        if (v31)
        {
          [(VenueFloorViewController *)self updateHiddenAnimated:v38 completion:0];
          v14 = v39;
          v10 = v40;
LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    objc_storeStrong(&self->_floorOrdinals, v28);
    objc_storeStrong(&self->_shortFloorNames, v15);
    [(VenueFloorViewController *)self setFloorsDirty:0];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100AEDCD4;
    v44[3] = &unk_101661B18;
    v44[4] = self;
    v35 = objc_retainBlock(v44);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100AEDD20;
    v43[3] = &unk_101661B18;
    v43[4] = self;
    v36 = objc_retainBlock(v43);
    if (v38)
    {
      v14 = v39;
      if ([(VenueFloorViewController *)self shouldBeHidden])
      {
        (v35[2])(v35);
        (v36[2])(v36);
      }

      else
      {
        v37 = [(VenueFloorViewController *)self isHidden];
        (v35[2])(v35);
        if (v37)
        {
          (v36[2])(v36);
          [(VenueFloorViewController *)self updateHiddenAnimated:1 completion:0];
        }

        else
        {
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_100AEDD70;
          v41[3] = &unk_101661760;
          v42 = v36;
          [UIView _animateUsingDefaultTimingWithOptions:0 animations:v41 completion:0];
        }
      }

      v10 = v40;
    }

    else
    {
      (v35[2])(v35);
      (v36[2])(v36);
      [(VenueFloorViewController *)self updateHiddenAnimated:0 completion:0];
      v14 = v39;
      v10 = v40;
    }

    goto LABEL_33;
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100AEDCC0;
  v49[3] = &unk_101661AE0;
  v49[4] = self;
  v50 = a6;
  v32 = v49;
  v33 = self;
  v34 = 1;
LABEL_22:
  [(VenueFloorViewController *)v33 updateHiddenAnimated:v34 completion:v32];
LABEL_34:
}

- (void)updateVenueAndBuildingsAnimated:(BOOL)a3 forced:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v10 = [(VenueFloorViewController *)self venuesManager];
  v7 = [v10 venueWithFocus];
  v8 = [(VenueFloorViewController *)self venuesManager];
  v9 = [v8 venueBuildingWithFocus];
  [(VenueFloorViewController *)self setVenue:v7 focusedBuilding:v9 animated:v5 forceUpdate:v4];
}

- (void)updateShowSelectionWithForceClipCorners:(BOOL)a3
{
  v4 = [(VenueFloorViewController *)self isOpen]| a3;
  if (v4)
  {
    v5 = 10.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(VenueFloorViewController *)self floorCollectionView];
  [v6 _setContinuousCornerRadius:v5];

  v7 = [(VenueFloorViewController *)self floorCollectionView];
  [v7 setClipsToBounds:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(VenueFloorViewController *)self floorCollectionView];
  v9 = [v8 preparedCells];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v14 setShowSelection:{-[VenueFloorViewController isOpen](self, "isOpen")}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)updateFloorOptimalOpenHeightConstraint
{
  v3 = [(VenueFloorViewController *)self floorCollectionView];
  v4 = [v3 collectionViewLayout];
  [v4 collectionViewContentSize];
  v6 = v5;
  v7 = [(VenueFloorViewController *)self floorOptimalOpenHeightConstraint];
  [v7 setConstant:v6];

  v8 = [(VenueFloorViewController *)self floorCollectionView];
  [v8 setNeedsLayout];
}

- (void)updateCloseButtonVisibility
{
  if ([(VenueFloorViewController *)self isOpen])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [(VenueFloorViewController *)self closeButton];
  [v4 setAlpha:v3];

  LODWORD(v4) = [(VenueFloorViewController *)self isOpen];
  v5 = [(VenueFloorViewController *)self closeButton];
  [v5 setHidden:v4 ^ 1];
}

- (void)updateForOpenChangedAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(VenueFloorViewController *)self isVisible]&& ![(VenueFloorViewController *)self delayConstraintSetup])
  {
    if ([(VenueFloorViewController *)self isOpen])
    {
      v5 = [(VenueFloorViewController *)self closedConstraints];
      [NSLayoutConstraint deactivateConstraints:v5];

      v6 = [(VenueFloorViewController *)self openConstraints];
      [NSLayoutConstraint activateConstraints:v6];

      [(VenueFloorViewController *)self updateFloorOptimalOpenHeightConstraint];
    }

    else
    {
      v7 = [(VenueFloorViewController *)self openConstraints];
      [NSLayoutConstraint deactivateConstraints:v7];

      v8 = [(VenueFloorViewController *)self closedConstraints];
      [NSLayoutConstraint activateConstraints:v8];
    }

    v9 = [(VenueFloorViewController *)self isOpen];
    v10 = [(VenueFloorViewController *)self floorCollectionView];
    [v10 setScrollEnabled:v9];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100AEE350;
    v16[3] = &unk_101661B18;
    v16[4] = self;
    v11 = objc_retainBlock(v16);
    v12 = v11;
    if (v3)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100AEE3B0;
      v14[3] = &unk_101661090;
      v14[4] = self;
      v15 = v11;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100AEE3F8;
      v13[3] = &unk_101661738;
      v13[4] = self;
      [UIView _animateUsingDefaultTimingWithOptions:0 animations:v14 completion:v13];
    }

    else
    {
      (v11[2])(v11);
      [(VenueFloorViewController *)self updateShowSelection];
    }
  }
}

- (void)updateHiddenAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if ([(VenueFloorViewController *)self updateHiddenAnimationActive])
  {
    if (v6)
    {
      v7 = [(VenueFloorViewController *)self updateHiddenAnimationCompletionBlocks];
      v8 = objc_retainBlock(v6);
      [v7 addObject:v8];
    }

    goto LABEL_15;
  }

  v9 = [(VenueFloorViewController *)self shouldBeHidden];
  if (v9 == [(VenueFloorViewController *)self isHidden])
  {
    goto LABEL_11;
  }

  if (!a3)
  {
    if (!v9)
    {
      [(VenueFloorViewController *)self didStartShowing];
      [(VenueFloorViewController *)self setHidden:0];
      [(VenueFloorViewController *)self didFinishShowing];
      if (!v6)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    [(VenueFloorViewController *)self didStartHiding];
    [(VenueFloorViewController *)self setHidden:1];
    [(VenueFloorViewController *)self setOpen:0 animated:0];
    [(VenueFloorViewController *)self didFinishHiding];
LABEL_11:
    if (!v6)
    {
      goto LABEL_15;
    }

LABEL_12:
    v6[2](v6);
    goto LABEL_15;
  }

  [(VenueFloorViewController *)self setUpdateHiddenAnimationActive:1];
  v10 = [(VenueFloorViewController *)self view];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 superview];

    if (v12)
    {
      v13 = [(VenueFloorViewController *)self closedPlaceholderView];
      [v13 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [(VenueFloorViewController *)self closedPlaceholderView];
      [v12 convertRect:v22 fromView:{v15, v17, v19, v21}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v50 = [(VenueFloorViewController *)self cardView];
      v49 = [v50 leftAnchor];
      v48 = [v12 leftAnchor];
      v57.origin.x = v24;
      v57.origin.y = v26;
      v57.size.width = v28;
      v57.size.height = v30;
      v47 = [v49 constraintEqualToAnchor:v48 constant:CGRectGetMinX(v57)];
      v56[0] = v47;
      v46 = [(VenueFloorViewController *)self cardView];
      v45 = [v46 rightAnchor];
      v44 = [v12 leftAnchor];
      v58.origin.x = v24;
      v58.origin.y = v26;
      v58.size.width = v28;
      v58.size.height = v30;
      v43 = [v45 constraintEqualToAnchor:v44 constant:CGRectGetMaxX(v58)];
      v56[1] = v43;
      v42 = [(VenueFloorViewController *)self cardView];
      v41 = [v42 topAnchor];
      v31 = [v12 topAnchor];
      v59.origin.x = v24;
      v59.origin.y = v26;
      v59.size.width = v28;
      v59.size.height = v30;
      v32 = [v41 constraintEqualToAnchor:v31 constant:CGRectGetMinY(v59)];
      v56[2] = v32;
      v33 = [(VenueFloorViewController *)self cardView];
      v34 = [v33 bottomAnchor];
      v35 = [v12 topAnchor];
      v60.origin.x = v24;
      v60.origin.y = v26;
      v60.size.width = v28;
      v60.size.height = v30;
      v36 = [v34 constraintEqualToAnchor:v35 constant:CGRectGetMaxY(v60)];
      v56[3] = v36;
      v37 = [NSArray arrayWithObjects:v56 count:4];
      v38 = qword_10195E5C0;
      qword_10195E5C0 = v37;

      v39 = [(VenueFloorViewController *)self closedConstraints];
      [NSLayoutConstraint deactivateConstraints:v39];

      v40 = [(VenueFloorViewController *)self openConstraints];
      [NSLayoutConstraint deactivateConstraints:v40];

      [NSLayoutConstraint activateConstraints:qword_10195E5C0];
    }
  }

  else
  {
    [v10 setAlpha:0.0];

    [(VenueFloorViewController *)self setHidden:0];
    v12 = [(VenueFloorViewController *)self view];
    [v12 layoutIfNeeded];
  }

  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100AEE950;
  v54[3] = &unk_101661AE0;
  v55 = v9;
  v54[4] = self;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100AEEA14;
  v51[3] = &unk_10164FD60;
  v51[4] = self;
  v53 = v9;
  v52 = v6;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v54 completion:v51];

LABEL_15:
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(VenueFloorViewController *)self view];
  v6 = [v5 isHidden];

  if (v6 != v3)
  {
    v7 = [(VenueFloorViewController *)self view];
    [v7 setHidden:v3];

    v8 = [(VenueFloorViewController *)self closedPlaceholderView];
    [v8 setHidden:v3];
  }
}

- (BOOL)shouldBeHidden
{
  if ([(VenueFloorViewController *)self forceHidden])
  {
    return 1;
  }

  v4 = [(VenueFloorViewController *)self venue];
  if (v4)
  {
    v5 = [(VenueFloorViewController *)self floorOrdinals];
    v3 = [v5 count] < 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)handleTap:(id)a3
{
  if (![(VenueFloorViewController *)self isOpen])
  {
    [(VenueFloorViewController *)self captureUserAction:31 onTarget:644 eventValue:0];

    [(VenueFloorViewController *)self setOpen:1 animated:1];
  }
}

- (void)handleCloseButtonTap
{
  [(VenueFloorViewController *)self captureUserAction:32 onTarget:644 eventValue:0];

  [(VenueFloorViewController *)self setOpen:0 animated:1];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = VenueFloorViewController;
  [(VenueFloorViewController *)&v8 viewDidLayoutSubviews];
  if (_UISolariumEnabled())
  {
    v3 = [(VenueFloorViewController *)self cardView];
    [v3 setClipsToBounds:1];

    v4 = [(VenueFloorViewController *)self cardView];
    [v4 bounds];
    v5 = CGRectGetWidth(v9) * 0.5;
    v6 = [(VenueFloorViewController *)self cardView];
    v7 = [v6 layer];
    [v7 setCornerRadius:v5];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(VenueFloorViewController *)self setVisible:0];
  v5.receiver = self;
  v5.super_class = VenueFloorViewController;
  [(VenueFloorViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(VenueFloorViewController *)self setVisible:1];
  [(VenueFloorViewController *)self updateForOpenChangedAnimated:0];
  [(VenueFloorViewController *)self updateVenueAndBuildingsAnimated:0 forced:1];
  v5.receiver = self;
  v5.super_class = VenueFloorViewController;
  [(VenueFloorViewController *)&v5 viewWillAppear:v3];
}

- (BOOL)isFocusedOnVenue:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(VenueFloorViewController *)self venue];
  v6 = [v5 venueID];
  v7 = [v4 venueID];

  v8 = v6 == v7;
  return v8;
}

- (void)didChangeFocusedVenue:(id)a3 focusedBuilding:(id)a4 displayedFloorOrdinal:(signed __int16)a5
{
  v5 = a5;
  [(VenueFloorViewController *)self setVenue:a3 focusedBuilding:a4 animated:1 forceUpdate:0];
  if (a3)
  {

    [(VenueFloorViewController *)self setDisplayedFloorOrdinal:v5 animated:1];
  }
}

- (void)didChangeSearchResultsInVenue
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(VenueFloorViewController *)self floorCollectionView];
  v4 = [v3 preparedCells];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 floorOrdinal];
          [v9 setLacksSearchResults:{-[VenueFloorViewController lacksSearchResultsForFloorOrdinal:](self, "lacksSearchResultsForFloorOrdinal:", v10)}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (BOOL)lacksSearchResultsForFloorOrdinal:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(VenueFloorViewController *)self delegate];
  v6 = [(VenueFloorViewController *)self venue];
  v7 = [v4 shortValue];

  LOBYTE(v4) = [v5 lacksSearchResultsInVenue:v6 forFloorOrdinal:v7];
  return v4;
}

- (void)setUserLocationFloorOrdinal:(id)a3
{
  v5 = a3;
  if (![NSNumber number:self->_userLocationFloorOrdinal isEqualToNumber:v5])
  {
    v16 = v5;
    objc_storeStrong(&self->_userLocationFloorOrdinal, a3);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(VenueFloorViewController *)self floorCollectionView];
    v7 = [v6 preparedCells];

    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v12 floorOrdinal];
            v14 = [(VenueFloorViewController *)self userLocationFloorOrdinal];
            v15 = [NSNumber number:v13 isEqualToNumber:v14];

            [v12 setIsUserLocation:v15];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v5 = v16;
  }
}

- (void)setForceHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = v8;
  if (self->_forceHidden == v6)
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    v10 = v8;
    (*(v8 + 2))(v8);
  }

  else
  {
    self->_forceHidden = v6;
    v10 = v8;
    [(VenueFloorViewController *)self updateHiddenAnimated:v5 completion:v8];
  }

  v9 = v10;
LABEL_6:
}

- (BOOL)isHidden
{
  v2 = [(VenueFloorViewController *)self view];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setOpen:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_open != a3)
  {
    v4 = a4;
    self->_open = a3;
    v6 = !a3;
    v7 = [(VenueFloorViewController *)self openGestureRecognizer];
    [v7 setEnabled:v6];

    v8 = [(VenueFloorViewController *)self pressGestureRecognizer];
    [v8 setEnabled:v6];

    [(VenueFloorViewController *)self updateForOpenChangedAnimated:v4];
    if (v6)
    {

      [(VenueFloorViewController *)self didClose];
    }

    else
    {

      [(VenueFloorViewController *)self didOpen];
    }
  }
}

- (void)setBlurGroupName:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  blurGroupName = self->_blurGroupName;
  self->_blurGroupName = v5;

  v7 = [(VenueFloorViewController *)self cardView];
  [v7 setBlurGroupName:v4];
}

- (void)setupGestures
{
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  [(VenueFloorViewController *)self setOpenGestureRecognizer:v3];

  v4 = [(VenueFloorViewController *)self cardView];
  v5 = [(VenueFloorViewController *)self openGestureRecognizer];
  [v4 addGestureRecognizer:v5];

  LODWORD(v4) = [(VenueFloorViewController *)self isOpen];
  v6 = [(VenueFloorViewController *)self openGestureRecognizer];
  [v6 setEnabled:v4 ^ 1];

  v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  [(VenueFloorViewController *)self setPressGestureRecognizer:v7];

  v8 = [(VenueFloorViewController *)self pressGestureRecognizer];
  [v8 setAllowedPressTypes:&off_1016ED448];

  v9 = [(VenueFloorViewController *)self pressGestureRecognizer];
  [v9 setAllowedTouchTypes:&__NSArray0__struct];

  v10 = [(VenueFloorViewController *)self cardView];
  v11 = [(VenueFloorViewController *)self pressGestureRecognizer];
  [v10 addGestureRecognizer:v11];

  LODWORD(v10) = [(VenueFloorViewController *)self isOpen];
  v12 = [(VenueFloorViewController *)self pressGestureRecognizer];
  [v12 setEnabled:v10 ^ 1];
}

- (void)delayConstraintSetupWhileExecuting:(id)a3
{
  v4 = a3;
  if ([(VenueFloorViewController *)self delayConstraintSetup])
  {
    v4[2]();
  }

  else
  {
    [(VenueFloorViewController *)self setDelayConstraintSetup:1];
    v4[2]();
    [(VenueFloorViewController *)self setDelayConstraintSetup:0];
    [(VenueFloorViewController *)self updateForOpenChangedAnimated:0];
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(UIStackView);
  [(VenueFloorViewController *)self setStackView:v3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAxis:1];
  [(VenueFloorViewController *)self setView:v3];
  v4 = &MKLookAroundViewDidBecomeFullyDrawnNotification_ptr;
  v5 = [UIColor colorNamed:@"VenueCloseBackgroundColor"];
  v6 = [(VenueFloorViewController *)self view];
  [v6 setTintColor:v5];

  LODWORD(v5) = _UISolariumEnabled();
  v7 = [(VenueFloorViewController *)self view];
  [v7 setClipsToBounds:v5 ^ 1];

  v8 = [UIButton buttonWithType:0];
  if (_UISolariumEnabled())
  {
    if (sub_10000FA08(self) == 5)
    {
      v9 = 24.0;
    }

    else
    {
      v9 = 32.0;
    }
  }

  else
  {
    v9 = 44.0;
  }

  v10 = &qword_101212000;
  v120 = v3;
  if (_UISolariumEnabled())
  {
    v11 = objc_alloc_init(UIView);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = sub_10000FA08(self);
    v13 = 17.0;
    if (v12 == 5)
    {
      v13 = 12.0;
    }

    v123 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:v13];
    v14 = [UIImage systemImageNamed:@"xmark"];
    [v8 setImage:v14 forState:0];

    [v8 setPreferredSymbolConfiguration:v123 forImageInState:0];
    v15 = [v8 layer];
    [v15 setCornerRadius:v9 * 0.5];

    [v8 setClipsToBounds:1];
    v16 = +[_TtC4Maps23MapsDesignConstantsShim defaultButtonTintColor];
    [v8 setTintColor:v16];

    [v8 _maps_applyGlassBackgroundForButton:1 buttonBackgroundType:0];
    [v11 addSubview:v8];
    [v3 setSpacing:8.0];
    [v3 addArrangedSubview:v11];
    v121 = [v8 widthAnchor];
    v118 = [v121 constraintEqualToConstant:v9];
    v128[0] = v118;
    v116 = [v8 centerYAnchor];
    v114 = [v11 centerYAnchor];
    v17 = [v116 constraintEqualToAnchor:v114];
    v128[1] = v17;
    v18 = [v8 centerXAnchor];
    v19 = [v11 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v128[2] = v20;
    v21 = [v11 heightAnchor];
    LODWORD(v22) = 1148829696;
    v23 = [v21 constraintEqualToConstant:v9 priority:v22];
    v128[3] = v23;
    [NSArray arrayWithObjects:v128 count:4];
    v24 = v8;
    v26 = v25 = self;
    [NSLayoutConstraint activateConstraints:v26];

    self = v25;
    v8 = v24;

    v10 = &qword_101212000;
    v4 = &MKLookAroundViewDidBecomeFullyDrawnNotification_ptr;

    v3 = v120;
  }

  else
  {
    v27 = [UIImage systemImageNamed:@"xmark.circle.fill"];
    [v8 setImage:v27 forState:0];

    v28 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:25.0];
    [v8 setPreferredSymbolConfiguration:v28 forImageInState:0];

    v29 = [UIColor colorNamed:@"VenueCloseBackgroundColor"];
    [v8 setTintColor:v29];

    [v3 addArrangedSubview:v8];
  }

  [v8 setAccessibilityIdentifier:@"LevelSwitcherCloseButton"];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addTarget:self action:"handleCloseButtonTap" forControlEvents:64];
  [(VenueFloorViewController *)self setCloseButton:v8];
  v30 = [[CardView alloc] initAllowingBlurredForButton:[(VenueFloorViewController *)self visualEffectDisabled]^ 1 buttonBackgroundType:0];
  [(VenueFloorViewController *)self setCardView:v30];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 setLayoutStyle:6];
  v31 = [(VenueFloorViewController *)self blurGroupName];
  [v30 setBlurGroupName:v31];

  [v3 addArrangedSubview:v30];
  p_cache = RAPRecordMapsSync.cache;
  if (_UISolariumEnabled())
  {
    v33 = sub_100035D80(self);
  }

  else
  {
    +[VenueFloorPickerCell cellHeight];
    v35 = fmax(v34, 44.0);
    v36 = [(VenueFloorViewController *)self view];
    v37 = [v36 window];
    v38 = [v37 screen];
    if (v38)
    {
      v39 = [v36 window];
      [v39 screen];
      v40 = v4;
      v42 = v41 = self;
      [v42 nativeScale];
      v44 = v43;

      self = v41;
      v4 = v40;
      p_cache = (RAPRecordMapsSync + 16);
    }

    else
    {
      v39 = +[UIScreen mainScreen];
      [v39 nativeScale];
      v44 = v45;
    }

    v46 = 1.0;
    if (v44 > 0.0)
    {
      v46 = 1.0 / v44;
    }

    v33 = v46 + v35;

    v10 = &qword_101212000;
  }

  v47 = objc_alloc_init(UICollectionViewFlowLayout);
  [v47 setItemSize:{sub_100035D80(self), v33}];
  [v47 setMinimumLineSpacing:0.0];
  v119 = v47;
  v48 = [[UICollectionView alloc] initWithFrame:v47 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(VenueFloorViewController *)self setFloorCollectionView:v48];
  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v48 setShowsVerticalScrollIndicator:0];
  v49 = [v4[306] clearColor];
  [v48 setBackgroundColor:v49];

  [v48 setDataSource:self];
  [v48 setDelegate:self];
  [v48 _setHiddenPocketEdges:1];
  v50 = objc_opt_class();
  v51 = [p_cache + 158 reuseIdentifier];
  [v48 registerClass:v50 forCellWithReuseIdentifier:v51];

  v52 = [v30 contentView];
  [v52 addSubview:v48];

  v53 = [v48 heightAnchor];
  LODWORD(v54) = 1144750080;
  v124 = [v53 constraintEqualToConstant:0.0 priority:v54];

  v55 = [v48 widthAnchor];
  v56 = *(v10 + 816);
  LODWORD(v57) = v56;
  v58 = [v55 constraintGreaterThanOrEqualToConstant:0.0 priority:v57];

  v110 = [v3 widthAnchor];
  v108 = [v110 constraintEqualToConstant:sub_100035D80(self)];
  v127[0] = v108;
  v127[1] = v58;
  v117 = v58;
  v59 = [v48 topAnchor];
  v104 = [v30 topAnchor];
  v106 = v59;
  v102 = [v59 constraintEqualToAnchor:?];
  v127[2] = v102;
  v60 = v48;
  v61 = [v48 bottomAnchor];
  v62 = [v30 bottomAnchor];
  v63 = [(VenueFloorViewController *)self view];
  v64 = [v63 window];
  v65 = [v64 screen];
  v100 = v63;
  if (v65)
  {
    v66 = [v63 window];
    v67 = [v66 screen];
    [v67 nativeScale];
    v69 = v68;
  }

  else
  {
    v66 = +[UIScreen mainScreen];
    [v66 nativeScale];
    v69 = v70;
  }

  v71 = 1.0;
  if (v69 > 0.0)
  {
    v71 = 1.0 / v69;
  }

  [v61 constraintEqualToAnchor:v62 constant:v71];
  v72 = v98 = v61;
  v127[3] = v72;
  v115 = v60;
  v73 = [v60 leadingAnchor];
  v74 = [v30 leadingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];
  v127[4] = v75;
  v76 = [v60 trailingAnchor];
  [v30 trailingAnchor];
  v77 = v96 = v62;
  [v76 constraintEqualToAnchor:v77];
  v78 = v122 = v30;
  v127[5] = v78;
  v79 = [v8 heightAnchor];
  LODWORD(v80) = v56;
  [v79 constraintEqualToConstant:v9 priority:v80];
  v81 = v113 = v8;
  v127[6] = v81;
  v112 = [NSArray arrayWithObjects:v127 count:7];

  v126 = v124;
  v82 = [NSArray arrayWithObjects:&v126 count:1];
  v111 = [v82 mutableCopy];

  v83 = [(VenueFloorViewController *)self delegate];
  v84 = [v83 venueFloorViewControllerConstraintsForViewWhenOpen:self];
  [v111 addObjectsFromArray:v84];

  [(VenueFloorViewController *)self setOpenConstraints:v111];
  v107 = [v122 leadingAnchor];
  v109 = [(VenueFloorViewController *)self closedPlaceholderView];
  v105 = [v109 leadingAnchor];
  v103 = [v107 constraintEqualToAnchor:v105];
  v125[0] = v103;
  v99 = [v122 trailingAnchor];
  v101 = [(VenueFloorViewController *)self closedPlaceholderView];
  v97 = [v101 trailingAnchor];
  v95 = [v99 constraintEqualToAnchor:v97];
  v125[1] = v95;
  v85 = [v122 topAnchor];
  v86 = [(VenueFloorViewController *)self closedPlaceholderView];
  v87 = [v86 topAnchor];
  v88 = [v85 constraintEqualToAnchor:v87];
  v125[2] = v88;
  v89 = [v122 bottomAnchor];
  v90 = [(VenueFloorViewController *)self closedPlaceholderView];
  v91 = [v90 bottomAnchor];
  [v89 constraintEqualToAnchor:v91];
  v93 = v92 = self;
  v125[3] = v93;
  v94 = [NSArray arrayWithObjects:v125 count:4];

  [(VenueFloorViewController *)v92 setClosedConstraints:v94];
  [(VenueFloorViewController *)v92 setFloorOptimalOpenHeightConstraint:v124];
  [NSLayoutConstraint activateConstraints:v112];
  [(VenueFloorViewController *)v92 setupGestures];
  [(MapsThemeViewController *)v92 updateTheme];
}

- (UIView)closedPlaceholderView
{
  closedPlaceholderView = self->_closedPlaceholderView;
  if (!closedPlaceholderView)
  {
    v4 = objc_alloc_init(UIView);
    v5 = self->_closedPlaceholderView;
    self->_closedPlaceholderView = v4;

    [(UIView *)self->_closedPlaceholderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = sub_100035D80(self);
    v7 = [(UIView *)self->_closedPlaceholderView heightAnchor];
    v8 = [v7 constraintEqualToConstant:v6];
    [v8 setActive:1];

    v9 = [(UIView *)self->_closedPlaceholderView widthAnchor];
    v10 = [v9 constraintEqualToConstant:v6];
    [v10 setActive:1];

    closedPlaceholderView = self->_closedPlaceholderView;
  }

  return closedPlaceholderView;
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"handleCloseButtonTap"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (VenueFloorViewController)initWithDelegate:(id)a3 venuesManager:(id)a4 visualEffectDisabled:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = VenueFloorViewController;
  v10 = [(VenueFloorViewController *)&v19 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v8);
    objc_storeWeak(&v11->_venuesManager, v9);
    v11->_visualEffectDisabled = a5;
    openConstraints = v11->_openConstraints;
    v11->_openConstraints = &__NSArray0__struct;

    closedConstraints = v11->_closedConstraints;
    v11->_closedConstraints = &__NSArray0__struct;

    v14 = objc_alloc_init(NSMutableArray);
    updateHiddenAnimationCompletionBlocks = v11->_updateHiddenAnimationCompletionBlocks;
    v11->_updateHiddenAnimationCompletionBlocks = v14;

    floorOrdinals = v11->_floorOrdinals;
    v11->_floorOrdinals = &__NSArray0__struct;

    shortFloorNames = v11->_shortFloorNames;
    v11->_shortFloorNames = &__NSDictionary0__struct;
  }

  return v11;
}

@end