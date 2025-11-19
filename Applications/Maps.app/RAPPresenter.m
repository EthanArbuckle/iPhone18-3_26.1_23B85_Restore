@interface RAPPresenter
- (BOOL)_isMACPlaceCardViewController:(id)a3 tryingToPresent:(id)a4;
- (BOOL)presentOfflineAlertIfNecessaryWithCompletion:(id)a3;
- (RAPPresenter)initWithSceneDelegate:(id)a3;
- (id)submissionManager;
- (void)_createInitialNavigationRapStateWithCompletion:(id)a3;
- (void)_dismissReportComposerWithSender:(id)a3 completion:(id)a4;
- (void)_dismissSender:(id)a3 withGesture:(BOOL)a4 completion:(id)a5;
- (void)_presentAddAPlaceFromEntryPoint:(int)a3 withEditingBlock:(id)a4 completion:(id)a5;
- (void)_presentAutocompleteViewController:(id)a3 forItemKind:(int64_t)a4;
- (void)_presentChooseAPlaceWithAppState:(id)a3 entryPoint:(int)a4;
- (void)_presentLightweightFeedbackAcknowledgmentScreen;
- (void)_presentPlacecardImageryCommentViewControllerWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (void)_presentReportAProblemAndPrefetchShortcutsWithEditingContext:(id)a3 displayIncidentReports:(BOOL)a4 completion:(id)a5;
- (void)_presentReportComposerWithAppState:(id)a3 completion:(id)a4;
- (void)_presentReportComposerWithCompletion:(id)a3;
- (void)_presentWebBundleViewControllerWithReport:(id)a3 completion:(id)a4;
- (void)_presentWebBundleWithReport:(id)a3 completion:(id)a4;
- (void)_submitLightweightReport:(id)a3 completion:(id)a4;
- (void)presentAddAPlaceFromPlacecardWithEditingContext:(id)a3 overriddenUserInterfaceStyle:(int64_t)a4 shouldShowDetailedFlow:(BOOL)a5 sourceView:(id)a6 entryPoint:(int)a7 completion:(id)a8;
- (void)presentAddAPlaceViewControllerFromEntryPoint:(int)a3 withAppState:(id)a4 completion:(id)a5;
- (void)presentAddMissingDataOfType:(int64_t)a3 fromPlacecardWithEditingContext:(id)a4;
- (void)presentAddToMapsFromSearchEntryPoint:(int)a3 result:(id)a4 completion:(id)a5;
- (void)presentAddToMapsFromSearchEntryPoint:(int)a3 result:(id)a4 withAppState:(id)a5 completion:(id)a6;
- (void)presentCuratedCollectionRAPWithContext:(id)a3 sourceView:(id)a4 completion:(id)a5;
- (void)presentCurrentRouteIssueWithReport:(id)a3 fromEntryPoint:(int)a4 usingContaineePresentation:(BOOL)a5;
- (void)presentEditPlaceDetailsOfType:(int64_t)a3 fromPlacecardWithEditingContext:(id)a4;
- (void)presentLookAroundRAPWithContext:(id)a3 completion:(id)a4;
- (void)presentPlaceEnrichmentRAPWithTarget:(int)a3 fromPlacecardWithEditingContext:(id)a4 completion:(id)a5;
- (void)presentPlaceEnrichmentRAPWithTarget:(int)a3 withAppState:(id)a4 completion:(id)a5;
- (void)presentPlacecardImageryRAPWithContext:(id)a3 layoutManager:(id)a4 popoverPresentationBlock:(id)a5 completion:(id)a6;
- (void)presentPlacecardImageryRAPWithContext:(id)a3 selectedIssueItem:(id)a4 completion:(id)a5;
- (void)presentRAPWebBundleQuestionType:(int64_t)a3 mapItem:(id)a4 fromEntryPoint:(int)a5 withCompletion:(id)a6;
- (void)presentRAPWebBundleWithMapItem:(id)a3 fromEntryPoint:(int)a4 completion:(id)a5;
- (void)presentReportAProblemByEditingContext:(id)a3 completion:(id)a4;
- (void)presentReportAProblemForRouteWithAppState:(id)a3;
- (void)presentReportAProblemFromPlaceCardViewController:(id)a3 editingContext:(id)a4 overriddenUserInterfaceStyle:(int64_t)a5 sourceView:(id)a6 entryPoint:(int)a7 completion:(id)a8;
- (void)presentReportAProblemFromTransitLineCardWithEditingContext:(id)a3 completion:(id)a4;
- (void)presentRouteListReportFromEntryPoint:(int)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4;
- (void)rapSearchAutocompleteViewController:(id)a3 finishedPickingAutocompleteResult:(id)a4 isAutocompleteResult:(BOOL)a5;
- (void)representReportAProblemIfCurrentlyOngoingAnimated:(BOOL)a3;
@end

@implementation RAPPresenter

- (void)presentPlaceEnrichmentRAPWithTarget:(int)a3 withAppState:(id)a4 completion:(id)a5
{
  v6 = *&a3;
  v17 = a4;
  v8 = a5;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v8])
  {
    v9 = [RAPReport alloc];
    v10 = [(RAPPresenter *)self submissionManager];
    v11 = [(RAPReport *)v9 initWithContext:v17 submitter:v10];

    v12 = [(RAPReport *)v11 combinedUserPath];
    [v12 addNativePath:v6];

    v13 = [RAPWebBundleQuestion alloc];
    v14 = [(RAPReport *)v11 _context];
    v15 = [v14 reportedPlace];
    v16 = [(RAPWebBundleQuestion *)v13 initWithReport:v11 place:v15 poiCorrectionType:2 questionType:29];

    [(RAPReport *)v11 setInitialQuestion:v16];
    [(RAPPresenter *)self _presentWebBundleWithReport:v11 completion:v8];
  }
}

- (void)presentPlaceEnrichmentRAPWithTarget:(int)a3 fromPlacecardWithEditingContext:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v9])
  {
    objc_initWeak(&location, self);
    v10 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v12 = [(RAPAppStateCreator *)v10 initWithSceneDelegate:WeakRetained];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100FDBA00;
    v13[3] = &unk_1016609C0;
    v14 = v8;
    objc_copyWeak(&v16, &location);
    v17 = a3;
    v15 = v9;
    [(RAPAppStateCreator *)v12 createReportAProblemAppStateWithCompletion:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)presentAddToMapsFromSearchEntryPoint:(int)a3 result:(id)a4 withAppState:(id)a5 completion:(id)a6
{
  v8 = *&a3;
  v17 = a4;
  v10 = a5;
  v11 = a6;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v11])
  {
    v12 = [RAPReport alloc];
    v13 = [(RAPPresenter *)self submissionManager];
    v14 = [(RAPReport *)v12 initWithContext:v10 submitter:v13];

    v15 = [(RAPReport *)v14 combinedUserPath];
    [v15 addNativePath:v8];

    v16 = [[RAPWebBundleQuestion alloc] initWithReport:v14 place:v17 questionType:28];
    [(RAPReport *)v14 setInitialQuestion:v16];
    [(RAPPresenter *)self _presentWebBundleWithReport:v14 completion:v11];
  }
}

- (void)presentAddToMapsFromSearchEntryPoint:(int)a3 result:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v9])
  {
    objc_initWeak(&location, self);
    v10 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v12 = [(RAPAppStateCreator *)v10 initWithSceneDelegate:WeakRetained];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100FDBEA8;
    v13[3] = &unk_101660A10;
    objc_copyWeak(&v16, &location);
    v17 = a3;
    v14 = v8;
    v15 = v9;
    [(RAPAppStateCreator *)v12 createReportAProblemAppStateWithCompletion:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_isMACPlaceCardViewController:(id)a3 tryingToPresent:(id)a4
{
  v4 = a3;
  if (sub_10000FA08(v4) == 5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 presentingViewController];

    if (!v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
      v10 = [WeakRetained topMostPresentedViewController];

      if (v10 && (([v10 isBeingDismissed] & 1) != 0 || objc_msgSend(v10, "isBeingPresented")))
      {
        v11 = dispatch_time(0, 100000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100FDC314;
        block[3] = &unk_101660CE8;
        block[4] = self;
        v20 = v7;
        v21 = v4;
        dispatch_after(v11, &_dispatch_main_q, block);
        v12 = v20;
      }

      else
      {
        if (![(RAPPresenter *)self _isMACPlaceCardViewController:v10 tryingToPresent:v7])
        {
          v15 = objc_loadWeakRetained(&self->_sceneDelegate);
          [v15 presentViewController:v7 animated:v4];

          goto LABEL_11;
        }

        v13 = v10;
        v14 = [v13 placeCardDelegate];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100FDC324;
        v16[3] = &unk_101660CE8;
        v16[4] = self;
        v17 = v7;
        v18 = v4;
        [v14 placeCardViewController:v13 dismissAnimated:1 completion:v16];

        v12 = v17;
      }

LABEL_11:
    }
  }
}

- (id)submissionManager
{
  v2 = +[UIApplication sharedMapsDelegate];
  v3 = [v2 submissionManager];

  return v3;
}

- (void)presentCuratedCollectionRAPWithContext:(id)a3 sourceView:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v10])
  {
    v11 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v13 = [(RAPAppStateCreator *)v11 initWithSceneDelegate:WeakRetained];

    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100FDC530;
    v14[3] = &unk_101660CC0;
    objc_copyWeak(&v17, &location);
    v16 = v10;
    v15 = v9;
    [(RAPAppStateCreator *)v13 createCuratedCollectionReportAProblemAppStateWithContext:v8 completion:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)presentAddAPlaceViewControllerFromEntryPoint:(int)a3 withAppState:(id)a4 completion:(id)a5
{
  v6 = *&a3;
  v25 = a4;
  v8 = a5;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v8])
  {
    v9 = [RAPReport alloc];
    v10 = [(RAPPresenter *)self submissionManager];
    v11 = [(RAPReport *)v9 initWithContext:v25 submitter:v10];

    v12 = [(RAPReport *)v11 combinedUserPath];
    [v12 addNativePath:v6];

    BOOL = GEOConfigGetBOOL();
    v14 = [v25 isSprMap];
    v15 = 5;
    if (v14)
    {
      v15 = 6;
    }

    v16 = 3;
    if (v14)
    {
      v16 = 4;
    }

    if (BOOL)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    v18 = [(RAPReport *)v11 _context];
    v19 = [v18 reportedPlace];
    v20 = [v19 source];

    if (v20 == 1)
    {
      if ([v25 isSprMap])
      {
        v17 = 8;
      }

      else
      {
        v17 = 7;
      }
    }

    v21 = [RAPWebBundleQuestion alloc];
    v22 = [(RAPReport *)v11 _context];
    v23 = [v22 reportedPlace];
    v24 = [(RAPWebBundleQuestion *)v21 initWithReport:v11 place:v23 questionType:v17];

    [(RAPReport *)v11 setInitialQuestion:v24];
    [(RAPPresenter *)self _presentWebBundleWithReport:v11 completion:v8];
  }
}

- (void)_submitLightweightReport:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100FDD0C4;
  v8[3] = &unk_101660C48;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [RAPPrivacy performPrivacyCheckWithAppearance:1 completion:v8];
}

- (void)_presentPlacecardImageryCommentViewControllerWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [RAPReportComposerViewController alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100FDD310;
  v15[3] = &unk_101660B78;
  objc_copyWeak(&v17, &location);
  v12 = v10;
  v16 = v12;
  v13 = [(RAPReportComposerViewController *)v11 initWithReport:v8 commentQuestion:v9 completion:v15];
  reportComposer = self->_reportComposer;
  self->_reportComposer = v13;

  [(RAPPresenter *)self _presentReportComposerWithCompletion:v12];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)presentPlacecardImageryRAPWithContext:(id)a3 layoutManager:(id)a4 popoverPresentationBlock:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v13])
  {
    v14 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v16 = [(RAPAppStateCreator *)v14 initWithSceneDelegate:WeakRetained];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100FDD4C0;
    v17[3] = &unk_101660B50;
    v17[4] = self;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    [(RAPAppStateCreator *)v16 createPlacecardImageryReportAProblemAppStateWithContext:v10 completion:v17];
  }
}

- (void)presentPlacecardImageryRAPWithContext:(id)a3 selectedIssueItem:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v10])
  {
    v11 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v13 = [(RAPAppStateCreator *)v11 initWithSceneDelegate:WeakRetained];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100FDD8D8;
    v14[3] = &unk_101660B00;
    v14[4] = self;
    v15 = v9;
    v16 = v10;
    [(RAPAppStateCreator *)v13 createPlacecardImageryReportAProblemAppStateWithContext:v8 completion:v14];
  }
}

- (void)presentLookAroundRAPWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v7])
  {
    v8 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v10 = [(RAPAppStateCreator *)v8 initWithSceneDelegate:WeakRetained];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100FDDAC0;
    v11[3] = &unk_101660A60;
    v11[4] = self;
    v12 = v7;
    [(RAPAppStateCreator *)v10 createLookAroundReportAProblemAppStateWithLookAroundContext:v6 completion:v11];
  }
}

- (void)presentReportAProblemForRouteWithAppState:(id)a3
{
  v4 = a3;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:0])
  {
    v5 = [RAPReport alloc];
    v6 = [(RAPPresenter *)self submissionManager];
    v7 = [(RAPReport *)v5 initWithContext:v4 submitter:v6];

    v8 = [(RAPReport *)v7 combinedUserPath];
    [v8 addNativePath:37];

    if (v7)
    {
      v9 = [(RAPReport *)v7 _context];
      v10 = [v9 directionsHistory];
      v11 = [v10 firstObject];
      v12 = [v11 recording];

      if (v12)
      {
        v13 = [[RAPWebBundleQuestion alloc] initWithReport:v7 directionsRecording:v12];
        [(RAPReport *)v7 setInitialQuestion:v13];
        v14 = [[RAPDirectionsReportContaineeViewController alloc] initWithReport:v7 directionsReportContext:0];
        [(RAPPresenter *)self presentViewController:v14 animated:1];
      }

      else
      {
        v15 = sub_100798874();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Can't present after nav flow because the latest route doesn't have a route recording.", v16, 2u);
        }

        v12 = 0;
      }
    }

    else
    {
      v12 = sub_100798874();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to create report. Will abort RAP.", buf, 2u);
      }
    }
  }
}

- (void)presentCurrentRouteIssueWithReport:(id)a3 fromEntryPoint:(int)a4 usingContaineePresentation:(BOOL)a5
{
  v6 = *&a4;
  v8 = a3;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:0])
  {
    if (self->_isProcessingPresentation)
    {
      v9 = sub_100798874();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_583:

        goto LABEL_584;
      }

      if (v6 <= 1000)
      {
        v10 = @"UI_TARGET_UNKNOWN";
        switch(v6)
        {
          case 0:
            goto LABEL_582;
          case 1:
            v10 = @"UI_TARGET_POI";
            break;
          case 2:
            v10 = @"UI_TARGET_SEARCH_RESULT_LIST";
            break;
          case 3:
            v10 = @"UI_TARGET_POPULAR_NEARBY_LIST";
            break;
          case 4:
            v10 = @"UI_TARGET_CALLOUT";
            break;
          case 5:
            v10 = @"UI_TARGET_SEARCH_PIN";
            break;
          case 6:
            v10 = @"UI_TARGET_DROPPED_PIN";
            break;
          case 7:
            v10 = @"UI_TARGET_TRANSIT_LINE";
            break;
          case 8:
            v10 = @"SEARCH_TRAY";
            break;
          case 9:
            v10 = @"SEARCH_TRAY_BROWSE";
            break;
          case 10:
            v10 = @"SEARCH_TRAY_POPULAR_NEARBY";
            break;
          case 11:
            v10 = @"SEARCH_TRAY_AC";
            break;
          case 12:
            v10 = @"SEARCH_TRAY_AC_INTERMEDIATE";
            break;
          case 13:
            v10 = @"SEARCH_TRAY_NO_QUERY";
            break;
          case 14:
            v10 = @"AR_WALKING_LEGAL_TRAY";
            break;
          case 15:
            v10 = @"RAISE_TO_START_AR_TRAY";
            break;
          case 16:
            v10 = @"EVENTS_ADVISORY_DETAILS_PAGE";
            break;
          case 17:
            v10 = @"INCIDENT_REPORT_TRAY_CARPLAY";
            break;
          case 18:
            v10 = @"HIGHLIGHTED_AREA";
            break;
          case 19:
            v10 = @"CURATED_COLLECTIONS_HOME";
            break;
          case 20:
            v10 = @"TRAVEL_PREFERENCES_TRAY";
            break;
          case 21:
            v10 = @"RESULT_TRAY_SEARCH";
            break;
          case 22:
            v10 = @"SINGLE_CARD_FILTER";
            break;
          case 23:
            v10 = @"FULL_CARD_FILTER";
            break;
          case 24:
            v10 = @"ACCOUNT_PRIVACY_TRAY";
            break;
          case 25:
            v10 = @"APPLE_RATINGS_HISTORY_TRAY";
            break;
          case 26:
            v10 = @"CURATED_COLLECTIONS_HOME_FILTERED";
            break;
          case 27:
            v10 = @"CITY_MENU";
            break;
          case 28:
            v10 = @"CURATED_COLLECTIONS_HOME_CONDENSED";
            break;
          case 29:
            v10 = @"ACCOUNT_TRAY";
            break;
          case 30:
            v10 = @"QUICK_ACTION_TRAY";
            break;
          case 31:
            v10 = @"SUBMIT_TRIP_FEEDBACK";
            break;
          case 32:
            v10 = @"RAP_PLACE_ISSUE_DETAILS";
            break;
          case 33:
            v10 = @"RAP_GUIDES_DETAILS";
            break;
          case 34:
            v10 = @"RAP_BAD_DIRECTIONS_DETAILS";
            break;
          case 35:
            v10 = @"RAP_ADD_MAP_DETAILS";
            break;
          case 36:
            v10 = @"WATCH_COMPLICATION";
            break;
          case 37:
            v10 = @"RAP_NAV_MENU";
            break;
          case 38:
            v10 = @"NOTIFICATION_ALIGHT_BANNER_TRANSIT";
            break;
          case 39:
            v10 = @"RAP_REPORT_MENU";
            break;
          case 40:
            v10 = @"RAP_CURATED_COLLECTION_MENU";
            break;
          case 41:
            v10 = @"RAP_REPORT_CARD_DETAILS";
            break;
          case 42:
            v10 = @"NOTIFICATION_NO_LOCATION_TRANSIT";
            break;
          case 43:
            v10 = @"RAP_STREET_ISSUE_DETAILS";
            break;
          case 44:
            v10 = @"NEARBY_TRANSIT_CARD";
            break;
          case 45:
            v10 = @"WATCH_NAV_MENU";
            break;
          case 46:
            v10 = @"GENERIC_ADVISORY_PAGE";
            break;
          case 47:
            v10 = @"USER_PROFILE_TRAY";
            break;
          case 48:
            v10 = @"MEDIA_APP_MENU";
            break;
          case 49:
            v10 = @"TEMPLATE_PLACE_TRAY";
            break;
          case 50:
            v10 = @"NOTIFICATION_CONSENT_REPROMPT_RAP";
            break;
          case 51:
            v10 = @"ALLOW_NOTIFICATION_DIALOG";
            break;
          case 52:
            v10 = @"NOTIFICATION_CONSENT_REPROMPT_DRIVING";
            break;
          case 53:
            v10 = @"NOTIFICATION_CONSENT_REPROMPT_ARP";
            break;
          case 54:
            v10 = @"NOTIFICATION_CONSENT_REPROMPT_TIME_ELAPSED";
            break;
          case 55:
            v10 = @"NOTIFICATION_CONSENT_PROMPT";
            break;
          case 56:
            v10 = @"QUICK_ACTION_TRAY_VENDORS_MENU";
            break;
          case 57:
            v10 = @"PLACECARD_TRAY_VENDORS_MENU";
            break;
          case 58:
            v10 = @"RESULTS_TRAY_SEARCH_ROUTE_PLANNING";
            break;
          case 59:
            v10 = @"SEARCH_ALONG_ROUTE_TRAY";
            break;
          case 60:
            v10 = @"MAP_RESULTS_SEARCH_ROUTE_PLANNING";
            break;
          case 61:
            v10 = @"PLACECARD_SHOWCASE_MENU";
            break;
          case 62:
            v10 = @"RAP_INLINE_ADD_DETAILS";
            break;
          case 63:
            v10 = @"RAP_EDIT_MENU_DETAILS";
            break;
          case 64:
            v10 = @"RAP_SUBMISSION_PROMPT";
            break;
          case 65:
            v10 = @"RAP_PLACECARD_EDIT_MENU";
            break;
          case 66:
            v10 = @"ARP_SUBMISSION_CONFIRMATION_PAGE";
            break;
          case 67:
            v10 = @"INCIDENT_REPORT_MENU";
            break;
          case 68:
            v10 = @"RAP_SELECT_BAD_ROUTES_STEPS";
            break;
          case 69:
            v10 = @"RAP_SELECT_BAD_ROUTES";
            break;
          case 70:
            v10 = @"SIRI_SUGGESTION_RESUME_ROUTE";
            break;
          case 71:
            v10 = @"SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
            break;
          case 72:
            v10 = @"SPOTLIGHT_BUSINESS_ENTITY_LIST";
            break;
          case 73:
            v10 = @"SPOTLIGHT_BUSINESS_ENTITY";
            break;
          case 74:
            v10 = @"NOTIFICATION_ARP";
            break;
          case 75:
            v10 = @"IMPROVE_LOCATION_ACCURACY_PROMPT";
            break;
          case 76:
            v10 = @"YOUR_PHOTOS_ALBUM";
            break;
          case 77:
            v10 = @"ARP_PHOTO_CREDIT";
            break;
          case 78:
            v10 = @"RAP_OUTREACH_REVIEWED_REPORT";
            break;
          case 79:
            v10 = @"RAP_REPORT_MENU_MORE";
            break;
          case 80:
            v10 = @"WATCH_MAPS_SETTINGS";
            break;
          case 81:
            v10 = @"OFFLINE_FEATURE_PROMPT";
            break;
          case 82:
            v10 = @"EXPIRED_MAPS_DETAILS";
            break;
          case 83:
            v10 = @"MAPS_VIEW";
            break;
          case 84:
            v10 = @"NOTIFICATION_OFFLINE";
            break;
          case 85:
            v10 = @"EXPIRED_MAPS_MANAGEMENT";
            break;
          case 86:
            v10 = @"OFFLINE_NEW_MAPS_MANAGEMENT";
            break;
          case 87:
            v10 = @"EDIT_EXPIRED_MAPS_MANAGEMENT";
            break;
          case 88:
            v10 = @"OFFLINE_MAPS_MANAGEMENT";
            break;
          case 89:
            v10 = @"REGION_SELECTOR";
            break;
          case 90:
            v10 = @"OFFLINE_SUGGESTED_MAPS_MANAGEMENT";
            break;
          case 91:
            v10 = @"FIND_MY_ETA_SHARING_TRAY";
            break;
          case 92:
            v10 = @"WATCH_PLACE";
            break;
          case 93:
            v10 = @"WATCH_ROUTE_PLANNING_TRANSIT_CAROUSEL";
            break;
          case 94:
            v10 = @"WATCH_ROUTE_PLANNING_MAP";
            break;
          case 95:
            v10 = @"WATCH_NAV_WALKING_CONTROLS";
            break;
          case 96:
            v10 = @"WATCH_NAV_CYCLING_CONTROLS";
            break;
          case 97:
            v10 = @"WATCH_ROUTE_PLANNING_WALKING_CAROUSEL";
            break;
          case 98:
            v10 = @"WATCH_NAV_TRANSIT_CONTROLS";
            break;
          case 99:
            v10 = @"WATCH_SEARCH_RESULTS_CAROUSEL";
            break;
          case 100:
            v10 = @"WATCH_NAV_DRIVING_CONTROLS";
            break;
          case 101:
            v10 = @"RESULTS_TRAY_SEARCH";
            break;
          case 102:
            v10 = @"RESULTS_TRAY_BROWSE";
            break;
          case 103:
            v10 = @"RESULTS_TRAY_FAVORITES";
            break;
          case 104:
            v10 = @"RESULTS_TRAY_SEARCH_ALONG_ROUTE";
            break;
          case 105:
            v10 = @"RESULTS_TRAY_CLUSTER";
            break;
          case 106:
            v10 = @"RESULTS_TRAY_VENUE_BROWSE";
            break;
          case 107:
            v10 = @"WATCH_MAP_RESULTS";
            break;
          case 108:
            v10 = @"WATCH_NAV_WALKING_ELEVATION_VIEW";
            break;
          case 109:
            v10 = @"WATCH_PLACES";
            break;
          case 110:
            v10 = @"WATCH_NAV_CYCLING_ELEVATION_VIEW";
            break;
          case 111:
            v10 = @"WATCH_ROUTE_PLANNING_CYCLING_CAROUSEL";
            break;
          case 112:
            v10 = @"DOWNLOADED_MAPS_DETAILS";
            break;
          case 113:
            v10 = @"WATCH_ROUTE_PLANNING_DRIVING_CAROUSEL";
            break;
          case 114:
            v10 = @"WATCH_NAV_TRANSIT_OVERVIEW_MAP";
            break;
          case 115:
            v10 = @"WATCH_NAV_WALKING_OVERVIEW_MAP";
            break;
          case 116:
            v10 = @"WATCH_NAV_CYCLING_OVERVIEW_MAP";
            break;
          case 117:
            v10 = @"WATCH_ROUTE_OPTIONS";
            break;
          case 118:
            v10 = @"WATCH_NAV_DRIVING_OVERVIEW_MAP";
            break;
          case 119:
            v10 = @"WATCH_MORE_GUIDES";
            break;
          case 120:
            v10 = @"WATCH_RECENTLY_VIEWED";
            break;
          case 121:
            v10 = @"EV_SUCCESS_TRAY";
            break;
          case 122:
            v10 = @"PREFERRED_NETWORK_SELECTION_TRAY";
            break;
          case 123:
            v10 = @"PREFERRED_NETWORK_TRAY";
            break;
          case 124:
            v10 = @"WALKING_TRANSITION_SUGGESTION_TRAY";
            break;
          case 125:
            v10 = @"FINDMY_TRANSITION_SUGGESTION_TRAY";
            break;
          case 126:
            v10 = @"CARPLAY_FIND_MY_ETA_SHARING_TRAY";
            break;
          case 127:
            v10 = @"AC_KEYBOARD_TRAY";
            break;
          case 128:
            v10 = @"MORE_RELATED_TRAILS";
            break;
          case 129:
            v10 = @"MORE_RELATED_TRAILHEADS";
            break;
          case 130:
            v10 = @"ROUTING_TRAY_CUSTOM_ROUTE";
            break;
          case 131:
            v10 = @"CUSTOM_ROUTE_CREATION_TRAY";
            break;
          case 132:
            v10 = @"ROUTING_TRAY_CURATED_HIKE";
            break;
          case 133:
            v10 = @"MORE_CURATED_HIKES";
            break;
          case 134:
            v10 = @"CUSTOM_ROUTE_ONBOARDING";
            break;
          case 135:
            v10 = @"LIBRARY_ROUTES";
            break;
          case 136:
            v10 = @"HIKING_TRANSITION_SUGGESTION_TRAY";
            break;
          case 137:
            v10 = @"MY_LIBRARY";
            break;
          case 138:
            v10 = @"EDIT_NOTE_TRAY";
            break;
          case 139:
            v10 = @"CREATE_NOTE_TRAY";
            break;
          case 140:
            v10 = @"LIBRARY_PLACES";
            break;
          case 141:
            v10 = @"WATCH_ACCOUNT";
            break;
          case 142:
            v10 = @"WATCH_DOWNLOADED_MAPS";
            break;
          case 143:
            v10 = @"VISUAL_INTELLIGENCE_DETECTION_LIST";
            break;
          case 144:
            v10 = @"VISUAL_INTELLIGENCE_DETECTION";
            break;
          case 145:
            v10 = @"VISUAL_INTELLIGENCE_SNIPPET";
            break;
          case 146:
            v10 = @"FAMILIAR_ROUTE_NOTIFICATION";
            break;
          case 147:
            v10 = @"LIBRARY_VISITED";
            break;
          case 148:
            v10 = @"VISITED_PLACES_ONBOARDING";
            break;
          case 149:
            v10 = @"NOTIFICATION_VISITED_PLACES";
            break;
          case 150:
            v10 = @"LOCATION_CORRECTION_TRAY";
            break;
          case 151:
            v10 = @"MAPS_WIDGET_VISITED_PLACE";
            break;
          case 152:
            v10 = @"REMOVE_VISIT_TRAY";
            break;
          case 153:
            v10 = @"NEARBY_SUGGESTION_TRAY";
            break;
          case 154:
            v10 = @"FAMILIAR_ROUTES_ONBOARDING";
            break;
          case 155:
            v10 = @"ROUTING_TRAY_CARPLAY";
            break;
          case 156:
          case 157:
          case 158:
          case 159:
          case 160:
          case 161:
          case 162:
          case 163:
          case 164:
          case 165:
          case 166:
          case 167:
          case 168:
          case 169:
          case 170:
          case 171:
          case 172:
          case 173:
          case 174:
          case 175:
          case 176:
          case 177:
          case 178:
          case 179:
          case 180:
          case 181:
          case 182:
          case 183:
          case 184:
          case 185:
          case 186:
          case 187:
          case 188:
          case 189:
          case 190:
          case 191:
          case 192:
          case 193:
          case 194:
          case 195:
          case 196:
          case 197:
          case 198:
          case 199:
          case 200:
          case 205:
          case 206:
          case 207:
          case 208:
          case 209:
          case 210:
          case 211:
          case 212:
          case 213:
          case 214:
          case 215:
          case 216:
          case 217:
          case 218:
          case 219:
          case 220:
          case 221:
          case 222:
          case 223:
          case 224:
          case 225:
          case 226:
          case 227:
          case 228:
          case 229:
          case 230:
          case 231:
          case 232:
          case 233:
          case 234:
          case 235:
          case 236:
          case 237:
          case 238:
          case 239:
          case 240:
          case 241:
          case 242:
          case 243:
          case 244:
          case 245:
          case 246:
          case 247:
          case 248:
          case 249:
          case 269:
          case 270:
          case 271:
          case 272:
          case 273:
          case 274:
          case 275:
          case 276:
          case 277:
          case 278:
          case 279:
          case 280:
          case 281:
          case 282:
          case 283:
          case 284:
          case 285:
          case 286:
          case 287:
          case 288:
          case 289:
          case 290:
          case 291:
          case 292:
          case 293:
          case 294:
          case 295:
          case 296:
          case 297:
          case 298:
          case 299:
          case 300:
          case 307:
          case 308:
          case 309:
          case 310:
          case 311:
          case 312:
          case 313:
          case 314:
          case 315:
          case 316:
          case 317:
          case 318:
          case 319:
          case 320:
          case 321:
          case 322:
          case 323:
          case 324:
          case 325:
          case 326:
          case 327:
          case 328:
          case 329:
          case 330:
          case 331:
          case 332:
          case 333:
          case 334:
          case 335:
          case 336:
          case 337:
          case 338:
          case 339:
          case 340:
          case 341:
          case 342:
          case 343:
          case 344:
          case 345:
          case 346:
          case 347:
          case 348:
          case 349:
          case 350:
          case 351:
          case 352:
          case 353:
          case 354:
          case 355:
          case 356:
          case 357:
          case 358:
          case 359:
          case 360:
          case 361:
          case 362:
          case 363:
          case 364:
          case 365:
          case 366:
          case 367:
          case 368:
          case 369:
          case 370:
          case 371:
          case 372:
          case 373:
          case 374:
          case 375:
          case 376:
          case 377:
          case 378:
          case 379:
          case 380:
          case 381:
          case 382:
          case 383:
          case 384:
          case 385:
          case 386:
          case 387:
          case 388:
          case 389:
          case 390:
          case 391:
          case 392:
          case 393:
          case 394:
          case 395:
          case 396:
          case 397:
          case 398:
          case 399:
          case 400:
          case 405:
          case 406:
          case 407:
          case 408:
          case 409:
          case 410:
          case 411:
          case 412:
          case 413:
          case 414:
          case 415:
          case 416:
          case 417:
          case 418:
          case 419:
          case 420:
          case 421:
          case 422:
          case 423:
          case 424:
          case 425:
          case 426:
          case 427:
          case 428:
          case 429:
          case 430:
          case 431:
          case 432:
          case 433:
          case 434:
          case 435:
          case 436:
          case 437:
          case 438:
          case 439:
          case 440:
          case 441:
          case 442:
          case 443:
          case 444:
          case 445:
          case 446:
          case 447:
          case 448:
          case 449:
          case 450:
          case 451:
          case 452:
          case 453:
          case 454:
          case 455:
          case 456:
          case 457:
          case 458:
          case 459:
          case 460:
          case 461:
          case 462:
          case 463:
          case 464:
          case 465:
          case 466:
          case 467:
          case 468:
          case 469:
          case 470:
          case 471:
          case 472:
          case 473:
          case 474:
          case 475:
          case 476:
          case 477:
          case 478:
          case 479:
          case 480:
          case 481:
          case 482:
          case 483:
          case 484:
          case 485:
          case 486:
          case 487:
          case 488:
          case 489:
          case 490:
          case 491:
          case 492:
          case 493:
          case 494:
          case 495:
          case 496:
          case 497:
          case 498:
          case 499:
          case 500:
          case 512:
          case 513:
          case 514:
          case 515:
          case 516:
          case 517:
          case 518:
          case 519:
          case 520:
          case 521:
          case 522:
          case 523:
          case 524:
          case 525:
          case 526:
          case 527:
          case 528:
          case 529:
          case 530:
          case 531:
          case 532:
          case 533:
          case 534:
          case 535:
          case 536:
          case 537:
          case 538:
          case 539:
          case 540:
          case 541:
          case 542:
          case 543:
          case 544:
          case 545:
          case 546:
          case 547:
          case 548:
          case 549:
          case 550:
          case 551:
          case 552:
          case 553:
          case 554:
          case 555:
          case 556:
          case 557:
          case 558:
          case 559:
          case 560:
          case 561:
          case 562:
          case 563:
          case 564:
          case 565:
          case 566:
          case 567:
          case 568:
          case 569:
          case 570:
          case 571:
          case 572:
          case 573:
          case 574:
          case 575:
          case 576:
          case 577:
          case 578:
          case 579:
          case 580:
          case 581:
          case 582:
          case 583:
          case 584:
          case 585:
          case 586:
          case 587:
          case 588:
          case 589:
          case 590:
          case 591:
          case 592:
          case 593:
          case 594:
          case 595:
          case 596:
          case 597:
          case 598:
          case 599:
          case 600:
          case 700:
          case 744:
          case 745:
          case 746:
          case 747:
          case 748:
          case 749:
          case 750:
          case 751:
          case 752:
          case 753:
          case 754:
          case 755:
          case 756:
          case 757:
          case 758:
          case 759:
          case 760:
          case 761:
          case 762:
          case 763:
          case 764:
          case 765:
          case 766:
          case 767:
          case 768:
          case 769:
          case 770:
          case 771:
          case 772:
          case 773:
          case 774:
          case 775:
          case 776:
          case 777:
          case 778:
          case 779:
          case 780:
          case 781:
          case 782:
          case 783:
          case 784:
          case 785:
          case 786:
          case 787:
          case 788:
          case 789:
          case 790:
          case 791:
          case 792:
          case 793:
          case 794:
          case 795:
          case 796:
          case 797:
          case 798:
          case 799:
          case 800:
            goto LABEL_581;
          case 201:
            v10 = @"PLACECARD_TRAY";
            break;
          case 202:
            v10 = @"WEB_MODULE";
            break;
          case 203:
            v10 = @"ACTION_BAR";
            break;
          case 204:
            v10 = @"ACTION_BAR_VENDORS_MENU";
            break;
          case 250:
            v10 = @"ADD_FAVORITE_TRAY";
            break;
          case 251:
            v10 = @"COLLECTION_LIST";
            break;
          case 252:
            v10 = @"COLLECTION_VIEW";
            break;
          case 253:
            v10 = @"FAVORITE_DETAILS";
            break;
          case 254:
            v10 = @"FAVORITES_TRAY";
            break;
          case 255:
            v10 = @"SHARED_COLLECTION";
            break;
          case 256:
            v10 = @"SHARED_COLLECTION_VIEW";
            break;
          case 257:
            v10 = @"RECENTLY_VIEWED";
            break;
          case 258:
            v10 = @"SHARED_WEB_COLLECTION";
            break;
          case 259:
            v10 = @"CURATED_COLLECTION_VIEW";
            break;
          case 260:
            v10 = @"FEATURED_COLLECTIONS";
            break;
          case 261:
            v10 = @"PUBLISHER_TRAY";
            break;
          case 262:
            v10 = @"SHARED_CURATED_COLLECTION_VIEW";
            break;
          case 263:
            v10 = @"CURATED_COLLECTION_NOTIFICATION";
            break;
          case 264:
            v10 = @"CURATED_COLLECTION_LIST";
            break;
          case 265:
            v10 = @"PUBLISHER_LIST";
            break;
          case 266:
            v10 = @"WATCH_CURATED_COLLECTION_VIEW";
            break;
          case 267:
            v10 = @"SIRI_SUGGESTION_SHARED_ETA_SUBLIST";
            break;
          case 268:
            v10 = @"SIRI_SUGGESTION_SHARED_ETA_CARPLAY_SUBLIST";
            break;
          case 301:
            v10 = @"ROUTING_TRAY_DRIVING";
            break;
          case 302:
            v10 = @"ROUTING_TRAY_WALKING";
            break;
          case 303:
            v10 = @"ROUTING_TRAY_TRANSIT";
            break;
          case 304:
            v10 = @"ROUTING_TRAY_RIDESHARE";
            break;
          case 305:
            v10 = @"ROUTING_TRAY_CYCLING";
            break;
          case 306:
            v10 = @"ROUTING_TRAY_VIRTUAL_GARAGE_VIEW";
            break;
          case 401:
            v10 = @"NAV_TRAY_DRIVING";
            break;
          case 402:
            v10 = @"NAV_TRAY_WALKING";
            break;
          case 403:
            v10 = @"NAV_TRAY_TRANSIT";
            break;
          case 404:
            v10 = @"NAV_TRAY_CYCLING";
            break;
          case 501:
            v10 = @"MAP_PLACECARD";
            break;
          case 502:
            v10 = @"MAP_SEARCH";
            break;
          case 503:
            v10 = @"MAP_RESULTS";
            break;
          case 504:
            v10 = @"MAP_ROUTING";
            break;
          case 505:
            v10 = @"MAP_NAV";
            break;
          case 506:
            v10 = @"MAP_RESULTS_SEARCH_ALONG_ROUTE";
            break;
          case 507:
            v10 = @"MAP_TRAFFIC_INCIDENT";
            break;
          case 508:
            v10 = @"MAP_FULL_SCREEN";
            break;
          case 509:
            v10 = @"MAP_DRIVE";
            break;
          case 510:
            v10 = @"MAP_LAUNCH_AND_GO";
            break;
          case 511:
            v10 = @"MAP_VIEW";
            break;
          case 601:
            v10 = @"MAPS_SETTINGS";
            break;
          case 602:
            v10 = @"MAPS_PREFERENCES";
            break;
          case 603:
            v10 = @"RAP";
            break;
          case 604:
            v10 = @"ROUTING_DRIVING_DETAILS";
            break;
          case 605:
            v10 = @"ROUTING_WALKING_DETAILS";
            break;
          case 606:
            v10 = @"ROUTING_TRANSIT_DETAILS";
            break;
          case 607:
            v10 = @"ROUTING_EDITOR";
            break;
          case 608:
            v10 = @"NAV_DRIVING_DETAILS";
            break;
          case 609:
            v10 = @"NAV_WALKING_DETAILS";
            break;
          case 610:
            v10 = @"NAV_TRANSIT_DETAILS";
            break;
          case 611:
            v10 = @"NAV_AUDIO_SETTINGS";
            break;
          case 612:
            v10 = @"PHOTO_VIEWER_ALL";
            break;
          case 613:
            v10 = @"PHOTO_VIEWER_SINGLE";
            break;
          case 614:
            v10 = @"ROUTE_OPTIONS_TRANSIT";
            break;
          case 615:
            v10 = @"TRAFFIC_INCIDENT_TRAY";
            break;
          case 616:
            v10 = @"NAV_DIRECTIONS_BANNER_DRIVING";
            break;
          case 617:
            v10 = @"NAV_DIRECTIONS_BANNER_WALKING";
            break;
          case 618:
            v10 = @"NAV_DIRECTIONS_BANNER_TRANSIT";
            break;
          case 619:
            v10 = @"REFINE_SEARCH_SUGGESTION_AREA";
            break;
          case 620:
            v10 = @"ADD_PHOTO_SHEET";
            break;
          case 621:
            v10 = @"ADD_PLACE_SHEET";
            break;
          case 622:
            v10 = @"SHARE_SHEET";
            break;
          case 623:
            v10 = @"EDIT_LOCATION_SHEET";
            break;
          case 624:
            v10 = @"ADD_CONTACT_SHEET";
            break;
          case 625:
            v10 = @"EDIT_NAME_SHEET";
            break;
          case 626:
            v10 = @"DRIVING_NAV_SETTINGS";
            break;
          case 627:
            v10 = @"TRANSIT_SETTINGS";
            break;
          case 628:
            v10 = @"TRANSIT_ADVISORY_SHEET";
            break;
          case 629:
            v10 = @"REMOVE_CAR_SHEET";
            break;
          case 630:
            v10 = @"ROUTE_OPTIONS_DRIVING";
            break;
          case 631:
            v10 = @"ROUTE_OPTIONS_DATETIME";
            break;
          case 632:
            v10 = @"TRANSIT_ADVISORY_BANNER";
            break;
          case 633:
            v10 = @"BOOK_TABLE_SELECT_TIME";
            break;
          case 634:
            v10 = @"BOOK_TABLE_MORE_OPTIONS";
            break;
          case 635:
            v10 = @"BOOK_TABLE_READY";
            break;
          case 636:
            v10 = @"BOOK_TABLE_BOOKED";
            break;
          case 637:
            v10 = @"TRANSIT_LINE_CLUSTER_SHEET";
            break;
          case 638:
            v10 = @"TRANSIT_LINE_LIST_SHEET";
            break;
          case 639:
            v10 = @"TRANSIT_BALANCE_BANNER";
            break;
          case 640:
            v10 = @"WEATHER_ICON";
            break;
          case 641:
            v10 = @"HELP_IMPROVE_MAPS_DIALOG";
            break;
          case 642:
            v10 = @"HELP_IMPROVE_COMMUTE_PREDICTION_ACCURACY_DIALOG";
            break;
          case 643:
            v10 = @"COMMUTE_PREDICTION_ACCURACY_DIALOG";
            break;
          case 644:
            v10 = @"FLOOR_PICKER";
            break;
          case 645:
            v10 = @"VENUE_LIST";
            break;
          case 646:
            v10 = @"AR_MODE";
            break;
          case 647:
            v10 = @"ROUTING_TRANSIT_TICKETS_SHEET";
            break;
          case 648:
            v10 = @"LINKED_SERVICE_HOURS";
            break;
          case 649:
            v10 = @"SHARE_ETA_TRAY";
            break;
          case 650:
            v10 = @"ETA_UPDATE_TRAY";
            break;
          case 651:
            v10 = @"SCHEDULECARD_TRAY";
            break;
          case 652:
            v10 = @"AR_NAV";
            break;
          case 653:
            v10 = @"TAP_TRANSIT_ACCESS_POINT";
            break;
          case 654:
            v10 = @"LOCATIONS_INSIDE";
            break;
          case 655:
            v10 = @"SIMILAR_LOCATIONS";
            break;
          case 656:
            v10 = @"LOCATIONS_AT_ADDRESS";
            break;
          case 657:
            v10 = @"NAV_DIRECTIONS_BANNER_CYCLING";
            break;
          case 658:
            v10 = @"ROUTE_OPTIONS_CYCLING";
            break;
          case 659:
            v10 = @"EV_CONNECTION_TRAY";
            break;
          case 660:
            v10 = @"VIRTUAL_GARAGE";
            break;
          case 661:
            v10 = @"VIRTUAL_GARAGE_BANNER";
            break;
          case 662:
            v10 = @"VIRTUAL_GARAGE_VEHICLE_VIEW";
            break;
          case 663:
            v10 = @"ADVISORY_DETAILS_PAGE";
            break;
          case 664:
            v10 = @"APP_CLIP_NOTIFICATION";
            break;
          case 665:
            v10 = @"PHOTO_VIEWER_GALLERY";
            break;
          case 666:
            v10 = @"RECOMMENDATION_CARD";
            break;
          case 667:
            v10 = @"INCIDENT_REPORT_TRAY";
            break;
          case 668:
            v10 = @"MAPS_WIDGET_DISPLAY";
            break;
          case 669:
            v10 = @"VISUAL_LOCATION_FRAMEWORK";
            break;
          case 670:
            v10 = @"APP_CLIP_TRAY";
            break;
          case 671:
            v10 = @"LICENSE_PLATE_SUGGESTION_PAGE";
            break;
          case 672:
            v10 = @"NOTIFICATION_ADD_PLATE";
            break;
          case 673:
            v10 = @"MAPS_RESULTS";
            break;
          case 674:
            v10 = @"MAPS_WIDGET_APP_CONNECTION";
            break;
          case 675:
            v10 = @"MAPS_WIDGET_CURRENT_LOCATION";
            break;
          case 676:
            v10 = @"MAPS_WIDGET_CURRENT_NAV";
            break;
          case 677:
            v10 = @"MAPS_WIDGET_ETA";
            break;
          case 678:
            v10 = @"MAPS_WIDGET_TRANSIT";
            break;
          case 679:
            v10 = @"MAPS_WIDGET_UPC_DESTINATION";
            break;
          case 680:
            v10 = @"WIDGET_CREATION_TRAY";
            break;
          case 681:
            v10 = @"MAPS_WIDGET_HOME";
            break;
          case 682:
            v10 = @"MAPS_WIDGET_PARKED_CAR";
            break;
          case 683:
            v10 = @"MAPS_WIDGET_POI";
            break;
          case 684:
            v10 = @"MAPS_WIDGET_SCHOOL";
            break;
          case 685:
            v10 = @"MAPS_WIDGET_WORK";
            break;
          case 686:
            v10 = @"AIRPORT_NOTIFICATION";
            break;
          case 687:
            v10 = @"MAPS_WIDGET_EMPTY";
            break;
          case 688:
            v10 = @"COARSE_LOCATION_OPTIONS_PROMPT";
            break;
          case 689:
            v10 = @"ALLOW_PRECISE_LOCATION_PROMPT";
            break;
          case 690:
            v10 = @"SHARE_MY_LOCATION";
            break;
          case 691:
            v10 = @"MARK_MY_LOCATION";
            break;
          case 692:
            v10 = @"AIRPORT_NOTIFICATION_WATCH";
            break;
          case 693:
            v10 = @"EDIT_FAVORITE";
            break;
          case 694:
            v10 = @"ROUTING_CYCLING_DETAILS";
            break;
          case 695:
            v10 = @"NAV_CYCLING_DETAILS";
            break;
          case 696:
            v10 = @"MAPS_SUGGESTION_WIDGET";
            break;
          case 697:
            v10 = @"ARP_TIPKIT";
            break;
          case 698:
            v10 = @"ARP_PRIVACY";
            break;
          case 699:
            v10 = @"ROUTE_OPTIONS_WALKING";
            break;
          case 701:
            v10 = @"SAFARI_SEARCH";
            break;
          case 702:
            v10 = @"SPOTLIGHT_SEARCH";
            break;
          case 703:
            v10 = @"SAFARI_MAPS_SEARCH_RESULTS";
            break;
          case 704:
            v10 = @"SPOTLIGHT_MAPS_SEARCH_RESULTS";
            break;
          case 705:
            v10 = @"WIDGET_MAPS_DESTINATIONS";
            break;
          case 706:
            v10 = @"WIDGET_MAPS_TRANSIT";
            break;
          case 707:
            v10 = @"WIDGET_MAPS_NEARBY";
            break;
          case 708:
            v10 = @"NOTIFICATION_FIND_MY_CAR";
            break;
          case 709:
            v10 = @"CONTROL_CENTER";
            break;
          case 710:
            v10 = @"NOTIFICATION_CENTER";
            break;
          case 711:
            v10 = @"NOTIFICATION_DOOM";
            break;
          case 712:
            v10 = @"NOTIFICATION_VENUES";
            break;
          case 713:
            v10 = @"NOTIFICATION_RAP_UPDATE";
            break;
          case 714:
            v10 = @"NOTIFICATION_TRIP_CANCELLED";
            break;
          case 715:
            v10 = @"NOTIFICATION_STOP_SKIPPED";
            break;
          case 716:
            v10 = @"NOTIFICATION_TRIP_DELAYED";
            break;
          case 717:
            v10 = @"NOTIFICATION_RAP";
            break;
          case 718:
            v10 = @"NOTIFICATION_PROXY_AUTH";
            break;
          case 719:
            v10 = @"NOTIFICATION_PUSH_TO_DEVICE";
            break;
          case 720:
            v10 = @"NOTIFICATION_LOW_FUEL";
            break;
          case 721:
            v10 = @"NOTIFICATION_FIND_MY_CAR_RESET";
            break;
          case 722:
            v10 = @"NOTIFICATION_TRAFFIC_CONDITIONS";
            break;
          case 723:
            v10 = @"NOTIFICATION_SHARED_ETA";
            break;
          case 724:
            v10 = @"NOTIFICATION_SHARED_ETA_UPDATE";
            break;
          case 725:
            v10 = @"ANNOUNCEMENT_TYPE_UNKNOWN";
            break;
          case 726:
            v10 = @"ANNOUNCEMENT_TYPE_GENERAL";
            break;
          case 727:
            v10 = @"ANNOUNCEMENT_TYPE_FLYOVER";
            break;
          case 728:
            v10 = @"ANNOUNCEMENT_TYPE_TRANSIT";
            break;
          case 729:
            v10 = @"ANNOUNCEMENT_TYPE_VENUES";
            break;
          case 730:
            v10 = @"ANNOUNCEMENT_TYPE_ENHANCED_DETAIL";
            break;
          case 731:
            v10 = @"ANNOUNCEMENT_TYPE_LANE_GUIDANCE";
            break;
          case 732:
            v10 = @"ANNOUNCEMENT_TYPE_LOOK_AROUND";
            break;
          case 733:
            v10 = @"APP_SHEET";
            break;
          case 734:
            v10 = @"CZ_ADVISORY_DETAILS_PAGE";
            break;
          case 735:
            v10 = @"SHARE_ETA_CONTACT_TRAY";
            break;
          case 736:
            v10 = @"SIRI_SHARE_ETA";
            break;
          case 737:
            v10 = @"SIRI_SUGGESTION_SHARED_ETA";
            break;
          case 738:
            v10 = @"SIRI_SUGGESTION_SHARED_ETA_CARPLAY";
            break;
          case 739:
            v10 = @"INCIDENT_ALERT_TRAY";
            break;
          case 740:
            v10 = @"INCIDENT_REPORT_CONFIRMATION_TRAY";
            break;
          case 741:
            v10 = @"RAP_INCIDENT_REPORT_VIEW";
            break;
          case 742:
            v10 = @"SEARCH_ALONG_ROUTE_CATEGORY_TRAY";
            break;
          case 743:
            v10 = @"TRAFFIC_ADVISORY_SHEET";
            break;
          case 801:
            v10 = @"SIRI_PLUGIN_SNIPPET";
            break;
          case 802:
            v10 = @"SIRI_PLUGIN_COMMAND";
            break;
          case 803:
            v10 = @"SIRI_SEARCH_RESULT_LIST";
            break;
          case 804:
            v10 = @"SIRI_DISAMBIGUATION_LIST";
            break;
          case 805:
            v10 = @"SIRI_PLACE_SNIPPET";
            break;
          default:
            if (v6 != 901)
            {
              goto LABEL_581;
            }

            v10 = @"CHROME";
            break;
        }

        goto LABEL_582;
      }

      if (v6 <= 1400)
      {
        switch(v6)
        {
          case 1001:
            v10 = @"CARPLAY_NAV";
            break;
          case 1002:
            v10 = @"CARPLAY_EXPLORE";
            break;
          case 1003:
            v10 = @"CARPLAY_DESTINATIONS";
            break;
          case 1004:
            v10 = @"CARPLAY_TRAFFIC_INCIDENT";
            break;
          case 1005:
            v10 = @"CARPLAY_CONTROL";
            break;
          case 1006:
            v10 = @"CARPLAY_PROACTIVE";
            break;
          case 1007:
            v10 = @"CARPLAY_ROUTING";
            break;
          case 1008:
            v10 = @"CARPLAY_MORE_ROUTES";
            break;
          case 1009:
            v10 = @"CARPLAY_SEARCH_ALONG_ROUTE";
            break;
          case 1010:
            v10 = @"CARPLAY_SEARCH";
            break;
          case 1011:
            v10 = @"CARPLAY_SEARCH_RESULTS";
            break;
          case 1012:
            v10 = @"CARPLAY_FAVORITES";
            break;
          case 1013:
            v10 = @"CARPLAY_NAV_CONFIRMATION";
            break;
          case 1014:
            v10 = @"CARPLAY_DESTINATION_SHARING";
            break;
          case 1015:
            v10 = @"CARPLAY_NOTIFICATION_BATTERY";
            break;
          case 1016:
            v10 = @"CARPLAY_NOTIFICATION_DOOM";
            break;
          case 1017:
            v10 = @"CARPLAY_NOTIFICATION_FUEL";
            break;
          case 1018:
            v10 = @"CARPLAY_NOTIFICATION_HYBRID";
            break;
          case 1019:
            v10 = @"CARPLAY_SHARE_ETA_TRAY";
            break;
          case 1020:
            v10 = @"CARPLAY_ETA_UPDATE_TRAY";
            break;
          case 1021:
            v10 = @"CARPLAY_ACTION_TRAY";
            break;
          case 1022:
            v10 = @"CARPLAY_PLACECARD";
            break;
          case 1023:
            v10 = @"CARPLAY_KEYBOARD";
            break;
          case 1024:
            v10 = @"CARPLAY_UI_TARGET_UNKNOWN";
            break;
          case 1025:
            v10 = @"CARPLAY_EDIT_STOPS";
            break;
          case 1100:
            v10 = @"RAP_DIRECTIONS_MENU";
            break;
          case 1101:
            v10 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT_LIST";
            break;
          case 1102:
            v10 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT_DETAILS_FORM";
            break;
          case 1103:
            v10 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE_FORM";
            break;
          case 1104:
            v10 = @"RAP_DIRECTIONS_ESTIMATED_TIME_INCORRECT_FORM";
            break;
          case 1105:
            v10 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT_FORM";
            break;
          case 1106:
            v10 = @"RAP_TRANSIT_MENU";
            break;
          case 1107:
            v10 = @"RAP_STATION_MAP";
            break;
          case 1108:
            v10 = @"RAP_STATION_MENU";
            break;
          case 1109:
            v10 = @"RAP_STATION_ENTRANCE_EXIT_INCORRECT_MAP";
            break;
          case 1110:
            v10 = @"RAP_STATION_ENTRANCE_EXIT_INCORRECT_FORM";
            break;
          case 1111:
            v10 = @"RAP_STATION_CLOSED_FORM";
            break;
          case 1112:
            v10 = @"RAP_LINE_MAP";
            break;
          case 1113:
            v10 = @"RAP_LINE_MENU";
            break;
          case 1114:
            v10 = @"RAP_LINE_NAME_FORM";
            break;
          case 1115:
            v10 = @"RAP_LINE_SHAPE_FORM";
            break;
          case 1116:
            v10 = @"RAP_LINE_SCHEDULE_INCORRECT_FORM";
            break;
          case 1117:
            v10 = @"RAP_ADD_PLACE_MENU";
            break;
          case 1118:
            v10 = @"RAP_ADD_POI_MAP";
            break;
          case 1119:
            v10 = @"RAP_CATEGORY_LIST";
            break;
          case 1120:
            v10 = @"RAP_POI_DETAILS_FORM";
            break;
          case 1121:
            v10 = @"RAP_ADD_STREET_MAP";
            break;
          case 1122:
            v10 = @"RAP_STREET_DETAILS_FORM";
            break;
          case 1123:
            v10 = @"RAP_ADD_OTHER_MAP";
            break;
          case 1124:
            v10 = @"RAP_OTHER_DETAILS_FORM";
            break;
          case 1125:
            v10 = @"RAP_CAMERA";
            break;
          case 1126:
            v10 = @"RAP_LABEL_MAP";
            break;
          case 1127:
            v10 = @"RAP_LABEL_DETAILS_FORM";
            break;
          case 1128:
            v10 = @"RAP_SEARCH_MENU";
            break;
          case 1129:
            v10 = @"RAP_SEARCH_UNEXPECTED_RESULT_FORM";
            break;
          case 1130:
            v10 = @"RAP_SEARCH_ADDRESS_INCORRECT_FORM";
            break;
          case 1131:
            v10 = @"RAP_SEARCH_LOCATION_INCORRECT_MAP";
            break;
          case 1132:
            v10 = @"RAP_SEARCH_LOCATION_INCORRECT_DETAILS_FORM";
            break;
          case 1133:
            v10 = @"RAP_SATELLITE_IMAGE_MAP";
            break;
          case 1134:
            v10 = @"RAP_SATELLITE_IMAGE_DETAILS_FORM";
            break;
          case 1135:
            v10 = @"RAP_OTHER_FORM";
            break;
          case 1136:
            v10 = @"RAP_PRIVACY";
            break;
          case 1137:
            v10 = @"RAP_CONFIRMATION";
            break;
          case 1138:
            v10 = @"RAP_POI_MENU";
            break;
          case 1139:
            v10 = @"RAP_SEARCH_AUTOCOMPLETE_MENU";
            break;
          case 1140:
            v10 = @"RAP_ADD_A_PLACE_MAP";
            break;
          case 1141:
            v10 = @"RAP_POI_LOCATION_MAP";
            break;
          case 1142:
            v10 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT_MAP";
            break;
          case 1143:
            v10 = @"RAP_POI_CLOSED_FORM";
            break;
          case 1144:
            v10 = @"RAP_CLAIM_BUSINESS_DIALOG";
            break;
          case 1145:
            v10 = @"RAP_BRAND_MENU";
            break;
          case 1146:
            v10 = @"RAP_BRAND_DETAILS_FORM";
            break;
          case 1147:
            v10 = @"RAP_LOOK_AROUND_IMAGE_QUALITY_FORM";
            break;
          case 1148:
            v10 = @"RAP_LOOK_AROUND_LABELS_STREET_FORM";
            break;
          case 1149:
            v10 = @"RAP_LOOK_AROUND_BLURRING_FORM";
            break;
          case 1150:
            v10 = @"RAP_LOOK_AROUND_REMOVE_HOME_FORM";
            break;
          case 1151:
            v10 = @"RAP_LOOK_AROUND_MENU";
            break;
          case 1152:
            v10 = @"RAP_LOOK_AROUND_LABELS_STORE_FORM";
            break;
          case 1153:
            v10 = @"RAP_LOOK_AROUND_PRIVACY_MENU";
            break;
          case 1154:
            v10 = @"RAP_LIGHTWEIGHT";
            break;
          case 1155:
            v10 = @"RAP_EDIT_PLACE_DETAILS";
            break;
          case 1156:
            v10 = @"RAP_ADD_CATEGORY";
            break;
          case 1157:
            v10 = @"RAP_ADD_HOURS";
            break;
          case 1158:
            v10 = @"RAP_EDIT_LOCATION";
            break;
          case 1159:
            v10 = @"RAP_EDIT_ENTRY_POINT";
            break;
          case 1160:
            v10 = @"RAP_LOOK_AROUND";
            break;
          case 1161:
            v10 = @"RAP_ADD_ENTRY_POINT";
            break;
          case 1201:
            v10 = @"WATCH_MAIN_MENU";
            break;
          case 1202:
            v10 = @"WATCH_MAIN_PRESS_MENU";
            break;
          case 1203:
            v10 = @"WATCH_SEARCH";
            break;
          case 1204:
            v10 = @"WATCH_DICTATION";
            break;
          case 1205:
            v10 = @"WATCH_FAVORITES";
            break;
          case 1206:
            v10 = @"WATCH_SUB_CATEGORY_LIST";
            break;
          case 1207:
            v10 = @"WATCH_SEARCH_RESULTS_LIST";
            break;
          case 1208:
            v10 = @"WATCH_MAP_VIEW";
            break;
          case 1209:
            v10 = @"WATCH_PLACECARD";
            break;
          case 1210:
            v10 = @"WATCH_ROUTE_PLANNING";
            break;
          case 1211:
            v10 = @"WATCH_ROUTE_DETAILS";
            break;
          case 1212:
            v10 = @"WATCH_NAV_TBT";
            break;
          case 1213:
            v10 = @"WATCH_NAV_MAP";
            break;
          case 1214:
            v10 = @"WATCH_NAV_PRESS_MENU";
            break;
          case 1215:
            v10 = @"WATCH_MAP_PRESS_MENU";
            break;
          case 1216:
            v10 = @"WATCH_ROUTING_PRESS_MENU";
            break;
          case 1217:
            v10 = @"WATCH_TRANSIT_MAP_VIEW";
            break;
          case 1218:
            v10 = @"WATCH_SCRIBBLE";
            break;
          case 1219:
            v10 = @"WATCH_COLLECTION_VIEW";
            break;
          case 1220:
            v10 = @"WATCH_ROUTE_PLANNING_WALKING";
            break;
          case 1221:
            v10 = @"WATCH_ROUTE_PLANNING_DRIVING";
            break;
          case 1222:
            v10 = @"WATCH_ROUTE_PLANNING_TRANSIT";
            break;
          case 1223:
            v10 = @"WATCH_PAIRED_DEVICE";
            break;
          case 1224:
            v10 = @"WATCH_NAV_DRIVING_SPLIT";
            break;
          case 1225:
            v10 = @"WATCH_NAV_DRIVING_PLATTER";
            break;
          case 1226:
            v10 = @"WATCH_NAV_DRIVING_MAP";
            break;
          case 1227:
            v10 = @"WATCH_NAV_WALKING_SPLIT";
            break;
          case 1228:
            v10 = @"WATCH_NAV_WALKING_PLATTER";
            break;
          case 1229:
            v10 = @"WATCH_NAV_WALKING_MAP";
            break;
          case 1230:
            v10 = @"WATCH_NAV_TRANSIT_SPLIT";
            break;
          case 1231:
            v10 = @"WATCH_NAV_TRANSIT_PLATTER";
            break;
          case 1232:
            v10 = @"WATCH_NAV_TRANSIT_MAP";
            break;
          case 1233:
            v10 = @"WATCH_ROUTE_INFO";
            break;
          case 1234:
            v10 = @"WATCH_NAV_CYCLING_MAP";
            break;
          case 1235:
            v10 = @"WATCH_NAV_CYCLING_PLATTER";
            break;
          case 1236:
            v10 = @"WATCH_NAV_CYCLING_SPLIT";
            break;
          case 1237:
            v10 = @"WATCH_ROUTE_PLANNING_CYCLING";
            break;
          case 1238:
            v10 = @"WATCH_SEARCH_INPUT";
            break;
          case 1239:
            v10 = @"WATCH_SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
            break;
          case 1240:
            v10 = @"WATCH_SIRI_SUGGESTION_RESUME_ROUTE";
            break;
          case 1301:
            v10 = @"PERSONALIZED_ADDRESS_LIST";
            break;
          case 1302:
            v10 = @"PERSONALIZED_ADDRESS_FORM";
            break;
          case 1303:
            v10 = @"PERSONALIZED_LABEL_FORM";
            break;
          case 1304:
            v10 = @"PERSONALIZED_EDIT_MAP";
            break;
          case 1305:
            v10 = @"PERSONALIZED_CONFIRMATION";
            break;
          case 1306:
            v10 = @"PERSONALIZED_ADDRESS_DELETE_DIALOG";
            break;
          case 1307:
            v10 = @"PERSONALIZED_ADDRESS_INFO";
            break;
          case 1308:
            v10 = @"PERSONALIZED_ADDRESS_SEARCH";
            break;
          case 1309:
            v10 = @"PERSONALIZED_ADDRESS_SEARCH_RESULTS";
            break;
          case 1310:
            v10 = @"FAVORITE_SEARCH";
            break;
          case 1311:
            v10 = @"FAVORITE_LIST";
            break;
          case 1312:
            v10 = @"FAVORITE_INFO";
            break;
          case 1313:
            v10 = @"PERSONALIZED_CONFIRMATION_WITH_PRIVACY";
            break;
          default:
            goto LABEL_581;
        }

        goto LABEL_582;
      }

      if (v6 > 1705)
      {
        if (v6 > 1806)
        {
          if (v6 <= 1899)
          {
            if (v6 <= 1808)
            {
              if (v6 == 1807)
              {
                v10 = @"MAPS_WEB_RELATED_PLACES_LIST";
              }

              else
              {
                v10 = @"MAPS_WEB_COLLECTION_LIST";
              }

              goto LABEL_582;
            }

            if (v6 == 1809)
            {
              v10 = @"MAPS_WEB_DIRECTIONS";
              goto LABEL_582;
            }

            if (v6 == 1810)
            {
              v10 = @"MAPS_WEB_SIDEBAR";
              goto LABEL_582;
            }
          }

          else
          {
            if (v6 <= 1901)
            {
              if (v6 == 1900)
              {
                v10 = @"FIND_MY_AIR_TAG_VIEW";
              }

              else
              {
                v10 = @"FIND_MY_AIR_PODS_VIEW";
              }

              goto LABEL_582;
            }

            switch(v6)
            {
              case 0x76E:
                v10 = @"FIND_MY_ACCESSORY_VIEW";
                goto LABEL_582;
              case 0x76F:
                v10 = @"FIND_MY_DEVICE_VIEW";
                goto LABEL_582;
              case 0x770:
                v10 = @"FIND_MY_PERSON_VIEW";
                goto LABEL_582;
            }
          }
        }

        else
        {
          if (v6 > 1801)
          {
            if (v6 <= 1803)
            {
              if (v6 == 1802)
              {
                v10 = @"MAPS_WEB_SEARCH";
              }

              else
              {
                v10 = @"MAPS_WEB_SEARCH_RESULTS";
              }
            }

            else if (v6 == 1804)
            {
              v10 = @"MAPS_WEB_PUBLISHER";
            }

            else if (v6 == 1805)
            {
              v10 = @"MAPS_WEB_GUIDE";
            }

            else
            {
              v10 = @"MAPS_WEB_GUIDES_HOME";
            }

            goto LABEL_582;
          }

          if (v6 <= 1707)
          {
            if (v6 == 1706)
            {
              v10 = @"LOOK_AROUND_VIEW_PLACECARD";
            }

            else
            {
              v10 = @"LOOK_AROUND_PIP_PLACECARD";
            }

            goto LABEL_582;
          }

          if (v6 == 1708)
          {
            v10 = @"OFFLINE_BROWSE_ONLY_SEARCH_TRAY";
            goto LABEL_582;
          }

          if (v6 == 1801)
          {
            v10 = @"MAPS_WEB_PLACE";
            goto LABEL_582;
          }
        }
      }

      else if (v6 > 1502)
      {
        if (v6 > 1700)
        {
          if (v6 <= 1702)
          {
            if (v6 == 1701)
            {
              v10 = @"LOOK_AROUND_ACTION_SHEET";
            }

            else
            {
              v10 = @"LOOK_AROUND_VIEW";
            }
          }

          else if (v6 == 1703)
          {
            v10 = @"LOOK_AROUND_PLATTER";
          }

          else if (v6 == 1704)
          {
            v10 = @"LOOK_AROUND_PIP_UNAVAILABLE_ZOOM";
          }

          else
          {
            v10 = @"LOOK_AROUND_PIP_UNAVAILABLE_REGION";
          }

          goto LABEL_582;
        }

        if (v6 > 1600)
        {
          if (v6 == 1601)
          {
            v10 = @"MENU_ITEM_DARK_MAP";
            goto LABEL_582;
          }

          if (v6 == 1700)
          {
            v10 = @"LOOK_AROUND_PIP";
            goto LABEL_582;
          }
        }

        else
        {
          if (v6 == 1503)
          {
            v10 = @"PLACECARD_PHONE";
            goto LABEL_582;
          }

          if (v6 == 1504)
          {
            v10 = @"PLACECARD_URL";
            goto LABEL_582;
          }
        }
      }

      else
      {
        if (v6 <= 1404)
        {
          if (v6 > 1402)
          {
            if (v6 == 1403)
            {
              v10 = @"ROUTING_TRAY_RIDESHARE_CONFIRMATION_REQUESTING";
            }

            else
            {
              v10 = @"ROUTING_TRAY_RIDESHARE_CONFIRMATION_CONFIRMED";
            }
          }

          else if (v6 == 1401)
          {
            v10 = @"ROUTING_TRAY_RIDESHARE_RIDE_OPTIONS";
          }

          else
          {
            v10 = @"ROUTING_TRAY_RIDESHARE_DETAILS_PICKING";
          }

          goto LABEL_582;
        }

        if (v6 <= 1406)
        {
          if (v6 == 1405)
          {
            v10 = @"ROUTING_TRAY_RIDESHARE_SURGE_PRICING_DIALOG";
          }

          else
          {
            v10 = @"ROUTING_TRAY_RIDESHARE_FEEDBACK";
          }

          goto LABEL_582;
        }

        switch(v6)
        {
          case 0x57F:
            v10 = @"ROUTING_TRAY_RIDESHARE_ENABLE_ALL";
            goto LABEL_582;
          case 0x5DD:
            v10 = @"PLACECARD_HEADER";
            goto LABEL_582;
          case 0x5DE:
            v10 = @"PLACECARD_ADDRESS";
LABEL_582:
            *buf = 138543362;
            v23 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Ignoring presentation from %{public}@", buf, 0xCu);

            goto LABEL_583;
        }
      }

LABEL_581:
      v10 = [NSString stringWithFormat:@"(unknown: %i)", v6];
      goto LABEL_582;
    }

    self->_isProcessingPresentation = 1;
    v11 = sub_100798874();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Will try to present single route flow.", buf, 2u);
    }

    objc_initWeak(buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100FDFB80;
    v18[3] = &unk_101660AB0;
    objc_copyWeak(&v19, buf);
    v20 = v6;
    v21 = a5;
    v12 = objc_retainBlock(v18);
    if (v8)
    {
      v13 = sub_100798874();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "A report was passed to us so we'll present it without creating a new one.", v17, 2u);
      }

      (v12[2])(v12, v8);
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100FDFCEC;
      v14[3] = &unk_101660AD8;
      objc_copyWeak(&v16, buf);
      v15 = v12;
      [(RAPPresenter *)self _createInitialNavigationRapStateWithCompletion:v14];

      objc_destroyWeak(&v16);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

LABEL_584:
}

- (void)presentRouteListReportFromEntryPoint:(int)a3
{
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:0])
  {
    v5 = sub_100798874();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will try to present route list flow.", buf, 2u);
    }

    objc_initWeak(buf, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100FDFF10;
    v6[3] = &unk_101660A88;
    objc_copyWeak(&v7, buf);
    v8 = a3;
    [(RAPPresenter *)self _createInitialNavigationRapStateWithCompletion:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

- (void)_createInitialNavigationRapStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [RAPAppStateCreator alloc];
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  v7 = [(RAPAppStateCreator *)v5 initWithSceneDelegate:WeakRetained];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100FE011C;
  v9[3] = &unk_101660A60;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(RAPAppStateCreator *)v7 createReportAProblemAppStateWithCompletion:v9];
}

- (void)rapSearchAutocompleteViewController:(id)a3 finishedPickingAutocompleteResult:(id)a4 isAutocompleteResult:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [RAPAppStateCreator alloc];
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  v11 = [(RAPAppStateCreator *)v9 initWithSceneDelegate:WeakRetained];

  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100FE0554;
  v14[3] = &unk_101660A38;
  objc_copyWeak(&v17, &location);
  v12 = v7;
  v15 = v12;
  v13 = v8;
  v16 = v13;
  [(RAPAppStateCreator *)v11 createReportAProblemAppStateWithCompletion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_presentAutocompleteViewController:(id)a3 forItemKind:(int64_t)a4
{
  v5 = a3;
  [v5 setDelegate:self];
  [v5 setModalInPresentation:1];
  v6 = [[UINavigationController alloc] initWithRootViewController:v5];

  [v6 setModalPresentationStyle:2];
  [(RAPPresenter *)self presentViewController:v6 animated:1];
}

- (void)_presentChooseAPlaceWithAppState:(id)a3 entryPoint:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [v6 mapCamera];
  [v7 centerCoordinate];
  v8 = [v6 mapCamera];

  [v8 centerCoordinate];
  GEOCoordinateRegionMakeWithDistance();
  v16 = [[GEOMapRegion alloc] initWithCoordinateRegion:{v9, v10, v11, v12}];
  v13 = [RAPSearchAutocompleteViewController poiAutocompleteViewControllerWithBoundedMapRegion:v16 excludedMUIDs:&__NSArray0__struct];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"[RAP] Choose a Place" value:@"localized string not found" table:0];
  [v13 setTitleText:v15];

  [v13 setEntryPoint:v4];
  [(RAPPresenter *)self _presentAutocompleteViewController:v13 forItemKind:0];
}

- (void)presentRAPWebBundleWithMapItem:(id)a3 fromEntryPoint:(int)a4 completion:(id)a5
{
  v8 = a3;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100FE0A44;
  v20[3] = &unk_101661090;
  v9 = a5;
  v20[4] = self;
  v21 = v9;
  v10 = [(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v20];

  if ((v10 & 1) == 0)
  {
    v11 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v13 = [(RAPAppStateCreator *)v11 initWithSceneDelegate:WeakRetained];

    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100FE0A60;
    v14[3] = &unk_101660A10;
    objc_copyWeak(&v17, &location);
    v15 = v8;
    v18 = a4;
    v16 = v9;
    [(RAPAppStateCreator *)v13 createReportAProblemAppStateWithCompletion:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)presentRAPWebBundleQuestionType:(int64_t)a3 mapItem:(id)a4 fromEntryPoint:(int)a5 withCompletion:(id)a6
{
  v10 = a4;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100FE0D70;
  v22[3] = &unk_101661090;
  v11 = a6;
  v22[4] = self;
  v23 = v11;
  v12 = [(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v22];

  if ((v12 & 1) == 0)
  {
    v13 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v15 = [(RAPAppStateCreator *)v13 initWithSceneDelegate:WeakRetained];

    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100FE0D8C;
    v16[3] = &unk_1016609E8;
    objc_copyWeak(v19, &location);
    v19[1] = a3;
    v20 = a5;
    v17 = v10;
    v18 = v11;
    [(RAPAppStateCreator *)v15 createReportAProblemAppStateWithCompletion:v16];

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }
}

- (void)_presentAddAPlaceFromEntryPoint:(int)a3 withEditingBlock:(id)a4 completion:(id)a5
{
  v8 = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100FE1090;
  v20[3] = &unk_101661760;
  v9 = a5;
  v21 = v9;
  v10 = objc_retainBlock(v20);
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v9])
  {
    objc_initWeak(&location, self);
    v11 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v13 = [(RAPAppStateCreator *)v11 initWithSceneDelegate:WeakRetained];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100FE10A8;
    v14[3] = &unk_1016609C0;
    v15 = v8;
    objc_copyWeak(&v17, &location);
    v18 = a3;
    v16 = v10;
    [(RAPAppStateCreator *)v13 createReportAProblemAppStateWithCompletion:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)representReportAProblemIfCurrentlyOngoingAnimated:(BOOL)a3
{
  v3 = a3;
  [(RAPReportComposerViewController *)self->_reportComposer setModalPresentationStyle:2];
  [(RAPReportComposerViewController *)self->_reportComposer setModalInPresentation:1];
  reportComposer = self->_reportComposer;

  [(RAPPresenter *)self presentViewController:reportComposer animated:v3];
}

- (void)_presentReportComposerWithAppState:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [RAPReport alloc];
  v9 = [(RAPPresenter *)self submissionManager];
  v10 = [(RAPReport *)v8 initWithContext:v7 submitter:v9];

  v11 = [RAPMenuQuestion menuForReport:v10 state:v7 onlyShowIncidents:1];

  [(RAPReport *)v10 setInitialQuestion:v11];
  v12 = [RAPReportComposerViewController alloc];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100FE149C;
  v19 = &unk_101660948;
  v20 = self;
  v21 = v6;
  v13 = v6;
  v14 = [(RAPReportComposerViewController *)v12 initWithReport:v10 categoryQuestion:v11 completion:&v16];
  reportComposer = self->_reportComposer;
  self->_reportComposer = v14;

  [(RAPPresenter *)self _presentReportComposerWithCompletion:v13, v16, v17, v18, v19, v20];
}

- (void)_presentReportAProblemAndPrefetchShortcutsWithEditingContext:(id)a3 displayIncidentReports:(BOOL)a4 completion:(id)a5
{
  v7 = a5;
  if (a4)
  {
    if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v7])
    {
      v8 = [(RAPReportComposerViewController *)self->_reportComposer view];
      v9 = [v8 window];
      [v9 setUserInteractionEnabled:0];

      v10 = [RAPAppStateCreator alloc];
      WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
      v12 = [(RAPAppStateCreator *)v10 initWithSceneDelegate:WeakRetained];

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100FE1608;
      v16[3] = &unk_101660A60;
      v16[4] = self;
      v17 = v7;
      [(RAPAppStateCreator *)v12 createReportAProblemAppStateAndPrefetchShortcutsWithCompletion:v16];
    }
  }

  else
  {
    v13 = +[UIApplication sharedMapsDelegate];
    v14 = [v13 appCoordinator];
    v15 = [v14 baseActionCoordinator];
    [v15 viewControllerShowReports:0];
  }
}

- (void)presentEditPlaceDetailsOfType:(int64_t)a3 fromPlacecardWithEditingContext:(id)a4
{
  v6 = a4;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:0])
  {
    v7 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v9 = [(RAPAppStateCreator *)v7 initWithSceneDelegate:WeakRetained];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100FE1784;
    v10[3] = &unk_101660920;
    v10[4] = self;
    v11 = v6;
    v12 = a3;
    [(RAPAppStateCreator *)v9 createReportAProblemAppStateWithCompletion:v10];
  }
}

- (void)presentAddMissingDataOfType:(int64_t)a3 fromPlacecardWithEditingContext:(id)a4
{
  v6 = a4;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:0])
  {
    v7 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v9 = [(RAPAppStateCreator *)v7 initWithSceneDelegate:WeakRetained];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100FE19E4;
    v10[3] = &unk_101660920;
    v10[4] = self;
    v11 = v6;
    v12 = a3;
    [(RAPAppStateCreator *)v9 createReportAProblemAppStateWithCompletion:v10];
  }
}

- (void)presentReportAProblemByEditingContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v7])
  {
    v8 = [(RAPReportComposerViewController *)self->_reportComposer view];
    v9 = [v8 window];
    [v9 setUserInteractionEnabled:0];

    v10 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v12 = [(RAPAppStateCreator *)v10 initWithSceneDelegate:WeakRetained];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100FE1CA4;
    v13[3] = &unk_1016608F8;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    [(RAPAppStateCreator *)v12 createReportAProblemAppStateWithCompletion:v13];
  }
}

- (void)presentReportAProblemFromTransitLineCardWithEditingContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v7])
  {
    v8 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v10 = [(RAPAppStateCreator *)v8 initWithSceneDelegate:WeakRetained];

    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100FE1E94;
    v11[3] = &unk_1016608D0;
    v12 = v6;
    objc_copyWeak(&v14, &location);
    v13 = v7;
    [(RAPAppStateCreator *)v10 createReportAProblemAppStateWithCompletion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)_presentLightweightFeedbackAcknowledgmentScreen
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  v3 = [WeakRetained chromeViewController];
  v4 = [v3 view];
  v7 = [v4 window];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Thanks for your feedback [Report an Issue]" value:@"localized string not found" table:0];

  [ActionValidationController presentDefaultValidationActionWithTitle:v6 inWindow:v7];
}

- (void)_presentWebBundleViewControllerWithReport:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100FE2430;
  v15[3] = &unk_101660840;
  objc_copyWeak(&v17, &location);
  v8 = v7;
  v16 = v8;
  v9 = objc_retainBlock(v15);
  v10 = [[RAPWebBundleContaineeViewController alloc] initWithReport:v6 completion:v9];
  [(RAPWebBundleContaineeViewController *)v10 setModalPresentationStyle:2];
  [(RAPWebBundleContaineeViewController *)v10 setModalInPresentation:1];
  v11 = [v6 initialQuestion];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [v6 initialQuestion];
  }

  else
  {
    v13 = 0;
  }

  if (sub_10000FA08(v10) == 5 || [v13 questionType] - 13 > 7)
  {
    [(RAPPresenter *)self presentViewController:v10 animated:1];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    [WeakRetained presentFromContainerViewController:v10 animated:1];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_presentWebBundleWithReport:(id)a3 completion:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100FE2660;
  v9[3] = &unk_1016607F0;
  v10 = a4;
  v6 = v10;
  v7 = a3;
  v8 = objc_retainBlock(v9);
  [(RAPPresenter *)self _presentWebBundleWithReport:v7 withOutcomeCompletion:v8];
}

- (void)_presentReportComposerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_reportComposer)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100FE27B8;
    v11[3] = &unk_101661090;
    v11[4] = self;
    v12 = v4;
    v6 = objc_retainBlock(v11);
    v7 = [(RAPReportComposerViewController *)self->_reportComposer presentingViewController];

    if (v7)
    {
      reportComposer = self->_reportComposer;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100FE28D8;
      v9[3] = &unk_101661760;
      v10 = v6;
      [(RAPReportComposerViewController *)reportComposer dismissViewControllerAnimated:1 completion:v9];
    }

    else
    {
      (v6[2])(v6);
    }
  }
}

- (void)_dismissSender:(id)a3 withGesture:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
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
  if (v11)
  {
    if (v9 && v6)
    {
      v9[2](v9);
    }

    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v13 = [WeakRetained appCoordinator];
    v14 = [v13 baseActionCoordinator];
    v15 = [v14 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (!v6)
      {
        v17 = objc_loadWeakRetained(&self->_sceneDelegate);
        v18 = [v17 appCoordinator];
        v19 = [v18 baseActionCoordinator];
        v20 = [v19 containerViewController];
        [v20 popLastViewControllerAnimated:1];
      }

      if (v9)
      {
        v9[2](v9);
      }
    }

    else
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100FE2BB8;
      v22[3] = &unk_101661760;
      v23 = v9;
      [v11 dismissViewControllerAnimated:1 completion:v22];
    }
  }

  else
  {
    v21 = sub_100799520();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Attempting to dismiss an object %@ that is not a view controller. Early return.", buf, 0xCu);
    }
  }
}

- (void)_dismissReportComposerWithSender:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
  }

  v9 = v6;
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

  if (v11)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100FE2D48;
    v13[3] = &unk_101661B18;
    v13[4] = self;
    [v11 dismissViewControllerAnimated:1 completion:v13];
  }

  else
  {
    v12 = sub_100799520();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Attempting to dismiss an object %@ that is not a view controller. Early return.", buf, 0xCu);
    }
  }
}

- (void)presentReportAProblemFromPlaceCardViewController:(id)a3 editingContext:(id)a4 overriddenUserInterfaceStyle:(int64_t)a5 sourceView:(id)a6 entryPoint:(int)a7 completion:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a8;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v16])
  {
    v17 = [v15 window];
    [v17 setUserInteractionEnabled:0];

    v18 = [RAPAppStateCreator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    v20 = [(RAPAppStateCreator *)v18 initWithSceneDelegate:WeakRetained];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100FE2ED0;
    v21[3] = &unk_1016607A0;
    v22 = v15;
    v25 = v14;
    v23 = self;
    v27 = a7;
    v24 = v13;
    v26 = v16;
    [(RAPAppStateCreator *)v20 createReportAProblemAppStateWithCompletion:v21];
  }
}

- (void)presentAddAPlaceFromPlacecardWithEditingContext:(id)a3 overriddenUserInterfaceStyle:(int64_t)a4 shouldShowDetailedFlow:(BOOL)a5 sourceView:(id)a6 entryPoint:(int)a7 completion:(id)a8
{
  v9 = *&a7;
  v11 = a5;
  v13 = a3;
  v14 = a6;
  v15 = a8;
  if (![(RAPPresenter *)self presentOfflineAlertIfNecessaryWithCompletion:v15])
  {
    if (v11)
    {
      [(RAPPresenter *)self _presentAddAPlaceFromEntryPoint:v9 withEditingBlock:v13 completion:v15];
    }

    else
    {
      v16 = [v14 window];
      [v16 setUserInteractionEnabled:0];

      v17 = [RAPAppStateCreator alloc];
      WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
      v19 = [(RAPAppStateCreator *)v17 initWithSceneDelegate:WeakRetained];

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100FE38FC;
      v20[3] = &unk_101660750;
      v21 = v14;
      v22 = self;
      v23 = v13;
      v25 = v9;
      v24 = v15;
      [(RAPAppStateCreator *)v19 createReportAProblemAppStateWithCompletion:v20];
    }
  }
}

- (BOOL)presentOfflineAlertIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[MapsOfflineUIHelper sharedHelper];
  v6 = [v5 isUsingOfflineMaps];

  if (v6)
  {
    v7 = sub_100799520();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempting to report an issue while using Offline Maps. Presenting error alert.", buf, 2u);
    }

    v8 = +[MapsOfflineUIHelper sharedHelper];
    v9 = [v8 isUsingForcedOfflineMaps];

    v10 = +[NSBundle mainBundle];
    v11 = v10;
    if (v9)
    {
      v12 = @"REPORT_AN_ISSUE_FORCED_OFFLINE_ALERT_TITLE";
    }

    else
    {
      v12 = @"REPORT_AN_ISSUE_OFFLINE_ALERT_TITLE";
    }

    if (v9)
    {
      v13 = @"REPORT_AN_ISSUE_FORCED_OFFLINE_ALERT_MESSAGE";
    }

    else
    {
      v13 = @"REPORT_AN_ISSUE_OFFLINE_ALERT_MESSAGE";
    }

    v14 = [v10 localizedStringForKey:v12 value:@"localized string not found" table:@"Offline"];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:v13 value:@"localized string not found" table:@"Offline"];

    v17 = [UIAlertController alertControllerWithTitle:v14 message:v16 preferredStyle:1];
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"REPORT_AN_ISSUE_OFFLINE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100FE3CB0;
    v22[3] = &unk_101660728;
    v23 = v4;
    v20 = [UIAlertAction actionWithTitle:v19 style:1 handler:v22];
    [v17 addAction:v20];

    [(RAPPresenter *)self presentViewController:v17 animated:1];
  }

  return v6;
}

- (RAPPresenter)initWithSceneDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RAPPresenter;
  v5 = [(RAPPresenter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sceneDelegate, v4);
  }

  return v6;
}

@end