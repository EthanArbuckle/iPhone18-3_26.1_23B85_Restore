@interface _MKPlaceViewController
- (BOOL)_shouldShowContactActions;
- (BOOL)_showReportAProblem;
- (BOOL)inlineMapViewControllerDidSelectMap:(id)map;
- (BOOL)isGuardianRestrictedCNContainer;
- (BOOL)isLayoutDynamic;
- (BOOL)isLoading;
- (BOOL)stackingViewController:(id)controller showsTitleForViewController:(id)viewController;
- (CNContact)contact;
- (CNContactViewControllerPrivateDelegate)contactsNavigationController;
- (OS_dispatch_queue)analyticsQueue;
- (_MKPlaceViewController)init;
- (_MKPlaceViewController)initWithContact:(id)contact mapItem:(id)item options:(unint64_t)options;
- (_MKPlaceViewController)initWithMapItem:(id)item options:(unint64_t)options;
- (_MKPlaceViewController)initWithPlaceItem:(id)item options:(unint64_t)options;
- (_MKPlaceViewControllerDelegate)placeViewControllerDelegate;
- (_MKPlaceViewControllerFeedbackDelegate)placeViewFeedbackDelegate;
- (double)placeCardHeaderViewControllerTrailingConstantForTitle:(id)title;
- (double)stackingViewController:(id)controller heightForSeparatorBetweenUpperViewController:(id)viewController andLowerViewController:(id)lowerViewController;
- (id)_contactForEditOperations;
- (id)_contactStore;
- (id)_createViewControllerForModule:(id)module;
- (id)_traits;
- (id)_viewControllerForClass:(Class)class;
- (id)additionalViewControllersAtPosition:(int64_t)position;
- (id)attributionsVC;
- (id)collectionViews;
- (id)createFooterActions;
- (id)generateAvailableActionForAnalytics;
- (id)generateUnactionableUIElementsForAnalytics;
- (id)hoursVC;
- (id)infosVC;
- (id)inlineMapVC;
- (id)photoVC;
- (id)poisInlineMapVC;
- (int)_moduleTypeForViewController:(id)controller;
- (int)getPlaceCardTypeForAnalytics;
- (int)mapTypeForETAProvider:(id)provider;
- (unint64_t)annotatedItemListDisplayStyle;
- (void)ETAProviderLocationUpdated:(id)updated;
- (void)_commonInit;
- (void)_createViewControllers:(id)controllers;
- (void)_createViewControllersForBrand:(id)brand;
- (void)_createViewControllersForShortPlacecard:(id)placecard;
- (void)_logClientAndServerLayouts:(id)layouts;
- (void)_performWhenViewHasAppeared:(id)appeared;
- (void)_presentViewControllerWithInterfaceStyleCheck:(id)check;
- (void)_setDefaultViewControllers:(id)controllers;
- (void)_updateViewControllers;
- (void)addAdditionalViewController:(id)controller atPosition:(int64_t)position;
- (void)collectionIdentifierSelected:(id)selected;
- (void)dealloc;
- (void)infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value actionURL:(id)l photoID:(id)d moduleMetadata:(id)metadata feedbackDelegateSelector:(int)selector actionRichProviderId:(id)self0 classification:(id)self1;
- (void)infoCardTransitAnalyticsDidSelectionAction:(int)action resultIndex:(int64_t)index targetID:(unint64_t)d transitSystem:(id)system transitDepartureSequence:(id)sequence transitCardCategory:(int)category transitIncident:(id)incident feedbackDelegateSelector:(int)self0;
- (void)placeCardActionControllerDidSelectAddPhoto:(id)photo presentingViewController:(id)controller sourceView:(id)view;
- (void)placeCardActionControllerDidSelectReportAProblem:(id)problem fromView:(id)view isQuickAction:(BOOL)action;
- (void)placeCardActionControllerDidSelectViewAllPhotos:(id)photos presentingViewController:(id)controller;
- (void)placeCardPhotosController:(id)controller didSelectViewPhotoWithID:(id)d presentingViewController:(id)viewController;
- (void)placeCardWillCloseFromClientType:(unint64_t)type;
- (void)placeHeaderButtonsViewController:(id)controller didSelectPrimaryType:(unint64_t)type withView:(id)view;
- (void)removeAdditionalViewController:(id)controller;
- (void)setAllowTransitLineSelection:(BOOL)selection;
- (void)setAutomobileOptions:(id)options;
- (void)setCyclingOptions:(id)options;
- (void)setDisableReportAProblem:(BOOL)problem;
- (void)setHeaderAlternatePrimaryButtonController:(id)controller;
- (void)setHeaderSecondaryButtonController:(id)controller;
- (void)setHideDirectionsButtons:(BOOL)buttons;
- (void)setLocation:(id)location;
- (void)setMapItem:(id)item;
- (void)setMapItem:(id)item contact:(id)contact updateOriginalContact:(BOOL)originalContact;
- (void)setOptions:(unint64_t)options;
- (void)setPlaceItem:(id)item updateOriginalContact:(BOOL)contact;
- (void)setPlaceViewControllerDelegate:(id)delegate;
- (void)setShowAddToPersonalGuides:(BOOL)guides;
- (void)setShowContactActions:(BOOL)actions;
- (void)setShowEditButton:(BOOL)button;
- (void)setShowInlineMapInHeader:(BOOL)header;
- (void)setShowNearbyApps:(BOOL)apps;
- (void)setShowReportAProblem:(BOOL)problem;
- (void)setShowShareActionsButton:(BOOL)button;
- (void)setShowSimulateLocation:(BOOL)location;
- (void)setShowTitleBar:(BOOL)bar;
- (void)setTransitOptions:(id)options;
- (void)setUseCompactPhotosView:(BOOL)view;
- (void)setWalkingOptions:(id)options;
- (void)set_mapkit_contentVisibility:(int64_t)visibility;
- (void)showContentIfLoaded;
- (void)updateContentAlpha;
- (void)updateHeaderTitle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _MKPlaceViewController

- (CNContactViewControllerPrivateDelegate)contactsNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_contactsNavigationController);

  return WeakRetained;
}

- (_MKPlaceViewControllerFeedbackDelegate)placeViewFeedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeViewFeedbackDelegate);

  return WeakRetained;
}

- (_MKPlaceViewControllerDelegate)placeViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeViewControllerDelegate);

  return WeakRetained;
}

- (void)placeCardWillCloseFromClientType:(unint64_t)type
{
  if (type == 3)
  {
    v3 = 701;
  }

  else
  {
    v3 = 0;
  }

  if (type == 2)
  {
    v4 = 702;
  }

  else
  {
    v4 = v3;
  }

  [(_MKPlaceViewController *)self infoCardAnalyticsDidSelectAction:4 target:v4 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
}

- (id)generateUnactionableUIElementsForAnalytics
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  viewControllers = [(MKStackingViewController *)self viewControllers];
  v5 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(viewControllers);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_1F1642C28])
        {
          infoCardChildUnactionableUIElements = [v9 infoCardChildUnactionableUIElements];
          if ([infoCardChildUnactionableUIElements count])
          {
            [array addObjectsFromArray:infoCardChildUnactionableUIElements];
          }
        }
      }

      v6 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)generateAvailableActionForAnalytics
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  viewControllers = [(MKStackingViewController *)self viewControllers];
  v5 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(viewControllers);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_1F1642C28])
        {
          infoCardChildPossibleActions = [v9 infoCardChildPossibleActions];
          if ([infoCardChildPossibleActions count])
          {
            [array addObjectsFromArray:infoCardChildPossibleActions];
          }
        }
      }

      v6 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

- (int)getPlaceCardTypeForAnalytics
{
  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  _hasFlyover = [mapItem _hasFlyover];

  if (_hasFlyover)
  {
    return 9;
  }

  if ([(MKPlaceHeaderButtonsViewController *)self->_buttonsHeaderController primaryButtonType]== 2)
  {
    return 10;
  }

  mapItem2 = [(_MKPlaceItem *)self->_placeItem mapItem];
  _hasTransit = [mapItem2 _hasTransit];

  if (_hasTransit)
  {
    return 7;
  }

  if (([(_MKPlaceItem *)self->_placeItem options]& 1) != 0)
  {
    return 5;
  }

  if (([(_MKPlaceItem *)self->_placeItem options]& 2) != 0)
  {
    return 3;
  }

  mapItem3 = [(_MKPlaceItem *)self->_placeItem mapItem];
  _isMapItemTypeBrand = [mapItem3 _isMapItemTypeBrand];

  if (_isMapItemTypeBrand)
  {
    return 11;
  }

  shouldDisplayBrowseCategoryVC = [(_MKPlaceViewController *)self shouldDisplayBrowseCategoryVC];
  mapItem4 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v12 = mapItem4;
  if (shouldDisplayBrowseCategoryVC)
  {
    _browseCategory_placeCardType = [mapItem4 _browseCategory_placeCardType];
  }

  else if ([mapItem4 _hasMUID])
  {
    _browseCategory_placeCardType = 2;
  }

  else
  {
    _browseCategory_placeCardType = 1;
  }

  return _browseCategory_placeCardType;
}

- (void)infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value actionURL:(id)l photoID:(id)d moduleMetadata:(id)metadata feedbackDelegateSelector:(int)selector actionRichProviderId:(id)self0 classification:(id)self1
{
  valueCopy = value;
  lCopy = l;
  dCopy = d;
  idCopy = id;
  classificationCopy = classification;
  placeViewFeedbackDelegate = [(_MKPlaceViewController *)self placeViewFeedbackDelegate];
  v19 = objc_opt_respondsToSelector();

  if (selector && (v19 & 1) != 0)
  {
    placeViewFeedbackDelegate2 = [(_MKPlaceViewController *)self placeViewFeedbackDelegate];
    [placeViewFeedbackDelegate2 placeViewController:self shouldLogFeedbackOfType:selector];
  }

  generateAvailableActionForAnalytics = [(_MKPlaceViewController *)self generateAvailableActionForAnalytics];
  generateUnactionableUIElementsForAnalytics = [(_MKPlaceViewController *)self generateUnactionableUIElementsForAnalytics];
  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  Current = CFAbsoluteTimeGetCurrent();
  getPlaceCardTypeForAnalytics = [(_MKPlaceViewController *)self getPlaceCardTypeForAnalytics];
  analyticsQueue = [(_MKPlaceViewController *)self analyticsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __171___MKPlaceViewController_infoCardAnalyticsDidSelectAction_target_eventValue_actionURL_photoID_moduleMetadata_feedbackDelegateSelector_actionRichProviderId_classification___block_invoke;
  block[3] = &unk_1E76C7218;
  actionCopy = action;
  targetCopy = target;
  v39 = valueCopy;
  v40 = mapItem;
  v47 = Current;
  v41 = lCopy;
  v42 = dCopy;
  v50 = getPlaceCardTypeForAnalytics;
  v43 = generateAvailableActionForAnalytics;
  v44 = generateUnactionableUIElementsForAnalytics;
  v45 = idCopy;
  v46 = classificationCopy;
  v36 = classificationCopy;
  v27 = idCopy;
  v28 = generateUnactionableUIElementsForAnalytics;
  v29 = generateAvailableActionForAnalytics;
  v30 = dCopy;
  v31 = lCopy;
  v32 = mapItem;
  v33 = valueCopy;
  dispatch_async(analyticsQueue, block);
}

- (void)infoCardTransitAnalyticsDidSelectionAction:(int)action resultIndex:(int64_t)index targetID:(unint64_t)d transitSystem:(id)system transitDepartureSequence:(id)sequence transitCardCategory:(int)category transitIncident:(id)incident feedbackDelegateSelector:(int)self0
{
  systemCopy = system;
  sequenceCopy = sequence;
  incidentCopy = incident;
  placeViewFeedbackDelegate = [(_MKPlaceViewController *)self placeViewFeedbackDelegate];
  v19 = objc_opt_respondsToSelector();

  if (selector && (v19 & 1) != 0)
  {
    placeViewFeedbackDelegate2 = [(_MKPlaceViewController *)self placeViewFeedbackDelegate];
    [placeViewFeedbackDelegate2 placeViewController:self shouldLogFeedbackOfType:selector];
  }

  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  Current = CFAbsoluteTimeGetCurrent();
  analyticsQueue = [(_MKPlaceViewController *)self analyticsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __190___MKPlaceViewController_infoCardTransitAnalyticsDidSelectionAction_resultIndex_targetID_transitSystem_transitDepartureSequence_transitCardCategory_transitIncident_feedbackDelegateSelector___block_invoke;
  block[3] = &unk_1E76C71F0;
  v34 = Current;
  indexCopy = index;
  dCopy = d;
  actionCopy = action;
  categoryCopy = category;
  v30 = mapItem;
  v31 = systemCopy;
  v32 = sequenceCopy;
  v33 = incidentCopy;
  v24 = incidentCopy;
  v25 = sequenceCopy;
  v26 = systemCopy;
  v27 = mapItem;
  dispatch_async(analyticsQueue, block);
}

- (OS_dispatch_queue)analyticsQueue
{
  analyticsQueue = self->_analyticsQueue;
  if (!analyticsQueue)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -1);
    v5 = dispatch_queue_create("com.apple.MapKit.PlaceViewController.Analytics", v4);
    v6 = self->_analyticsQueue;
    self->_analyticsQueue = v5;

    analyticsQueue = self->_analyticsQueue;
  }

  return analyticsQueue;
}

- (void)placeCardActionControllerDidSelectViewAllPhotos:(id)photos presentingViewController:(id)controller
{
  v8 = [(_MKPlaceViewController *)self mapItem:photos];
  _mapkit_preferredFirstPhotoVendor = [v8 _mapkit_preferredFirstPhotoVendor];
  attributionURLs = [_mapkit_preferredFirstPhotoVendor attributionURLs];
  placeViewFeedbackAppLaunchHandler = [(_MKPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
  [(_MKPlaceViewController *)self _launchAttributionURLs:attributionURLs withAttribution:_mapkit_preferredFirstPhotoVendor mapItem:v8 completionHandler:placeViewFeedbackAppLaunchHandler];
}

- (void)placeCardActionControllerDidSelectAddPhoto:(id)photo presentingViewController:(id)controller sourceView:(id)view
{
  v9 = [(_MKPlaceViewController *)self mapItem:photo];
  _mapkit_preferredFirstPhotoVendor = [v9 _mapkit_preferredFirstPhotoVendor];
  addPhotoURLs = [_mapkit_preferredFirstPhotoVendor addPhotoURLs];
  placeViewFeedbackAppLaunchHandler = [(_MKPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
  [(_MKPlaceViewController *)self _launchAttributionURLs:addPhotoURLs withAttribution:_mapkit_preferredFirstPhotoVendor mapItem:v9 completionHandler:placeViewFeedbackAppLaunchHandler];
}

- (void)placeCardActionControllerDidSelectReportAProblem:(id)problem fromView:(id)view isQuickAction:(BOOL)action
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = [(_MKPlaceViewController *)self mapItem:problem];

  if (v6)
  {
    if ([(_MKPlaceViewController *)self _showReportAProblem])
    {
      v7 = +[MKMapService sharedService];
      mapItem = [(_MKPlaceViewController *)self mapItem];
      [v7 captureUserAction:17105 onTarget:0 eventValue:0 mapItem:mapItem timestamp:0xFFFFFFFFLL resultIndex:0.0];

      mapItem2 = [(_MKPlaceViewController *)self mapItem];
      v14[0] = mapItem2;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v12 = @"MKLaunchOptionsLaunchIntoRAP";
      v13 = MEMORY[0x1E695E118];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      [MKMapItem openMapsWithItems:v10 launchOptions:v11 completionHandler:0];
    }
  }
}

- (void)set_mapkit_contentVisibility:(int64_t)visibility
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewControllers = [(MKStackingViewController *)self viewControllers];
  v5 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v9 + 1) + 8 * v8++) set_mapkit_contentVisibility:visibility];
      }

      while (v6 != v8);
      v6 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)updateContentAlpha
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  viewControllers = [(MKStackingViewController *)self viewControllers];
  v4 = [viewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v8 + 1) + 8 * v7++) setContentAlpha:self->_contentAlpha];
      }

      while (v5 != v7);
      v5 = [viewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (int)mapTypeForETAProvider:(id)provider
{
  placeViewControllerDelegate = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  placeViewControllerDelegate2 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v7 = [placeViewControllerDelegate2 mapTypeForPlaceViewController:self];

  return v7;
}

- (void)ETAProviderLocationUpdated:(id)updated
{
  currentLocation = [updated currentLocation];
  [(_MKPlaceViewController *)self setLocation:currentLocation];
}

- (void)placeHeaderButtonsViewController:(id)controller didSelectPrimaryType:(unint64_t)type withView:(id)view
{
  v35[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewCopy = view;
  if (type > 2)
  {
    if (type == 3)
    {
      placeViewControllerDelegate = [(_MKPlaceViewController *)self placeViewControllerDelegate];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        placeViewControllerDelegate2 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __89___MKPlaceViewController_placeHeaderButtonsViewController_didSelectPrimaryType_withView___block_invoke_2;
        v27 = &unk_1E76CDB88;
        selfCopy = self;
        v29 = viewCopy;
        [placeViewControllerDelegate2 placeViewController:self didSelectShareCurrentLocationWithCompletion:&v24];
      }

      else
      {
        [(_MKPlaceViewController *)self _showShareSheet:viewCopy];
      }

      [(_MKPlaceViewController *)self infoCardAnalyticsDidSelectAction:57 eventValue:0 feedbackDelegateSelector:6 classification:0, v24, v25, v26, v27, selfCopy];
      goto LABEL_20;
    }

    if (type != 4)
    {
      goto LABEL_20;
    }
  }

  else if (type != 1)
  {
    if (type != 2)
    {
      goto LABEL_20;
    }

    selfCopy3 = self;
    v11 = 3001;
    v12 = 0;
    goto LABEL_8;
  }

  selfCopy3 = self;
  v11 = 6003;
  v12 = 12;
LABEL_8:
  [(_MKPlaceViewController *)selfCopy3 infoCardAnalyticsDidSelectAction:v11 eventValue:0 feedbackDelegateSelector:v12 classification:0];
  placeViewControllerDelegate3 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    placeViewControllerDelegate4 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
    transportTypePreferenceNumber = [(MKETAProvider *)self->_etaProvider transportTypePreferenceNumber];
    [placeViewControllerDelegate4 placeViewController:self didSelectRouteToCurrentSearchResultWithTransportTypePreference:transportTypePreferenceNumber];
    goto LABEL_18;
  }

  mapItem = [(_MKPlaceViewController *)self mapItem];

  if (mapItem)
  {
    if ((self->_options & 0x100000000) == 0)
    {
      placeViewControllerDelegate4 = +[MKMapItem mapItemForCurrentLocation];
      v33[0] = placeViewControllerDelegate4;
      mapItem2 = [(_MKPlaceViewController *)self mapItem];
      v33[1] = mapItem2;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
      v31 = @"MKLaunchOptionsDirectionsMode";
      v32 = @"MKLaunchOptionsDirectionsModeDefault";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [MKMapItem openMapsWithItems:v19 launchOptions:v20 completionHandler:&__block_literal_global_6832];

LABEL_19:
      goto LABEL_20;
    }

    placeViewControllerDelegate4 = [(_MKPlaceViewController *)self mapItem];
    v34[0] = @"_MKLaunchOptionsSearchAlongRouteKey";
    v34[1] = @"MKLaunchOptionsSelectedIndex";
    v35[0] = MEMORY[0x1E695E118];
    v35[1] = &unk_1F1610F90;
    transportTypePreferenceNumber = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __89___MKPlaceViewController_placeHeaderButtonsViewController_didSelectPrimaryType_withView___block_invoke;
    v30[3] = &unk_1E76CA670;
    v30[4] = self;
    [placeViewControllerDelegate4 openInMapsWithLaunchOptions:transportTypePreferenceNumber completionHandler:v30];
LABEL_18:

    goto LABEL_19;
  }

LABEL_20:
}

- (double)placeCardHeaderViewControllerTrailingConstantForTitle:(id)title
{
  placeViewControllerDelegate = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0.0;
  }

  placeViewControllerDelegate2 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  [placeViewControllerDelegate2 placeViewControllerPlaceCardHeaderTitleTrailingConstant:self];
  v8 = v7;

  return v8;
}

- (id)_traits
{
  placeViewControllerDelegate = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    placeViewControllerDelegate2 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
    v6 = [placeViewControllerDelegate2 traitsForPlaceViewController:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateHeaderTitle
{
  headerViewController = self->_headerViewController;
  if (headerViewController)
  {
    [(MKPlaceCardHeaderViewController *)headerViewController updateHeaderTitle];
  }
}

- (void)_presentViewControllerWithInterfaceStyleCheck:(id)check
{
  checkCopy = check;
  placeViewControllerDelegate = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    placeViewControllerDelegate2 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
    v7 = [placeViewControllerDelegate2 overriddenInterfaceStyleForPlaceViewControllerSubviews:self];

    [checkCopy setOverrideUserInterfaceStyle:v7];
  }

  [(_MKPlaceViewController *)self presentViewController:checkCopy animated:1 completion:0];
}

- (void)placeCardPhotosController:(id)controller didSelectViewPhotoWithID:(id)d presentingViewController:(id)viewController
{
  dCopy = d;
  viewControllerCopy = viewController;
  mapItem = [(_MKPlaceViewController *)self mapItem];
  if ([dCopy length])
  {
    _mapkit_preferredFirstPhotoVendor = [mapItem _mapkit_preferredFirstPhotoVendor];
    v10 = [_mapkit_preferredFirstPhotoVendor urlsForPhotoWithIdentifier:dCopy];
    placeViewFeedbackAppLaunchHandler = [(_MKPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
    [(_MKPlaceViewController *)self _launchAttributionURLs:v10 withAttribution:_mapkit_preferredFirstPhotoVendor mapItem:mapItem completionHandler:placeViewFeedbackAppLaunchHandler];
  }

  else
  {
    [(_MKPlaceViewController *)self placeCardActionControllerDidSelectViewAllPhotos:0 presentingViewController:viewControllerCopy];
  }
}

- (double)stackingViewController:(id)controller heightForSeparatorBetweenUpperViewController:(id)viewController andLowerViewController:(id)lowerViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  lowerViewControllerCopy = lowerViewController;
  if (viewControllerCopy)
  {
    objc_opt_class();
    v10 = &kStackingViewSeparatorHeightNone;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = &kStackingViewSeparatorHeightLarge;
        }
      }

      else
      {
        v10 = &kStackingViewSeparatorHeightSmall;
      }
    }
  }

  else
  {
    v10 = &kStackingViewSeparatorHeightNone;
  }

  v11 = *v10;

  return v11;
}

- (BOOL)stackingViewController:(id)controller showsTitleForViewController:(id)viewController
{
  viewControllerCopy = viewController;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)removeAdditionalViewController:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  keyEnumerator = [(NSMapTable *)self->_additionalViewControllers keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = [(NSMapTable *)self->_additionalViewControllers objectForKey:*(*(&v14 + 1) + 8 * i)];
        if ([v10 containsObject:controllerCopy])
        {
          [v10 removeObject:controllerCopy];
          v11 = MEMORY[0x1E695DF70];
          viewControllers = [(MKStackingViewController *)self viewControllers];
          v13 = [v11 arrayWithArray:viewControllers];

          [v13 removeObject:controllerCopy];
          [(MKStackingViewController *)self setViewControllers:v13];

          goto LABEL_11;
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)addAdditionalViewController:(id)controller atPosition:(int64_t)position
{
  v33 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (!self->_additionalViewControllers)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    additionalViewControllers = self->_additionalViewControllers;
    self->_additionalViewControllers = strongToStrongObjectsMapTable;
  }

  positionCopy = position;
  v9 = [(_MKPlaceViewController *)self _mapTableKeyForSectionPosition:position];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  keyEnumerator = [(NSMapTable *)self->_additionalViewControllers keyEnumerator];
  v11 = [keyEnumerator countByEnumeratingWithState:&v28 objects:v32 count:16];
  v27 = v9;
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_additionalViewControllers objectForKey:v15];
        if ([v16 containsObject:controllerCopy])
        {
          if ([v15 isEqual:v9])
          {
            goto LABEL_18;
          }

          v17 = MEMORY[0x1E695DF30];
          controllerCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ has already been added to another section", controllerCopy];
          v19 = [v17 exceptionWithName:@"Can't add same view controller to 2 sections" reason:controllerCopy userInfo:0];

          v9 = v27;
          [v19 raise];
        }
      }

      v12 = [keyEnumerator countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  [(NSMapTable *)self->_additionalViewControllers objectForKey:v9];
  v21 = v20 = v9;

  if (!v21)
  {
    v22 = self->_additionalViewControllers;
    v23 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [(NSMapTable *)v22 setObject:v23 forKey:v20];
  }

  keyEnumerator = [(NSMapTable *)self->_additionalViewControllers objectForKey:v20];
  [keyEnumerator addObject:controllerCopy];
  v24 = MEMORY[0x1E695DF70];
  viewControllers = [(MKStackingViewController *)self viewControllers];
  v16 = [v24 arrayWithArray:viewControllers];

  if (!positionCopy)
  {
    [v16 insertObject:controllerCopy atIndex:{objc_msgSend(keyEnumerator, "count") - 1}];
  }

  [(MKStackingViewController *)self setViewControllers:v16];
  v9 = v27;
LABEL_18:
}

- (id)additionalViewControllersAtPosition:(int64_t)position
{
  v4 = [(_MKPlaceViewController *)self _mapTableKeyForSectionPosition:position];
  v5 = [(NSMapTable *)self->_additionalViewControllers objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    array = [v5 array];
  }

  else
  {
    array = 0;
  }

  return array;
}

- (void)setOptions:(unint64_t)options
{
  if (self->_options != options)
  {
    self->_options = options;
    [(MKPlaceItemActionDataProvider *)self->_actionDataProvider updateWithPlaceItem:self->_placeItem options:options];
    if (self->_placeItem)
    {

      [(_MKPlaceViewController *)self _updateViewControllers];
    }
  }
}

- (void)setShowContactActions:(BOOL)actions
{
  actionsCopy = actions;
  showContactActions = [(_MKPlaceViewController *)self showContactActions];
  if (self->_showContactActions != actionsCopy)
  {
    self->_showContactActions = actionsCopy;
    if (showContactActions != [(_MKPlaceViewController *)self showContactActions])
    {
      if (self->_placeItem)
      {
        [(MKPlaceActionManager *)self->_actionManager setShowContactActions:self->_showContactActions];
        placeActionViewController = self->_placeActionViewController;

        [(MKPlaceCardFooterActionsViewController *)placeActionViewController reloadData];
      }
    }
  }
}

- (void)setHeaderAlternatePrimaryButtonController:(id)controller
{
  controllerCopy = controller;
  if (self->_headerAlternatePrimaryButtonController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_headerAlternatePrimaryButtonController, controller);
    [(MKPlaceHeaderButtonsViewController *)self->_buttonsHeaderController setAlternatePrimaryButtonController:self->_headerAlternatePrimaryButtonController];
    controllerCopy = v6;
  }
}

- (void)setHeaderSecondaryButtonController:(id)controller
{
  controllerCopy = controller;
  if (self->_headerSecondaryButtonController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_headerSecondaryButtonController, controller);
    [(MKPlaceHeaderButtonsViewController *)self->_buttonsHeaderController setSecondaryButtonController:self->_headerSecondaryButtonController];
    controllerCopy = v6;
  }
}

- (void)setCyclingOptions:(id)options
{
  optionsCopy = options;
  if (self->_cyclingOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_cyclingOptions, options);
    [(MKETAProvider *)self->_etaProvider setCyclingOptions:self->_cyclingOptions];
    optionsCopy = v6;
  }
}

- (void)setTransitOptions:(id)options
{
  optionsCopy = options;
  if (self->_transitOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_transitOptions, options);
    [(MKETAProvider *)self->_etaProvider setTransitOptions:self->_transitOptions];
    optionsCopy = v6;
  }
}

- (void)setWalkingOptions:(id)options
{
  optionsCopy = options;
  if (self->_walkingOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_walkingOptions, options);
    [(MKETAProvider *)self->_etaProvider setWalkingOptions:self->_walkingOptions];
    optionsCopy = v6;
  }
}

- (void)setAutomobileOptions:(id)options
{
  optionsCopy = options;
  if (self->_automobileOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_automobileOptions, options);
    [(MKETAProvider *)self->_etaProvider setAutomobileOptions:self->_automobileOptions];
    optionsCopy = v6;
  }
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  v5 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SetMapItem", &unk_1A30FEA0E, buf, 2u);
  }

  if (itemCopy)
  {
    [itemCopy _placeCardContact];
  }

  else
  {
    [(_MKPlaceItem *)self->_placeItem contact];
  }
  v6 = ;
  [(_MKPlaceViewController *)self setMapItem:itemCopy contact:v6 updateOriginalContact:0];

  v7 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v7))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetMapItem", &unk_1A30FEA0E, v8, 2u);
  }
}

- (BOOL)inlineMapViewControllerDidSelectMap:(id)map
{
  [(_MKPlaceViewController *)self infoCardAnalyticsDidSelectAction:6007 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
  placeViewControllerDelegate = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    placeViewControllerDelegate2 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
    [placeViewControllerDelegate2 placeViewControllerDidSelectInlineMap:self];
  }

  return v5 & 1;
}

- (void)setPlaceItem:(id)item updateOriginalContact:(BOOL)contact
{
  contactCopy = contact;
  obj = item;
  mapItem = [obj mapItem];
  mapItem2 = [(_MKPlaceItem *)self->_placeItem mapItem];
  if (mapItem != mapItem2)
  {
    goto LABEL_2;
  }

  mapItem3 = [obj mapItem];
  v16 = obj;
  if (!mapItem3)
  {
    contact = [obj contact];
    contact2 = [(_MKPlaceItem *)self->_placeItem contact];
    v5 = contact2;
    if (contact != contact2)
    {

LABEL_2:
      goto LABEL_3;
    }

    v16 = obj;
  }

  isIntermediateMapItem = [v16 isIntermediateMapItem];
  v18 = isIntermediateMapItem ^ [(_MKPlaceItem *)self->_placeItem isIntermediateMapItem];
  if (mapItem3)
  {
  }

  else
  {
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_3:
  v10 = +[MKMapItemMetadataRequester sharedInstance];
  mapItem4 = [(_MKPlaceItem *)self->_placeItem mapItem];
  [v10 cancelRequestsForMapItem:mapItem4];

  if (contactCopy)
  {
    contact3 = [obj contact];
    [(_MKPlaceViewController *)self setOriginalContact:contact3];
  }

  mapItem5 = [obj mapItem];
  if (mapItem5)
  {
    v14 = mapItem5;
LABEL_12:

    goto LABEL_13;
  }

  contact4 = [obj contact];

  if (contact4)
  {
    v20 = [MKMapItem alloc];
    contact5 = [obj contact];
    v14 = [(MKMapItem *)v20 initWithContact:contact5];

    contact6 = [obj contact];
    v23 = [_MKContactPlaceItem placeItemWithMapItem:v14 contact:contact6 options:16];

    obj = v23;
    goto LABEL_12;
  }

LABEL_13:
  mapItem6 = [(_MKPlaceItem *)self->_placeItem mapItem];

  if (mapItem6)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mapItem7 = [(_MKPlaceItem *)self->_placeItem mapItem];
    [defaultCenter removeObserver:self name:@"MKMapItemDidResolveAttribution" object:mapItem7];
  }

  headerSecondaryButtonController = self->_headerSecondaryButtonController;
  self->_headerSecondaryButtonController = 0;

  headerAlternatePrimaryButtonController = self->_headerAlternatePrimaryButtonController;
  self->_headerAlternatePrimaryButtonController = 0;

  contact = self->_contact;
  self->_contact = 0;

  objc_storeStrong(&self->_placeItem, obj);
  [(MKPlaceItemActionDataProvider *)self->_actionDataProvider updateWithPlaceItem:self->_placeItem options:self->_options];
  [(_MKPlaceViewController *)self setPlaceInCollections:0];
  [(_MKPlaceViewController *)self setPlaceInShortcuts:0];
  [(_MKPlaceViewController *)self setPlaceHasRating:0];
  [(_MKPlaceViewController *)self setPlaceInFavoritesGuide:0];
  _shouldShowContactActions = [(_MKPlaceViewController *)self _shouldShowContactActions];
  self->_showContactActions = _shouldShowContactActions;
  [(MKPlaceActionManager *)self->_actionManager setShowContactActions:_shouldShowContactActions];
  mapItem8 = [(_MKPlaceItem *)self->_placeItem mapItem];

  if (mapItem8)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    mapItem9 = [(_MKPlaceItem *)self->_placeItem mapItem];
    [defaultCenter2 addObserver:self selector:sel__didResolveAttribution_ name:@"MKMapItemDidResolveAttribution" object:mapItem9];
  }

  [(MKStackingViewController *)self scrollToTopAnimated:0];
  [(_MKPlaceViewController *)self _updateViewControllers];
  if (self->_placeItem)
  {
    if (!contactCopy)
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v36 = [bundleIdentifier isEqualToString:*MEMORY[0x1E69A1A78]];

      if (v36)
      {
        [(_MKPlaceViewController *)self infoCardAnalyticsDidSelectAction:21 eventValue:0 feedbackDelegateSelector:0 classification:0];
      }
    }
  }

LABEL_25:
}

- (void)setMapItem:(id)item contact:(id)contact updateOriginalContact:(BOOL)originalContact
{
  originalContactCopy = originalContact;
  if (contact)
  {
    [_MKContactPlaceItem placeItemWithMapItem:item contact:contact options:16 * (item == 0)];
  }

  else
  {
    itemCopy = item;
    +[_MKMapItemPlaceItem placeItemWithMapItem:options:](_MKMapItemPlaceItem, "placeItemWithMapItem:options:", itemCopy, [itemCopy isCurrentLocation]);
  }
  v9 = ;

  [(_MKPlaceViewController *)self setPlaceItem:v9 updateOriginalContact:originalContactCopy];
}

- (void)setPlaceViewControllerDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_placeViewControllerDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_placeViewControllerDelegate, obj);
    v5 = obj;
    if (self->_placeItem)
    {
      [(_MKPlaceViewController *)self _updateViewControllers];
      v5 = obj;
    }
  }
}

- (unint64_t)annotatedItemListDisplayStyle
{
  mapItem = [(_MKPlaceViewController *)self mapItem];
  _annotatedItemList = [mapItem _annotatedItemList];

  if (_annotatedItemList)
  {
    v5 = displayStyleForAnnotatedItemList(_annotatedItemList, ([(_MKPlaceViewController *)self options]>> 23) & 1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)attributionsVC
{
  mapItem = [(_MKPlaceViewController *)self mapItem];
  if (![mapItem _needsAttribution])
  {
    v8 = 0;
LABEL_6:

    goto LABEL_8;
  }

  mapItem2 = [(_MKPlaceViewController *)self mapItem];
  _attribution = [mapItem2 _attribution];
  attributionURLs = [_attribution attributionURLs];
  v7 = [attributionURLs count];

  if (v7)
  {
    v8 = objc_alloc_init(MKPlaceAttributionViewController);
    mapItem3 = [(_MKPlaceViewController *)self mapItem];
    [(MKPlaceAttributionViewController *)v8 setMapItem:mapItem3];

    [(MKPlaceAttributionViewController *)v8 setAnalyticsDelegate:self];
    mapItem4 = [(_MKPlaceViewController *)self mapItem];
    _attribution2 = [mapItem4 _attribution];
    attributionURLs2 = [_attribution2 attributionURLs];
    v13 = [attributionURLs2 count];

    if (!v13)
    {
      goto LABEL_8;
    }

    mapItem5 = [(_MKPlaceViewController *)self mapItem];
    _attribution3 = [mapItem5 _attribution];
    attributionURLs3 = [_attribution3 attributionURLs];
    [(MKPlaceAttributionViewController *)v8 setUrlStrings:attributionURLs3];

    mapItem = [(_MKPlaceViewController *)self mapItem];
    _attribution4 = [mapItem _attribution];
    [(MKPlaceAttributionViewController *)v8 setAttribution:_attribution4];

    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)_viewControllerForClass:(Class)class
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  viewControllers = [(MKStackingViewController *)self viewControllers];
  v4 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(viewControllers);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)hoursVC
{
  mapItem = [(_MKPlaceViewController *)self mapItem];
  timeZone = [mapItem timeZone];

  if (timeZone)
  {
    mapItem2 = [(_MKPlaceViewController *)self mapItem];
    v6 = [MKPlaceHoursViewController placeHoursWithMapItem:mapItem2];

    [v6 setAnalyticsDelegate:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)infosVC
{
  v3 = [MKPlaceInfoViewController alloc];
  placeItem = [(_MKPlaceViewController *)self placeItem];
  v5 = [(MKPlaceInfoViewController *)v3 initWithPlaceItem:placeItem];

  [(MKPlaceInfoViewController *)v5 setActionDelegate:self->_actionManager];
  [(MKPlaceInfoViewController *)v5 setPlacecardOptions:self->_options];

  return v5;
}

- (id)photoVC
{
  mapItem = [(_MKPlaceViewController *)self mapItem];
  place = [mapItem place];
  firstBusiness = [place firstBusiness];
  photosCount = [firstBusiness photosCount];

  if (photosCount)
  {
    v7 = [[MKPlacePhotosViewController alloc] initWithMapItem:mapItem mode:([(_MKPlaceViewController *)self options]>> 8) & 2 options:0];
    [(MKPlacePhotosViewController *)v7 setPhotosControllerDelegate:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)poisInlineMapVC
{
  v3 = [MKPlaceInlineMapViewControllerConfiguration configurationForPlaceViewControllerOptions:[(_MKPlaceViewController *)self options]];
  mapItem = [(_MKPlaceViewController *)self mapItem];
  v5 = [MKPlacePoisInlineMapViewController inlineMapWithMapItem:mapItem configuration:v3];

  [v5 setDelegate:self];
  [v5 setLocation:self->_location];

  return v5;
}

- (id)inlineMapVC
{
  if (((-[_MKPlaceViewController options](self, "options") & 2) != 0 || (-[_MKPlaceViewController options](self, "options") & 1) == 0) && (-[_MKPlaceViewController mapItem](self, "mapItem"), v3 = objc_claimAutoreleasedReturnValue(), [v3 _displayMapRegion], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [MKPlaceInlineMapViewControllerConfiguration configurationForPlaceViewControllerOptions:[(_MKPlaceViewController *)self options]];
    mapItem = [(_MKPlaceViewController *)self mapItem];
    v7 = [MKPlaceInlineMapViewController inlineMapWithMapItem:mapItem configuration:v5];

    [v7 setBottomHairlineHidden:1];
    [v7 setDelegate:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)collectionIdentifierSelected:(id)selected
{
  selectedCopy = selected;
  [(_MKPlaceViewController *)self infoCardAnalyticsDidSelectAction:0 eventValue:0 feedbackDelegateSelector:0 classification:0];
  WeakRetained = objc_loadWeakRetained(&self->_placeViewControllerDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_placeViewControllerDelegate);
    [v6 placeViewController:self selectCollectionIdentifier:selectedCopy];
  }
}

- (id)collectionViews
{
  WeakRetained = objc_loadWeakRetained(&self->_placeViewControllerDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_placeViewControllerDelegate);
    placeItem = [(_MKPlaceViewController *)self placeItem];
    v7 = [v5 placeViewController:self collectionViewsForPlaceItem:placeItem];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (id)createFooterActions
{
  v3 = objc_alloc_init(MKPlaceCardFooterActionsViewController);
  [(MKPlaceCardActionsViewController *)v3 setActionManager:self->_actionManager];
  WeakRetained = objc_loadWeakRetained(&self->_placeViewControllerDelegate);
  [(MKPlaceCardActionsViewController *)v3 setPlaceViewControllerDelegate:WeakRetained];

  return v3;
}

- (int)_moduleTypeForViewController:(id)controller
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    return 1;
  }

  if (v3 == objc_opt_class())
  {
    return 2;
  }

  if (v3 == objc_opt_class())
  {
    return 4;
  }

  if (v3 == objc_opt_class() || v3 == objc_opt_class())
  {
    return 3;
  }

  if (v3 == objc_opt_class())
  {
    return 5;
  }

  if (v3 == objc_opt_class())
  {
    return 24;
  }

  if (v3 == objc_opt_class())
  {
    return 9;
  }

  if (v3 == objc_opt_class())
  {
    return 23;
  }

  return 0;
}

- (id)_createViewControllerForModule:(id)module
{
  type = [module type];
  hoursVC = 0;
  if (type > 4)
  {
    if (type <= 22)
    {
      if (type != 5)
      {
        if (type == 9)
        {
          hoursVC = [(_MKPlaceViewController *)self hoursVC];
        }

        goto LABEL_20;
      }

      infosVC = [(_MKPlaceViewController *)self infosVC];
      v8 = 1192;
      goto LABEL_18;
    }

    if (type != 23)
    {
      if (type == 24)
      {
        hoursVC = [(_MKPlaceViewController *)self attributionsVC];
      }

      goto LABEL_20;
    }

    infosVC = [(_MKPlaceViewController *)self createFooterActions];
    v8 = 1216;
LABEL_18:
    v11 = *(&self->super.super.super.super.super.isa + v8);
    *(&self->super.super.super.super.super.isa + v8) = infosVC;

    buttonsHeaderController = *(&self->super.super.super.super.super.isa + v8);
    goto LABEL_19;
  }

  switch(type)
  {
    case 2:
      buttonsHeaderController = self->_buttonsHeaderController;
LABEL_19:
      hoursVC = buttonsHeaderController;
      break;
    case 3:
      poisInlineMapVC = [(_MKPlaceViewController *)self poisInlineMapVC];
      poisInlineMapViewController = self->_poisInlineMapViewController;
      self->_poisInlineMapViewController = poisInlineMapVC;

      hoursVC = self->_poisInlineMapViewController;
      if (hoursVC)
      {
        break;
      }

      infosVC = [(_MKPlaceViewController *)self inlineMapVC];
      v8 = 1200;
      goto LABEL_18;
    case 4:
      hoursVC = [(_MKPlaceViewController *)self photoVC];
      break;
  }

LABEL_20:

  return hoursVC;
}

- (void)_createViewControllersForShortPlacecard:(id)placecard
{
  placecardCopy = placecard;
  if (self->_buttonsHeaderController)
  {
    [placecardCopy addObject:?];
  }

  createFooterActions = [(_MKPlaceViewController *)self createFooterActions];
  placeActionViewController = self->_placeActionViewController;
  self->_placeActionViewController = createFooterActions;

  if (self->_placeActionViewController)
  {
    [placecardCopy addObject:?];
  }
}

- (void)_createViewControllers:(id)controllers
{
  controllersCopy = controllers;
  v25 = controllersCopy;
  if (self->_buttonsHeaderController)
  {
    [controllersCopy addObject:?];
  }

  isTransitItem = [(MKLayoutCardViewController *)self isTransitItem];
  inlineMapVC = [(_MKPlaceViewController *)self inlineMapVC];
  inlineMapViewController = self->_inlineMapViewController;
  self->_inlineMapViewController = inlineMapVC;

  if (self->_inlineMapViewController)
  {
    [v25 addObject:?];
  }

  poisInlineMapVC = [(_MKPlaceViewController *)self poisInlineMapVC];
  poisInlineMapViewController = self->_poisInlineMapViewController;
  self->_poisInlineMapViewController = poisInlineMapVC;

  if (self->_poisInlineMapViewController)
  {
    [v25 addObject:?];
  }

  photoVC = [(_MKPlaceViewController *)self photoVC];
  v11 = photoVC;
  if (isTransitItem)
  {
    v12 = 0;
    v13 = photoVC == 0;
  }

  else
  {
    v14 = self->_inlineMapViewController;
    v12 = v14 == 0;
    v13 = photoVC == 0;
    if (photoVC && !v14)
    {
      [v25 addObject:photoVC];
      v13 = 0;
    }
  }

  hoursVC = [(_MKPlaceViewController *)self hoursVC];
  if (hoursVC)
  {
    [v25 addObject:hoursVC];
  }

  infosVC = [(_MKPlaceViewController *)self infosVC];
  infoViewController = self->_infoViewController;
  self->_infoViewController = infosVC;

  if (self->_infoViewController)
  {
    lastObject = [v25 lastObject];
    v19 = self->_inlineMapViewController;

    if (lastObject == v19)
    {
      [(MKPlaceInlineMapViewController *)self->_inlineMapViewController setBottomHairlineHidden:1];
    }

    [v25 addObject:self->_infoViewController];
  }

  if (!v13)
  {
    if ((([v25 containsObject:v11] | v12) & 1) == 0)
    {
      lastObject2 = [v25 lastObject];
      v21 = self->_infoViewController;

      if (lastObject2 == v21)
      {
        [(MKPlaceInfoViewController *)self->_infoViewController setBottomHairlineHidden:1];
      }

      [v25 addObject:v11];
    }

    if (([v25 containsObject:v11] & 1) == 0)
    {
      [v11 setShowsBottomHairline:1];
      [v25 addObject:v11];
    }
  }

  attributionsVC = [(_MKPlaceViewController *)self attributionsVC];
  if (attributionsVC)
  {
    [v25 addObject:attributionsVC];
  }

  createFooterActions = [(_MKPlaceViewController *)self createFooterActions];
  placeActionViewController = self->_placeActionViewController;
  self->_placeActionViewController = createFooterActions;

  if (self->_placeActionViewController)
  {
    [v25 addObject:?];
  }
}

- (void)_createViewControllersForBrand:(id)brand
{
  brandCopy = brand;
  infosVC = [(_MKPlaceViewController *)self infosVC];
  infoViewController = self->_infoViewController;
  self->_infoViewController = infosVC;

  if (self->_infoViewController)
  {
    lastObject = [brandCopy lastObject];
    inlineMapViewController = self->_inlineMapViewController;

    if (lastObject == inlineMapViewController)
    {
      [(MKPlaceInlineMapViewController *)self->_inlineMapViewController setBottomHairlineHidden:1];
    }

    [brandCopy addObject:self->_infoViewController];
  }

  poisInlineMapVC = [(_MKPlaceViewController *)self poisInlineMapVC];
  poisInlineMapViewController = self->_poisInlineMapViewController;
  self->_poisInlineMapViewController = poisInlineMapVC;

  if (self->_poisInlineMapViewController)
  {
    [brandCopy addObject:?];
    [(MKPlaceInlineMapViewController *)self->_poisInlineMapViewController setBottomHairlineHidden:1];
  }

  createFooterActions = [(_MKPlaceViewController *)self createFooterActions];
  placeActionViewController = self->_placeActionViewController;
  self->_placeActionViewController = createFooterActions;

  v12 = brandCopy;
  if (self->_placeActionViewController)
  {
    [brandCopy addObject:?];
    v12 = brandCopy;
  }
}

- (void)_logClientAndServerLayouts:(id)layouts
{
  v49 = *MEMORY[0x1E69E9840];
  layoutsCopy = layouts;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(layoutsCopy, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = layoutsCopy;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(_MKPlaceViewController *)self _moduleTypeForViewController:*(*(&v39 + 1) + 8 * i)]- 1;
        v12 = @"MODULE_TYPE_UNKNOWN";
        if (v11 <= 0x2D)
        {
          v12 = off_1E76C7238[v11];
        }

        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  mapItem = [(_MKPlaceViewController *)self mapItem];
  _placecardLayout = [mapItem _placecardLayout];
  modules = [_placecardLayout modules];

  v17 = [modules countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(modules);
        }

        v21 = [*(*(&v35 + 1) + 8 * j) type] - 1;
        v22 = @"MODULE_TYPE_UNKNOWN";
        if (v21 <= 0x2D)
        {
          v22 = off_1E76C7238[v21];
        }

        [v13 addObject:v22];
      }

      v18 = [modules countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v18);
  }

  v23 = MKGetPlaceCardLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v23, OS_LOG_TYPE_INFO, "[dynamic layout debug] Start", buf, 2u);
  }

  v24 = MKGetPlaceCardLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    mapItem2 = [(_MKPlaceViewController *)self mapItem];
    _muid = [mapItem2 _muid];
    mapItem3 = [(_MKPlaceViewController *)self mapItem];
    name = [mapItem3 name];
    *buf = 134218242;
    v44 = _muid;
    v45 = 2112;
    v46 = name;
    _os_log_impl(&dword_1A2EA0000, v24, OS_LOG_TYPE_INFO, "place item: muid %llu name %@", buf, 0x16u);
  }

  v29 = MKGetPlaceCardLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = v5;
    _os_log_impl(&dword_1A2EA0000, v29, OS_LOG_TYPE_INFO, "client layout:\n%@", buf, 0xCu);
  }

  v30 = MKGetPlaceCardLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = v13;
    _os_log_impl(&dword_1A2EA0000, v30, OS_LOG_TYPE_INFO, "server layout:\n%@", buf, 0xCu);
  }

  v31 = MKGetPlaceCardLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v5 isEqualToArray:v13];
    v33 = @"NO";
    if (v32)
    {
      v33 = @"YES";
    }

    *buf = 138412290;
    v44 = v33;
    _os_log_impl(&dword_1A2EA0000, v31, OS_LOG_TYPE_INFO, "layout similar: %@", buf, 0xCu);
  }

  v34 = MKGetPlaceCardLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v34, OS_LOG_TYPE_INFO, "[dynamic layout debug] End", buf, 2u);
  }
}

- (void)setLocation:(id)location
{
  objc_storeStrong(&self->_location, location);
  locationCopy = location;
  [(MKPlacePoisInlineMapViewController *)self->_poisInlineMapViewController setLocation:locationCopy];
}

- (void)_updateViewControllers
{
  if (self->_isUpdatingViewControllers)
  {
    return;
  }

  self->_isUpdatingViewControllers = 1;
  v3 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UpdateViewControllers", &unk_1A30FEA0E, buf, 2u);
  }

  mapItem = [(_MKPlaceViewController *)self mapItem];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (mapItem)
  {
    [(MKPlaceActionManager *)self->_actionManager setIsCurrentLocation:0];
    _isMapItemTypeBrand = [mapItem _isMapItemTypeBrand];
    [(MKPlaceCardHeaderViewController *)self->_headerViewController contentAlpha];
    v8 = v7;
    v9 = [[MKPlaceCardHeaderViewController alloc] initWithPlaceItem:self->_placeItem layout:_isMapItemTypeBrand];
    headerViewController = self->_headerViewController;
    self->_headerViewController = v9;

    [(MKPlaceCardHeaderViewController *)self->_headerViewController setContentAlpha:v8];
    [(MKPlaceCardHeaderViewController *)self->_headerViewController setDelegate:self];
    buttonsHeaderController = self->_buttonsHeaderController;
    if (!buttonsHeaderController)
    {
      v12 = objc_alloc_init(MKPlaceHeaderButtonsViewController);
      v13 = self->_buttonsHeaderController;
      self->_buttonsHeaderController = v12;

      [(MKPlaceHeaderButtonsViewController *)self->_buttonsHeaderController setDelegate:self];
      buttonsHeaderController = self->_buttonsHeaderController;
    }

    [(MKPlaceHeaderButtonsViewController *)buttonsHeaderController setPlaceItem:self->_placeItem];
    [(MKPlaceHeaderButtonsViewController *)self->_buttonsHeaderController setSecondaryButtonController:0];
    placeItem = [(_MKPlaceViewController *)self placeItem];
    if (([placeItem isIntermediateMapItem] & 1) != 0 || (self->_options & 8) != 0)
    {
      _canGetDirections = 0;
    }

    else
    {
      _canGetDirections = [mapItem _canGetDirections];
    }

    [(MKETAProvider *)self->_etaProvider cancel];
    v15 = [[MKETAProvider alloc] initWithPlaceItem:self->_placeItem];
    etaProvider = self->_etaProvider;
    self->_etaProvider = v15;

    [(MKETAProvider *)self->_etaProvider setAutomobileOptions:self->_automobileOptions];
    [(MKETAProvider *)self->_etaProvider setWalkingOptions:self->_walkingOptions];
    [(MKETAProvider *)self->_etaProvider setTransitOptions:self->_transitOptions];
    [(MKETAProvider *)self->_etaProvider setCyclingOptions:self->_cyclingOptions];
    [(MKETAProvider *)self->_etaProvider setDelegate:self];
    [(MKETAProvider *)self->_etaProvider addObserver:self];
    [(MKETAProvider *)self->_etaProvider addObserver:self->_headerViewController];
    [(MKETAProvider *)self->_etaProvider addObserver:self->_buttonsHeaderController];
    currentLocation = [(MKETAProvider *)self->_etaProvider currentLocation];
    location = self->_location;
    self->_location = currentLocation;

    if (([(_MKPlaceItem *)self->_placeItem options]& 1) == 0)
    {
      mapItem2 = [(_MKPlaceItem *)self->_placeItem mapItem];
      _detourInfo = [mapItem2 _detourInfo];
      if (_detourInfo)
      {
        options = self->_options;

        if ((options & 0x100000) != 0)
        {
          v22 = self->_buttonsHeaderController;
          v23 = 2;
LABEL_16:
          [(MKPlaceHeaderButtonsViewController *)v22 setPrimaryButtonType:v23];
LABEL_20:
          if ([mapItem _isMapItemTypeBrand])
          {
            [(MKETAProvider *)self->_etaProvider start];
          }

          [v5 addObject:self->_headerViewController];
          goto LABEL_23;
        }
      }

      else
      {
      }

      if (_canGetDirections)
      {
        [(MKPlaceHeaderButtonsViewController *)self->_buttonsHeaderController setPrimaryButtonType:1];
        [(MKETAProvider *)self->_etaProvider start];
      }

      goto LABEL_20;
    }

    [(MKPlaceActionManager *)self->_actionManager setIsCurrentLocation:1];
    v22 = self->_buttonsHeaderController;
    v23 = 3;
    goto LABEL_16;
  }

LABEL_23:
  placeItem2 = [(_MKPlaceViewController *)self placeItem];
  if (placeItem2)
  {
    v25 = placeItem2;
    placeItem3 = [(_MKPlaceViewController *)self placeItem];
    isIntermediateMapItem = [placeItem3 isIntermediateMapItem];

    if ((isIntermediateMapItem & 1) == 0)
    {
      headerSecondaryButtonController = [(_MKPlaceViewController *)self headerSecondaryButtonController];
      [(MKPlaceHeaderButtonsViewController *)self->_buttonsHeaderController setSecondaryButtonController:headerSecondaryButtonController];

      if ([(_MKPlaceViewController *)self isLayoutDynamic])
      {
        [(MKLayoutCardViewController *)self _createModuleLayout:v5];
      }

      else
      {
        if ([mapItem _isMapItemTypeBrand])
        {
          [(_MKPlaceViewController *)self _createViewControllersForBrand:v5];
        }

        else
        {
          [(_MKPlaceViewController *)self _createViewControllers:v5];
        }

        BOOL = GEOConfigGetBOOL();
        v30 = GEOConfigGetBOOL();
        if (BOOL && v30)
        {
          [(_MKPlaceViewController *)self _logClientAndServerLayouts:v5];
        }
      }
    }
  }

  [(_MKPlaceViewController *)self _setDefaultViewControllers:v5];
  [(_MKPlaceViewController *)self updateContentAlpha];
  if (!self->_inlineMapViewController)
  {
    goto LABEL_42;
  }

  if ([mapItem _hasResolvablePartialInformation])
  {
    v31 = +[MKMapService sharedService];
    _addressFormattedAsSinglelineAddress = [mapItem _addressFormattedAsSinglelineAddress];
    mapItem3 = [v31 ticketForForwardGeocodeString:_addressFormattedAsSinglelineAddress traits:0];

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __48___MKPlaceViewController__updateViewControllers__block_invoke;
    v51[3] = &unk_1E76C71C8;
    v51[4] = self;
    [(_MKURLParser *)mapItem3 submitWithHandler:v51 networkActivity:0];
  }

  else
  {
    if (!self->_inlineMapViewController)
    {
      goto LABEL_42;
    }

    mapItem3 = [(_MKPlaceViewController *)self mapItem];
    v34 = [(_MKURLParser *)mapItem3 url];
    if (v34)
    {
      v35 = v34;
      mapItem4 = [(_MKPlaceViewController *)self mapItem];
      v37 = [mapItem4 url];
      v38 = [_MKURLParser isValidMapURL:v37];

      if (!v38)
      {
        goto LABEL_42;
      }

      v39 = [_MKURLParser alloc];
      mapItem5 = [(_MKPlaceViewController *)self mapItem];
      v41 = [mapItem5 url];
      mapItem3 = [(_MKURLParser *)v39 initWithURL:v41];

      [(_MKURLParser *)mapItem3 parseIncludingCustomParameters:1];
      mapItem6 = [(_MKPlaceViewController *)self mapItem];
      _identifier = [(MKMapItemIdentifier *)mapItem6 _identifier];
      if (_identifier)
      {
        v44 = _identifier;
      }

      else
      {
        searchUID = [(_MKURLParser *)mapItem3 searchUID];

        if (!searchUID)
        {
          goto LABEL_36;
        }

        mapItem6 = [[MKMapItemIdentifier alloc] initWithMUID:[(_MKURLParser *)mapItem3 searchUID]];
        v47 = +[MKMapService sharedService];
        contentProviderID = [(_MKURLParser *)mapItem3 contentProviderID];
        v44 = [v47 ticketForNonExpiredIdentifier:mapItem6 resultProviderID:0 contentProvider:contentProviderID traits:0];

        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __48___MKPlaceViewController__updateViewControllers__block_invoke_2;
        v50[3] = &unk_1E76C71C8;
        v50[4] = self;
        [v44 submitWithHandler:v50 networkActivity:0];
      }
    }
  }

LABEL_36:

LABEL_42:
  self->_isUpdatingViewControllers = 0;
  v45 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v45))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v45, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UpdateViewControllers", &unk_1A30FEA0E, buf, 2u);
  }
}

- (BOOL)isGuardianRestrictedCNContainer
{
  v13[1] = *MEMORY[0x1E69E9840];
  _contactStore = [(_MKPlaceViewController *)self _contactStore];
  defaultContainerIdentifier = [_contactStore defaultContainerIdentifier];

  if (defaultContainerIdentifier)
  {
    v5 = MEMORY[0x1E695CE48];
    v13[0] = defaultContainerIdentifier;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v7 = [v5 predicateForContainersWithIdentifiers:v6];

    _contactStore2 = [(_MKPlaceViewController *)self _contactStore];
    v9 = [_contactStore2 containersMatchingPredicate:v7 error:0];

    if ([v9 count] == 1)
    {
      firstObject = [v9 firstObject];
      isGuardianRestricted = [firstObject isGuardianRestricted];
    }

    else
    {
      isGuardianRestricted = 0;
    }
  }

  else
  {
    isGuardianRestricted = 0;
  }

  return isGuardianRestricted;
}

- (BOOL)_shouldShowContactActions
{
  placeItem = self->_placeItem;
  if (placeItem)
  {
    contact = [(_MKPlaceItem *)placeItem contact];
    if (contact && (-[_MKPlaceItem contact](self->_placeItem, "contact"), v2 = objc_claimAutoreleasedReturnValue(), ([v2 hasBeenPersisted] & 1) != 0))
    {
      isGuardianRestrictedCNContainer = 1;
    }

    else if (([(_MKPlaceItem *)self->_placeItem options]& 8) != 0)
    {
      isGuardianRestrictedCNContainer = 1;
      if (!contact)
      {
LABEL_10:

        LOBYTE(placeItem) = !isGuardianRestrictedCNContainer;
        return placeItem;
      }
    }

    else
    {
      isGuardianRestrictedCNContainer = [(_MKPlaceViewController *)self isGuardianRestrictedCNContainer];
      if (!contact)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_10;
  }

  return placeItem;
}

- (CNContact)contact
{
  contact = self->_contact;
  if (!contact)
  {
    contact = [(_MKPlaceItem *)self->_placeItem contact];
    v5 = contact;
    if (contact)
    {
      v6 = contact;
      mapItem = self->_contact;
      self->_contact = v6;
    }

    else
    {
      mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
      _placeCardContact = [mapItem _placeCardContact];
      v9 = self->_contact;
      self->_contact = _placeCardContact;
    }

    contact = self->_contact;
  }

  return contact;
}

- (id)_contactForEditOperations
{
  originalContact = [(_MKPlaceViewController *)self originalContact];
  if (originalContact)
  {
    [(_MKPlaceViewController *)self originalContact];
  }

  else
  {
    [(_MKPlaceViewController *)self contact];
  }
  v4 = ;

  return v4;
}

- (id)_contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)showContentIfLoaded
{
  if (![(_MKPlaceViewController *)self isLoading])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MKPlaceViewControllerDidShowNotification" object:self];
  }
}

- (BOOL)isLoading
{
  placeItem = [(_MKPlaceViewController *)self placeItem];
  isIntermediateMapItem = [placeItem isIntermediateMapItem];

  return isIntermediateMapItem;
}

- (BOOL)isLayoutDynamic
{
  if ((self->_options & 0x20000000) == 0)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = _MKPlaceViewController;
  return [(MKLayoutCardViewController *)&v5 isLayoutDynamic];
}

- (void)_setDefaultViewControllers:(id)controllers
{
  controllersCopy = controllers;
  v4 = [(_MKPlaceViewController *)self additionalViewControllersAtPosition:0];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count") + objc_msgSend(controllersCopy, "count")}];
  if (v4 && [v4 count])
  {
    [v5 addObjectsFromArray:v4];
  }

  [v5 addObjectsFromArray:controllersCopy];
  [(MKStackingViewController *)self setViewControllers:v5];
}

- (BOOL)_showReportAProblem
{
  if (_MKRAPIsAvailable())
  {
    placeItem = [(_MKPlaceViewController *)self placeItem];
    if (([placeItem options] & 4) != 0)
    {
      goto LABEL_8;
    }

    placeItem2 = [(_MKPlaceViewController *)self placeItem];
    options = [placeItem2 options];

    if ((options & 8) == 0)
    {
      placeItem = [(_MKPlaceViewController *)self mapItem];
      if (placeItem && (self->_options & 0x40) == 0)
      {
        v6 = !self->_hasContactOnlyMapItem;
LABEL_9:

        return v6;
      }

LABEL_8:
      v6 = 0;
      goto LABEL_9;
    }
  }

  return 0;
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = _MKPlaceViewController;
  [(MKStackingViewController *)&v6 viewDidLayoutSubviews];
  placeViewControllerDelegate = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    placeViewControllerDelegate2 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
    [placeViewControllerDelegate2 placeViewControllerDidUpdateHeight:self];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = _MKPlaceViewController;
  [(_MKPlaceViewController *)&v10 viewWillDisappear:disappear];
  if ((-[_MKPlaceViewController isMovingFromParentViewController](self, "isMovingFromParentViewController") & 1) != 0 || (+[MKSystemController sharedInstance](MKSystemController, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 userInterfaceIdiom], v4, v5))
  {
    placeViewControllerDelegate = [(_MKPlaceViewController *)self placeViewControllerDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      placeViewControllerDelegate2 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
      [placeViewControllerDelegate2 placeViewControllerDidDismiss:self];
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.Maps.PlaceCardLayoutChanged", 0);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = _MKPlaceViewController;
  [(_MKPlaceViewController *)&v4 viewDidDisappear:disappear];
  [(MKETAProvider *)self->_etaProvider pause];
}

- (void)_performWhenViewHasAppeared:(id)appeared
{
  viewDidAppearBlocks = self->_viewDidAppearBlocks;
  if (viewDidAppearBlocks)
  {
    v6 = [appeared copy];
    v4 = MEMORY[0x1A58E9F30]();
    [(NSMutableArray *)viewDidAppearBlocks addObject:v4];
  }

  else
  {
    v5 = *(appeared + 2);

    v5(appeared);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = _MKPlaceViewController;
  [(MKStackingViewController *)&v16 viewDidAppear:appear];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (([bundleIdentifier isEqualToString:*MEMORY[0x1E69A1A78]] & 1) == 0)
  {
    [(_MKPlaceViewController *)self infoCardAnalyticsDidSelectAction:21 eventValue:0 feedbackDelegateSelector:0 classification:0];
  }

  while (1)
  {
    viewDidAppearBlocks = [(_MKPlaceViewController *)self viewDidAppearBlocks];
    v10 = [viewDidAppearBlocks count];

    if (!v10)
    {
      break;
    }

    viewDidAppearBlocks2 = [(_MKPlaceViewController *)self viewDidAppearBlocks];
    firstObject = [viewDidAppearBlocks2 firstObject];

    firstObject[2](firstObject);
    viewDidAppearBlocks3 = [(_MKPlaceViewController *)self viewDidAppearBlocks];
    [viewDidAppearBlocks3 removeObjectAtIndex:0];
  }

  viewDidAppearBlocks = self->_viewDidAppearBlocks;
  self->_viewDidAppearBlocks = 0;

  [(MKETAProvider *)self->_etaProvider restart];
  if (self->_initialAppearanceSignpostID != -1)
  {
    v12 = MKGetPlaceCardLog();
    v13 = v12;
    initialAppearanceSignpostID = self->_initialAppearanceSignpostID;
    if (initialAppearanceSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v13, OS_SIGNPOST_INTERVAL_END, initialAppearanceSignpostID, "PlacecardInitialAppearance", &unk_1A30FEA0E, v15, 2u);
    }

    self->_initialAppearanceSignpostID = -1;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = _MKPlaceViewController;
  [(MKStackingViewController *)&v5 viewWillAppear:appear];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, PlaceCardLayoutChanged, @"com.apple.Maps.PlaceCardLayoutChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)dealloc
{
  v3 = +[MKMapItemMetadataRequester sharedInstance];
  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  [v3 cancelRequestsForMapItem:mapItem];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(MKETAProvider *)self->_etaProvider cancel];
  if ((self->_options & 0x20000000) == 0)
  {
    v6 = +[MKAppImageManager sharedImageManager];
    [v6 clearImageCache];
  }

  v7.receiver = self;
  v7.super_class = _MKPlaceViewController;
  [(MKStackingViewController *)&v7 dealloc];
}

- (void)_commonInit
{
  v3 = MKGetPlaceCardLog();
  self->_initialAppearanceSignpostID = os_signpost_id_generate(v3);

  v4 = MKGetPlaceCardLog();
  v5 = v4;
  initialAppearanceSignpostID = self->_initialAppearanceSignpostID;
  if (initialAppearanceSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v5, OS_SIGNPOST_INTERVAL_BEGIN, initialAppearanceSignpostID, "PlacecardInitialAppearance", &unk_1A30FEA0E, v12, 2u);
  }

  v7 = objc_alloc_init(MKPlaceItemActionDataProvider);
  actionDataProvider = self->_actionDataProvider;
  self->_actionDataProvider = v7;

  v9 = [[MKPlaceActionManager alloc] initWithDataProvider:self->_actionDataProvider];
  actionManager = self->_actionManager;
  self->_actionManager = v9;

  [(MKPlaceActionManager *)self->_actionManager setPlaceCardDelegate:self];
  [(MKPlaceActionManager *)self->_actionManager setAnalyticsDelegate:self];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_MKPlaceViewController *)self setViewDidAppearBlocks:v11];

  [(MKStackingViewController *)self setStackingDelegate:self];
  self->_contentAlpha = 1.0;
  [(_MKPlaceViewController *)self setModalPresentationStyle:2];
}

- (_MKPlaceViewController)initWithContact:(id)contact mapItem:(id)item options:(unint64_t)options
{
  contactCopy = contact;
  itemCopy = item;
  v10 = [(_MKPlaceViewController *)self init];
  v11 = v10;
  if (v10)
  {
    v10->_options = options;
    [(_MKPlaceViewController *)v10 setMapItem:itemCopy contact:contactCopy updateOriginalContact:1];
  }

  return v11;
}

- (_MKPlaceViewController)initWithMapItem:(id)item options:(unint64_t)options
{
  itemCopy = item;
  v7 = [(_MKPlaceViewController *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_options = options;
    [(_MKPlaceViewController *)v7 setMapItem:itemCopy];
  }

  return v8;
}

- (_MKPlaceViewController)initWithPlaceItem:(id)item options:(unint64_t)options
{
  itemCopy = item;
  v7 = [(_MKPlaceViewController *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_options = options;
    [(_MKPlaceViewController *)v7 setPlaceItem:itemCopy];
  }

  return v8;
}

- (_MKPlaceViewController)init
{
  v5.receiver = self;
  v5.super_class = _MKPlaceViewController;
  v2 = [(_MKPlaceViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_MKPlaceViewController *)v2 _commonInit];
  }

  return v3;
}

- (void)setUseCompactPhotosView:(BOOL)view
{
  v3 = 512;
  if (!view)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFDFFLL | v3];
}

- (void)setShowAddToPersonalGuides:(BOOL)guides
{
  v3 = 0x8000;
  if (!guides)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFF7FFFLL | v3];
}

- (void)setAllowTransitLineSelection:(BOOL)selection
{
  v3 = 256;
  if (!selection)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFEFFLL | v3];
}

- (void)setShowShareActionsButton:(BOOL)button
{
  v3 = 128;
  if (button)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFF7FLL | v3];
}

- (void)setShowSimulateLocation:(BOOL)location
{
  v3 = 0x2000;
  if (!location)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFDFFFLL | v3];
}

- (void)setDisableReportAProblem:(BOOL)problem
{
  v3 = 64;
  if (!problem)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFBFLL | v3];
}

- (void)setShowReportAProblem:(BOOL)problem
{
  v3 = 64;
  if (problem)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFBFLL | v3];
}

- (void)setShowNearbyApps:(BOOL)apps
{
  v3 = 32;
  if (!apps)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFDFLL | v3];
}

- (void)setShowInlineMapInHeader:(BOOL)header
{
  v3 = 2;
  if (!header)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFFDLL | v3];
}

- (void)setShowEditButton:(BOOL)button
{
  v3 = 16;
  if (!button)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFEFLL | v3];
}

- (void)setHideDirectionsButtons:(BOOL)buttons
{
  v3 = 8;
  if (!buttons)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFF7 | v3];
}

- (void)setShowTitleBar:(BOOL)bar
{
  v3 = 4;
  if (bar)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFFBLL | v3];
}

@end