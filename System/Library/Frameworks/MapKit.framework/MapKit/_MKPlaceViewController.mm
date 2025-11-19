@interface _MKPlaceViewController
- (BOOL)_shouldShowContactActions;
- (BOOL)_showReportAProblem;
- (BOOL)inlineMapViewControllerDidSelectMap:(id)a3;
- (BOOL)isGuardianRestrictedCNContainer;
- (BOOL)isLayoutDynamic;
- (BOOL)isLoading;
- (BOOL)stackingViewController:(id)a3 showsTitleForViewController:(id)a4;
- (CNContact)contact;
- (CNContactViewControllerPrivateDelegate)contactsNavigationController;
- (OS_dispatch_queue)analyticsQueue;
- (_MKPlaceViewController)init;
- (_MKPlaceViewController)initWithContact:(id)a3 mapItem:(id)a4 options:(unint64_t)a5;
- (_MKPlaceViewController)initWithMapItem:(id)a3 options:(unint64_t)a4;
- (_MKPlaceViewController)initWithPlaceItem:(id)a3 options:(unint64_t)a4;
- (_MKPlaceViewControllerDelegate)placeViewControllerDelegate;
- (_MKPlaceViewControllerFeedbackDelegate)placeViewFeedbackDelegate;
- (double)placeCardHeaderViewControllerTrailingConstantForTitle:(id)a3;
- (double)stackingViewController:(id)a3 heightForSeparatorBetweenUpperViewController:(id)a4 andLowerViewController:(id)a5;
- (id)_contactForEditOperations;
- (id)_contactStore;
- (id)_createViewControllerForModule:(id)a3;
- (id)_traits;
- (id)_viewControllerForClass:(Class)a3;
- (id)additionalViewControllersAtPosition:(int64_t)a3;
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
- (int)_moduleTypeForViewController:(id)a3;
- (int)getPlaceCardTypeForAnalytics;
- (int)mapTypeForETAProvider:(id)a3;
- (unint64_t)annotatedItemListDisplayStyle;
- (void)ETAProviderLocationUpdated:(id)a3;
- (void)_commonInit;
- (void)_createViewControllers:(id)a3;
- (void)_createViewControllersForBrand:(id)a3;
- (void)_createViewControllersForShortPlacecard:(id)a3;
- (void)_logClientAndServerLayouts:(id)a3;
- (void)_performWhenViewHasAppeared:(id)a3;
- (void)_presentViewControllerWithInterfaceStyleCheck:(id)a3;
- (void)_setDefaultViewControllers:(id)a3;
- (void)_updateViewControllers;
- (void)addAdditionalViewController:(id)a3 atPosition:(int64_t)a4;
- (void)collectionIdentifierSelected:(id)a3;
- (void)dealloc;
- (void)infoCardAnalyticsDidSelectAction:(int)a3 target:(int)a4 eventValue:(id)a5 actionURL:(id)a6 photoID:(id)a7 moduleMetadata:(id)a8 feedbackDelegateSelector:(int)a9 actionRichProviderId:(id)a10 classification:(id)a11;
- (void)infoCardTransitAnalyticsDidSelectionAction:(int)a3 resultIndex:(int64_t)a4 targetID:(unint64_t)a5 transitSystem:(id)a6 transitDepartureSequence:(id)a7 transitCardCategory:(int)a8 transitIncident:(id)a9 feedbackDelegateSelector:(int)a10;
- (void)placeCardActionControllerDidSelectAddPhoto:(id)a3 presentingViewController:(id)a4 sourceView:(id)a5;
- (void)placeCardActionControllerDidSelectReportAProblem:(id)a3 fromView:(id)a4 isQuickAction:(BOOL)a5;
- (void)placeCardActionControllerDidSelectViewAllPhotos:(id)a3 presentingViewController:(id)a4;
- (void)placeCardPhotosController:(id)a3 didSelectViewPhotoWithID:(id)a4 presentingViewController:(id)a5;
- (void)placeCardWillCloseFromClientType:(unint64_t)a3;
- (void)placeHeaderButtonsViewController:(id)a3 didSelectPrimaryType:(unint64_t)a4 withView:(id)a5;
- (void)removeAdditionalViewController:(id)a3;
- (void)setAllowTransitLineSelection:(BOOL)a3;
- (void)setAutomobileOptions:(id)a3;
- (void)setCyclingOptions:(id)a3;
- (void)setDisableReportAProblem:(BOOL)a3;
- (void)setHeaderAlternatePrimaryButtonController:(id)a3;
- (void)setHeaderSecondaryButtonController:(id)a3;
- (void)setHideDirectionsButtons:(BOOL)a3;
- (void)setLocation:(id)a3;
- (void)setMapItem:(id)a3;
- (void)setMapItem:(id)a3 contact:(id)a4 updateOriginalContact:(BOOL)a5;
- (void)setOptions:(unint64_t)a3;
- (void)setPlaceItem:(id)a3 updateOriginalContact:(BOOL)a4;
- (void)setPlaceViewControllerDelegate:(id)a3;
- (void)setShowAddToPersonalGuides:(BOOL)a3;
- (void)setShowContactActions:(BOOL)a3;
- (void)setShowEditButton:(BOOL)a3;
- (void)setShowInlineMapInHeader:(BOOL)a3;
- (void)setShowNearbyApps:(BOOL)a3;
- (void)setShowReportAProblem:(BOOL)a3;
- (void)setShowShareActionsButton:(BOOL)a3;
- (void)setShowSimulateLocation:(BOOL)a3;
- (void)setShowTitleBar:(BOOL)a3;
- (void)setTransitOptions:(id)a3;
- (void)setUseCompactPhotosView:(BOOL)a3;
- (void)setWalkingOptions:(id)a3;
- (void)set_mapkit_contentVisibility:(int64_t)a3;
- (void)showContentIfLoaded;
- (void)updateContentAlpha;
- (void)updateHeaderTitle;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

- (void)placeCardWillCloseFromClientType:(unint64_t)a3
{
  if (a3 == 3)
  {
    v3 = 701;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 2)
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
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(MKStackingViewController *)self viewControllers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_1F1642C28])
        {
          v10 = [v9 infoCardChildUnactionableUIElements];
          if ([v10 count])
          {
            [v3 addObjectsFromArray:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)generateAvailableActionForAnalytics
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(MKStackingViewController *)self viewControllers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_1F1642C28])
        {
          v10 = [v9 infoCardChildPossibleActions];
          if ([v10 count])
          {
            [v3 addObjectsFromArray:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (int)getPlaceCardTypeForAnalytics
{
  v3 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v4 = [v3 _hasFlyover];

  if (v4)
  {
    return 9;
  }

  if ([(MKPlaceHeaderButtonsViewController *)self->_buttonsHeaderController primaryButtonType]== 2)
  {
    return 10;
  }

  v6 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v7 = [v6 _hasTransit];

  if (v7)
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

  v8 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v9 = [v8 _isMapItemTypeBrand];

  if (v9)
  {
    return 11;
  }

  v10 = [(_MKPlaceViewController *)self shouldDisplayBrowseCategoryVC];
  v11 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v12 = v11;
  if (v10)
  {
    v5 = [v11 _browseCategory_placeCardType];
  }

  else if ([v11 _hasMUID])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)infoCardAnalyticsDidSelectAction:(int)a3 target:(int)a4 eventValue:(id)a5 actionURL:(id)a6 photoID:(id)a7 moduleMetadata:(id)a8 feedbackDelegateSelector:(int)a9 actionRichProviderId:(id)a10 classification:(id)a11
{
  v14 = a5;
  v37 = a6;
  v15 = a7;
  v16 = a10;
  v17 = a11;
  v18 = [(_MKPlaceViewController *)self placeViewFeedbackDelegate];
  v19 = objc_opt_respondsToSelector();

  if (a9 && (v19 & 1) != 0)
  {
    v20 = [(_MKPlaceViewController *)self placeViewFeedbackDelegate];
    [v20 placeViewController:self shouldLogFeedbackOfType:a9];
  }

  v21 = [(_MKPlaceViewController *)self generateAvailableActionForAnalytics];
  v22 = [(_MKPlaceViewController *)self generateUnactionableUIElementsForAnalytics];
  v23 = [(_MKPlaceItem *)self->_placeItem mapItem];
  Current = CFAbsoluteTimeGetCurrent();
  v25 = [(_MKPlaceViewController *)self getPlaceCardTypeForAnalytics];
  v26 = [(_MKPlaceViewController *)self analyticsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __171___MKPlaceViewController_infoCardAnalyticsDidSelectAction_target_eventValue_actionURL_photoID_moduleMetadata_feedbackDelegateSelector_actionRichProviderId_classification___block_invoke;
  block[3] = &unk_1E76C7218;
  v48 = a3;
  v49 = a4;
  v39 = v14;
  v40 = v23;
  v47 = Current;
  v41 = v37;
  v42 = v15;
  v50 = v25;
  v43 = v21;
  v44 = v22;
  v45 = v16;
  v46 = v17;
  v36 = v17;
  v27 = v16;
  v28 = v22;
  v29 = v21;
  v30 = v15;
  v31 = v37;
  v32 = v23;
  v33 = v14;
  dispatch_async(v26, block);
}

- (void)infoCardTransitAnalyticsDidSelectionAction:(int)a3 resultIndex:(int64_t)a4 targetID:(unint64_t)a5 transitSystem:(id)a6 transitDepartureSequence:(id)a7 transitCardCategory:(int)a8 transitIncident:(id)a9 feedbackDelegateSelector:(int)a10
{
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v18 = [(_MKPlaceViewController *)self placeViewFeedbackDelegate];
  v19 = objc_opt_respondsToSelector();

  if (a10 && (v19 & 1) != 0)
  {
    v20 = [(_MKPlaceViewController *)self placeViewFeedbackDelegate];
    [v20 placeViewController:self shouldLogFeedbackOfType:a10];
  }

  v21 = [(_MKPlaceItem *)self->_placeItem mapItem];
  Current = CFAbsoluteTimeGetCurrent();
  v23 = [(_MKPlaceViewController *)self analyticsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __190___MKPlaceViewController_infoCardTransitAnalyticsDidSelectionAction_resultIndex_targetID_transitSystem_transitDepartureSequence_transitCardCategory_transitIncident_feedbackDelegateSelector___block_invoke;
  block[3] = &unk_1E76C71F0;
  v34 = Current;
  v35 = a4;
  v36 = a5;
  v37 = a3;
  v38 = a8;
  v30 = v21;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  v27 = v21;
  dispatch_async(v23, block);
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

- (void)placeCardActionControllerDidSelectViewAllPhotos:(id)a3 presentingViewController:(id)a4
{
  v8 = [(_MKPlaceViewController *)self mapItem:a3];
  v5 = [v8 _mapkit_preferredFirstPhotoVendor];
  v6 = [v5 attributionURLs];
  v7 = [(_MKPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
  [(_MKPlaceViewController *)self _launchAttributionURLs:v6 withAttribution:v5 mapItem:v8 completionHandler:v7];
}

- (void)placeCardActionControllerDidSelectAddPhoto:(id)a3 presentingViewController:(id)a4 sourceView:(id)a5
{
  v9 = [(_MKPlaceViewController *)self mapItem:a3];
  v6 = [v9 _mapkit_preferredFirstPhotoVendor];
  v7 = [v6 addPhotoURLs];
  v8 = [(_MKPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
  [(_MKPlaceViewController *)self _launchAttributionURLs:v7 withAttribution:v6 mapItem:v9 completionHandler:v8];
}

- (void)placeCardActionControllerDidSelectReportAProblem:(id)a3 fromView:(id)a4 isQuickAction:(BOOL)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = [(_MKPlaceViewController *)self mapItem:a3];

  if (v6)
  {
    if ([(_MKPlaceViewController *)self _showReportAProblem])
    {
      v7 = +[MKMapService sharedService];
      v8 = [(_MKPlaceViewController *)self mapItem];
      [v7 captureUserAction:17105 onTarget:0 eventValue:0 mapItem:v8 timestamp:0xFFFFFFFFLL resultIndex:0.0];

      v9 = [(_MKPlaceViewController *)self mapItem];
      v14[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v12 = @"MKLaunchOptionsLaunchIntoRAP";
      v13 = MEMORY[0x1E695E118];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      [MKMapItem openMapsWithItems:v10 launchOptions:v11 completionHandler:0];
    }
  }
}

- (void)set_mapkit_contentVisibility:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MKStackingViewController *)self viewControllers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [*(*(&v9 + 1) + 8 * v8++) set_mapkit_contentVisibility:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(MKStackingViewController *)self viewControllers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) setContentAlpha:self->_contentAlpha];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (int)mapTypeForETAProvider:(id)a3
{
  v4 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v7 = [v6 mapTypeForPlaceViewController:self];

  return v7;
}

- (void)ETAProviderLocationUpdated:(id)a3
{
  v4 = [a3 currentLocation];
  [(_MKPlaceViewController *)self setLocation:v4];
}

- (void)placeHeaderButtonsViewController:(id)a3 didSelectPrimaryType:(unint64_t)a4 withView:(id)a5
{
  v35[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v21 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        v23 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __89___MKPlaceViewController_placeHeaderButtonsViewController_didSelectPrimaryType_withView___block_invoke_2;
        v27 = &unk_1E76CDB88;
        v28 = self;
        v29 = v9;
        [v23 placeViewController:self didSelectShareCurrentLocationWithCompletion:&v24];
      }

      else
      {
        [(_MKPlaceViewController *)self _showShareSheet:v9];
      }

      [(_MKPlaceViewController *)self infoCardAnalyticsDidSelectAction:57 eventValue:0 feedbackDelegateSelector:6 classification:0, v24, v25, v26, v27, v28];
      goto LABEL_20;
    }

    if (a4 != 4)
    {
      goto LABEL_20;
    }
  }

  else if (a4 != 1)
  {
    if (a4 != 2)
    {
      goto LABEL_20;
    }

    v10 = self;
    v11 = 3001;
    v12 = 0;
    goto LABEL_8;
  }

  v10 = self;
  v11 = 6003;
  v12 = 12;
LABEL_8:
  [(_MKPlaceViewController *)v10 infoCardAnalyticsDidSelectAction:v11 eventValue:0 feedbackDelegateSelector:v12 classification:0];
  v13 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
    v16 = [(MKETAProvider *)self->_etaProvider transportTypePreferenceNumber];
    [v15 placeViewController:self didSelectRouteToCurrentSearchResultWithTransportTypePreference:v16];
    goto LABEL_18;
  }

  v17 = [(_MKPlaceViewController *)self mapItem];

  if (v17)
  {
    if ((self->_options & 0x100000000) == 0)
    {
      v15 = +[MKMapItem mapItemForCurrentLocation];
      v33[0] = v15;
      v18 = [(_MKPlaceViewController *)self mapItem];
      v33[1] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
      v31 = @"MKLaunchOptionsDirectionsMode";
      v32 = @"MKLaunchOptionsDirectionsModeDefault";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [MKMapItem openMapsWithItems:v19 launchOptions:v20 completionHandler:&__block_literal_global_6832];

LABEL_19:
      goto LABEL_20;
    }

    v15 = [(_MKPlaceViewController *)self mapItem];
    v34[0] = @"_MKLaunchOptionsSearchAlongRouteKey";
    v34[1] = @"MKLaunchOptionsSelectedIndex";
    v35[0] = MEMORY[0x1E695E118];
    v35[1] = &unk_1F1610F90;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __89___MKPlaceViewController_placeHeaderButtonsViewController_didSelectPrimaryType_withView___block_invoke;
    v30[3] = &unk_1E76CA670;
    v30[4] = self;
    [v15 openInMapsWithLaunchOptions:v16 completionHandler:v30];
LABEL_18:

    goto LABEL_19;
  }

LABEL_20:
}

- (double)placeCardHeaderViewControllerTrailingConstantForTitle:(id)a3
{
  v4 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0.0;
  }

  v6 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  [v6 placeViewControllerPlaceCardHeaderTitleTrailingConstant:self];
  v8 = v7;

  return v8;
}

- (id)_traits
{
  v3 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
    v6 = [v5 traitsForPlaceViewController:self];
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

- (void)_presentViewControllerWithInterfaceStyleCheck:(id)a3
{
  v8 = a3;
  v4 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
    v7 = [v6 overriddenInterfaceStyleForPlaceViewControllerSubviews:self];

    [v8 setOverrideUserInterfaceStyle:v7];
  }

  [(_MKPlaceViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)placeCardPhotosController:(id)a3 didSelectViewPhotoWithID:(id)a4 presentingViewController:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(_MKPlaceViewController *)self mapItem];
  if ([v12 length])
  {
    v9 = [v8 _mapkit_preferredFirstPhotoVendor];
    v10 = [v9 urlsForPhotoWithIdentifier:v12];
    v11 = [(_MKPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
    [(_MKPlaceViewController *)self _launchAttributionURLs:v10 withAttribution:v9 mapItem:v8 completionHandler:v11];
  }

  else
  {
    [(_MKPlaceViewController *)self placeCardActionControllerDidSelectViewAllPhotos:0 presentingViewController:v7];
  }
}

- (double)stackingViewController:(id)a3 heightForSeparatorBetweenUpperViewController:(id)a4 andLowerViewController:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
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

- (BOOL)stackingViewController:(id)a3 showsTitleForViewController:(id)a4
{
  v4 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)removeAdditionalViewController:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSMapTable *)self->_additionalViewControllers keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_additionalViewControllers objectForKey:*(*(&v14 + 1) + 8 * i)];
        if ([v10 containsObject:v4])
        {
          [v10 removeObject:v4];
          v11 = MEMORY[0x1E695DF70];
          v12 = [(MKStackingViewController *)self viewControllers];
          v13 = [v11 arrayWithArray:v12];

          [v13 removeObject:v4];
          [(MKStackingViewController *)self setViewControllers:v13];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)addAdditionalViewController:(id)a3 atPosition:(int64_t)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!self->_additionalViewControllers)
  {
    v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    additionalViewControllers = self->_additionalViewControllers;
    self->_additionalViewControllers = v7;
  }

  v26 = a4;
  v9 = [(_MKPlaceViewController *)self _mapTableKeyForSectionPosition:a4];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [(NSMapTable *)self->_additionalViewControllers keyEnumerator];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_additionalViewControllers objectForKey:v15];
        if ([v16 containsObject:v6])
        {
          if ([v15 isEqual:v9])
          {
            goto LABEL_18;
          }

          v17 = MEMORY[0x1E695DF30];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ has already been added to another section", v6];
          v19 = [v17 exceptionWithName:@"Can't add same view controller to 2 sections" reason:v18 userInfo:0];

          v9 = v27;
          [v19 raise];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
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

  v10 = [(NSMapTable *)self->_additionalViewControllers objectForKey:v20];
  [v10 addObject:v6];
  v24 = MEMORY[0x1E695DF70];
  v25 = [(MKStackingViewController *)self viewControllers];
  v16 = [v24 arrayWithArray:v25];

  if (!v26)
  {
    [v16 insertObject:v6 atIndex:{objc_msgSend(v10, "count") - 1}];
  }

  [(MKStackingViewController *)self setViewControllers:v16];
  v9 = v27;
LABEL_18:
}

- (id)additionalViewControllersAtPosition:(int64_t)a3
{
  v4 = [(_MKPlaceViewController *)self _mapTableKeyForSectionPosition:a3];
  v5 = [(NSMapTable *)self->_additionalViewControllers objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 array];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setOptions:(unint64_t)a3
{
  if (self->_options != a3)
  {
    self->_options = a3;
    [(MKPlaceItemActionDataProvider *)self->_actionDataProvider updateWithPlaceItem:self->_placeItem options:a3];
    if (self->_placeItem)
    {

      [(_MKPlaceViewController *)self _updateViewControllers];
    }
  }
}

- (void)setShowContactActions:(BOOL)a3
{
  v3 = a3;
  v5 = [(_MKPlaceViewController *)self showContactActions];
  if (self->_showContactActions != v3)
  {
    self->_showContactActions = v3;
    if (v5 != [(_MKPlaceViewController *)self showContactActions])
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

- (void)setHeaderAlternatePrimaryButtonController:(id)a3
{
  v5 = a3;
  if (self->_headerAlternatePrimaryButtonController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_headerAlternatePrimaryButtonController, a3);
    [(MKPlaceHeaderButtonsViewController *)self->_buttonsHeaderController setAlternatePrimaryButtonController:self->_headerAlternatePrimaryButtonController];
    v5 = v6;
  }
}

- (void)setHeaderSecondaryButtonController:(id)a3
{
  v5 = a3;
  if (self->_headerSecondaryButtonController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_headerSecondaryButtonController, a3);
    [(MKPlaceHeaderButtonsViewController *)self->_buttonsHeaderController setSecondaryButtonController:self->_headerSecondaryButtonController];
    v5 = v6;
  }
}

- (void)setCyclingOptions:(id)a3
{
  v5 = a3;
  if (self->_cyclingOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cyclingOptions, a3);
    [(MKETAProvider *)self->_etaProvider setCyclingOptions:self->_cyclingOptions];
    v5 = v6;
  }
}

- (void)setTransitOptions:(id)a3
{
  v5 = a3;
  if (self->_transitOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_transitOptions, a3);
    [(MKETAProvider *)self->_etaProvider setTransitOptions:self->_transitOptions];
    v5 = v6;
  }
}

- (void)setWalkingOptions:(id)a3
{
  v5 = a3;
  if (self->_walkingOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_walkingOptions, a3);
    [(MKETAProvider *)self->_etaProvider setWalkingOptions:self->_walkingOptions];
    v5 = v6;
  }
}

- (void)setAutomobileOptions:(id)a3
{
  v5 = a3;
  if (self->_automobileOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_automobileOptions, a3);
    [(MKETAProvider *)self->_etaProvider setAutomobileOptions:self->_automobileOptions];
    v5 = v6;
  }
}

- (void)setMapItem:(id)a3
{
  v4 = a3;
  v5 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SetMapItem", &unk_1A30FEA0E, buf, 2u);
  }

  if (v4)
  {
    [v4 _placeCardContact];
  }

  else
  {
    [(_MKPlaceItem *)self->_placeItem contact];
  }
  v6 = ;
  [(_MKPlaceViewController *)self setMapItem:v4 contact:v6 updateOriginalContact:0];

  v7 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v7))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetMapItem", &unk_1A30FEA0E, v8, 2u);
  }
}

- (BOOL)inlineMapViewControllerDidSelectMap:(id)a3
{
  [(_MKPlaceViewController *)self infoCardAnalyticsDidSelectAction:6007 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
  v4 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
    [v6 placeViewControllerDidSelectInlineMap:self];
  }

  return v5 & 1;
}

- (void)setPlaceItem:(id)a3 updateOriginalContact:(BOOL)a4
{
  v6 = a4;
  obj = a3;
  v8 = [obj mapItem];
  v9 = [(_MKPlaceItem *)self->_placeItem mapItem];
  if (v8 != v9)
  {
    goto LABEL_2;
  }

  v15 = [obj mapItem];
  v16 = obj;
  if (!v15)
  {
    v4 = [obj contact];
    v37 = [(_MKPlaceItem *)self->_placeItem contact];
    v5 = v37;
    if (v4 != v37)
    {

LABEL_2:
      goto LABEL_3;
    }

    v16 = obj;
  }

  v17 = [v16 isIntermediateMapItem];
  v18 = v17 ^ [(_MKPlaceItem *)self->_placeItem isIntermediateMapItem];
  if (v15)
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
  v11 = [(_MKPlaceItem *)self->_placeItem mapItem];
  [v10 cancelRequestsForMapItem:v11];

  if (v6)
  {
    v12 = [obj contact];
    [(_MKPlaceViewController *)self setOriginalContact:v12];
  }

  v13 = [obj mapItem];
  if (v13)
  {
    v14 = v13;
LABEL_12:

    goto LABEL_13;
  }

  v19 = [obj contact];

  if (v19)
  {
    v20 = [MKMapItem alloc];
    v21 = [obj contact];
    v14 = [(MKMapItem *)v20 initWithContact:v21];

    v22 = [obj contact];
    v23 = [_MKContactPlaceItem placeItemWithMapItem:v14 contact:v22 options:16];

    obj = v23;
    goto LABEL_12;
  }

LABEL_13:
  v24 = [(_MKPlaceItem *)self->_placeItem mapItem];

  if (v24)
  {
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    v26 = [(_MKPlaceItem *)self->_placeItem mapItem];
    [v25 removeObserver:self name:@"MKMapItemDidResolveAttribution" object:v26];
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
  v30 = [(_MKPlaceViewController *)self _shouldShowContactActions];
  self->_showContactActions = v30;
  [(MKPlaceActionManager *)self->_actionManager setShowContactActions:v30];
  v31 = [(_MKPlaceItem *)self->_placeItem mapItem];

  if (v31)
  {
    v32 = [MEMORY[0x1E696AD88] defaultCenter];
    v33 = [(_MKPlaceItem *)self->_placeItem mapItem];
    [v32 addObserver:self selector:sel__didResolveAttribution_ name:@"MKMapItemDidResolveAttribution" object:v33];
  }

  [(MKStackingViewController *)self scrollToTopAnimated:0];
  [(_MKPlaceViewController *)self _updateViewControllers];
  if (self->_placeItem)
  {
    if (!v6)
    {
      v34 = [MEMORY[0x1E696AAE8] mainBundle];
      v35 = [v34 bundleIdentifier];
      v36 = [v35 isEqualToString:*MEMORY[0x1E69A1A78]];

      if (v36)
      {
        [(_MKPlaceViewController *)self infoCardAnalyticsDidSelectAction:21 eventValue:0 feedbackDelegateSelector:0 classification:0];
      }
    }
  }

LABEL_25:
}

- (void)setMapItem:(id)a3 contact:(id)a4 updateOriginalContact:(BOOL)a5
{
  v5 = a5;
  if (a4)
  {
    [_MKContactPlaceItem placeItemWithMapItem:a3 contact:a4 options:16 * (a3 == 0)];
  }

  else
  {
    v8 = a3;
    +[_MKMapItemPlaceItem placeItemWithMapItem:options:](_MKMapItemPlaceItem, "placeItemWithMapItem:options:", v8, [v8 isCurrentLocation]);
  }
  v9 = ;

  [(_MKPlaceViewController *)self setPlaceItem:v9 updateOriginalContact:v5];
}

- (void)setPlaceViewControllerDelegate:(id)a3
{
  obj = a3;
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
  v3 = [(_MKPlaceViewController *)self mapItem];
  v4 = [v3 _annotatedItemList];

  if (v4)
  {
    v5 = displayStyleForAnnotatedItemList(v4, ([(_MKPlaceViewController *)self options]>> 23) & 1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)attributionsVC
{
  v3 = [(_MKPlaceViewController *)self mapItem];
  if (![v3 _needsAttribution])
  {
    v8 = 0;
LABEL_6:

    goto LABEL_8;
  }

  v4 = [(_MKPlaceViewController *)self mapItem];
  v5 = [v4 _attribution];
  v6 = [v5 attributionURLs];
  v7 = [v6 count];

  if (v7)
  {
    v8 = objc_alloc_init(MKPlaceAttributionViewController);
    v9 = [(_MKPlaceViewController *)self mapItem];
    [(MKPlaceAttributionViewController *)v8 setMapItem:v9];

    [(MKPlaceAttributionViewController *)v8 setAnalyticsDelegate:self];
    v10 = [(_MKPlaceViewController *)self mapItem];
    v11 = [v10 _attribution];
    v12 = [v11 attributionURLs];
    v13 = [v12 count];

    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = [(_MKPlaceViewController *)self mapItem];
    v15 = [v14 _attribution];
    v16 = [v15 attributionURLs];
    [(MKPlaceAttributionViewController *)v8 setUrlStrings:v16];

    v3 = [(_MKPlaceViewController *)self mapItem];
    v17 = [v3 _attribution];
    [(MKPlaceAttributionViewController *)v8 setAttribution:v17];

    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)_viewControllerForClass:(Class)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(MKStackingViewController *)self viewControllers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(_MKPlaceViewController *)self mapItem];
  v4 = [v3 timeZone];

  if (v4)
  {
    v5 = [(_MKPlaceViewController *)self mapItem];
    v6 = [MKPlaceHoursViewController placeHoursWithMapItem:v5];

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
  v4 = [(_MKPlaceViewController *)self placeItem];
  v5 = [(MKPlaceInfoViewController *)v3 initWithPlaceItem:v4];

  [(MKPlaceInfoViewController *)v5 setActionDelegate:self->_actionManager];
  [(MKPlaceInfoViewController *)v5 setPlacecardOptions:self->_options];

  return v5;
}

- (id)photoVC
{
  v3 = [(_MKPlaceViewController *)self mapItem];
  v4 = [v3 place];
  v5 = [v4 firstBusiness];
  v6 = [v5 photosCount];

  if (v6)
  {
    v7 = [[MKPlacePhotosViewController alloc] initWithMapItem:v3 mode:([(_MKPlaceViewController *)self options]>> 8) & 2 options:0];
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
  v4 = [(_MKPlaceViewController *)self mapItem];
  v5 = [MKPlacePoisInlineMapViewController inlineMapWithMapItem:v4 configuration:v3];

  [v5 setDelegate:self];
  [v5 setLocation:self->_location];

  return v5;
}

- (id)inlineMapVC
{
  if (((-[_MKPlaceViewController options](self, "options") & 2) != 0 || (-[_MKPlaceViewController options](self, "options") & 1) == 0) && (-[_MKPlaceViewController mapItem](self, "mapItem"), v3 = objc_claimAutoreleasedReturnValue(), [v3 _displayMapRegion], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [MKPlaceInlineMapViewControllerConfiguration configurationForPlaceViewControllerOptions:[(_MKPlaceViewController *)self options]];
    v6 = [(_MKPlaceViewController *)self mapItem];
    v7 = [MKPlaceInlineMapViewController inlineMapWithMapItem:v6 configuration:v5];

    [v7 setBottomHairlineHidden:1];
    [v7 setDelegate:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)collectionIdentifierSelected:(id)a3
{
  v7 = a3;
  [(_MKPlaceViewController *)self infoCardAnalyticsDidSelectAction:0 eventValue:0 feedbackDelegateSelector:0 classification:0];
  WeakRetained = objc_loadWeakRetained(&self->_placeViewControllerDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_placeViewControllerDelegate);
    [v6 placeViewController:self selectCollectionIdentifier:v7];
  }
}

- (id)collectionViews
{
  WeakRetained = objc_loadWeakRetained(&self->_placeViewControllerDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_placeViewControllerDelegate);
    v6 = [(_MKPlaceViewController *)self placeItem];
    v7 = [v5 placeViewController:self collectionViewsForPlaceItem:v6];
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

- (int)_moduleTypeForViewController:(id)a3
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

- (id)_createViewControllerForModule:(id)a3
{
  v4 = [a3 type];
  v5 = 0;
  if (v4 > 4)
  {
    if (v4 <= 22)
    {
      if (v4 != 5)
      {
        if (v4 == 9)
        {
          v5 = [(_MKPlaceViewController *)self hoursVC];
        }

        goto LABEL_20;
      }

      v7 = [(_MKPlaceViewController *)self infosVC];
      v8 = 1192;
      goto LABEL_18;
    }

    if (v4 != 23)
    {
      if (v4 == 24)
      {
        v5 = [(_MKPlaceViewController *)self attributionsVC];
      }

      goto LABEL_20;
    }

    v7 = [(_MKPlaceViewController *)self createFooterActions];
    v8 = 1216;
LABEL_18:
    v11 = *(&self->super.super.super.super.super.isa + v8);
    *(&self->super.super.super.super.super.isa + v8) = v7;

    buttonsHeaderController = *(&self->super.super.super.super.super.isa + v8);
    goto LABEL_19;
  }

  switch(v4)
  {
    case 2:
      buttonsHeaderController = self->_buttonsHeaderController;
LABEL_19:
      v5 = buttonsHeaderController;
      break;
    case 3:
      v9 = [(_MKPlaceViewController *)self poisInlineMapVC];
      poisInlineMapViewController = self->_poisInlineMapViewController;
      self->_poisInlineMapViewController = v9;

      v5 = self->_poisInlineMapViewController;
      if (v5)
      {
        break;
      }

      v7 = [(_MKPlaceViewController *)self inlineMapVC];
      v8 = 1200;
      goto LABEL_18;
    case 4:
      v5 = [(_MKPlaceViewController *)self photoVC];
      break;
  }

LABEL_20:

  return v5;
}

- (void)_createViewControllersForShortPlacecard:(id)a3
{
  v6 = a3;
  if (self->_buttonsHeaderController)
  {
    [v6 addObject:?];
  }

  v4 = [(_MKPlaceViewController *)self createFooterActions];
  placeActionViewController = self->_placeActionViewController;
  self->_placeActionViewController = v4;

  if (self->_placeActionViewController)
  {
    [v6 addObject:?];
  }
}

- (void)_createViewControllers:(id)a3
{
  v4 = a3;
  v25 = v4;
  if (self->_buttonsHeaderController)
  {
    [v4 addObject:?];
  }

  v5 = [(MKLayoutCardViewController *)self isTransitItem];
  v6 = [(_MKPlaceViewController *)self inlineMapVC];
  inlineMapViewController = self->_inlineMapViewController;
  self->_inlineMapViewController = v6;

  if (self->_inlineMapViewController)
  {
    [v25 addObject:?];
  }

  v8 = [(_MKPlaceViewController *)self poisInlineMapVC];
  poisInlineMapViewController = self->_poisInlineMapViewController;
  self->_poisInlineMapViewController = v8;

  if (self->_poisInlineMapViewController)
  {
    [v25 addObject:?];
  }

  v10 = [(_MKPlaceViewController *)self photoVC];
  v11 = v10;
  if (v5)
  {
    v12 = 0;
    v13 = v10 == 0;
  }

  else
  {
    v14 = self->_inlineMapViewController;
    v12 = v14 == 0;
    v13 = v10 == 0;
    if (v10 && !v14)
    {
      [v25 addObject:v10];
      v13 = 0;
    }
  }

  v15 = [(_MKPlaceViewController *)self hoursVC];
  if (v15)
  {
    [v25 addObject:v15];
  }

  v16 = [(_MKPlaceViewController *)self infosVC];
  infoViewController = self->_infoViewController;
  self->_infoViewController = v16;

  if (self->_infoViewController)
  {
    v18 = [v25 lastObject];
    v19 = self->_inlineMapViewController;

    if (v18 == v19)
    {
      [(MKPlaceInlineMapViewController *)self->_inlineMapViewController setBottomHairlineHidden:1];
    }

    [v25 addObject:self->_infoViewController];
  }

  if (!v13)
  {
    if ((([v25 containsObject:v11] | v12) & 1) == 0)
    {
      v20 = [v25 lastObject];
      v21 = self->_infoViewController;

      if (v20 == v21)
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

  v22 = [(_MKPlaceViewController *)self attributionsVC];
  if (v22)
  {
    [v25 addObject:v22];
  }

  v23 = [(_MKPlaceViewController *)self createFooterActions];
  placeActionViewController = self->_placeActionViewController;
  self->_placeActionViewController = v23;

  if (self->_placeActionViewController)
  {
    [v25 addObject:?];
  }
}

- (void)_createViewControllersForBrand:(id)a3
{
  v13 = a3;
  v4 = [(_MKPlaceViewController *)self infosVC];
  infoViewController = self->_infoViewController;
  self->_infoViewController = v4;

  if (self->_infoViewController)
  {
    v6 = [v13 lastObject];
    inlineMapViewController = self->_inlineMapViewController;

    if (v6 == inlineMapViewController)
    {
      [(MKPlaceInlineMapViewController *)self->_inlineMapViewController setBottomHairlineHidden:1];
    }

    [v13 addObject:self->_infoViewController];
  }

  v8 = [(_MKPlaceViewController *)self poisInlineMapVC];
  poisInlineMapViewController = self->_poisInlineMapViewController;
  self->_poisInlineMapViewController = v8;

  if (self->_poisInlineMapViewController)
  {
    [v13 addObject:?];
    [(MKPlaceInlineMapViewController *)self->_poisInlineMapViewController setBottomHairlineHidden:1];
  }

  v10 = [(_MKPlaceViewController *)self createFooterActions];
  placeActionViewController = self->_placeActionViewController;
  self->_placeActionViewController = v10;

  v12 = v13;
  if (self->_placeActionViewController)
  {
    [v13 addObject:?];
    v12 = v13;
  }
}

- (void)_logClientAndServerLayouts:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = v4;
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
  v14 = [(_MKPlaceViewController *)self mapItem];
  v15 = [v14 _placecardLayout];
  v16 = [v15 modules];

  v17 = [v16 countByEnumeratingWithState:&v35 objects:v47 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v35 + 1) + 8 * j) type] - 1;
        v22 = @"MODULE_TYPE_UNKNOWN";
        if (v21 <= 0x2D)
        {
          v22 = off_1E76C7238[v21];
        }

        [v13 addObject:v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v35 objects:v47 count:16];
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
    v25 = [(_MKPlaceViewController *)self mapItem];
    v26 = [v25 _muid];
    v27 = [(_MKPlaceViewController *)self mapItem];
    v28 = [v27 name];
    *buf = 134218242;
    v44 = v26;
    v45 = 2112;
    v46 = v28;
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

- (void)setLocation:(id)a3
{
  objc_storeStrong(&self->_location, a3);
  v5 = a3;
  [(MKPlacePoisInlineMapViewController *)self->_poisInlineMapViewController setLocation:v5];
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

  v4 = [(_MKPlaceViewController *)self mapItem];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    [(MKPlaceActionManager *)self->_actionManager setIsCurrentLocation:0];
    v6 = [v4 _isMapItemTypeBrand];
    [(MKPlaceCardHeaderViewController *)self->_headerViewController contentAlpha];
    v8 = v7;
    v9 = [[MKPlaceCardHeaderViewController alloc] initWithPlaceItem:self->_placeItem layout:v6];
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
    v14 = [(_MKPlaceViewController *)self placeItem];
    if (([v14 isIntermediateMapItem] & 1) != 0 || (self->_options & 8) != 0)
    {
      v49 = 0;
    }

    else
    {
      v49 = [v4 _canGetDirections];
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
    v17 = [(MKETAProvider *)self->_etaProvider currentLocation];
    location = self->_location;
    self->_location = v17;

    if (([(_MKPlaceItem *)self->_placeItem options]& 1) == 0)
    {
      v19 = [(_MKPlaceItem *)self->_placeItem mapItem];
      v20 = [v19 _detourInfo];
      if (v20)
      {
        options = self->_options;

        if ((options & 0x100000) != 0)
        {
          v22 = self->_buttonsHeaderController;
          v23 = 2;
LABEL_16:
          [(MKPlaceHeaderButtonsViewController *)v22 setPrimaryButtonType:v23];
LABEL_20:
          if ([v4 _isMapItemTypeBrand])
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

      if (v49)
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
  v24 = [(_MKPlaceViewController *)self placeItem];
  if (v24)
  {
    v25 = v24;
    v26 = [(_MKPlaceViewController *)self placeItem];
    v27 = [v26 isIntermediateMapItem];

    if ((v27 & 1) == 0)
    {
      v28 = [(_MKPlaceViewController *)self headerSecondaryButtonController];
      [(MKPlaceHeaderButtonsViewController *)self->_buttonsHeaderController setSecondaryButtonController:v28];

      if ([(_MKPlaceViewController *)self isLayoutDynamic])
      {
        [(MKLayoutCardViewController *)self _createModuleLayout:v5];
      }

      else
      {
        if ([v4 _isMapItemTypeBrand])
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

  if ([v4 _hasResolvablePartialInformation])
  {
    v31 = +[MKMapService sharedService];
    v32 = [v4 _addressFormattedAsSinglelineAddress];
    v33 = [v31 ticketForForwardGeocodeString:v32 traits:0];

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __48___MKPlaceViewController__updateViewControllers__block_invoke;
    v51[3] = &unk_1E76C71C8;
    v51[4] = self;
    [(_MKURLParser *)v33 submitWithHandler:v51 networkActivity:0];
  }

  else
  {
    if (!self->_inlineMapViewController)
    {
      goto LABEL_42;
    }

    v33 = [(_MKPlaceViewController *)self mapItem];
    v34 = [(_MKURLParser *)v33 url];
    if (v34)
    {
      v35 = v34;
      v36 = [(_MKPlaceViewController *)self mapItem];
      v37 = [v36 url];
      v38 = [_MKURLParser isValidMapURL:v37];

      if (!v38)
      {
        goto LABEL_42;
      }

      v39 = [_MKURLParser alloc];
      v40 = [(_MKPlaceViewController *)self mapItem];
      v41 = [v40 url];
      v33 = [(_MKURLParser *)v39 initWithURL:v41];

      [(_MKURLParser *)v33 parseIncludingCustomParameters:1];
      v42 = [(_MKPlaceViewController *)self mapItem];
      v43 = [(MKMapItemIdentifier *)v42 _identifier];
      if (v43)
      {
        v44 = v43;
      }

      else
      {
        v46 = [(_MKURLParser *)v33 searchUID];

        if (!v46)
        {
          goto LABEL_36;
        }

        v42 = [[MKMapItemIdentifier alloc] initWithMUID:[(_MKURLParser *)v33 searchUID]];
        v47 = +[MKMapService sharedService];
        v48 = [(_MKURLParser *)v33 contentProviderID];
        v44 = [v47 ticketForNonExpiredIdentifier:v42 resultProviderID:0 contentProvider:v48 traits:0];

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
  v3 = [(_MKPlaceViewController *)self _contactStore];
  v4 = [v3 defaultContainerIdentifier];

  if (v4)
  {
    v5 = MEMORY[0x1E695CE48];
    v13[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v7 = [v5 predicateForContainersWithIdentifiers:v6];

    v8 = [(_MKPlaceViewController *)self _contactStore];
    v9 = [v8 containersMatchingPredicate:v7 error:0];

    if ([v9 count] == 1)
    {
      v10 = [v9 firstObject];
      v11 = [v10 isGuardianRestricted];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_shouldShowContactActions
{
  placeItem = self->_placeItem;
  if (placeItem)
  {
    v5 = [(_MKPlaceItem *)placeItem contact];
    if (v5 && (-[_MKPlaceItem contact](self->_placeItem, "contact"), v2 = objc_claimAutoreleasedReturnValue(), ([v2 hasBeenPersisted] & 1) != 0))
    {
      v6 = 1;
    }

    else if (([(_MKPlaceItem *)self->_placeItem options]& 8) != 0)
    {
      v6 = 1;
      if (!v5)
      {
LABEL_10:

        LOBYTE(placeItem) = !v6;
        return placeItem;
      }
    }

    else
    {
      v6 = [(_MKPlaceViewController *)self isGuardianRestrictedCNContainer];
      if (!v5)
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
    v4 = [(_MKPlaceItem *)self->_placeItem contact];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = self->_contact;
      self->_contact = v6;
    }

    else
    {
      v7 = [(_MKPlaceItem *)self->_placeItem mapItem];
      v8 = [v7 _placeCardContact];
      v9 = self->_contact;
      self->_contact = v8;
    }

    contact = self->_contact;
  }

  return contact;
}

- (id)_contactForEditOperations
{
  v3 = [(_MKPlaceViewController *)self originalContact];
  if (v3)
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"MKPlaceViewControllerDidShowNotification" object:self];
  }
}

- (BOOL)isLoading
{
  v2 = [(_MKPlaceViewController *)self placeItem];
  v3 = [v2 isIntermediateMapItem];

  return v3;
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

- (void)_setDefaultViewControllers:(id)a3
{
  v6 = a3;
  v4 = [(_MKPlaceViewController *)self additionalViewControllersAtPosition:0];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count") + objc_msgSend(v6, "count")}];
  if (v4 && [v4 count])
  {
    [v5 addObjectsFromArray:v4];
  }

  [v5 addObjectsFromArray:v6];
  [(MKStackingViewController *)self setViewControllers:v5];
}

- (BOOL)_showReportAProblem
{
  if (_MKRAPIsAvailable())
  {
    v3 = [(_MKPlaceViewController *)self placeItem];
    if (([v3 options] & 4) != 0)
    {
      goto LABEL_8;
    }

    v4 = [(_MKPlaceViewController *)self placeItem];
    v5 = [v4 options];

    if ((v5 & 8) == 0)
    {
      v3 = [(_MKPlaceViewController *)self mapItem];
      if (v3 && (self->_options & 0x40) == 0)
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
  v3 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
    [v5 placeViewControllerDidUpdateHeight:self];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = _MKPlaceViewController;
  [(_MKPlaceViewController *)&v10 viewWillDisappear:a3];
  if ((-[_MKPlaceViewController isMovingFromParentViewController](self, "isMovingFromParentViewController") & 1) != 0 || (+[MKSystemController sharedInstance](MKSystemController, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 userInterfaceIdiom], v4, v5))
  {
    v6 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(_MKPlaceViewController *)self placeViewControllerDelegate];
      [v8 placeViewControllerDidDismiss:self];
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.Maps.PlaceCardLayoutChanged", 0);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _MKPlaceViewController;
  [(_MKPlaceViewController *)&v4 viewDidDisappear:a3];
  [(MKETAProvider *)self->_etaProvider pause];
}

- (void)_performWhenViewHasAppeared:(id)a3
{
  viewDidAppearBlocks = self->_viewDidAppearBlocks;
  if (viewDidAppearBlocks)
  {
    v6 = [a3 copy];
    v4 = MEMORY[0x1A58E9F30]();
    [(NSMutableArray *)viewDidAppearBlocks addObject:v4];
  }

  else
  {
    v5 = *(a3 + 2);

    v5(a3);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = _MKPlaceViewController;
  [(MKStackingViewController *)&v16 viewDidAppear:a3];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];

  if (([v5 isEqualToString:*MEMORY[0x1E69A1A78]] & 1) == 0)
  {
    [(_MKPlaceViewController *)self infoCardAnalyticsDidSelectAction:21 eventValue:0 feedbackDelegateSelector:0 classification:0];
  }

  while (1)
  {
    v9 = [(_MKPlaceViewController *)self viewDidAppearBlocks];
    v10 = [v9 count];

    if (!v10)
    {
      break;
    }

    v6 = [(_MKPlaceViewController *)self viewDidAppearBlocks];
    v7 = [v6 firstObject];

    v7[2](v7);
    v8 = [(_MKPlaceViewController *)self viewDidAppearBlocks];
    [v8 removeObjectAtIndex:0];
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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _MKPlaceViewController;
  [(MKStackingViewController *)&v5 viewWillAppear:a3];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, PlaceCardLayoutChanged, @"com.apple.Maps.PlaceCardLayoutChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)dealloc
{
  v3 = +[MKMapItemMetadataRequester sharedInstance];
  v4 = [(_MKPlaceItem *)self->_placeItem mapItem];
  [v3 cancelRequestsForMapItem:v4];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

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

- (_MKPlaceViewController)initWithContact:(id)a3 mapItem:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(_MKPlaceViewController *)self init];
  v11 = v10;
  if (v10)
  {
    v10->_options = a5;
    [(_MKPlaceViewController *)v10 setMapItem:v9 contact:v8 updateOriginalContact:1];
  }

  return v11;
}

- (_MKPlaceViewController)initWithMapItem:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_MKPlaceViewController *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_options = a4;
    [(_MKPlaceViewController *)v7 setMapItem:v6];
  }

  return v8;
}

- (_MKPlaceViewController)initWithPlaceItem:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_MKPlaceViewController *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_options = a4;
    [(_MKPlaceViewController *)v7 setPlaceItem:v6];
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

- (void)setUseCompactPhotosView:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFDFFLL | v3];
}

- (void)setShowAddToPersonalGuides:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFF7FFFLL | v3];
}

- (void)setAllowTransitLineSelection:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFEFFLL | v3];
}

- (void)setShowShareActionsButton:(BOOL)a3
{
  v3 = 128;
  if (a3)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFF7FLL | v3];
}

- (void)setShowSimulateLocation:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFDFFFLL | v3];
}

- (void)setDisableReportAProblem:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFBFLL | v3];
}

- (void)setShowReportAProblem:(BOOL)a3
{
  v3 = 64;
  if (a3)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFBFLL | v3];
}

- (void)setShowNearbyApps:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFDFLL | v3];
}

- (void)setShowInlineMapInHeader:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFFDLL | v3];
}

- (void)setShowEditButton:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFEFLL | v3];
}

- (void)setHideDirectionsButtons:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFF7 | v3];
}

- (void)setShowTitleBar:(BOOL)a3
{
  v3 = 4;
  if (a3)
  {
    v3 = 0;
  }

  [(_MKPlaceViewController *)self setOptions:self->_options & 0xFFFFFFFFFFFFFFFBLL | v3];
}

@end