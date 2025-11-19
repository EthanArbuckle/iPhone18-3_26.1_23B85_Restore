@interface NavTrayViewController
- (BOOL)_isEligibleToShowWalkingButton;
- (BOOL)_isWaypointCallable:(id)a3;
- (BOOL)_isWaypointRemovable:(id)a3;
- (BOOL)_shouldEnableAddStop;
- (BOOL)_shouldEnableShareETAForRoute:(id)a3 disabledForReasons:(id *)a4;
- (BOOL)_shouldEnableTrafficIncidentsForRoute:(id)a3 disabledForReasons:(id *)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (NSArray)waypointRows;
- (NSMutableDictionary)actionCells;
- (PlatformController)platformController;
- (_TtC4Maps28NavigationWaypointController)waypointController;
- (double)headerHeight;
- (double)heightForLayout:(unint64_t)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)topSpaceForScrollPocket;
- (id)_delegate;
- (id)_destinationPhoneNumbersForWaypoint:(id)a3;
- (id)_traySectionsDescription;
- (id)initForNavigationWithDelegate:(id)a3 guidanceObserver:(id)a4 platformController:(id)a5;
- (id)initForSteppingWithDelegate:(id)a3 platformController:(id)a4;
- (id)mapItemMuid;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int)currentUITargetForAnalytics;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_commonInit;
- (void)_computeSections;
- (void)_handleArrivalAtEndOfLegIndex:(unint64_t)a3 forced:(BOOL)a4 service:(id)a5;
- (void)_maneuverBannerViewEVStationsNotification:(id)a3;
- (void)_pressedCustomRoute;
- (void)_pressedDetails;
- (void)_pressedEndRoute;
- (void)_pressedFindMy;
- (void)_pressedOtherStations;
- (void)_pressedPauseRoute;
- (void)_pressedReport;
- (void)_pressedResumeRoute;
- (void)_pressedSAR;
- (void)_pressedShareETADisclosureButton;
- (void)_pressedShareETAInTray;
- (void)_pressedVoiceVolume;
- (void)_pressedWalkingRoute;
- (void)_resumeNavigation;
- (void)_resumedFromSAR;
- (void)_sceneConnectionsDidChange:(id)a3;
- (void)_startTimerToDismissInitialBanner;
- (void)_startTimerToDismissInitialBannerWithInterval:(double)a3;
- (void)_startTimerToDisplayInitialBanner;
- (void)_updateArrivalState;
- (void)_updateShareETADisclosure;
- (void)_updateShareETADisclosureIfNecessary;
- (void)_updateShareETAFooterTextWithSharingIdentity:(id)a3;
- (void)_updateWithRoute:(id)a3;
- (void)applyAlphaToContent:(double)a3;
- (void)didBecomeCurrent;
- (void)didChangeContainerStyle:(unint64_t)a3;
- (void)didChangeLayout:(unint64_t)a3;
- (void)didTapShareETAContactButton;
- (void)feedbackViewDidSelectThumbsDown;
- (void)feedbackViewDidSelectThumbsUp;
- (void)incidentsReportingEnablementDidUpdate;
- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6;
- (void)navigationService:(id)a3 didUpdateAlternateWalkingRoute:(id)a4;
- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5;
- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationService:(id)a3 didUpdateNavTrayGuidance:(id)a4;
- (void)navigationService:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4;
- (void)navigationService:(id)a3 didUpdateVehicleParkingInfo:(id)a4;
- (void)navigationWaypointController:(id)a3 didUpdateDisplayedWaypoints:(id)a4;
- (void)offlineMapsStateChanged;
- (void)pressedDeleteOnCell:(id)a3;
- (void)pressedHeaderView;
- (void)pressedPhoneCallOnCell:(id)a3;
- (void)setConnectedToCarPlay:(BOOL)a3;
- (void)setCurrentStepIndex:(unint64_t)a3;
- (void)setReceivingContacts:(id)a3;
- (void)setShareETAFooterText:(id)a3;
- (void)sharedTripService:(id)a3 didUpdateReceivers:(id)a4;
- (void)sharedTripServiceDidUpdateSendingAvailability:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCardCornerRadiusForLayout:(unint64_t)a3;
- (void)updatedHeight;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willChangeContainerStyle:(unint64_t)a3;
- (void)willChangeLayout:(unint64_t)a3;
@end

@implementation NavTrayViewController

- (NSArray)waypointRows
{
  waypointRows = self->_waypointRows;
  if (!waypointRows)
  {
    v4 = +[MNNavigationService sharedService];
    v5 = [(NavTrayViewController *)self waypointController];
    v6 = [v5 displayedWaypoints];
    v7 = [NavTrayWaypointRow waypointRowsFromNavigationService:v4 withWaypoints:v6];
    v8 = self->_waypointRows;
    self->_waypointRows = v7;

    waypointRows = self->_waypointRows;
  }

  return waypointRows;
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)_maneuverBannerViewEVStationsNotification:(id)a3
{
  if (![(NavTrayViewController *)self isConnectedToCarPlay])
  {
    objc_initWeak(&location, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100B78A78;
    v4[3] = &unk_101661B98;
    objc_copyWeak(&v5, &location);
    dispatch_async(&_dispatch_main_q, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_sceneConnectionsDidChange:(id)a3
{
  v4 = [UIApplication _maps_isAnySceneConnectedForRole:_UIWindowSceneSessionRoleCarPlay];

  [(NavTrayViewController *)self setConnectedToCarPlay:v4];
}

- (void)pressedPhoneCallOnCell:(id)a3
{
  v4 = a3;
  v5 = sub_100B78EB8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Handle phone call cell tap", buf, 0xCu);
  }

  v6 = [v4 waypoint];
  v7 = [(NavTrayViewController *)self _destinationPhoneNumbersForWaypoint:v6];

  if ([v7 count] < 2)
  {
    v10 = +[UIApplication sharedApplication];
    v21 = [v7 anyObject];
    v22 = [v21 unformattedInternationalStringValue];
    [v10 callPhoneNumber:v22 completion:0];
  }

  else
  {
    v25 = v4;
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"[NavTray] Phone number prompt" value:@"localized string not found" table:0];
    v10 = [UIAlertController alertControllerWithTitle:v9 message:0 preferredStyle:0];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v15 stringValue];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100B78F0C;
          v27[3] = &unk_10165F220;
          v27[4] = v15;
          v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:v27];
          [v10 addAction:v17];
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
    v20 = [UIAlertAction actionWithTitle:v19 style:1 handler:0];
    [v10 addAction:v20];

    v21 = +[MapsInternalAlertPresentationController sharedInstance];
    v22 = [(NavTrayViewController *)self view];
    v23 = [v22 window];
    v24 = [v23 windowScene];
    [v21 presentAlertController:v10 fromWindowScene:v24];

    v4 = v25;
  }
}

- (id)_destinationPhoneNumbersForWaypoint:(id)a3
{
  v3 = a3;
  if ((+[TUCallCapabilities supportsTelephonyCalls]& 1) == 0)
  {
    v11 = +[NSSet set];
    goto LABEL_9;
  }

  v4 = objc_opt_new();
  v5 = [v3 findMyHandleID];

  if (v5)
  {
    v6 = [v3 findMyHandle];
    v7 = [v6 phoneNumbers];
    [v4 unionSet:v7];
  }

  else
  {
    v13 = [v3 addressBookAddress];

    if (!v13)
    {
      goto LABEL_5;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [v3 addressBookAddress];
    v15 = [v14 contact];
    v6 = [v15 phoneNumbers];

    v16 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v6);
          }

          v20 = [*(*(&v21 + 1) + 8 * i) value];
          [v4 addObject:v20];
        }

        v17 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v17);
    }
  }

LABEL_5:
  v8 = [v3 geoMapItem];
  if ([v8 _hasTelephone])
  {
    v9 = [v8 _telephone];
    v10 = [CNPhoneNumber phoneNumberWithStringValue:v9];
    [v4 addObject:v10];
  }

  v11 = [v4 copy];

LABEL_9:

  return v11;
}

- (void)pressedDeleteOnCell:(id)a3
{
  v4 = a3;
  v5 = sub_100B78EB8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 134349056;
    v14 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Handle delete waypoint cell tap", &v13, 0xCu);
  }

  v6 = [v4 waypoint];
  if (v6 && (-[NavTrayViewController waypointController](self, "waypointController"), v7 = objc_claimAutoreleasedReturnValue(), [v7 displayedWaypoints], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "indexOfObject:", v6), v8, v7, v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    [GEOAPPortal captureUserAction:294 target:self->_analyticsTarget value:0];
    v12 = sub_100B78EB8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 134349312;
      v14 = self;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Deleting waypoint at index %lu", &v13, 0x16u);
    }

    v10 = [(NavTrayViewController *)self waypointController];
    [v10 removeWaypointAt:v9];
  }

  else
  {
    v10 = sub_100B78EB8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 shortDescription];
      v13 = 134349570;
      v14 = self;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}p] Couldn't delete cell: %@ waypoint: %@", &v13, 0x20u);
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100B78EB8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v20 = 134349314;
    v21 = self;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] NavTrayViewController tableView:didSelectRowAtIndexPath: %@", &v20, 0x16u);
  }

  [v7 deselectRowAtIndexPath:v6 animated:1];
  v9 = -[NSArray objectAtIndexedSubscript:](self->_usedSections, "objectAtIndexedSubscript:", [v6 section]);
  v10 = [v9 integerValue];
  v11 = [v6 row];
  if (v10 == 1)
  {
    v16 = [(NavTrayViewController *)self _delegate];
    [v16 suppressTransitionsOfContainee:self];

    v17 = [(ContaineeViewController *)self cardPresentationController];
    [v17 wantsLayout:1];

    v18 = [(NSDictionary *)self->_traySections objectForKeyedSubscript:v9];
    v13 = [v18 objectAtIndexedSubscript:v11];

    v19 = [v13 unsignedIntegerValue];
    if (v19 > 2)
    {
      switch(v19)
      {
        case 3:
          [(NavTrayViewController *)self _pressedReport];
          break;
        case 4:
          [(NavTrayViewController *)self _pressedVoiceVolume];
          break;
        case 5:
          [(NavTrayViewController *)self _pressedDetails];
          break;
      }
    }

    else if ((v19 - 1) >= 2)
    {
      if (!v19)
      {
        [(NavTrayViewController *)self _pressedSAR];
      }
    }

    else
    {
      [(NavTrayViewController *)self _pressedShareETAInTray];
    }

    goto LABEL_17;
  }

  if (!v10)
  {
    v12 = [(NSDictionary *)self->_traySections objectForKeyedSubscript:v9];
    v13 = [v12 objectAtIndexedSubscript:v11];

    v14 = [(NavTrayViewController *)self _delegate];
    v15 = [v13 waypoint];
    [v14 pressedViewWaypoint:v15];

LABEL_17:
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = -[NSArray objectAtIndexedSubscript:](self->_usedSections, "objectAtIndexedSubscript:", [a4 section]);
  v5 = [v4 integerValue] != 2;

  return v5;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    [(NavTrayMetrics *)self->_metrics endButtonTopPadding];
    goto LABEL_5;
  }

  v7 = 10.0;
  if (a4 == 2)
  {
    [(NavTrayMetrics *)self->_metrics actionButtonBottomPadding];
LABEL_5:
    v7 = v8;
  }

  return v7;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = 2.22044605e-16;
  if (a4)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = objc_opt_new();

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  usedSections = self->_usedSections;
  v8 = a4;
  v9 = -[NSArray objectAtIndexedSubscript:](usedSections, "objectAtIndexedSubscript:", [v8 section]);
  v10 = [v9 integerValue];
  v11 = [v8 row];

  if (v10 == 2)
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v14 = [v6 dequeueReusableCellWithIdentifier:v30];

    [(NavTrayButtonCell *)v14 setMetrics:self->_metrics];
    [(NavTrayButtonCell *)v14 setButtonStylingDelegate:self];
    if ([(NavTrayViewController *)self _isEligibleToShowWalkingButton])
    {
      v31 = +[MNNavigationService sharedService];
      v32 = [v31 alternateWalkingRouteDisplayETAInfo];

      [(NavTrayButtonCell *)v14 setHasWalkingETAInfo:v32 != 0];
    }

    objc_storeStrong(&self->_navTrayEndCell, v14);
  }

  else
  {
    if (v10 == 1)
    {
      v23 = [(NSDictionary *)self->_traySections objectForKeyedSubscript:v9];
      v16 = [v23 objectAtIndexedSubscript:v11];

      v24 = [(NavTrayViewController *)self actionCells];
      v14 = [v24 objectForKeyedSubscript:v16];

      if (!v14)
      {
        v25 = [_TtC4Maps17NavTrayButtonCell alloc];
        v26 = [v16 unsignedIntegerValue];
        if ((v26 - 1) >= 5)
        {
          v27 = 0;
        }

        else
        {
          v27 = v26;
        }

        v14 = [(NavTrayButtonCell *)v25 initWithStyle:v27];
        v28 = [(NavTrayViewController *)self actionCells];
        [v28 setObject:v14 forKeyedSubscript:v16];
      }
    }

    else
    {
      if (v10)
      {
        v14 = objc_opt_new();
        goto LABEL_18;
      }

      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v6 dequeueReusableCellWithIdentifier:v13];

      v15 = [(NSDictionary *)self->_traySections objectForKeyedSubscript:v9];
      v16 = [v15 objectAtIndexedSubscript:v11];

      v17 = [v16 waypoint];
      [(NavTrayButtonCell *)v14 setDelegate:self];
      [(NavTrayButtonCell *)v14 setWaypoint:v17];
      v18 = [(NavTrayViewController *)self traitCollection];
      [v18 displayScale];
      v19 = [v17 _maps_waypointImageWithScale:?];
      [(NavTrayButtonCell *)v14 setWaypointImage:v19];

      v20 = [v17 _maps_waypointName];
      [(NavTrayButtonCell *)v14 setTitle:v20];

      v21 = [(NSDictionary *)self->_traySections objectForKeyedSubscript:v9];
      if ([v21 count] <= 1)
      {
        [(NavTrayButtonCell *)v14 setEtaString:0];
      }

      else
      {
        v22 = [v16 etaString];
        [(NavTrayButtonCell *)v14 setEtaString:v22];
      }

      [(NavTrayButtonCell *)v14 applyWithIsCallable:[(NavTrayViewController *)self _isWaypointCallable:v17] isDeletable:[(NavTrayViewController *)self _isWaypointRemovable:v17]];
    }
  }

LABEL_18:

  return v14;
}

- (BOOL)_isWaypointCallable:(id)a3
{
  v3 = a3;
  if (+[TUCallCapabilities supportsTelephonyCalls])
  {
    v4 = [v3 findMyHandle];
    v5 = [v4 phoneNumbers];
    if ([v5 count])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 addressBookAddress];
      v8 = [v7 contact];
      v9 = [v8 phoneNumbers];
      if ([v9 count])
      {
        v6 = 1;
      }

      else
      {
        v10 = [v3 geoMapItem];
        v6 = [v10 _hasTelephone];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isWaypointRemovable:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isSteppingMode || ([v4 isServerProvidedWaypoint] & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_1000282CC(self->_waypointRows, &stru_10163B608);
    v6 = [v7 count] > 1;
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(NSArray *)self->_usedSections objectAtIndexedSubscript:a4];
  v6 = [(NSDictionary *)self->_traySections objectForKeyedSubscript:v5];
  v7 = [v6 count];

  return v7;
}

- (void)offlineMapsStateChanged
{
  v3 = [(NavTrayViewController *)self route];
  [(NavTrayViewController *)self _updateWithRoute:v3];
}

- (void)_updateShareETAFooterTextWithSharingIdentity:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v9 = [v5 localizedStringForKey:@"[SharedETA] sender info label" value:@"localized string not found" table:0];

  v6 = [v4 name];
  v7 = [v4 handle];

  v8 = [NSString stringWithFormat:v9, v6, v7];
  [(NavTrayViewController *)self setShareETAFooterText:v8];
}

- (void)sharedTripService:(id)a3 didUpdateReceivers:(id)a4
{
  v5 = a4;
  [(NavTrayViewController *)self setReceivingContacts:v5];
  v6 = +[UIApplication _maps_keyMapsSceneDelegate];
  [v6 setNeedsUserActivityUpdate];

  v7 = [v5 count];
  if (!v7)
  {
    v8 = [(NavTrayViewController *)self route];
    [(NavTrayViewController *)self _updateWithRoute:v8];
  }

  [(NavTrayViewController *)self _updateShareETADisclosureIfNecessary];
}

- (void)sharedTripServiceDidUpdateSendingAvailability:(id)a3
{
  v4 = [(NavTrayViewController *)self route];
  [(NavTrayViewController *)self _updateWithRoute:v4];

  [(NavTrayViewController *)self _updateShareETADisclosureIfNecessary];
}

- (void)incidentsReportingEnablementDidUpdate
{
  v3 = [(NavTrayViewController *)self route];
  [(NavTrayViewController *)self _updateWithRoute:v3];
}

- (int)currentUITargetForAnalytics
{
  v2 = [(NavTrayViewController *)self route];
  v3 = [v2 transportType];

  if (v3 > 3)
  {
    return 0;
  }

  else
  {
    return dword_101212C50[v3];
  }
}

- (void)_resumeNavigation
{
  v3 = sub_100B78EB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Resuming navigation", buf, 0xCu);
  }

  [(NavTrayViewController *)self setIsInArrivalState:0];
  [(NavTrayViewController *)self _updateShareETADisclosure];
  [(NavTrayHeaderView *)self->_navHeaderView resetContent];
  [(NavTrayHeaderView *)self->_navHeaderView clearAnimations];
  [(NavTrayHeaderView *)self->_navHeaderView applyArrivalState];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B7A1F8;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [UIView animateWithDuration:4 delay:v4 options:0 animations:0.25 completion:0.0];
}

- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  if (a6 - 3 <= 1)
  {
    [GEOAPPortal captureUserAction:297 target:self->_analyticsTarget value:0];
  }

  [(NavTrayViewController *)self _resumeNavigation];
}

- (void)_handleArrivalAtEndOfLegIndex:(unint64_t)a3 forced:(BOOL)a4 service:(id)a5
{
  v8 = a5;
  if (![(NavTrayViewController *)self isInArrivalState]|| a4)
  {
    v14 = [v8 route];
    v15 = [v14 legs];
    if ([v15 count] <= a3)
    {
    }

    else
    {
      v16 = [v8 route];
      v17 = [v16 legs];
      v9 = [v17 objectAtIndexedSubscript:a3];

      if (v9)
      {
        v18 = sub_100B78EB8();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 134349312;
          v33 = self;
          v34 = 2048;
          v35 = a3;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Handling arrival at end of leg index: %lu", buf, 0x16u);
        }

        v19 = [v8 route];
        v20 = [v19 isLegIndexOfLastLeg:a3];

        v21 = [v8 arrivalChargingStationInfo];

        [(NavTrayViewController *)self setIsInArrivalState:1];
        [(NavTrayViewController *)self loadViewIfNeeded];
        WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
        v23 = [WeakRetained canPresentRapFeedbackView] & v20;

        [(NavTrayHeaderView *)self->_navHeaderView setShowFeedbackView:v23];
        [(NavTrayHeaderView *)self->_navHeaderView clearAnimations];
        [(NavTrayHeaderView *)self->_navHeaderView applyArrivalState];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100B7A6A4;
        v31[3] = &unk_101661B18;
        v31[4] = self;
        [UIView animateWithDuration:4 delay:v31 options:0 animations:0.25 completion:0.0];
        v24 = [(ContaineeViewController *)self cardPresentationController];
        [v24 wantsLayout:1];

        v25 = objc_loadWeakRetained(&self->_navigationDelegate);
        [v25 presentTray];

        if (v23)
        {
          [GEOAPPortal captureUserAction:234 target:self->_analyticsTarget value:0];
        }

        analyticsTarget = self->_analyticsTarget;
        v27 = [NSString stringWithFormat:@"%ld", a3];
        [GEOAPPortal captureUserAction:293 target:analyticsTarget value:v27];

        if (((v21 == 0) & v20) == 0)
        {
          if (v21)
          {
            v28 = 295;
          }

          else
          {
            v28 = 296;
          }

          [GEOAPPortal captureUserAction:v28 target:self->_analyticsTarget value:0];
        }

        sharedTripAnimationTimer = self->_sharedTripAnimationTimer;
        self->_sharedTripAnimationTimer = 0;

        sharedTripDelayedStartTimer = self->_sharedTripDelayedStartTimer;
        self->_sharedTripDelayedStartTimer = 0;

        self->_displayingInitialBanner = 0;
        [(NavTrayViewController *)self _updateShareETADisclosure];
        goto LABEL_21;
      }
    }

    v9 = sub_100B78EB8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349312;
      v33 = self;
      v34 = 2048;
      v35 = a3;
      v10 = "[%{public}p] _handleDidArriveAtEndOfLegIndex:service: received an invalid legIndex: %lu";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
      goto LABEL_20;
    }
  }

  else
  {
    v9 = sub_100B78EB8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v33 = self;
      v10 = "[%{public}p] _handleDidArriveAtEndOfLegIndex:service: already in arrival state";
      v11 = v9;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 12;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
    }
  }

LABEL_21:
}

- (void)_updateArrivalState
{
  v3 = +[MNNavigationService sharedService];
  v4 = [v3 arrivalInfo];
  v5 = v4;
  if (!v4 || ![v4 arrivalState])
  {
    [(NavTrayViewController *)self _resumeNavigation];
    goto LABEL_50;
  }

  v6 = [v5 arrivalState];
  if ((v6 - 1) > 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_101215480[(v6 - 1)];
  }

  [(NavTrayHeaderView *)self->_navHeaderView setArrivalState:v7];
  v8 = [v5 legIndex];
  v9 = [v3 route];
  v10 = [v9 isLegIndexOfLastLeg:v8];

  if (v10)
  {
    v11 = sub_100B78EB8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v44 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Arrived at end of route", buf, 0xCu);
    }

    [(NavTrayHeaderView *)self->_navHeaderView setAlternateButtonTypes:[(NavTrayHeaderView *)self->_navHeaderView alternateButtonTypes]& 0xFFFFFFFFFFFFFFF7];
    navHeaderView = self->_navHeaderView;
    v13 = [(NavTrayHeaderView *)navHeaderView alternateButtonTypes]& 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v14 = [v3 isArrivedAtEVCharger];
    v15 = sub_100B78EB8();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v14)
    {
      if (v16)
      {
        *buf = 134349056;
        v44 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Arrived at EV stop", buf, 0xCu);
      }

      navHeaderView = self->_navHeaderView;
      v13 = [(NavTrayHeaderView *)navHeaderView alternateButtonTypes]| 8;
    }

    else
    {
      if (v16)
      {
        *buf = 134349056;
        v44 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Arrived at mid way stop", buf, 0xCu);
      }

      navHeaderView = self->_navHeaderView;
      v13 = [(NavTrayHeaderView *)navHeaderView alternateButtonTypes]| 4;
    }
  }

  [(NavTrayHeaderView *)navHeaderView setAlternateButtonTypes:v13];
  v17 = [v3 destination];
  v18 = [v17 findMyHandleID];
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
  v20 = [v3 arrivalInfo];
  if (([v20 isInArrivalState] & 1) == 0)
  {

LABEL_25:
    goto LABEL_26;
  }

  v21 = [(NavTrayViewController *)self _isEligibleToShowFindMyButton];

  if (!v21)
  {
LABEL_26:
    v25 = sub_100B78EB8();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v44 = self;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}p] Not eligible to show find my button", buf, 0xCu);
    }

    v23 = self->_navHeaderView;
    v24 = [(NavTrayHeaderView *)v23 alternateButtonTypes]& 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_29;
  }

  v22 = sub_100B78EB8();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v44 = self;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}p] Eligible to show find my button", buf, 0xCu);
  }

  v23 = self->_navHeaderView;
  v24 = [(NavTrayHeaderView *)v23 alternateButtonTypes]| 1;
LABEL_29:
  [(NavTrayHeaderView *)v23 setAlternateButtonTypes:v24];
  if (-[NavTrayViewController _isEligibleToShowWalkingButton](self, "_isEligibleToShowWalkingButton") && ([v3 alternateWalkingRoute], (v26 = objc_claimAutoreleasedReturnValue()) != 0) && (v27 = v26, v28 = objc_msgSend(v5, "isInParkingState"), v27, v28))
  {
    v29 = sub_100B78EB8();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v44 = self;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[%{public}p] Eligible to show walking button", buf, 0xCu);
    }

    v30 = self->_navHeaderView;
    v31 = [(NavTrayHeaderView *)v30 alternateButtonTypes]| 2;
  }

  else
  {
    v32 = sub_100B78EB8();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v44 = self;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "[%{public}p] Not eligible to show walking button", buf, 0xCu);
    }

    v30 = self->_navHeaderView;
    v31 = [(NavTrayHeaderView *)v30 alternateButtonTypes]& 0xFFFFFFFFFFFFFFFDLL;
  }

  [(NavTrayHeaderView *)v30 setAlternateButtonTypes:v31];
  v33 = [v3 destination];
  v34 = [v33 route];
  if (v34 && (v35 = v34, [v3 arrivalInfo], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isInArrivalState"), v36, v35, v37))
  {
    v38 = sub_100B78EB8();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v44 = self;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[%{public}p] Eligible to show arrival button for custom route", buf, 0xCu);
    }

    v39 = self->_navHeaderView;
    v40 = [(NavTrayHeaderView *)v39 alternateButtonTypes]| 0x10;
  }

  else
  {
    v41 = sub_100B78EB8();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v44 = self;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "[%{public}p] Not eligible to show arrival button for custom route", buf, 0xCu);
    }

    v39 = self->_navHeaderView;
    v40 = [(NavTrayHeaderView *)v39 alternateButtonTypes]& 0xFFFFFFFFFFFFFFEFLL;
  }

  [(NavTrayHeaderView *)v39 setAlternateButtonTypes:v40];
  if ([(NavTrayViewController *)self isInArrivalState])
  {
    [(NavTrayHeaderView *)self->_navHeaderView clearAnimations];
    [(NavTrayHeaderView *)self->_navHeaderView applyArrivalState];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100B7AD30;
    v42[3] = &unk_101661B18;
    v42[4] = self;
    [UIView animateWithDuration:4 delay:v42 options:0 animations:0.25 completion:0.0];
  }

  else
  {
    [(NavTrayViewController *)self _handleArrivalAtEndOfLegIndex:v8 service:v3];
  }

LABEL_50:
}

- (void)navigationService:(id)a3 didUpdateNavTrayGuidance:(id)a4
{
  v5 = a4;
  v6 = sub_100B78EB8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Got updated nav tray guidance event: %@", &v7, 0x16u);
  }

  [(NavTrayViewController *)self _updateArrivalState];
}

- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5
{
  v6 = a4;
  v7 = sub_100B78EB8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 destination];
    v9 = 134349570;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Got updated arrival info: %@ for destination: %@", &v9, 0x20u);
  }

  [(NavTrayViewController *)self _updateArrivalState];
}

- (void)navigationService:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4
{
  v6 = sub_100B78EB8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134349312;
    v8 = self;
    v9 = 2048;
    v10 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Updated target leg index: %lu", &v7, 0x16u);
  }

  [(NavTrayViewController *)self _updateArrivalState];
}

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  if ([(NavTrayHeaderView *)self->_navHeaderView arrivalState:a3]== 3 || [(NavTrayHeaderView *)self->_navHeaderView arrivalState]== 4)
  {
    navHeaderView = self->_navHeaderView;

    [(NavTrayHeaderView *)navHeaderView applyArrivalState];
  }
}

- (void)navigationService:(id)a3 didUpdateVehicleParkingInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100B78EB8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v18 = 134349314;
    v19 = self;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Updating vehicle parking info: %@", &v18, 0x16u);
  }

  if (-[NavTrayViewController _isEligibleToShowWalkingButton](self, "_isEligibleToShowWalkingButton") && ([v6 alternateWalkingRoute], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(v6, "arrivalInfo"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isInParkingState"), v11, v10, v12))
  {
    v13 = sub_100B78EB8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v18 = 134349056;
      v19 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Will show walking route alongside parking info", &v18, 0xCu);
    }

    navHeaderView = self->_navHeaderView;
    v15 = [(NavTrayHeaderView *)navHeaderView alternateButtonTypes]| 2;
  }

  else
  {
    v16 = sub_100B78EB8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 134349056;
      v19 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Will NOT show walking route alongside parking info", &v18, 0xCu);
    }

    navHeaderView = self->_navHeaderView;
    v15 = [(NavTrayHeaderView *)navHeaderView alternateButtonTypes]& 0xFFFFFFFFFFFFFFFDLL;
  }

  [(NavTrayHeaderView *)navHeaderView setAlternateButtonTypes:v15];
  [(NavTrayHeaderView *)self->_navHeaderView clearAnimations];
  [(NavTrayHeaderView *)self->_navHeaderView applyArrivalState];
  v17 = [(ContaineeViewController *)self cardPresentationController];
  [v17 updateHeightForCurrentLayout];
}

- (void)navigationService:(id)a3 didUpdateAlternateWalkingRoute:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100B78EB8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 uniqueRouteID];
    v26 = 134349314;
    v27 = self;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Updating alternate walking route: %@", &v26, 0x16u);
  }

  v10 = [(NavTrayViewController *)self _isEligibleToShowWalkingButton];
  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [(NavTrayEndCell *)self->_navTrayEndCell setHasWalkingETAInfo:v11];
  [(NavTrayEndCell *)self->_navTrayEndCell updateAlternateWalkingRouteDuration];
  v12 = [v6 destination];
  v13 = [v12 findMyHandleID];
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v6 arrivalInfo];
  if (([v15 isInArrivalState] & 1) == 0)
  {

LABEL_14:
LABEL_15:
    v18 = sub_100B78EB8();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v26 = 134349056;
      v27 = self;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Not eligible to show find my button", &v26, 0xCu);
    }

    [(NavTrayHeaderView *)self->_navHeaderView setAlternateButtonTypes:[(NavTrayHeaderView *)self->_navHeaderView alternateButtonTypes]& 0xFFFFFFFFFFFFFFFELL];
    if (!v11)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v16 = [(NavTrayViewController *)self _isEligibleToShowFindMyButton];

  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = sub_100B78EB8();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v26 = 134349056;
    v27 = self;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] Eligible to show find my button", &v26, 0xCu);
  }

  [(NavTrayHeaderView *)self->_navHeaderView setAlternateButtonTypes:[(NavTrayHeaderView *)self->_navHeaderView alternateButtonTypes]| 1];
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_18:
  v19 = [v6 arrivalInfo];
  v20 = [v19 isInParkingState];

  if (!v20)
  {
LABEL_22:
    v24 = sub_100B78EB8();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v26 = 134349056;
      v27 = self;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%{public}p] Not eligible to show walking button", &v26, 0xCu);
    }

    navHeaderView = self->_navHeaderView;
    v23 = [(NavTrayHeaderView *)navHeaderView alternateButtonTypes]& 0xFFFFFFFFFFFFFFFDLL;
    goto LABEL_25;
  }

  v21 = sub_100B78EB8();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v26 = 134349056;
    v27 = self;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Eligible to show walking button", &v26, 0xCu);
  }

  navHeaderView = self->_navHeaderView;
  v23 = [(NavTrayHeaderView *)navHeaderView alternateButtonTypes]| 2;
LABEL_25:
  [(NavTrayHeaderView *)navHeaderView setAlternateButtonTypes:v23];
  [(NavTrayHeaderView *)self->_navHeaderView clearAnimations];
  [(NavTrayHeaderView *)self->_navHeaderView applyArrivalState];
  v25 = [(ContaineeViewController *)self cardPresentationController];
  [v25 updateHeightForCurrentLayout];
}

- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6
{
  v7 = a4;
  v33 = [(NSArray *)self->_usedSections indexOfObject:&off_1016E89F0];
  if (v33 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v7 routeID];
    v9 = [(GEOComposedRoute *)self->_route uniqueRouteID];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      v11 = [v7 legInfos];
      v12 = [v11 count];
      v13 = [(NavTrayViewController *)self waypointRows];
      v14 = [v13 count];

      if (v12 != v14)
      {
        v15 = sub_100B78EB8();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [v7 legInfos];
          v17 = [v16 count];
          v18 = [(NavTrayViewController *)self waypointRows];
          *buf = 134349568;
          v44 = self;
          v45 = 1024;
          v46 = v17;
          v47 = 1024;
          v48 = [v18 count];
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{public}p] NavTrayViewController number of legs in MNDisplayETAInfo (%d) does not match number of waypoint rows in table (%d). Attempting to continue but ETA will likely be wrong.", buf, 0x18u);
        }
      }

      v19 = [(NavTrayViewController *)self tableView];
      v20 = [v19 indexPathsForVisibleRows];

      v21 = [NSMutableArray alloc];
      v22 = [v7 legInfos];
      v23 = [v21 initWithCapacity:{objc_msgSend(v22, "count")}];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v31 = v7;
      obj = [v7 legInfos];
      v24 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v39;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v39 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v38 + 1) + 8 * i);
            v29 = [(NavTrayViewController *)self waypointRows];
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_100B7B994;
            v34[3] = &unk_10163B5C8;
            v34[4] = v28;
            v37 = v33;
            v35 = v20;
            v36 = v23;
            [v29 enumerateObjectsUsingBlock:v34];
          }

          v25 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v25);
      }

      if ([v23 count])
      {
        v30 = [(NavTrayViewController *)self tableView];
        [v30 reloadRowsAtIndexPaths:v23 withRowAnimation:5];
      }

      v7 = v31;
    }
  }
}

- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6
{
  v6 = *&a4;
  v8 = a5;
  v9 = sub_100B78EB8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (v6 >= 7)
    {
      v10 = [NSString stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v10 = *(&off_10163B678 + v6);
    }

    *buf = 134349314;
    v12 = self;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Got new transport type: %@", buf, 0x16u);
  }

  [(NavTrayViewController *)self _updateWithRoute:v8];
  [(NavTrayViewController *)self _resumeNavigation];
}

- (void)setCurrentStepIndex:(unint64_t)a3
{
  v5 = [(NavTrayViewController *)self route];
  v6 = [v5 steps];
  v7 = [v6 count];

  if (v7 > a3)
  {
    v8 = [v5 steps];
    v9 = [v8 objectAtIndexedSubscript:a3];

    v10 = [v5 legIndexForRouteCoordinate:{-[NSObject startRouteCoordinate](v9, "startRouteCoordinate")}];
    v11 = [v5 legs];
    v12 = [v11 count];

    if (v10 < v12)
    {
      v13 = [v5 startRouteStep];
      [v5 remainingTimeToEndOfRouteFrom:objc_msgSend(v13 etaRoute:{"startRouteCoordinate"), 0}];
      v15 = v14;

      v16 = [v5 destination];
      v17 = [v16 navDisplayName];

      if ([v17 length])
      {
        [(NavTrayHeaderView *)self->_navHeaderView setDestinationName:v17];
      }

      else
      {
        v26 = +[NSBundle mainBundle];
        v27 = [v26 localizedStringForKey:@"[NavTray] Default Rerouting Title" value:@"localized string not found" table:0];
        [(NavTrayHeaderView *)self->_navHeaderView setDestinationName:v27];
      }

      if ([v17 length])
      {
        v28 = +[NSBundle mainBundle];
        v29 = [v28 localizedStringForKey:@"[NavTray] To Destination" value:@"localized string not found" table:0];
        v30 = [NSString stringWithFormat:v29, v17];
      }

      else
      {
        v28 = +[NSBundle mainBundle];
        v30 = [v28 localizedStringForKey:@"[NavTray] Default Title" value:@"localized string not found" table:0];
      }

      v31 = objc_opt_new();
      if (v15 > 0.0)
      {
        v32 = [NSString _navigation_stringWithSeconds:v15 abbreviated:1];
        [v31 addObject:v32];
      }

      v33 = [v5 legs];
      v34 = [v33 count];

      if (v34 >= 2)
      {
        v35 = +[NSBundle mainBundle];
        v36 = [v35 localizedStringForKey:@"[NavTray][Stepping] Number of stops" value:@"localized string not found" table:0];
        v37 = [v5 legs];
        v38 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v36, [v37 count] - 1);

        [v31 addObject:v38];
      }

      v39 = +[NSBundle mainBundle];
      v40 = [v39 localizedStringForKey:@" · [Route description delimiter]" value:@"localized string not found" table:0];

      stepHeaderView = self->_stepHeaderView;
      v42 = [v31 componentsJoinedByString:v40];
      [(StepTrayHeaderView *)stepHeaderView setDefaultTitle:v30 defaultSubtitle:v42];

      goto LABEL_25;
    }

    v22 = sub_10006D178();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [v5 legs];
      v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Current leg index (%lu) is greater than the number of steps (%lu)", v10, [v23 count]);
      *buf = 136315906;
      v44 = "[NavTrayViewController setCurrentStepIndex:]";
      v45 = 2080;
      v46 = "NavTrayViewController.m";
      v47 = 1024;
      v48 = 1410;
      v49 = 2112;
      v50 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
    }

    if (!sub_100E03634())
    {
      goto LABEL_25;
    }

    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v44 = v25;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v18 = sub_10006D178();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [v5 steps];
    v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Current step index (%lu) is greater than the number of steps (%lu)", a3, [v19 count]);
    *buf = 136315906;
    v44 = "[NavTrayViewController setCurrentStepIndex:]";
    v45 = 2080;
    v46 = "NavTrayViewController.m";
    v47 = 1024;
    v48 = 1403;
    v49 = 2112;
    v50 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
  }

  if (sub_100E03634())
  {
    v9 = sub_10006D178();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_25:

      goto LABEL_26;
    }

    v21 = +[NSThread callStackSymbols];
    *buf = 138412290;
    v44 = v21;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
LABEL_15:

    goto LABEL_25;
  }

LABEL_26:
}

- (void)_pressedCustomRoute
{
  v3 = [(NavTrayViewController *)self mapItemMuid];
  [GEOAPPortal captureUserAction:470 target:136 value:v3];

  v4 = sub_100B78EB8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 134349056;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Pressed custom route arrival transition button", &v9, 0xCu);
  }

  v5 = +[MNNavigationService sharedService];
  v6 = [v5 destination];
  v7 = [v6 route];

  if (v7)
  {
    [v5 switchToDestinationRoute];
  }

  else
  {
    v8 = sub_100B78EB8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 134349056;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}p] No custom route found on the destination. Cannot transition the route.", &v9, 0xCu);
    }
  }
}

- (void)_pressedWalkingRoute
{
  analyticsTarget = self->_analyticsTarget;
  if ([(NavTrayHeaderView *)self->_navHeaderView arrivalState])
  {
    v4 = 124;
  }

  else
  {
    v4 = analyticsTarget;
  }

  [GEOAPPortal captureUserAction:456 target:v4 value:0];
  v5 = +[NavigationFeedbackCollector sharedFeedbackCollector];
  [v5 userAcceptedWalkingRoute];

  v6 = sub_100B78EB8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 134349056;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Pressed walking button. Will transition to walking transport type.", &v11, 0xCu);
  }

  v7 = +[MNNavigationService sharedService];
  v8 = [v7 alternateWalkingRoute];

  if (v8)
  {
    v9 = +[MNNavigationService sharedService];
    [v9 changeTransportType:2 route:v8];

    v10 = [(ContaineeViewController *)self cardPresentationController];
    [v10 wantsLayout:1];
  }

  else
  {
    v10 = sub_100B78EB8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 134349056;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}p] No alternate walking route found. Cannot transition to walking transport type.", &v11, 0xCu);
    }
  }
}

- (void)_pressedFindMy
{
  [GEOAPPortal captureUserAction:457 target:125 value:0];
  v3 = +[MNNavigationService sharedService];
  v4 = [v3 destination];
  v5 = [v4 findMyHandleID];

  v6 = sub_100B78EB8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Pressed Find My button. Will prompt to unlock phone if necessary.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B7C724;
  v8[3] = &unk_10165D288;
  objc_copyWeak(&v10, buf);
  v7 = v5;
  v9 = v7;
  [UIApplication _maps_unlockApplicationWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_pressedResumeRoute
{
  v3 = sub_100B78EB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Pressed resume route", &v5, 0xCu);
  }

  [GEOAPPortal captureUserAction:292 target:self->_analyticsTarget value:0];
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  [WeakRetained resumeNavigation];
}

- (void)_pressedOtherStations
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = 136316418;
        v20 = "[NavTrayViewController _pressedOtherStations]";
        v21 = 2080;
        v22 = "NavTrayViewController.m";
        v23 = 1024;
        v24 = 1316;
        v25 = 2080;
        v26 = "dispatch_get_main_queue()";
        v27 = 2080;
        v28 = dispatch_queue_get_label(&_dispatch_main_q);
        v29 = 2080;
        v30 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v19, 0x3Au);
      }

      if (sub_100E03634())
      {
        v17 = sub_10006D178();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = +[NSThread callStackSymbols];
          v19 = 138412290;
          v20 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
        }
      }
    }
  }

  v6 = sub_100B78EB8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v19 = 134349056;
    v20 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Pressed other stations", &v19, 0xCu);
  }

  v7 = +[MNNavigationService sharedService];
  v8 = [v7 arrivalInfo];
  if ([v7 isArrivedAtEVCharger])
  {
    v9 = [v8 destination];
    v10 = [v9 muid];

    WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
    [WeakRetained sendOtherEVStationsRequest:v10];
  }

  else
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315650;
      v20 = "[NavTrayViewController _pressedOtherStations]";
      v21 = 2080;
      v22 = "NavTrayViewController.m";
      v23 = 1024;
      v24 = 1325;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v19, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        v19 = 138412290;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
      }
    }

    v15 = sub_100B78EB8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 134349056;
      v20 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{public}p] The charging info at this waypoint couldn't be found.", &v19, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
    [WeakRetained pauseNavigation];
  }
}

- (void)_pressedPauseRoute
{
  v3 = sub_100B78EB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Pressed pause route", &v5, 0xCu);
  }

  [GEOAPPortal captureUserAction:6096 target:self->_analyticsTarget value:0];
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  [WeakRetained pauseNavigation];
}

- (void)_pressedEndRoute
{
  v3 = sub_100B78EB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Pressed end route", &v7, 0xCu);
  }

  analyticsTarget = self->_analyticsTarget;
  if (![(NavTrayHeaderView *)self->_navHeaderView arrivalState])
  {
    goto LABEL_10;
  }

  if ([(NavTrayHeaderView *)self->_navHeaderView currentAlternateButtonType]!= 6)
  {
    if ([(NavTrayHeaderView *)self->_navHeaderView currentAlternateButtonType]== 5)
    {
      v5 = 0;
      analyticsTarget = 125;
      goto LABEL_11;
    }

    if ([(NavTrayHeaderView *)self->_navHeaderView currentAlternateButtonType]== 7)
    {
      v5 = [(NavTrayViewController *)self mapItemMuid];
      analyticsTarget = 136;
      goto LABEL_11;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = 0;
  analyticsTarget = 124;
LABEL_11:
  [GEOAPPortal captureUserAction:3002 target:analyticsTarget value:v5];
  v6 = [(NavTrayViewController *)self _delegate];
  [v6 pressedEndWithSender:self feedback:0];
}

- (void)_pressedDetails
{
  v3 = sub_100B78EB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Pressed details", &v5, 0xCu);
  }

  [GEOAPPortal captureUserAction:3004 target:505 value:0];
  v4 = [(NavTrayViewController *)self _delegate];
  [v4 pressedShowDirectionsListWithSender:self];
}

- (void)_pressedVoiceVolume
{
  v3 = sub_100B78EB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 134349056;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Pressed voice volume", &v8, 0xCu);
  }

  v4 = +[MNNavigationService sharedService];
  v5 = [v4 navigationTransportType];

  switch(v5)
  {
    case 0u:
      v6 = 401;
      goto LABEL_9;
    case 3u:
      v6 = 404;
      goto LABEL_9;
    case 2u:
      v6 = 402;
LABEL_9:
      [GEOAPPortal captureUserAction:139 target:v6 value:0];
      break;
  }

  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  [WeakRetained displayVoiceVolumeControl];
}

- (void)_pressedReport
{
  v3 = sub_100B78EB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Pressed report incident", &v5, 0xCu);
  }

  [GEOAPPortal captureUserAction:115 target:self->_analyticsTarget value:0];
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  [WeakRetained displayIncidentReporting];
}

- (void)_pressedShareETADisclosureButton
{
  v3 = sub_100B78EB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Pressed share ETA disclosure button", buf, 0xCu);
  }

  v4 = [(NSArray *)self->_receivingContacts count];
  v5 = [(NavTrayViewController *)self route];
  v6 = [v5 transportType];
  if (v6 >= 7)
  {
    v7 = [NSString stringWithFormat:@"(unknown: %i)", v6];
  }

  else
  {
    v7 = *(&off_10163B678 + v6);
  }

  if (v4)
  {
    v8 = 102;
  }

  else
  {
    v8 = 9022;
  }

  [GEOAPPortal captureUserAction:v8 target:505 value:v7];

  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  [WeakRetained senderShareNavigation:self];
}

- (void)_pressedShareETAInTray
{
  v3 = sub_100B78EB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Pressed share ETA in tray", buf, 0xCu);
  }

  analyticsTarget = self->_analyticsTarget;
  v5 = [(NavTrayViewController *)self route];
  v6 = [v5 transportType];
  if (v6 >= 7)
  {
    v7 = [NSString stringWithFormat:@"(unknown: %i)", v6];
  }

  else
  {
    v7 = *(&off_10163B678 + v6);
  }

  [GEOAPPortal captureUserAction:9022 target:analyticsTarget value:v7];

  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  [WeakRetained senderShareNavigation:self];
}

- (void)_pressedSAR
{
  v3 = sub_100B78EB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Pressed SAR", &v7, 0xCu);
  }

  [GEOAPPortal captureUserAction:6097 target:self->_analyticsTarget value:0];
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  v5 = [(NavTrayViewController *)self categoriesAPIController];
  v6 = [v5 categories];
  [WeakRetained presentAddStopUsingCategories:v6];
}

- (void)didTapShareETAContactButton
{
  contactSharingState = self->_contactSharingState;
  if (contactSharingState - 2 < 2)
  {
    v12 = +[MSPSharedTripService sharedInstance];
    v13 = [(NavTrayViewController *)self route];
    v14 = [v13 shareETAWaypointContacts];
    v15 = [v14 lastObject];
    [v12 stopSharingWithContact:v15 completion:&stru_10163B5A0];

    [GEOAPPortal captureUserAction:402 target:91 value:0];
    self->_contactSharingState = 0;
  }

  else
  {
    if (contactSharingState != 1)
    {
      if (!contactSharingState)
      {
        [GEOAPPortal captureUserAction:400 target:91 value:0];
        self->_contactSharingState = 1;
        sharedTripAnimationTimer = self->_sharedTripAnimationTimer;
        self->_sharedTripAnimationTimer = 0;

        v5 = [(NavTrayViewController *)self route];
        v6 = [v5 shareETAWaypointContacts];
        v7 = [v6 lastObject];

        objc_initWeak(&location, self);
        v8 = &_dispatch_main_q;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100B7DB5C;
        v17[3] = &unk_10163B580;
        objc_copyWeak(&v19, &location);
        v9 = v7;
        v18 = v9;
        v10 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v17 block:1.5];
        sharedTripDelayedStartTimer = self->_sharedTripDelayedStartTimer;
        self->_sharedTripDelayedStartTimer = v10;

        [(NavTrayViewController *)self _updateShareETADisclosure];
        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
      }

      return;
    }

    v16 = self->_sharedTripDelayedStartTimer;
    self->_sharedTripDelayedStartTimer = 0;

    self->_contactSharingState = 0;
    [GEOAPPortal captureUserAction:402 target:91 value:0];
    [(NavTrayViewController *)self _updateShareETADisclosure];
  }

  [(NavTrayViewController *)self _startTimerToDismissInitialBannerWithInterval:5.0];
}

- (double)heightForLayout:(unint64_t)a3
{
  v4 = -1.0;
  if (a3 == 2)
  {
    if (![(NavTrayViewController *)self isInArrivalState])
    {
      v9 = [(NavTrayViewController *)self tableView];
      [v9 layoutIfNeeded];

      [(NavTrayMetrics *)self->_metrics defaultVerticalPadding];
      v11 = v10;
      v12 = [(NavTrayViewController *)self tableView];
      [v12 adjustedContentInset];
      v14 = v13;

      if (self->_usedSections)
      {
        v15 = [(NavTrayViewController *)self tableView];
        [v15 contentSize];
        v11 = v16;
      }

      v17 = v11 + v14;
      navHeaderView = self->_navHeaderView;
      if (navHeaderView)
      {
        [(NavTrayHeaderView *)navHeaderView metricsViewHeight];
      }

      else
      {
        [(NavTrayViewController *)self headerHeight];
      }

      v20 = v19;
      v7 = [(ContaineeViewController *)self cardPresentationController];
      [v7 bottomSafeOffset];
      v4 = v20 + v21 + v17;
      goto LABEL_11;
    }
  }

  else if (a3 == 1)
  {
    [(NavTrayViewController *)self headerHeight];
    v6 = v5;
    v7 = [(ContaineeViewController *)self cardPresentationController];
    [v7 bottomSafeOffset];
    v4 = v8 + v6;
LABEL_11:
  }

  return v4;
}

- (double)headerHeight
{
  headerView = self->_headerView;
  navHeaderView = self->_navHeaderView;
  if (headerView == navHeaderView && ![(NavTrayHeaderView *)navHeaderView arrivalState])
  {
    [(NavTrayHeaderView *)self->_navHeaderView intrinsicContentSize];
    return v6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NavTrayViewController;
    [(ContaineeViewController *)&v7 headerHeight];
  }

  return result;
}

- (BOOL)_isEligibleToShowWalkingButton
{
  v2 = [(NavTrayViewController *)self route];
  v3 = [v2 destination];
  [v3 hasFindMyHandleID];

  return GEOConfigGetBOOL();
}

- (void)applyAlphaToContent:(double)a3
{
  v5.receiver = self;
  v5.super_class = NavTrayViewController;
  [(ContaineeViewController *)&v5 applyAlphaToContent:a3];
  if ([(NavTrayViewController *)self isInArrivalState]|| !self->_viewDidAppear)
  {
    v4 = [(NavTrayViewController *)self contentView];
    [v4 setAlpha:0.0];
  }
}

- (void)didChangeContainerStyle:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = NavTrayViewController;
  [(ContaineeViewController *)&v5 didChangeContainerStyle:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  -[NavTrayViewController updateCardCornerRadiusForLayout:](self, "updateCardCornerRadiusForLayout:", [v4 containeeLayout]);
}

- (void)willChangeContainerStyle:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = NavTrayViewController;
  [(ContaineeViewController *)&v10 willChangeContainerStyle:?];
  if (a3 <= 7 && ((1 << a3) & 0xE3) != 0)
  {
    v5 = [(NavTrayViewController *)self tableView];
    v6 = [v5 numberOfSections];

    if (v6 >= 2)
    {
      v7 = [(NavTrayViewController *)self tableView];
      [v7 reloadData];

      v8 = [(NavTrayViewController *)self tableView];
      v9 = [NSIndexPath indexPathForRow:0 inSection:2];
      [v8 scrollToRowAtIndexPath:v9 atScrollPosition:3 animated:0];
    }
  }
}

- (void)didChangeLayout:(unint64_t)a3
{
  v16.receiver = self;
  v16.super_class = NavTrayViewController;
  [(ContaineeViewController *)&v16 didChangeLayout:?];
  v5 = +[MNNavigationService sharedService];
  if (a3 == 2)
  {
    analyticsTarget = self->_analyticsTarget;
    WeakRetained = dispatch_get_global_queue(33, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100B7E2B4;
    v12[3] = &unk_10164DC68;
    v13 = analyticsTarget;
    dispatch_async(WeakRetained, v12);
    v10 = 1.0;
    v9 = 1;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v6 = self->_analyticsTarget;
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B7E298;
    block[3] = &unk_10164DC68;
    v15 = v6;
    dispatch_async(v7, block);

    WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
    [WeakRetained showJunctionViewIfNeeded];
    v9 = 0;
    v10 = 0.0;
LABEL_5:

    [v5 setIsDisplayingNavigationTray:v9];
    [(NavTrayHeaderView *)self->_navHeaderView setExpansionProgress:v10];
  }
}

- (void)willChangeLayout:(unint64_t)a3
{
  v17.receiver = self;
  v17.super_class = NavTrayViewController;
  [(ContaineeViewController *)&v17 willChangeLayout:?];
  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 containeeLayout];

  if (v6 && v6 < a3)
  {
    v7 = [(NavTrayViewController *)self tableView];
    [v7 reloadData];

    v8 = [(NavTrayViewController *)self tableView];
    v9 = [v8 numberOfSections];

    if (v9 >= 3)
    {
      v10 = [(NavTrayViewController *)self tableView];
      v11 = [NSIndexPath indexPathForRow:0 inSection:2];
      [v10 scrollToRowAtIndexPath:v11 atScrollPosition:3 animated:0];
    }

    analyticsTarget = self->_analyticsTarget;
    v13 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B7E498;
    block[3] = &unk_10164DC68;
    v16 = analyticsTarget;
    dispatch_async(v13, block);

    WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
    [WeakRetained hideJunctionViewIfNeeded];
  }

  [(NavTrayHeaderView *)self->_navHeaderView setEnabledNestedInteraction:a3 == 1];
  [(UITableView *)self->_tableView _setPocketsEnabled:a3 > 1];
  [(NavTrayViewController *)self updateCardCornerRadiusForLayout:a3];
}

- (void)didBecomeCurrent
{
  v4.receiver = self;
  v4.super_class = NavTrayViewController;
  [(ContaineeViewController *)&v4 didBecomeCurrent];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  -[UITableView _setPocketsEnabled:](self->_tableView, "_setPocketsEnabled:", [v3 containeeLayout] > 1);
}

- (void)feedbackViewDidSelectThumbsDown
{
  v3 = [(NavTrayViewController *)self route];
  v4 = [v3 transportType];
  if (v4 >= 7)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", v4];
  }

  else
  {
    v5 = *(&off_10163B678 + v4);
  }

  [GEOAPPortal captureUserAction:228 target:31 value:v5];

  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  [WeakRetained pressedEndWithSender:self feedback:2];
}

- (void)feedbackViewDidSelectThumbsUp
{
  v3 = [(NavTrayViewController *)self route];
  v4 = [v3 transportType];
  if (v4 >= 7)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", v4];
  }

  else
  {
    v5 = *(&off_10163B678 + v4);
  }

  [GEOAPPortal captureUserAction:243 target:31 value:v5];

  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  [WeakRetained pressedEndWithSender:self feedback:1];
}

- (id)mapItemMuid
{
  v2 = [(NavTrayViewController *)self route];
  v3 = [v2 destination];
  v4 = [v3 route];

  if ([v4 mapItemMuid])
  {
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v4 mapItemMuid]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updatedHeight
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100B7E844;
  v2[3] = &unk_101661B98;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)pressedHeaderView
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  v4 = [v3 containeeLayout];

  v5 = [(ContaineeViewController *)self cardPresentationController];
  v7 = v5;
  if (v4 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v5 wantsLayout:v6];
}

- (void)navigationWaypointController:(id)a3 didUpdateDisplayedWaypoints:(id)a4
{
  waypointRows = self->_waypointRows;
  self->_waypointRows = 0;

  [(NavTrayViewController *)self _computeSections];
  v6 = [(NavTrayViewController *)self tableView];
  [v6 reloadData];

  v7 = [(ContaineeViewController *)self cardPresentationController];
  [v7 updateHeightForCurrentLayout];
}

- (void)_startTimerToDismissInitialBannerWithInterval:(double)a3
{
  v5 = sub_100B78EB8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v12 = self;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Starting timer to dismiss Share ETA in %f seconds banner", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6 = &_dispatch_main_q;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100B7EB44;
  v9[3] = &unk_1016616E8;
  objc_copyWeak(&v10, buf);
  v7 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v9 block:a3];
  sharedTripAnimationTimer = self->_sharedTripAnimationTimer;
  self->_sharedTripAnimationTimer = v7;

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_startTimerToDismissInitialBanner
{
  GEOConfigGetDouble();

  [(NavTrayViewController *)self _startTimerToDismissInitialBannerWithInterval:?];
}

- (void)_startTimerToDisplayInitialBanner
{
  v3 = sub_100B78EB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Starting timer to show Share ETA initial banner", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = &_dispatch_main_q;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100B7EEF8;
  v7[3] = &unk_1016616E8;
  objc_copyWeak(&v8, buf);
  v5 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v7 block:2.0];
  sharedTripAnimationTimer = self->_sharedTripAnimationTimer;
  self->_sharedTripAnimationTimer = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)_resumedFromSAR
{
  v3 = sub_100B78EB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134349056;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Resuming navigation to original destination", &v4, 0xCu);
  }

  [(NavTrayViewController *)self _resumeNavigation];
}

- (BOOL)_shouldEnableAddStop
{
  UInteger = GEOConfigGetUInteger();
  if (!UInteger || (v4 = UInteger, -[NavTrayViewController route](self, "route"), v5 = objc_claimAutoreleasedReturnValue(), [v5 userRequestedWaypoints], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7 < v4))
  {
    v8 = [(NavTrayViewController *)self route];
    v9 = [v8 transportType];
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
LABEL_13:
        v12 = IsEnabled_Maps420;

        if (v12)
        {
          return 1;
        }

LABEL_15:
        v13 = [(NavTrayViewController *)self categoriesAPIController];
        v14 = [v13 categories];
        v11 = [v14 count] != 0;

        return v11;
      }

      if (v9 != 6)
      {
LABEL_11:
        IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
        goto LABEL_13;
      }
    }

    else if (v9 != 1)
    {
      if (v9 == 2)
      {
        IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  return 0;
}

- (BOOL)_shouldEnableTrafficIncidentsForRoute:(id)a3 disabledForReasons:(id *)a4
{
  v5 = [a3 transportType];
  v6 = +[TrafficIncidentLayoutManager sharedInstance];
  v7 = [v6 isIncidentReportingEnabled];

  if (a4 && ((v5 == 0) & v7) == 0)
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:5];
    v9 = v8;
    if (v5)
    {
      [v8 addObject:@"incompatible transport type"];
    }

    if ((v7 & 1) == 0)
    {
      [v9 addObject:@"incident reporting disabled"];
    }

    *a4 = [v9 copy];
  }

  return (v5 == 0) & v7;
}

- (BOOL)_shouldEnableShareETAForRoute:(id)a3 disabledForReasons:(id *)a4
{
  v6 = a3;
  v7 = MSPSharedTripSharingAvailable();
  [v6 transportType];

  v8 = MSPSharedTripSharingSupportedForTransportType();
  v9 = +[MSPSharedTripService sharedInstance];
  v10 = [v9 canAddReceivers];

  v11 = +[MSPSharedTripService sharedInstance];
  v12 = [v11 receivers];
  v13 = [v12 count];

  v14 = 0;
  if (!self->_isSteppingMode && ((v7 ^ 1) & 1) == 0)
  {
    v14 = v8 & (v10 | (v13 != 0));
  }

  if (a4 && (v14 & 1) == 0)
  {
    v15 = [[NSMutableArray alloc] initWithCapacity:5];
    v16 = v15;
    if (self->_isSteppingMode)
    {
      [v15 addObject:@"stepping navigation"];
      if (v7)
      {
LABEL_8:
        if (v8)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else if (v7)
    {
      goto LABEL_8;
    }

    [v16 addObject:@"sharing not available"];
    if (v8)
    {
LABEL_9:
      if (v10)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

LABEL_16:
    [v16 addObject:@"incompatible transport type"];
    if (v10)
    {
LABEL_10:
      if (!v13)
      {
LABEL_12:
        *a4 = [v16 copy];

        return v14;
      }

LABEL_11:
      [v16 addObject:@"no current receivers"];
      goto LABEL_12;
    }

LABEL_17:
    [v16 addObject:@"cannot add receivers"];
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return v14;
}

- (id)_traySectionsDescription
{
  v3 = [[NSMutableString alloc] initWithString:@"["];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v4 = self->_usedSections;
  v45 = [(NSArray *)v4 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v45)
  {
    v5 = *v58;
    v43 = self;
    v44 = *v58;
    v42 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v58 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v46 = v6;
        v7 = *(*(&v57 + 1) + 8 * v6);
        v8 = [v7 unsignedIntegerValue];
        if (v8 == 2)
        {
          v36 = @"End";
LABEL_55:
          [v3 appendFormat:@"\n\t%@ {", v36];
          goto LABEL_56;
        }

        if (v8 != 1)
        {
          if (!v8)
          {
            [v3 appendFormat:@"\n\t%@ {", @"Waypoints"];
            v9 = [(NSDictionary *)self->_traySections objectForKeyedSubscript:v7];
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            obj = v9;
            v10 = [v9 countByEnumeratingWithState:&v53 objects:v62 count:16];
            if (!v10)
            {
              goto LABEL_29;
            }

            v11 = v10;
            v48 = *v54;
            while (1)
            {
              v12 = 0;
              do
              {
                v13 = v3;
                if (*v54 != v48)
                {
                  objc_enumerationMutation(obj);
                }

                v14 = *(*(&v53 + 1) + 8 * v12);
                v15 = [v14 waypointIndex];
                v16 = [v14 waypoint];
                if ([v16 isServerProvidedWaypoint])
                {
                  v17 = " (server-provided)";
                }

                else
                {
                  v17 = "";
                }

                v18 = v14;
                if (v18)
                {
                  v19 = objc_opt_class();
                  v20 = NSStringFromClass(v19);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_22;
                  }

                  v21 = [v18 performSelector:"accessibilityIdentifier"];
                  v22 = v21;
                  if (v21 && ![v21 isEqualToString:v20])
                  {
                    v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];
                  }

                  else
                  {

LABEL_22:
                    v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
                  }

                  goto LABEL_25;
                }

                v23 = @"<nil>";
LABEL_25:

                v3 = v13;
                [v13 appendFormat:@"\n\t\tWaypoint %lu%s (%@)", v15, v17, v23];

                v12 = v12 + 1;
              }

              while (v11 != v12);
              v24 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
              v11 = v24;
              if (!v24)
              {
LABEL_29:

                v4 = v42;
                self = v43;
                goto LABEL_46;
              }
            }
          }

          v37 = sub_10006D178();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v65 = "NSString *NavTrayViewControllerSectionToString(NavTrayViewControllerSection)";
            v66 = 2080;
            v67 = "NavTrayViewController.m";
            v68 = 1024;
            v69 = 143;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
          }

          if (sub_100E03634())
          {
            v38 = sub_10006D178();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = +[NSThread callStackSymbols];
              *buf = 138412290;
              v65 = v39;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }

          v36 = @"(Unknown)";
          goto LABEL_55;
        }

        [v3 appendFormat:@"\n\t%@ {", @"Actions"];
        v25 = [(NSDictionary *)self->_traySections objectForKeyedSubscript:v7];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v26 = [v25 countByEnumeratingWithState:&v49 objects:v61 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v50;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v50 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = [*(*(&v49 + 1) + 8 * i) unsignedIntegerValue];
              if (v30 >= 6)
              {
                v32 = sub_10006D178();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v65 = "NSString *NavTrayViewControllerActionToString(NavTrayViewControllerAction)";
                  v66 = 2080;
                  v67 = "NavTrayViewController.m";
                  v68 = 1024;
                  v69 = 123;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
                }

                v33 = sub_100E03634();
                v31 = @"(Unknown)";
                if (v33)
                {
                  v34 = sub_10006D178();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    v35 = +[NSThread callStackSymbols];
                    *buf = 138412290;
                    v65 = v35;
                    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                  }

                  v31 = @"(Unknown)";
                }
              }

              else
              {
                v31 = *(&off_10163B648 + v30);
              }

              [v3 appendFormat:@"\n\t\t%@", v31];
            }

            v27 = [v25 countByEnumeratingWithState:&v49 objects:v61 count:16];
          }

          while (v27);
        }

LABEL_46:
        v5 = v44;
LABEL_56:
        [v3 appendString:@"\n\t}"];
        v6 = v46 + 1;
      }

      while ((v46 + 1) != v45);
      v45 = [(NSArray *)v4 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v45);
  }

  [v3 appendString:@"\n]"];
  v40 = [v3 copy];

  return v40;
}

- (void)_computeSections
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(NavTrayViewController *)self waypointRows];
  [(NSDictionary *)v3 setObject:v5 forKeyedSubscript:&off_1016E89F0];

  [(NSArray *)v4 addObject:&off_1016E89F0];
  v6 = objc_opt_new();
  if (self->_isSteppingMode)
  {
    v7 = &off_1016E8A38;
LABEL_14:
    [v6 addObject:v7];
    goto LABEL_15;
  }

  if ([(NavTrayViewController *)self _shouldEnableAddStop])
  {
    [v6 addObject:&off_1016E8A50];
  }

  if ([(NavTrayViewController *)self enableShareETA])
  {
    if ([(NavTrayViewController *)self _isSharingTrip])
    {
      v8 = &off_1016E8A68;
    }

    else
    {
      v8 = &off_1016E8A80;
    }

    [v6 addObject:v8];
  }

  if ([(NavTrayViewController *)self enableTrafficIncidents])
  {
    [v6 addObject:&off_1016E8A98];
  }

  if ([(NavTrayViewController *)self _shouldEnableSpokenDirections])
  {
    v7 = &off_1016E8AB0;
    goto LABEL_14;
  }

LABEL_15:
  [(NSDictionary *)v3 setObject:v6 forKeyedSubscript:&off_1016E8A08];
  [(NSArray *)v4 addObject:&off_1016E8A08];
  [(NSDictionary *)v3 setObject:&off_1016ED5F8 forKeyedSubscript:&off_1016E8A20];
  [(NSArray *)v4 addObject:&off_1016E8A20];
  traySections = self->_traySections;
  self->_traySections = v3;
  v10 = v3;

  usedSections = self->_usedSections;
  self->_usedSections = v4;

  v12 = sub_100B78EB8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(NavTrayViewController *)self _traySectionsDescription];
    v14 = 134349314;
    v15 = self;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Tray sections are now: %{public}@", &v14, 0x16u);
  }
}

- (NSMutableDictionary)actionCells
{
  actionCells = self->_actionCells;
  if (!actionCells)
  {
    v4 = objc_opt_new();
    v5 = self->_actionCells;
    self->_actionCells = v4;

    actionCells = self->_actionCells;
  }

  return actionCells;
}

- (_TtC4Maps28NavigationWaypointController)waypointController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);
  v4 = [WeakRetained currentNavigationSession];
  v5 = [v4 waypointController];

  if (!v5)
  {
    v6 = sub_100B78EB8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 134349056;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "[%{public}p] Couldn't find a navigation waypoint controller within NavTrayViewController.", &v8, 0xCu);
    }
  }

  return v5;
}

- (id)_delegate
{
  if (self->_isSteppingMode)
  {
    v2 = &OBJC_IVAR___NavTrayViewController__steppingDelegate;
  }

  else
  {
    v2 = &OBJC_IVAR___NavTrayViewController__navigationDelegate;
  }

  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *v2));

  return WeakRetained;
}

- (void)setConnectedToCarPlay:(BOOL)a3
{
  if (self->_connectedToCarPlay != a3)
  {
    self->_connectedToCarPlay = a3;
    if ([(NavTrayViewController *)self isInArrivalState])
    {
      v6 = +[MNNavigationService sharedService];
      v4 = [v6 route];
      v5 = [v4 legIndexForStepIndex:{objc_msgSend(v6, "stepIndex")}];

      [(NavTrayViewController *)self _handleArrivalAtEndOfLegIndex:v5 forced:1 service:v6];
    }
  }
}

- (void)_updateWithRoute:(id)a3
{
  v5 = a3;
  v37 = 0;
  v6 = [(NavTrayViewController *)self _shouldEnableShareETAForRoute:v5 disabledForReasons:&v37];
  v33 = v37;
  v36 = 0;
  v7 = [(NavTrayViewController *)self _shouldEnableTrafficIncidentsForRoute:v5 disabledForReasons:&v36];
  v8 = v36;
  route = self->_route;
  v10 = route != v5;
  if (route != v5)
  {
    v11 = sub_100B78EB8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(GEOComposedRoute *)v5 uniqueRouteID];
      *buf = 134349314;
      v39 = self;
      v40 = 2114;
      v41 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Updating route: %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&self->_route, a3);
    v13 = [(NavTrayViewController *)self route];
    v14 = [v13 transportType] == 2;

    if (v14)
    {
      [(NavTrayViewController *)self setCategoriesAPIController:0];
    }

    else
    {
      v15 = [(NavTrayViewController *)self categoriesAPIController];
      v16 = v15 == 0;

      if (v16)
      {
        v17 = objc_alloc_init(NavSARAPIController);
        [(NavTrayViewController *)self setCategoriesAPIController:v17];
      }

      objc_initWeak(buf, self);
      v18 = [(NavTrayViewController *)self categoriesAPIController];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100B80778;
      v34[3] = &unk_101661B98;
      objc_copyWeak(&v35, buf);
      [v18 fetchSARCategoriesOnCompletionHandler:v34];

      objc_destroyWeak(&v35);
      objc_destroyWeak(buf);
    }

    self->_analyticsTarget = [(NavTrayViewController *)self currentUITargetForAnalytics];
    v19 = [(GEOComposedRoute *)self->_route destination];
    v20 = [v19 navDisplayName];

    if ([v20 length])
    {
      [(NavTrayHeaderView *)self->_navHeaderView setDestinationName:v20];
    }

    else
    {
      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:@"[NavTray] Default Rerouting Title" value:@"localized string not found" table:0];
      [(NavTrayHeaderView *)self->_navHeaderView setDestinationName:v22];
    }

    if (self->_isSteppingMode)
    {
      [(NavTrayViewController *)self setCurrentStepIndex:0];
    }
  }

  if (self->_enableTrafficIncidents != v7)
  {
    self->_enableTrafficIncidents = v7;
    v23 = sub_100B78EB8();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v24)
      {
        *buf = 134349056;
        v39 = self;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}p] Report Incident action is now enabled", buf, 0xCu);
      }

      if (![v8 count])
      {
        goto LABEL_28;
      }

      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v39 = "[NavTrayViewController _updateWithRoute:]";
        v40 = 2080;
        v41 = "NavTrayViewController.m";
        v42 = 1024;
        v43 = 685;
        v44 = 2080;
        v45 = "reportingDisabledReasons.count == 0";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (!sub_100E03634())
      {
        goto LABEL_28;
      }

      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v39 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    else if (v24)
    {
      *buf = 134349314;
      v39 = self;
      v40 = 2114;
      v41 = v8;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}p] Report Incident action is now disabled for reasons: %{public}@", buf, 0x16u);
    }

LABEL_28:
    v10 = 1;
  }

  if (self->_enableShareETA == v6)
  {
    if (!v10)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  self->_enableShareETA = v6;
  v27 = sub_100B78EB8();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v28)
    {
      *buf = 134349056;
      v39 = self;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}p] Share ETA action is now enabled", buf, 0xCu);
    }

    if (![v33 count])
    {
      goto LABEL_44;
    }

    v29 = sub_10006D178();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v39 = "[NavTrayViewController _updateWithRoute:]";
      v40 = 2080;
      v41 = "NavTrayViewController.m";
      v42 = 1024;
      v43 = 696;
      v44 = 2080;
      v45 = "sharingDisabledReasons.count == 0";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (!sub_100E03634())
    {
      goto LABEL_44;
    }

    v27 = sub_10006D178();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v30 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v39 = v30;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  else if (v28)
  {
    *buf = 134349314;
    v39 = self;
    v40 = 2114;
    v41 = v33;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}p] Share ETA action is now disabled for reasons: %{public}@", buf, 0x16u);
  }

LABEL_44:
  [(NavTrayViewController *)self _updateShareETADisclosure];
LABEL_45:
  [(NavTrayViewController *)self _computeSections];
  v31 = [(NavTrayViewController *)self tableView];
  [v31 reloadData];

  v32 = [(ContaineeViewController *)self cardPresentationController];
  [v32 updateHeightForCurrentLayout];

LABEL_46:
}

- (void)_updateShareETADisclosure
{
  [(NavTrayViewController *)self loadViewIfNeeded];
  v3 = [(NavTrayViewController *)self route];
  v4 = [v3 shareETAWaypointContacts];

  v5 = [v4 count];
  if (self->_enableShareETA)
  {
    v6 = ![(NavTrayViewController *)self isInArrivalState];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NavTrayHeaderView *)self->_navHeaderView waldoModel];

  v8 = [(NavTrayViewController *)self receivingContacts];
  v9 = [v8 count];

  if (v9 && v6)
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"[NavTray] Sharing with %lu" value:@"localized string not found" table:0];
    v12 = [(NavTrayViewController *)self receivingContacts];
    v13 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v11, [v12 count]);

    v14 = [[_TtC4Maps22ShareETAAccessoryModel alloc] initWithTitle:v13 shortTitle:0 state:&off_1016E8A20];
    [(NavTrayHeaderView *)self->_navHeaderView setShareETAModel:v14];
    goto LABEL_7;
  }

  if (self->_displayingInitialBanner && (+[MSPSharedTripService sharedInstance](MSPSharedTripService, "sharedInstance"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 canAddReceivers] & v6, v15, v16 == 1))
  {
    if (v5 == 1)
    {
      v17 = sub_100B78EB8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v34 = [v4 lastObject];
        v18 = [v34 contact];
        v19 = +[AddressBookManager sharedManager];
        v20 = [v19 meCard];
        v21 = [v20 identifier];
        *buf = 134349571;
        v37 = self;
        v38 = 2113;
        v39 = v18;
        v40 = 2113;
        v41 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] Will show share ETA disclosure for contact: %{private}@, with meIdentifier: %{private}@", buf, 0x20u);
      }

      v13 = [v4 lastObject];
      v22 = +[MSPSharedTripService sharedInstance];
      v35 = 0;
      v23 = [v22 capabilityTypeForContact:v13 serviceName:&v35 isActiveReceiver:0];
      v14 = v35;

      v24 = 0;
      v25 = self->_contactSharingState - 1;
      if (v25 <= 2)
      {
        v24 = qword_1012154B0[v25];
      }

      v26 = [_TtC4Maps19WaldoAccessoryModel alloc];
      v27 = [(NavTrayViewController *)self shareETAFooterText];
      v28 = [NSNumber numberWithInteger:v24];
      v29 = [(WaldoAccessoryModel *)v26 initWithContact:v13 capabilityType:v23 serviceName:v14 footerText:v27 state:v28];

      [(NavTrayHeaderView *)self->_navHeaderView setWaldoModel:v29];
LABEL_7:

      if (v7)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"[NavTray] Share ETA Hint" value:@"localized string not found" table:0];

    v33 = [[_TtC4Maps22ShareETAAccessoryModel alloc] initWithTitle:v32 shortTitle:0 state:&off_1016E89F0];
    [(NavTrayHeaderView *)self->_navHeaderView setShareETAModel:v33];

    if (v7)
    {
      goto LABEL_20;
    }
  }

  else
  {
    [(NavTrayHeaderView *)self->_navHeaderView setShareETAModel:0];
    [(NavTrayHeaderView *)self->_navHeaderView setWaldoModel:0];
    if (v7)
    {
      goto LABEL_20;
    }
  }

LABEL_18:
  v30 = [(NavTrayHeaderView *)self->_navHeaderView waldoModel];

  if (v30)
  {
    [GEOAPPortal captureUserAction:45 target:91 value:0];
  }

LABEL_20:
}

- (void)_updateShareETADisclosureIfNecessary
{
  if (!self->_sharedTripAnimationTimer && self->_contactSharingState != 1)
  {
    [(NavTrayViewController *)self _updateShareETADisclosure];
  }
}

- (void)setShareETAFooterText:(id)a3
{
  v4 = a3;
  v5 = self->_shareETAFooterText;
  v6 = v4;
  if (v6 | v5)
  {
    v10 = v6;
    v7 = [v5 isEqual:v6];

    v6 = v10;
    if ((v7 & 1) == 0)
    {
      v8 = [v10 copy];
      shareETAFooterText = self->_shareETAFooterText;
      self->_shareETAFooterText = v8;

      [(NavTrayViewController *)self _updateShareETADisclosureIfNecessary];
      v6 = v10;
    }
  }
}

- (void)setReceivingContacts:(id)a3
{
  v4 = a3;
  v5 = self->_receivingContacts;
  v6 = v4;
  if (v6 | v5)
  {
    v7 = [v5 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [v6 copy];
      receivingContacts = self->_receivingContacts;
      self->_receivingContacts = v8;

      v10 = sub_100B78EB8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v18 = 134349314;
        v19 = self;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Updated receiving contacts: %@", &v18, 0x16u);
      }

      if (self->_sharedTripAnimationTimer && !self->_contactSharingState)
      {
        [(NavTrayViewController *)self _updateShareETADisclosure];
      }

      else
      {
        [(NavTrayViewController *)self _updateShareETADisclosureIfNecessary];
      }

      usedSections = self->_usedSections;
      if (usedSections)
      {
        v12 = [(NSArray *)usedSections indexOfObject:&off_1016E8A08];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = v12;
          v14 = [(NavTrayViewController *)self tableView];
          v15 = [v14 numberOfSections];

          if (v13 < v15)
          {
            v16 = [(NavTrayViewController *)self tableView];
            v17 = [NSIndexSet indexSetWithIndex:v13];
            [v16 reloadSections:v17 withRowAnimation:5];
          }
        }
      }
    }
  }
}

- (void)updateCardCornerRadiusForLayout:(unint64_t)a3
{
  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 usingSheetPresentation];

  if (!v6)
  {
    return;
  }

  if (a3 == 1)
  {
    v7 = [(ContaineeViewController *)self cardPresentationController];
    if ([v7 containerStyle] == 1 && !-[NavTrayViewController isInArrivalState](self, "isInArrivalState"))
    {
      v9 = [(NavTrayHeaderView *)self->_navHeaderView hasAccessory];

      if ((v9 & 1) == 0)
      {
        [(NavTrayViewController *)self headerHeight];
        v8 = v10 * 0.5;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8 = UISheetPresentationControllerAutomaticDimension;
LABEL_7:
  v11 = [(NavTrayViewController *)self sheetPresentationController];
  [v11 setPreferredCornerRadius:v8];
}

- (double)topSpaceForScrollPocket
{
  if (self->_navHeaderView)
  {
    [(NavTrayHeaderView *)self->_navHeaderView metricsViewHeight];
  }

  else
  {
    [(NavTrayViewController *)self headerHeight];
  }

  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NavTrayViewController;
  [(MapsThemeViewController *)&v19 traitCollectionDidChange:v4];
  v5 = [(NavTrayViewController *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];
  if (sub_10008FB5C(v6, v7))
  {
  }

  else
  {
    v8 = [(NavTrayViewController *)self traitCollection];
    v9 = [v8 accessibilityContrast];
    v10 = [v4 accessibilityContrast];

    if (v9 == v10)
    {
      goto LABEL_5;
    }
  }

  v11 = [(NavTrayViewController *)self tableView];
  [v11 reloadData];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B812D0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
LABEL_5:
  v12 = [(NavTrayViewController *)self traitCollection];
  v13 = sub_100017FE8(v4, v12);

  if (v13)
  {
    v14 = [(NavTrayViewController *)self traitCollection];
    v15 = [v14 isLuminanceReduced];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100B81314;
    v16[3] = &unk_101661AE0;
    v17 = v15;
    v16[4] = self;
    [UIView _maps_animateForAndromeda:v15 animations:v16];
  }
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = NavTrayViewController;
  [(NavTrayViewController *)&v7 viewWillLayoutSubviews];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 transitionProgressFromLayout:1 toLayout:2];
  v5 = v4;

  [(NavTrayHeaderView *)self->_navHeaderView setExpansionProgress:v5];
  v6 = [(ContaineeViewController *)self cardPresentationController];
  -[NavTrayViewController updateCardCornerRadiusForLayout:](self, "updateCardCornerRadiusForLayout:", [v6 containeeLayout]);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = NavTrayViewController;
  [(NavTrayViewController *)&v6 viewDidDisappear:a3];
  v4 = +[TrafficIncidentLayoutManager sharedInstance];
  [v4 removeObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_phoneNumberPickerAlertController);
  [WeakRetained dismissViewControllerAnimated:0 completion:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NavTrayViewController;
  [(NavTrayViewController *)&v5 viewDidAppear:a3];
  self->_viewDidAppear = 1;
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 updateHeightForCurrentLayout];
}

- (void)viewWillAppear:(BOOL)a3
{
  v24.receiver = self;
  v24.super_class = NavTrayViewController;
  [(ContaineeViewController *)&v24 viewWillAppear:a3];
  v4 = +[MNNavigationService sharedService];
  v5 = [v4 route];
  [(NavTrayViewController *)self _updateWithRoute:v5];

  [(ContaineeViewController *)self setContentScrollView:self->_tableView forEdge:1];
  v6 = +[TrafficIncidentLayoutManager sharedInstance];
  [v6 addObserver:self];

  v7 = +[MSPSharedTripService sharedInstance];
  v8 = [v7 receivers];
  [(NavTrayViewController *)self setReceivingContacts:v8];

  v9 = [(NavTrayViewController *)self view];
  v10 = [v9 window];

  if (v10)
  {
    v11 = [(ContaineeViewController *)self cardPresentationController];
    [v11 wantsLayout:1];
  }

  if (self->_enableShareETA)
  {
    if (!self->_didDisplayInitialBanner)
    {
      v12 = sub_100B78EB8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v26 = self;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Starting timer to show Share ETA initial banner", buf, 0xCu);
      }

      [(NavTrayViewController *)self _startTimerToDisplayInitialBanner];
    }
  }

  else if (!self->_didDisplayInitialBanner)
  {
    v13 = sub_100B78EB8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v26 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Not presenting Share ETA initial banner as it's not available", buf, 0xCu);
    }

    self->_didDisplayInitialBanner = 1;
  }

  v14 = +[MNNavigationService sharedService];
  v15 = [v14 arrivalInfo];
  v16 = [v15 arrivalState];

  if (v16 != -1)
  {
    if (v16)
    {
      v17 = [v14 route];
      v18 = [v17 legIndexForStepIndex:{objc_msgSend(v14, "stepIndex")}];

      if ((v16 - 1) > 5)
      {
        v19 = 0;
      }

      else
      {
        v19 = qword_101215480[(v16 - 1)];
      }

      [(NavTrayHeaderView *)self->_navHeaderView setArrivalState:v19];
      [(NavTrayViewController *)self _handleArrivalAtEndOfLegIndex:v18 service:v14];
    }

    else
    {
      [(NavTrayViewController *)self _resumeNavigation];
    }
  }

  objc_initWeak(buf, self);
  v20 = +[MSPSharedTripService sharedInstance];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100B819D8;
  v22[3] = &unk_10165CF80;
  objc_copyWeak(&v23, buf);
  [v20 refreshSharingIdentityWithCompletion:v22];

  v21 = [(ContaineeViewController *)self cardPresentationController];
  -[NavTrayViewController updateCardCornerRadiusForLayout:](self, "updateCardCornerRadiusForLayout:", [v21 containeeLayout]);

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)viewDidLoad
{
  v3 = [(NavTrayViewController *)self view];
  [v3 setAccessibilityIdentifier:@"NavTray"];

  v4 = objc_opt_new();
  contentView = self->_contentView;
  self->_contentView = v4;

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView setAlpha:0.0];
  [(UIView *)self->_contentView setAccessibilityIdentifier:@"NavTrayContent"];
  v6 = [(NavTrayViewController *)self view];
  [v6 addSubview:self->_contentView];

  v114.receiver = self;
  v114.super_class = NavTrayViewController;
  [(ContaineeViewController *)&v114 viewDidLoad];
  if (!self->_isSteppingMode)
  {
    v7 = +[MSPSharedTripService sharedInstance];
    [v7 addSendingObserver:self];
  }

  v8 = [(ContaineeViewController *)self cardPresentationController];
  [v8 setFirstCard:1];

  v9 = [(ContaineeViewController *)self cardPresentationController];
  [v9 setEdgeAttachedRegularHeightDimmingBehavior:2];

  if (self->_isSteppingMode)
  {
    v10 = +[MNNavigationService sharedService];
    v11 = [v10 route];
    route = self->_route;
    self->_route = v11;

    v13 = [[StepTrayHeaderView alloc] initWithDelegate:self metrics:self->_metrics];
    stepHeaderView = self->_stepHeaderView;
    self->_stepHeaderView = v13;

    objc_storeStrong(&self->_headerView, self->_stepHeaderView);
    [(NavTrayViewController *)self _computeSections];
  }

  else
  {
    v15 = [[NavTrayHeaderView alloc] initWithDelegate:self metrics:self->_metrics];
    navHeaderView = self->_navHeaderView;
    self->_navHeaderView = v15;

    [(GuidanceObserver *)self->_guidanceObserver addOutlet:self->_navHeaderView];
    v17 = +[MNNavigationService sharedService];
    v18 = [GuidanceETA alloc];
    v19 = [v17 displayEtaInfo];
    v20 = [v17 remainingDistanceInfo];
    v21 = [v17 batteryChargeInfo];
    v22 = [v17 upcomingStop];
    v23 = [v22 timezone];
    v24 = -[GuidanceETA initWithDisplayETA:remainingDistance:batteryChargeInfo:destinationTimeZone:transportType:](v18, "initWithDisplayETA:remainingDistance:batteryChargeInfo:destinationTimeZone:transportType:", v19, v20, v21, v23, [v17 navigationTransportType]);
    [(NavTrayHeaderView *)self->_navHeaderView setETA:v24];

    [(NavTrayHeaderView *)self->_navHeaderView setExpansionProgress:0.0];
    objc_storeStrong(&self->_headerView, self->_navHeaderView);
  }

  [(UIView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v25) = 1148846080;
  [(UIView *)self->_headerView setContentCompressionResistancePriority:0 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [(UIView *)self->_headerView setContentCompressionResistancePriority:1 forAxis:v26];
  v27 = [(NavTrayViewController *)self view];
  [v27 addSubview:self->_headerView];

  [(GuidanceObserver *)self->_guidanceObserver repeatAllUpdatesForOutlet:self->_navHeaderView];
  v28 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = self->_tableView;
  self->_tableView = v28;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setSeparatorInset:0.0, 70.0, 0.0, 16.0];
  [(UITableView *)self->_tableView _setTopPadding:0.0];
  [(UITableView *)self->_tableView _setBottomPadding:0.0];
  [(UITableView *)self->_tableView setSectionHeaderHeight:0.0];
  [(UITableView *)self->_tableView setSectionFooterHeight:0.0];
  [(UITableView *)self->_tableView setAlwaysBounceVertical:0];
  v30 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v30];

  [(NavTrayMetrics *)self->_metrics defaultVerticalPadding];
  [(UITableView *)self->_tableView setContentInset:0.0, 0.0, v31, 0.0];
  [(NavTrayMetrics *)self->_metrics defaultHorizontalPadding];
  v33 = v32;
  [(NavTrayMetrics *)self->_metrics defaultHorizontalPadding];
  [(UITableView *)self->_tableView setLayoutMargins:0.0, v33, 0.0, v34];
  v35 = self->_tableView;
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  [(UITableView *)v35 registerClass:v36 forCellReuseIdentifier:v38];

  v39 = self->_tableView;
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = NSStringFromClass(v41);
  [(UITableView *)v39 registerClass:v40 forCellReuseIdentifier:v42];

  v43 = self->_tableView;
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = NSStringFromClass(v45);
  [(UITableView *)v43 registerClass:v44 forCellReuseIdentifier:v46];

  [(UITableView *)self->_tableView setAccessibilityIdentifier:@"NavTrayTableView"];
  [(UITableView *)self->_tableView _setPocketsEnabled:0];
  v47 = [(NavTrayViewController *)self contentView];
  [v47 addSubview:self->_tableView];

  v48 = [(NavTrayViewController *)self view];
  v49 = [(NavTrayViewController *)self contentView];
  [v48 bringSubviewToFront:v49];

  v50 = [(NavTrayViewController *)self view];
  v51 = [(NavTrayViewController *)self headerView];
  [v50 bringSubviewToFront:v51];

  v113 = [(NavTrayViewController *)self headerView];
  v111 = [v113 leadingAnchor];
  v112 = [(NavTrayViewController *)self view];
  v110 = [v112 leadingAnchor];
  v109 = [v111 constraintEqualToAnchor:v110];
  v115[0] = v109;
  v108 = [(NavTrayViewController *)self headerView];
  v106 = [v108 trailingAnchor];
  v107 = [(NavTrayViewController *)self view];
  v105 = [v107 trailingAnchor];
  v104 = [v106 constraintEqualToAnchor:v105];
  v115[1] = v104;
  v103 = [(NavTrayViewController *)self headerView];
  v101 = [v103 topAnchor];
  v102 = [(NavTrayViewController *)self view];
  v100 = [v102 topAnchor];
  v99 = [v101 constraintEqualToAnchor:v100];
  v115[2] = v99;
  v98 = [(NavTrayViewController *)self headerView];
  v96 = [v98 bottomAnchor];
  v97 = [(NavTrayViewController *)self view];
  v95 = [v97 bottomAnchor];
  v94 = [v96 constraintLessThanOrEqualToAnchor:v95];
  v115[3] = v94;
  v93 = [(NavTrayViewController *)self contentView];
  v91 = [v93 leadingAnchor];
  v92 = [(NavTrayViewController *)self view];
  v90 = [v92 leadingAnchor];
  v89 = [v91 constraintEqualToAnchor:v90];
  v115[4] = v89;
  v88 = [(NavTrayViewController *)self contentView];
  v86 = [v88 trailingAnchor];
  v87 = [(NavTrayViewController *)self view];
  v85 = [v87 trailingAnchor];
  v84 = [v86 constraintEqualToAnchor:v85];
  v115[5] = v84;
  v83 = [(NavTrayViewController *)self contentView];
  v81 = [v83 topAnchor];
  v82 = [(NavTrayViewController *)self view];
  v80 = [v82 topAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v115[6] = v79;
  v78 = [(NavTrayViewController *)self contentView];
  v76 = [v78 bottomAnchor];
  v77 = [(NavTrayViewController *)self view];
  v75 = [v77 bottomAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v115[7] = v74;
  v73 = [(NavTrayViewController *)self tableView];
  v71 = [v73 leadingAnchor];
  v72 = [(NavTrayViewController *)self contentView];
  v70 = [v72 leadingAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v115[8] = v69;
  v68 = [(NavTrayViewController *)self tableView];
  v66 = [v68 trailingAnchor];
  v67 = [(NavTrayViewController *)self contentView];
  v65 = [v67 trailingAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v115[9] = v64;
  v63 = [(NavTrayViewController *)self tableView];
  v62 = [v63 topAnchor];
  v52 = [(NavTrayViewController *)self contentView];
  v53 = [v52 topAnchor];
  v54 = [v62 constraintEqualToAnchor:v53];
  v115[10] = v54;
  v55 = [(NavTrayViewController *)self tableView];
  v56 = [v55 bottomAnchor];
  v57 = [(NavTrayViewController *)self contentView];
  v58 = [v57 bottomAnchor];
  v59 = [v56 constraintEqualToAnchor:v58];
  v115[11] = v59;
  v60 = [NSArray arrayWithObjects:v115 count:12];
  [NSLayoutConstraint activateConstraints:v60];

  [(NavTrayViewController *)self _updateShareETADisclosure];
  if (self->_isSteppingMode)
  {
    [(NavTrayViewController *)self setCurrentStepIndex:0];
  }

  v61 = [(NavTrayViewController *)self waypointController];
  [v61 registerObserver:self];
}

- (void)_commonInit
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 setBlurInCardView:0];

  v4 = [UIColor colorNamed:@"NavigationMaterialColor"];
  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 setCardColor:v4];

  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 setAllowsSwipeToDismiss:0];

  v7 = [(ContaineeViewController *)self cardPresentationController];
  [v7 setMaximumLayoutForEdgeInsetUpdate:1];

  v8 = [(ContaineeViewController *)self cardPresentationController];
  [v8 setIncludesSafeAreaInsetWhenInset:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"offlineMapsStateChanged" name:@"UsingOfflineMapsStateChangedNotification" object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"_sceneConnectionsDidChange:" name:UISceneWillConnectNotification object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_sceneConnectionsDidChange:" name:UISceneDidDisconnectNotification object:0];

  [(NavTrayViewController *)self setConnectedToCarPlay:[UIApplication _maps_isAnySceneConnectedForRole:_UIWindowSceneSessionRoleCarPlay]];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_maneuverBannerViewEVStationsNotification:" name:@"ManeuverBannerViewEVStationsNotification" object:0];
}

- (id)initForNavigationWithDelegate:(id)a3 guidanceObserver:(id)a4 platformController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = NavTrayViewController;
  v11 = [(NavTrayViewController *)&v18 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    [(NavTrayViewController *)v11 _commonInit];
    objc_storeWeak(&v12->_navigationDelegate, v8);
    objc_storeStrong(&v12->_guidanceObserver, a4);
    objc_storeWeak(&v12->_platformController, v10);
    v13 = +[NavTrayMetrics defaultMetrics];
    metrics = v12->_metrics;
    v12->_metrics = v13;

    v15 = +[MNNavigationService sharedService];
    [v15 registerObserver:v12];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v12 selector:"_resumedFromSAR" name:@"NavModeControllerResumeOriginalDestinationNotification" object:0];
  }

  return v12;
}

- (id)initForSteppingWithDelegate:(id)a3 platformController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = NavTrayViewController;
  v8 = [(NavTrayViewController *)&v13 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(NavTrayViewController *)v8 _commonInit];
    objc_storeWeak(&v9->_steppingDelegate, v6);
    v9->_isSteppingMode = 1;
    v10 = +[NavTrayMetrics defaultMetrics];
    metrics = v9->_metrics;
    v9->_metrics = v10;

    objc_storeWeak(&v9->_platformController, v7);
  }

  return v9;
}

@end