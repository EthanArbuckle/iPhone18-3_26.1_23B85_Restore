@interface VenueFloorViewController
- (BOOL)isFocusedOnVenue:(id)venue;
- (BOOL)isHidden;
- (BOOL)lacksSearchResultsForFloorOrdinal:(id)ordinal;
- (BOOL)shouldBeHidden;
- (UIView)closedPlaceholderView;
- (VenueFloorViewController)initWithDelegate:(id)delegate venuesManager:(id)manager visualEffectDisabled:(BOOL)disabled;
- (VenueFloorViewControllerDelegate)delegate;
- (VenuesManager)venuesManager;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)keyCommands;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)delayConstraintSetupWhileExecuting:(id)executing;
- (void)didChangeConstraints;
- (void)didChangeFocusedVenue:(id)venue focusedBuilding:(id)building displayedFloorOrdinal:(signed __int16)ordinal;
- (void)didChangeSearchResultsInVenue;
- (void)didClose;
- (void)didFinishHiding;
- (void)didFinishShowing;
- (void)didOpen;
- (void)didStartHiding;
- (void)didStartShowing;
- (void)handleCloseButtonTap;
- (void)handleTap:(id)tap;
- (void)loadView;
- (void)scrollToDisplayedFloorAnimated:(BOOL)animated;
- (void)scrollToFloorOrdinal:(signed __int16)ordinal animated:(BOOL)animated;
- (void)setBlurGroupName:(id)name;
- (void)setDisplayedFloorOrdinal:(signed __int16)ordinal animated:(BOOL)animated;
- (void)setForceHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)setHidden:(BOOL)hidden;
- (void)setOpen:(BOOL)open animated:(BOOL)animated;
- (void)setUserLocationFloorOrdinal:(id)ordinal;
- (void)setVenue:(id)venue focusedBuilding:(id)building animated:(BOOL)animated forceUpdate:(BOOL)update;
- (void)setupGestures;
- (void)updateCloseButtonVisibility;
- (void)updateDisplayedFloorAnimated:(BOOL)animated;
- (void)updateFloorOptimalOpenHeightConstraint;
- (void)updateForOpenChangedAnimated:(BOOL)animated;
- (void)updateHiddenAnimated:(BOOL)animated completion:(id)completion;
- (void)updateShowSelectionWithForceClipCorners:(BOOL)corners;
- (void)updateVenueAndBuildingsAnimated:(BOOL)animated forced:(BOOL)forced;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
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
  delegate = [(VenueFloorViewController *)self delegate];
  [delegate venueFloorViewControllerDidClose:self];
}

- (void)didOpen
{
  delegate = [(VenueFloorViewController *)self delegate];
  [delegate venueFloorViewControllerDidOpen:self];
}

- (void)didFinishShowing
{
  delegate = [(VenueFloorViewController *)self delegate];
  [delegate venueFloorViewControllerDidFinishShowing:self];
}

- (void)didStartShowing
{
  delegate = [(VenueFloorViewController *)self delegate];
  [delegate venueFloorViewControllerDidStartShowing:self];
}

- (void)didFinishHiding
{
  delegate = [(VenueFloorViewController *)self delegate];
  [delegate venueFloorViewControllerDidFinishHiding:self];
}

- (void)didStartHiding
{
  delegate = [(VenueFloorViewController *)self delegate];
  [delegate venueFloorViewControllerDidStartHiding:self];
}

- (void)didChangeConstraints
{
  delegate = [(VenueFloorViewController *)self delegate];
  [delegate venueFloorViewControllerDidChangeConstraints:self];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  floorOrdinals = [(VenueFloorViewController *)self floorOrdinals];
  item = [pathCopy item];

  v15 = [floorOrdinals objectAtIndexedSubscript:item];

  shortFloorNames = [(VenueFloorViewController *)self shortFloorNames];
  v9 = [shortFloorNames objectForKeyedSubscript:v15];

  [(VenueFloorViewController *)self captureUserAction:4006 onTarget:644 eventValue:v9];
  venuesManager = [(VenueFloorViewController *)self venuesManager];
  shortValue = [v15 shortValue];
  venue = [(VenueFloorViewController *)self venue];
  [venuesManager setDisplayedFloorOrdinal:shortValue forBuildingsInVenue:venue];

  venuesManager2 = [(VenueFloorViewController *)self venuesManager];
  mapView = [venuesManager2 mapView];
  [mapView setUserTrackingMode:0];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (([pathCopy row] & 0x8000000000000000) != 0 || (v8 = objc_msgSend(pathCopy, "item"), -[VenueFloorViewController floorOrdinals](self, "floorOrdinals"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8 >= v10))
  {
    v14 = objc_opt_new();
  }

  else
  {
    floorOrdinals = [(VenueFloorViewController *)self floorOrdinals];
    v12 = [floorOrdinals objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

    if (v12)
    {
      v13 = +[VenueFloorPickerCell reuseIdentifier];
      v14 = [viewCopy dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:pathCopy];

      shortFloorNames = [(VenueFloorViewController *)self shortFloorNames];
      v16 = [shortFloorNames objectForKeyedSubscript:v12];

      [v14 setFloorOrdinal:v12];
      [v14 setFloorName:v16];
      userLocationFloorOrdinal = [(VenueFloorViewController *)self userLocationFloorOrdinal];
      [v14 setIsUserLocation:{+[NSNumber number:isEqualToNumber:](NSNumber, "number:isEqualToNumber:", v12, userLocationFloorOrdinal)}];

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

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(VenueFloorViewController *)self floorOrdinals:view];
  v5 = [v4 count];

  return v5;
}

- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value
{
  v5 = *&target;
  v6 = *&action;
  valueCopy = value;
  v12 = objc_alloc_init(GEOPlaceActionDetails);
  venue = [(VenueFloorViewController *)self venue];
  businessID = [venue businessID];

  if (businessID)
  {
    [v12 setBusinessID:businessID];
  }

  v11 = +[MKMapService sharedService];
  [v11 captureUserAction:v6 onTarget:v5 eventValue:valueCopy placeActionDetails:v12];
}

- (void)scrollToFloorOrdinal:(signed __int16)ordinal animated:(BOOL)animated
{
  animatedCopy = animated;
  ordinalCopy = ordinal;
  floorOrdinals = [(VenueFloorViewController *)self floorOrdinals];
  v8 = [NSNumber numberWithShort:ordinalCopy];
  v9 = [floorOrdinals indexOfObject:v8];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [NSIndexPath indexPathForItem:v9 inSection:0];
    floorCollectionView = [(VenueFloorViewController *)self floorCollectionView];
    [floorCollectionView scrollToItemAtIndexPath:v11 atScrollPosition:2 animated:animatedCopy];
  }
}

- (void)scrollToDisplayedFloorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  venue = [(VenueFloorViewController *)self venue];

  if (venue)
  {
    venuesManager = [(VenueFloorViewController *)self venuesManager];
    venue2 = [(VenueFloorViewController *)self venue];
    -[VenueFloorViewController scrollToFloorOrdinal:animated:](self, "scrollToFloorOrdinal:animated:", [venuesManager displayedFloorOrdinalForBuildingsInVenue:venue2], animatedCopy);
  }
}

- (void)setDisplayedFloorOrdinal:(signed __int16)ordinal animated:(BOOL)animated
{
  animatedCopy = animated;
  ordinalCopy = ordinal;
  floorOrdinals = [(VenueFloorViewController *)self floorOrdinals];
  v8 = [NSNumber numberWithShort:ordinalCopy];
  v9 = [floorOrdinals indexOfObject:v8];

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
      floorCollectionView = [(VenueFloorViewController *)self floorCollectionView];
      indexPathsForSelectedItems = [floorCollectionView indexPathsForSelectedItems];
      v13 = [indexPathsForSelectedItems containsObject:v15];

      if ((v13 & 1) == 0)
      {
        floorCollectionView2 = [(VenueFloorViewController *)self floorCollectionView];
        [floorCollectionView2 selectItemAtIndexPath:v15 animated:animatedCopy scrollPosition:2];
      }

      v10 = v15;
    }
  }
}

- (void)updateDisplayedFloorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  venue = [(VenueFloorViewController *)self venue];

  if (venue)
  {
    venuesManager = [(VenueFloorViewController *)self venuesManager];
    venue2 = [(VenueFloorViewController *)self venue];
    -[VenueFloorViewController setDisplayedFloorOrdinal:animated:](self, "setDisplayedFloorOrdinal:animated:", [venuesManager displayedFloorOrdinalForBuildingsInVenue:venue2], animatedCopy);
  }
}

- (void)setVenue:(id)venue focusedBuilding:(id)building animated:(BOOL)animated forceUpdate:(BOOL)update
{
  animatedCopy = animated;
  venueCopy = venue;
  buildings = [(VKVenueFeatureMarker *)venueCopy buildings];
  v12 = buildings;
  v13 = &__NSArray0__struct;
  if (buildings)
  {
    v13 = buildings;
  }

  v14 = v13;

  if (![(VenueFloorViewController *)self floorsDirty]&& !update && self->_venue == venueCopy)
  {
    selfCopy2 = self;
    v34 = animatedCopy;
    v32 = 0;
    goto LABEL_22;
  }

  objc_storeStrong(&self->_venue, venue);
  [(VenueFloorViewController *)self setFloorsDirty:1];
  if ([(VenueFloorViewController *)self isHidden]|| ![(VenueFloorViewController *)self shouldBeHidden]|| !animatedCopy)
  {
    v38 = animatedCopy;
    v40 = venueCopy;
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
          floorOrdinals = [v22 floorOrdinals];
          [v16 addObjectsFromArray:floorOrdinals];

          shortFloorNames = [v22 shortFloorNames];
          [v15 addEntriesFromDictionary:shortFloorNames];
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v19);
    }

    allObjects = [v16 allObjects];
    v26 = [allObjects sortedArrayUsingSelector:"compare:"];
    reverseObjectEnumerator = [v26 reverseObjectEnumerator];
    allObjects2 = [reverseObjectEnumerator allObjects];

    if (!update)
    {
      floorOrdinals2 = [(VenueFloorViewController *)self floorOrdinals];
      if ([NSArray array:allObjects2 isEqualToArray:floorOrdinals2])
      {
        shortFloorNames2 = [(VenueFloorViewController *)self shortFloorNames];
        v31 = [NSDictionary dictionary:v15 isEqualToDictionary:shortFloorNames2];

        if (v31)
        {
          [(VenueFloorViewController *)self updateHiddenAnimated:v38 completion:0];
          v14 = v39;
          venueCopy = v40;
LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    objc_storeStrong(&self->_floorOrdinals, allObjects2);
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
        isHidden = [(VenueFloorViewController *)self isHidden];
        (v35[2])(v35);
        if (isHidden)
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

      venueCopy = v40;
    }

    else
    {
      (v35[2])(v35);
      (v36[2])(v36);
      [(VenueFloorViewController *)self updateHiddenAnimated:0 completion:0];
      v14 = v39;
      venueCopy = v40;
    }

    goto LABEL_33;
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100AEDCC0;
  v49[3] = &unk_101661AE0;
  v49[4] = self;
  updateCopy = update;
  v32 = v49;
  selfCopy2 = self;
  v34 = 1;
LABEL_22:
  [(VenueFloorViewController *)selfCopy2 updateHiddenAnimated:v34 completion:v32];
LABEL_34:
}

- (void)updateVenueAndBuildingsAnimated:(BOOL)animated forced:(BOOL)forced
{
  forcedCopy = forced;
  animatedCopy = animated;
  venuesManager = [(VenueFloorViewController *)self venuesManager];
  venueWithFocus = [venuesManager venueWithFocus];
  venuesManager2 = [(VenueFloorViewController *)self venuesManager];
  venueBuildingWithFocus = [venuesManager2 venueBuildingWithFocus];
  [(VenueFloorViewController *)self setVenue:venueWithFocus focusedBuilding:venueBuildingWithFocus animated:animatedCopy forceUpdate:forcedCopy];
}

- (void)updateShowSelectionWithForceClipCorners:(BOOL)corners
{
  v4 = [(VenueFloorViewController *)self isOpen]| corners;
  if (v4)
  {
    v5 = 10.0;
  }

  else
  {
    v5 = 0.0;
  }

  floorCollectionView = [(VenueFloorViewController *)self floorCollectionView];
  [floorCollectionView _setContinuousCornerRadius:v5];

  floorCollectionView2 = [(VenueFloorViewController *)self floorCollectionView];
  [floorCollectionView2 setClipsToBounds:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  floorCollectionView3 = [(VenueFloorViewController *)self floorCollectionView];
  preparedCells = [floorCollectionView3 preparedCells];

  v10 = [preparedCells countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(preparedCells);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v14 setShowSelection:{-[VenueFloorViewController isOpen](self, "isOpen")}];
        }
      }

      v11 = [preparedCells countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)updateFloorOptimalOpenHeightConstraint
{
  floorCollectionView = [(VenueFloorViewController *)self floorCollectionView];
  collectionViewLayout = [floorCollectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v6 = v5;
  floorOptimalOpenHeightConstraint = [(VenueFloorViewController *)self floorOptimalOpenHeightConstraint];
  [floorOptimalOpenHeightConstraint setConstant:v6];

  floorCollectionView2 = [(VenueFloorViewController *)self floorCollectionView];
  [floorCollectionView2 setNeedsLayout];
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

  closeButton = [(VenueFloorViewController *)self closeButton];
  [closeButton setAlpha:v3];

  LODWORD(closeButton) = [(VenueFloorViewController *)self isOpen];
  closeButton2 = [(VenueFloorViewController *)self closeButton];
  [closeButton2 setHidden:closeButton ^ 1];
}

- (void)updateForOpenChangedAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(VenueFloorViewController *)self isVisible]&& ![(VenueFloorViewController *)self delayConstraintSetup])
  {
    if ([(VenueFloorViewController *)self isOpen])
    {
      closedConstraints = [(VenueFloorViewController *)self closedConstraints];
      [NSLayoutConstraint deactivateConstraints:closedConstraints];

      openConstraints = [(VenueFloorViewController *)self openConstraints];
      [NSLayoutConstraint activateConstraints:openConstraints];

      [(VenueFloorViewController *)self updateFloorOptimalOpenHeightConstraint];
    }

    else
    {
      openConstraints2 = [(VenueFloorViewController *)self openConstraints];
      [NSLayoutConstraint deactivateConstraints:openConstraints2];

      closedConstraints2 = [(VenueFloorViewController *)self closedConstraints];
      [NSLayoutConstraint activateConstraints:closedConstraints2];
    }

    isOpen = [(VenueFloorViewController *)self isOpen];
    floorCollectionView = [(VenueFloorViewController *)self floorCollectionView];
    [floorCollectionView setScrollEnabled:isOpen];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100AEE350;
    v16[3] = &unk_101661B18;
    v16[4] = self;
    v11 = objc_retainBlock(v16);
    v12 = v11;
    if (animatedCopy)
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

- (void)updateHiddenAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  if ([(VenueFloorViewController *)self updateHiddenAnimationActive])
  {
    if (completionCopy)
    {
      updateHiddenAnimationCompletionBlocks = [(VenueFloorViewController *)self updateHiddenAnimationCompletionBlocks];
      v8 = objc_retainBlock(completionCopy);
      [updateHiddenAnimationCompletionBlocks addObject:v8];
    }

    goto LABEL_15;
  }

  shouldBeHidden = [(VenueFloorViewController *)self shouldBeHidden];
  if (shouldBeHidden == [(VenueFloorViewController *)self isHidden])
  {
    goto LABEL_11;
  }

  if (!animated)
  {
    if (!shouldBeHidden)
    {
      [(VenueFloorViewController *)self didStartShowing];
      [(VenueFloorViewController *)self setHidden:0];
      [(VenueFloorViewController *)self didFinishShowing];
      if (!completionCopy)
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
    if (!completionCopy)
    {
      goto LABEL_15;
    }

LABEL_12:
    completionCopy[2](completionCopy);
    goto LABEL_15;
  }

  [(VenueFloorViewController *)self setUpdateHiddenAnimationActive:1];
  view = [(VenueFloorViewController *)self view];
  v11 = view;
  if (shouldBeHidden)
  {
    superview = [view superview];

    if (superview)
    {
      closedPlaceholderView = [(VenueFloorViewController *)self closedPlaceholderView];
      [closedPlaceholderView bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      closedPlaceholderView2 = [(VenueFloorViewController *)self closedPlaceholderView];
      [superview convertRect:closedPlaceholderView2 fromView:{v15, v17, v19, v21}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      cardView = [(VenueFloorViewController *)self cardView];
      leftAnchor = [cardView leftAnchor];
      leftAnchor2 = [superview leftAnchor];
      v57.origin.x = v24;
      v57.origin.y = v26;
      v57.size.width = v28;
      v57.size.height = v30;
      v47 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:CGRectGetMinX(v57)];
      v56[0] = v47;
      cardView2 = [(VenueFloorViewController *)self cardView];
      rightAnchor = [cardView2 rightAnchor];
      leftAnchor3 = [superview leftAnchor];
      v58.origin.x = v24;
      v58.origin.y = v26;
      v58.size.width = v28;
      v58.size.height = v30;
      v43 = [rightAnchor constraintEqualToAnchor:leftAnchor3 constant:CGRectGetMaxX(v58)];
      v56[1] = v43;
      cardView3 = [(VenueFloorViewController *)self cardView];
      topAnchor = [cardView3 topAnchor];
      topAnchor2 = [superview topAnchor];
      v59.origin.x = v24;
      v59.origin.y = v26;
      v59.size.width = v28;
      v59.size.height = v30;
      v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:CGRectGetMinY(v59)];
      v56[2] = v32;
      cardView4 = [(VenueFloorViewController *)self cardView];
      bottomAnchor = [cardView4 bottomAnchor];
      topAnchor3 = [superview topAnchor];
      v60.origin.x = v24;
      v60.origin.y = v26;
      v60.size.width = v28;
      v60.size.height = v30;
      v36 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:CGRectGetMaxY(v60)];
      v56[3] = v36;
      v37 = [NSArray arrayWithObjects:v56 count:4];
      v38 = qword_10195E5C0;
      qword_10195E5C0 = v37;

      closedConstraints = [(VenueFloorViewController *)self closedConstraints];
      [NSLayoutConstraint deactivateConstraints:closedConstraints];

      openConstraints = [(VenueFloorViewController *)self openConstraints];
      [NSLayoutConstraint deactivateConstraints:openConstraints];

      [NSLayoutConstraint activateConstraints:qword_10195E5C0];
    }
  }

  else
  {
    [view setAlpha:0.0];

    [(VenueFloorViewController *)self setHidden:0];
    superview = [(VenueFloorViewController *)self view];
    [superview layoutIfNeeded];
  }

  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100AEE950;
  v54[3] = &unk_101661AE0;
  v55 = shouldBeHidden;
  v54[4] = self;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100AEEA14;
  v51[3] = &unk_10164FD60;
  v51[4] = self;
  v53 = shouldBeHidden;
  v52 = completionCopy;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v54 completion:v51];

LABEL_15:
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  view = [(VenueFloorViewController *)self view];
  isHidden = [view isHidden];

  if (isHidden != hiddenCopy)
  {
    view2 = [(VenueFloorViewController *)self view];
    [view2 setHidden:hiddenCopy];

    closedPlaceholderView = [(VenueFloorViewController *)self closedPlaceholderView];
    [closedPlaceholderView setHidden:hiddenCopy];
  }
}

- (BOOL)shouldBeHidden
{
  if ([(VenueFloorViewController *)self forceHidden])
  {
    return 1;
  }

  venue = [(VenueFloorViewController *)self venue];
  if (venue)
  {
    floorOrdinals = [(VenueFloorViewController *)self floorOrdinals];
    v3 = [floorOrdinals count] < 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)handleTap:(id)tap
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
    cardView = [(VenueFloorViewController *)self cardView];
    [cardView setClipsToBounds:1];

    cardView2 = [(VenueFloorViewController *)self cardView];
    [cardView2 bounds];
    v5 = CGRectGetWidth(v9) * 0.5;
    cardView3 = [(VenueFloorViewController *)self cardView];
    layer = [cardView3 layer];
    [layer setCornerRadius:v5];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(VenueFloorViewController *)self setVisible:0];
  v5.receiver = self;
  v5.super_class = VenueFloorViewController;
  [(VenueFloorViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(VenueFloorViewController *)self setVisible:1];
  [(VenueFloorViewController *)self updateForOpenChangedAnimated:0];
  [(VenueFloorViewController *)self updateVenueAndBuildingsAnimated:0 forced:1];
  v5.receiver = self;
  v5.super_class = VenueFloorViewController;
  [(VenueFloorViewController *)&v5 viewWillAppear:appearCopy];
}

- (BOOL)isFocusedOnVenue:(id)venue
{
  if (!venue)
  {
    return 0;
  }

  venueCopy = venue;
  venue = [(VenueFloorViewController *)self venue];
  venueID = [venue venueID];
  venueID2 = [venueCopy venueID];

  v8 = venueID == venueID2;
  return v8;
}

- (void)didChangeFocusedVenue:(id)venue focusedBuilding:(id)building displayedFloorOrdinal:(signed __int16)ordinal
{
  ordinalCopy = ordinal;
  [(VenueFloorViewController *)self setVenue:venue focusedBuilding:building animated:1 forceUpdate:0];
  if (venue)
  {

    [(VenueFloorViewController *)self setDisplayedFloorOrdinal:ordinalCopy animated:1];
  }
}

- (void)didChangeSearchResultsInVenue
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  floorCollectionView = [(VenueFloorViewController *)self floorCollectionView];
  preparedCells = [floorCollectionView preparedCells];

  v5 = [preparedCells countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(preparedCells);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          floorOrdinal = [v9 floorOrdinal];
          [v9 setLacksSearchResults:{-[VenueFloorViewController lacksSearchResultsForFloorOrdinal:](self, "lacksSearchResultsForFloorOrdinal:", floorOrdinal)}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [preparedCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (BOOL)lacksSearchResultsForFloorOrdinal:(id)ordinal
{
  if (!ordinal)
  {
    return 0;
  }

  ordinalCopy = ordinal;
  delegate = [(VenueFloorViewController *)self delegate];
  venue = [(VenueFloorViewController *)self venue];
  shortValue = [ordinalCopy shortValue];

  LOBYTE(ordinalCopy) = [delegate lacksSearchResultsInVenue:venue forFloorOrdinal:shortValue];
  return ordinalCopy;
}

- (void)setUserLocationFloorOrdinal:(id)ordinal
{
  ordinalCopy = ordinal;
  if (![NSNumber number:self->_userLocationFloorOrdinal isEqualToNumber:ordinalCopy])
  {
    v16 = ordinalCopy;
    objc_storeStrong(&self->_userLocationFloorOrdinal, ordinal);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    floorCollectionView = [(VenueFloorViewController *)self floorCollectionView];
    preparedCells = [floorCollectionView preparedCells];

    v8 = [preparedCells countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(preparedCells);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            floorOrdinal = [v12 floorOrdinal];
            userLocationFloorOrdinal = [(VenueFloorViewController *)self userLocationFloorOrdinal];
            v15 = [NSNumber number:floorOrdinal isEqualToNumber:userLocationFloorOrdinal];

            [v12 setIsUserLocation:v15];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [preparedCells countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    ordinalCopy = v16;
  }
}

- (void)setForceHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  v9 = completionCopy;
  if (self->_forceHidden == hiddenCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v10 = completionCopy;
    (*(completionCopy + 2))(completionCopy);
  }

  else
  {
    self->_forceHidden = hiddenCopy;
    v10 = completionCopy;
    [(VenueFloorViewController *)self updateHiddenAnimated:animatedCopy completion:completionCopy];
  }

  v9 = v10;
LABEL_6:
}

- (BOOL)isHidden
{
  view = [(VenueFloorViewController *)self view];
  isHidden = [view isHidden];

  return isHidden;
}

- (void)setOpen:(BOOL)open animated:(BOOL)animated
{
  if (self->_open != open)
  {
    animatedCopy = animated;
    self->_open = open;
    v6 = !open;
    openGestureRecognizer = [(VenueFloorViewController *)self openGestureRecognizer];
    [openGestureRecognizer setEnabled:v6];

    pressGestureRecognizer = [(VenueFloorViewController *)self pressGestureRecognizer];
    [pressGestureRecognizer setEnabled:v6];

    [(VenueFloorViewController *)self updateForOpenChangedAnimated:animatedCopy];
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

- (void)setBlurGroupName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy copy];
  blurGroupName = self->_blurGroupName;
  self->_blurGroupName = v5;

  cardView = [(VenueFloorViewController *)self cardView];
  [cardView setBlurGroupName:nameCopy];
}

- (void)setupGestures
{
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  [(VenueFloorViewController *)self setOpenGestureRecognizer:v3];

  cardView = [(VenueFloorViewController *)self cardView];
  openGestureRecognizer = [(VenueFloorViewController *)self openGestureRecognizer];
  [cardView addGestureRecognizer:openGestureRecognizer];

  LODWORD(cardView) = [(VenueFloorViewController *)self isOpen];
  openGestureRecognizer2 = [(VenueFloorViewController *)self openGestureRecognizer];
  [openGestureRecognizer2 setEnabled:cardView ^ 1];

  v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  [(VenueFloorViewController *)self setPressGestureRecognizer:v7];

  pressGestureRecognizer = [(VenueFloorViewController *)self pressGestureRecognizer];
  [pressGestureRecognizer setAllowedPressTypes:&off_1016ED448];

  pressGestureRecognizer2 = [(VenueFloorViewController *)self pressGestureRecognizer];
  [pressGestureRecognizer2 setAllowedTouchTypes:&__NSArray0__struct];

  cardView2 = [(VenueFloorViewController *)self cardView];
  pressGestureRecognizer3 = [(VenueFloorViewController *)self pressGestureRecognizer];
  [cardView2 addGestureRecognizer:pressGestureRecognizer3];

  LODWORD(cardView2) = [(VenueFloorViewController *)self isOpen];
  pressGestureRecognizer4 = [(VenueFloorViewController *)self pressGestureRecognizer];
  [pressGestureRecognizer4 setEnabled:cardView2 ^ 1];
}

- (void)delayConstraintSetupWhileExecuting:(id)executing
{
  executingCopy = executing;
  if ([(VenueFloorViewController *)self delayConstraintSetup])
  {
    executingCopy[2]();
  }

  else
  {
    [(VenueFloorViewController *)self setDelayConstraintSetup:1];
    executingCopy[2]();
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
  view = [(VenueFloorViewController *)self view];
  [view setTintColor:v5];

  LODWORD(v5) = _UISolariumEnabled();
  view2 = [(VenueFloorViewController *)self view];
  [view2 setClipsToBounds:v5 ^ 1];

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
    layer = [v8 layer];
    [layer setCornerRadius:v9 * 0.5];

    [v8 setClipsToBounds:1];
    v16 = +[_TtC4Maps23MapsDesignConstantsShim defaultButtonTintColor];
    [v8 setTintColor:v16];

    [v8 _maps_applyGlassBackgroundForButton:1 buttonBackgroundType:0];
    [v11 addSubview:v8];
    [v3 setSpacing:8.0];
    [v3 addArrangedSubview:v11];
    widthAnchor = [v8 widthAnchor];
    v118 = [widthAnchor constraintEqualToConstant:v9];
    v128[0] = v118;
    centerYAnchor = [v8 centerYAnchor];
    centerYAnchor2 = [v11 centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v128[1] = v17;
    centerXAnchor = [v8 centerXAnchor];
    centerXAnchor2 = [v11 centerXAnchor];
    v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v128[2] = v20;
    heightAnchor = [v11 heightAnchor];
    LODWORD(v22) = 1148829696;
    v23 = [heightAnchor constraintEqualToConstant:v9 priority:v22];
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
  blurGroupName = [(VenueFloorViewController *)self blurGroupName];
  [v30 setBlurGroupName:blurGroupName];

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
    view3 = [(VenueFloorViewController *)self view];
    window = [view3 window];
    screen = [window screen];
    if (screen)
    {
      window2 = [view3 window];
      [window2 screen];
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
      window2 = +[UIScreen mainScreen];
      [window2 nativeScale];
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
  clearColor = [v4[306] clearColor];
  [v48 setBackgroundColor:clearColor];

  [v48 setDataSource:self];
  [v48 setDelegate:self];
  [v48 _setHiddenPocketEdges:1];
  v50 = objc_opt_class();
  reuseIdentifier = [p_cache + 158 reuseIdentifier];
  [v48 registerClass:v50 forCellWithReuseIdentifier:reuseIdentifier];

  contentView = [v30 contentView];
  [contentView addSubview:v48];

  heightAnchor2 = [v48 heightAnchor];
  LODWORD(v54) = 1144750080;
  v124 = [heightAnchor2 constraintEqualToConstant:0.0 priority:v54];

  widthAnchor2 = [v48 widthAnchor];
  v56 = *(v10 + 816);
  LODWORD(v57) = v56;
  v58 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:0.0 priority:v57];

  widthAnchor3 = [v3 widthAnchor];
  v108 = [widthAnchor3 constraintEqualToConstant:sub_100035D80(self)];
  v127[0] = v108;
  v127[1] = v58;
  v117 = v58;
  topAnchor = [v48 topAnchor];
  topAnchor2 = [v30 topAnchor];
  v106 = topAnchor;
  v102 = [topAnchor constraintEqualToAnchor:?];
  v127[2] = v102;
  v60 = v48;
  bottomAnchor = [v48 bottomAnchor];
  bottomAnchor2 = [v30 bottomAnchor];
  view4 = [(VenueFloorViewController *)self view];
  window3 = [view4 window];
  screen2 = [window3 screen];
  v100 = view4;
  if (screen2)
  {
    window4 = [view4 window];
    screen3 = [window4 screen];
    [screen3 nativeScale];
    v69 = v68;
  }

  else
  {
    window4 = +[UIScreen mainScreen];
    [window4 nativeScale];
    v69 = v70;
  }

  v71 = 1.0;
  if (v69 > 0.0)
  {
    v71 = 1.0 / v69;
  }

  [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v71];
  v72 = v98 = bottomAnchor;
  v127[3] = v72;
  v115 = v60;
  leadingAnchor = [v60 leadingAnchor];
  leadingAnchor2 = [v30 leadingAnchor];
  v75 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v127[4] = v75;
  trailingAnchor = [v60 trailingAnchor];
  [v30 trailingAnchor];
  v77 = v96 = bottomAnchor2;
  [trailingAnchor constraintEqualToAnchor:v77];
  v78 = v122 = v30;
  v127[5] = v78;
  heightAnchor3 = [v8 heightAnchor];
  LODWORD(v80) = v56;
  [heightAnchor3 constraintEqualToConstant:v9 priority:v80];
  v81 = v113 = v8;
  v127[6] = v81;
  v112 = [NSArray arrayWithObjects:v127 count:7];

  v126 = v124;
  v82 = [NSArray arrayWithObjects:&v126 count:1];
  v111 = [v82 mutableCopy];

  delegate = [(VenueFloorViewController *)self delegate];
  v84 = [delegate venueFloorViewControllerConstraintsForViewWhenOpen:self];
  [v111 addObjectsFromArray:v84];

  [(VenueFloorViewController *)self setOpenConstraints:v111];
  leadingAnchor3 = [v122 leadingAnchor];
  closedPlaceholderView = [(VenueFloorViewController *)self closedPlaceholderView];
  leadingAnchor4 = [closedPlaceholderView leadingAnchor];
  v103 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v125[0] = v103;
  trailingAnchor2 = [v122 trailingAnchor];
  closedPlaceholderView2 = [(VenueFloorViewController *)self closedPlaceholderView];
  trailingAnchor3 = [closedPlaceholderView2 trailingAnchor];
  v95 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v125[1] = v95;
  topAnchor3 = [v122 topAnchor];
  closedPlaceholderView3 = [(VenueFloorViewController *)self closedPlaceholderView];
  topAnchor4 = [closedPlaceholderView3 topAnchor];
  v88 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v125[2] = v88;
  bottomAnchor3 = [v122 bottomAnchor];
  closedPlaceholderView4 = [(VenueFloorViewController *)self closedPlaceholderView];
  bottomAnchor4 = [closedPlaceholderView4 bottomAnchor];
  [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
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
    heightAnchor = [(UIView *)self->_closedPlaceholderView heightAnchor];
    v8 = [heightAnchor constraintEqualToConstant:v6];
    [v8 setActive:1];

    widthAnchor = [(UIView *)self->_closedPlaceholderView widthAnchor];
    v10 = [widthAnchor constraintEqualToConstant:v6];
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

- (VenueFloorViewController)initWithDelegate:(id)delegate venuesManager:(id)manager visualEffectDisabled:(BOOL)disabled
{
  delegateCopy = delegate;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = VenueFloorViewController;
  v10 = [(VenueFloorViewController *)&v19 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, delegateCopy);
    objc_storeWeak(&v11->_venuesManager, managerCopy);
    v11->_visualEffectDisabled = disabled;
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