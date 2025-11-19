@interface IPCServer
+ (id)sharedServer;
- (BOOL)_isAnySceneForegroundAndNotOccludedForRole:(id)a3;
- (BOOL)_isInBackground;
- (BOOL)_isMapsForegroundOnMainWindow;
- (BOOL)_isMapsForegroundOnlyOnHybridIC;
- (BOOL)_isSceneOccluded:(id)a3;
- (BackgroundNavigationDelegate)backgroundNavigationDelegate;
- (ExternalGuidanceSource)externalGuidanceSource;
- (IPCServer)init;
- (VirtualGarageSource)virtualGarageSource;
- (id)_currentGuidanceStateMessageWithGuidanceCausedVibration:(BOOL)a3;
- (unint64_t)_maximumScenePollCount;
- (void)_checkKeySceneInternal;
- (void)_invalidatedTrafficIncidentAlert:(id)a3;
- (void)_postWeakLocationNotification;
- (void)_pushGuidanceStateIfChangedWithVibration:(BOOL)a3;
- (void)_receivedTrafficIncidentAlert:(id)a3;
- (void)_removeTrafficIncidentAlertFromTimer:(id)a3;
- (void)_sceneDidActivate:(id)a3;
- (void)_sceneDidEnterBackground:(id)a3;
- (void)_sceneWillConnect;
- (void)_sceneWillDeactivate:(id)a3;
- (void)_sceneWillEnterForeground:(id)a3;
- (void)_sendWeakLocationNotificationIfNeededWithGuidanceState:(id)a3;
- (void)_setTimeToManeuver:(double)a3 distanceToManeuver:(double)a4 forStep:(id)a5;
- (void)_showNoGuidance;
- (void)_startWaitingToHandleMessage:(id)a3;
- (void)_startWaitingToSendResponse;
- (void)_timedOutWaitingToSendResponse;
- (void)_updatedTrafficIncidentAlert:(id)a3;
- (void)_vibrateForRerouteWithService:(id)a3;
- (void)checkNotificationSettingsAndPerformBlock:(id)a3;
- (void)dealloc;
- (void)dismissNavigationSafetyAlertWithReply:(id)a3;
- (void)dismissTrafficIncidentAlert:(id)a3;
- (void)endNavigationWithReply:(id)a3;
- (void)getGuidanceState:(id)a3 reply:(id)a4;
- (void)handleTrafficeReroute:(id)a3 reply:(id)a4;
- (void)loadDirections:(id)a3 reply:(id)a4;
- (void)navigationService:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationService:(id)a3 didChangeGuidanceState:(id)a4;
- (void)navigationService:(id)a3 didChangeNavigationState:(int)a4;
- (void)navigationService:(id)a3 didEnableGuidancePrompts:(BOOL)a4;
- (void)navigationService:(id)a3 didFailWithError:(id)a4;
- (void)navigationService:(id)a3 didProcessSpeechEvent:(id)a4;
- (void)navigationService:(id)a3 didReceiveRouteSignalStrength:(unint64_t)a4;
- (void)navigationService:(id)a3 didReceiveTransitAlert:(id)a4;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6;
- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5;
- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6;
- (void)navigationService:(id)a3 didUpdateDistanceUntilSign:(double)a4 timeUntilSign:(double)a5 forStepIndex:(unint64_t)a6;
- (void)navigationService:(id)a3 didUpdateProceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6;
- (void)navigationService:(id)a3 didUpdateVehicleParkingInfo:(id)a4;
- (void)navigationService:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4;
- (void)navigationService:(id)a3 displayPrimaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8 maneuverStepIndex:(unint64_t)a9 isSynthetic:(BOOL)a10;
- (void)navigationService:(id)a3 showLaneDirections:(id)a4;
- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4;
- (void)navigationService:(id)a3 usePersistentDisplay:(BOOL)a4;
- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 willProcessSpeechEvent:(id)a4;
- (void)navigationServiceWillReroute:(id)a3;
- (void)navigationStateDidChangeTo:(unint64_t)a3 reason:(id)a4 error:(id)a5;
- (void)repeatLastGuidanceInstructionWithReply:(id)a3;
- (void)repeatLastReroutePromptWithReply:(id)a3;
- (void)setCompanionDaemonListenerEndpoint:(id)a3;
- (void)setNavigationMuted:(id)a3;
- (void)setNavigationVoiceVolume:(id)a3;
- (void)setPushDaemonListenerEndpoint:(id)a3;
- (void)setSiriPluginListenerEndpoint:(id)a3;
- (void)setState:(unint64_t)a3 withReason:(unint64_t)a4;
- (void)set_maneuverID:(id)a3;
- (void)showRecalculating;
- (void)startPreparedNavigation:(id)a3 reply:(id)a4;
@end

@implementation IPCServer

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005C68;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195CE38 != -1)
  {
    dispatch_once(&qword_10195CE38, block);
  }

  v2 = qword_10195CE30;

  return v2;
}

- (IPCServer)init
{
  v9.receiver = self;
  v9.super_class = IPCServer;
  v2 = [(IPCServer *)&v9 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_sceneWillConnect" name:UISceneWillConnectNotification object:0];
    [v3 addObserver:v2 selector:"_sceneDidActivate:" name:UISceneDidActivateNotification object:0];
    [v3 addObserver:v2 selector:"_sceneWillDeactivate:" name:UISceneWillDeactivateNotification object:0];
    [v3 addObserver:v2 selector:"_sceneDidEnterBackground:" name:UISceneDidEnterBackgroundNotification object:0];
    [v3 addObserver:v2 selector:"_sceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:0];
    v4 = +[MNNavigationService sharedService];
    [v4 registerObserver:v2];

    v5 = objc_opt_new();
    bannerSource = v2->_bannerSource;
    v2->_bannerSource = v5;

    v7 = +[MapsCarPlayExternalDeviceMonitor sharedInstance];
  }

  return v2;
}

- (void)_sceneWillConnect
{
  if (self->_pendingLoadDirectionsMessage)
  {
    v3 = sub_100E9E6E8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MAPS IPC Scene connected while waiting for scene, check now", v4, 2u);
    }

    [(IPCServer *)self _checkKeySceneInternal];
  }
}

- (BOOL)_isMapsForegroundOnMainWindow
{
  if ([UIApplication _maps_isAnySceneForegroundForRole:UIWindowSceneSessionRoleApplication])
  {
    return 1;
  }

  v3 = _UIWindowSceneSessionTypeCoverSheet;

  return [UIApplication _maps_isAnySceneForegroundForRole:v3];
}

- (BOOL)_isMapsForegroundOnlyOnHybridIC
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 connectedScenes];
  v5 = sub_1000282CC(v4, &stru_101625710);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000701E0;
  v11[3] = &unk_101625738;
  v11[4] = self;
  v6 = sub_100030774(v5, v11);
  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10067E80C;
    v10[3] = &unk_101625738;
    v10[4] = self;
    v7 = sub_100030774(v5, v10);
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BackgroundNavigationDelegate)backgroundNavigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundNavigationDelegate);

  return WeakRetained;
}

- (VirtualGarageSource)virtualGarageSource
{
  WeakRetained = objc_loadWeakRetained(&self->_virtualGarageSource);

  return WeakRetained;
}

- (ExternalGuidanceSource)externalGuidanceSource
{
  WeakRetained = objc_loadWeakRetained(&self->_externalGuidanceSource);

  return WeakRetained;
}

- (void)navigationService:(id)a3 didReceiveRouteSignalStrength:(unint64_t)a4
{
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"NavigationEnableWeakLocationNotification"];

  if (v7)
  {
    self->_hasPendingWeakLocationAlert = a4 == 2;
    [(IPCServer *)self _noteGuidanceStateChanged];

    [(IPCServer *)self _pushGuidanceState];
  }
}

- (void)navigationService:(id)a3 didReceiveTransitAlert:(id)a4
{
  v6 = a4;
  objc_storeStrong(&self->_alightAlert, a4);
  self->_hasPendingAlight = 1;
  v7 = sub_100E9E6E8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    alightAlert = self->_alightAlert;
    v9 = 138412290;
    v10 = alightAlert;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MAPS IPC Enqueued alight alert: %@", &v9, 0xCu);
  }

  [(IPCServer *)self _noteGuidanceStateChanged];
  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)a3 didProcessSpeechEvent:(id)a4
{
  self->_spokenEventProcessing = 0;
  currentSpokenEventID = self->_currentSpokenEventID;
  self->_currentSpokenEventID = 0;

  [(IPCServer *)self _noteGuidanceStateChanged];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)a3 willProcessSpeechEvent:(id)a4
{
  self->_spokenEventProcessing = 1;
  v5 = [a4 uniqueID];
  currentSpokenEventID = self->_currentSpokenEventID;
  self->_currentSpokenEventID = v5;

  [(IPCServer *)self _noteGuidanceStateChanged];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)a3 showLaneDirections:(id)a4
{
  v5 = a4;
  v6 = [[NavSignLaneGuidanceInfo alloc] initWithGuidanceLaneInfo:v5];

  [(IPCServer *)self setLaneGuidanceInfo:v6];
}

- (void)navigationService:(id)a3 usePersistentDisplay:(BOOL)a4
{
  v4 = a4;
  v6 = sub_100E9E6E8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [NSNumber numberWithBool:v4];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MAPS IPC Updated usePersistentDisplay : %@", &v8, 0xCu);
  }

  self->_isPersistentDisplay = v4;
  self->_isStickySignal = v4;
  [(IPCServer *)self _noteGuidanceStateChanged];
  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4
{
  v5 = a4;
  v6 = [v5 primarySign];
  if (v6)
  {

    goto LABEL_4;
  }

  v7 = [v5 secondarySign];

  if (v7)
  {
LABEL_4:
    v8 = [MKServerFormattedStringParameters alloc];
    v9 = [v5 primarySign];
    v10 = [v9 distanceDetailLevel];
    v11 = [v5 primarySign];
    v12 = [v11 variableOverrides];
    v13 = [v8 initWithInstructionsDistanceDetailLevel:v10 variableOverrides:v12];

    v14 = [v5 primarySign];
    v15 = [v14 titles];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100678B44;
    v52[3] = &unk_10165CBB8;
    v16 = v13;
    v53 = v16;
    v17 = sub_100021DB0(v15, v52);

    v18 = [v5 primarySign];
    v19 = [v18 details];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100678BAC;
    v50[3] = &unk_10165CBB8;
    v20 = v16;
    v51 = v20;
    v21 = sub_100021DB0(v19, v50);

    if ([(IPCServer *)self state]!= 4)
    {
      goto LABEL_13;
    }

    v22 = [v5 primarySign];
    v23 = [v22 junction];
    v24 = [v23 maneuverType];
    if (v24 == [(IPCServer *)self _maneuver])
    {
      v25 = [(IPCServer *)self maneuverInstructions];
      if ([v25 isEqualToArray:v17])
      {
        v26 = [(IPCServer *)self secondaryManeuverInstructions];
        if ([v26 isEqualToArray:v21])
        {
          v49 = [(IPCServer *)self _maneuverID];
          v47 = [v5 primarySign];
          v27 = [v47 uniqueID];
          v48 = [v49 isEqual:v27];

          if (v48)
          {
LABEL_17:
            [v5 timeUntilPrimarySign_SIRI_USE_ONLY];
            [(IPCServer *)self set_timeToManeuver:?];
            [v5 primaryDistance_SIRI_USE_ONLY];
            [(IPCServer *)self set_distanceToManeuver:?];
            self->_waitingForDistanceAndTimeToManeuver = 0;
            [(IPCServer *)self _noteGuidanceStateChanged];

            goto LABEL_18;
          }

LABEL_13:
          [(IPCServer *)self setState:4 withReason:4];
          v28 = [v5 primarySign];
          v29 = [v28 junction];
          -[IPCServer set_maneuver:](self, "set_maneuver:", [v29 maneuverType]);

          v30 = [v5 primarySign];
          v31 = [v30 junction];
          if (v31)
          {
            v32 = [MKJunction alloc];
            v33 = [v5 primarySign];
            v34 = [v33 junction];
            v35 = [v32 initWithJunction:v34];
            [(IPCServer *)self setJunction:v35];
          }

          else
          {
            [(IPCServer *)self setJunction:0];
          }

          v36 = [v5 primarySign];
          v37 = [v36 artworkOverride];
          [(IPCServer *)self setArtworkOverride:v37];

          v38 = [v5 primarySign];
          v39 = [v38 uniqueID];
          [(IPCServer *)self set_maneuverID:v39];

          v40 = [v5 primarySign];
          v41 = [v40 junction];
          -[IPCServer set_drivingSide:](self, "set_drivingSide:", [v41 drivingSide]);

          [(IPCServer *)self setManeuverInstructions:v17];
          [(IPCServer *)self setSecondaryManeuverInstructions:v21];
          v42 = [v5 primarySign];
          v43 = [v42 shieldID];
          v44 = [v42 shieldStringID];
          v45 = [v42 shieldText];
          v46 = [NavSignShieldInfo shieldWithID:v43 stringID:v44 text:v45];
          [(IPCServer *)self setShieldInfo:v46];

          goto LABEL_17;
        }
      }
    }

    goto LABEL_13;
  }

LABEL_18:
}

- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5
{
  [(IPCServer *)self _noteGuidanceStateChanged:a3];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)a3 didChangeGuidanceState:(id)a4
{
  [(IPCServer *)self _noteGuidanceStateChanged:a3];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)a3 didChangeNavigationState:(int)a4
{
  v6 = a3;
  if ([(IPCServer *)self _transportType]== 2)
  {
    if (a4 == 5)
    {
      [(IPCServer *)self showRecalculating];
      goto LABEL_8;
    }

    if ([(IPCServer *)self state]== 2)
    {
      [(IPCServer *)self _vibrateForRerouteWithService:v6];
    }
  }

  if (!a4)
  {
    [(BannerSource *)self->_bannerSource reset];
    self->_isRerouting = 0;
    *&self->_shownWeakLocationAlert = 0;
  }

LABEL_8:
}

- (void)navigationService:(id)a3 didFailWithError:(id)a4
{
  v5 = a3;
  [(IPCServer *)self _showNoGuidance];
  if ([(IPCServer *)self _transportType]== 2 && [(IPCServer *)self state]== 2)
  {
    [(IPCServer *)self _vibrateForRerouteWithService:v5];
  }
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  self->_isRerouting = 0;
  [(BannerSource *)self->_bannerSource resetExcludingJindo:a3];
  [(IPCServer *)self _noteGuidanceStateChanged];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationServiceWillReroute:(id)a3
{
  self->_isRerouting = 1;
  [(IPCServer *)self _noteGuidanceStateChanged];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v7 = a3;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    -[IPCServer set_transportType:](self, "set_transportType:", [v7 desiredTransportType]);
  }

  else if (!a5)
  {
    if (self->_trafficAlertTimer)
    {
      [(IPCServer *)self _removeTrafficIncidentAlertFromTimer:?];
    }

    [(IPCServer *)self _showNoGuidance];
  }
}

- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6
{
  v6 = *&a4;
  v9 = a3;
  v8 = [(IPCServer *)self _transportType];
  if (v6 == 2 && !v8 && [(IPCServer *)self _isInBackground])
  {
    [v9 vibrateForPrompt:5 completion:&stru_101625828];
  }

  [(IPCServer *)self set_transportType:v6];
}

- (void)navigationService:(id)a3 didEnableGuidancePrompts:(BOOL)a4
{
  if (!a4)
  {
    [(IPCServer *)self setState:0 withReason:5];
    self->_lastSeenManeuverAlert = 0;
  }
}

- (void)navigationService:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100679140;
  v12[3] = &unk_1016619A8;
  objc_copyWeak(&v13, &location);
  v9 = objc_retainBlock(v12);
  if ([(IPCServer *)self _transportType]== 2 && [(IPCServer *)self _isInBackground])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1006791B8;
    v10[3] = &unk_10165F438;
    v11 = v9;
    [v7 vibrateForPrompt:4 completion:v10];
  }

  else
  {
    (v9[2])(v9, 0);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)navigationService:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = 3;
  v8 = 2;
  if (v4 != 4)
  {
    v8 = 0;
  }

  if (v4 != 5)
  {
    v7 = v8;
  }

  v9 = v4 != 3 && v4 == 5;
  if (v4 == 3)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = (v10 | *&v4 & 0x10000);
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100679400;
  v13[3] = &unk_101652E88;
  objc_copyWeak(v14, &location);
  v14[1] = v11;
  v12 = objc_retainBlock(v13);
  if (v9 && LOWORD(self->_lastSeenManeuverAlert) != 3 && [(IPCServer *)self _transportType]== 2 && [(IPCServer *)self _isInBackground])
  {
    [(IPCServer *)self _maneuver];
    [(IPCServer *)self _drivingSide];
    [v6 vibrateForPrompt:MNInstructionsShortPromptTypeForManeuver() completion:v12];
  }

  else
  {
    (v12[2])(v12, 0);
  }

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)navigationService:(id)a3 displayPrimaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8 maneuverStepIndex:(unint64_t)a9 isSynthetic:(BOOL)a10
{
  v10 = *&a8;
  v12 = *&a6;
  v24 = a4;
  v15 = a7;
  v16 = sub_100021DB0(a5, &stru_101625808);
  if (-[IPCServer state](self, "state") != 4 || (v17 = [v24 maneuverType], v17 != -[IPCServer _maneuver](self, "_maneuver")) || (-[IPCServer secondaryManeuverInstructions](self, "secondaryManeuverInstructions"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToArray:", v16), v18, (v19 & 1) == 0))
  {
    [(IPCServer *)self setState:4 withReason:4];
    -[IPCServer set_maneuver:](self, "set_maneuver:", [v24 maneuverType]);
    if ([v24 hasJunctionType])
    {
      v20 = [[MKJunction alloc] initWithType:objc_msgSend(v24 maneuver:"junctionType") drivingSide:objc_msgSend(v24 elements:"maneuverType") count:{v10, objc_msgSend(v24, "junctionElements"), objc_msgSend(v24, "junctionElementsCount")}];
      [(IPCServer *)self setJunction:v20];
    }

    else
    {
      [(IPCServer *)self setJunction:0];
    }

    v21 = [v24 artworkOverride];
    [(IPCServer *)self setArtworkOverride:v21];

    [(IPCServer *)self set_drivingSide:v10];
    [(IPCServer *)self setManeuverInstructions:0];
    [(IPCServer *)self setSecondaryManeuverInstructions:v16];
    v22 = +[NSUUID UUID];
    [(IPCServer *)self set_maneuverID:v22];

    self->_lastSeenManeuverAlert = 0;
    if (v12)
    {
      v23 = [NavSignShieldInfo shieldWithID:v12 stringID:0 text:v15];
      [(IPCServer *)self setShieldInfo:v23];
    }

    else
    {
      [(IPCServer *)self setShieldInfo:0];
    }

    [(IPCServer *)self set_timeToManeuver:0.0];
    [(IPCServer *)self set_distanceToManeuver:0.0];
    self->_waitingForDistanceAndTimeToManeuver = 1;
    [(IPCServer *)self _noteGuidanceStateChanged];
  }
}

- (void)navigationService:(id)a3 didUpdateVehicleParkingInfo:(id)a4
{
  [(IPCServer *)self _noteGuidanceStateChanged:a3];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)a3 didUpdateDistanceUntilSign:(double)a4 timeUntilSign:(double)a5 forStepIndex:(unint64_t)a6
{
  v16 = a3;
  v10 = [v16 route];
  v11 = [v10 steps];
  v12 = [v11 count];

  if (v12 > a6)
  {
    v13 = [v16 route];
    v14 = [v13 steps];
    v15 = [v14 objectAtIndexedSubscript:a6];

    [(IPCServer *)self _setTimeToManeuver:v15 distanceToManeuver:a5 forStep:a4];
    [(IPCServer *)self _noteGuidanceStateChanged];
  }
}

- (void)navigationService:(id)a3 didUpdateProceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6
{
  v8 = [MNNavigationService sharedService:a3];
  v9 = [v8 navigationState];

  if (v9 != 5)
  {
    self->_lastSeenManeuverAlert = 0;
    [(IPCServer *)self setState:3 withReason:3];
    [(IPCServer *)self set_distanceToRoute:a4];
    self->_waitingForDistanceAndTimeToManeuver = 0;

    [(IPCServer *)self _noteGuidanceStateChanged];
  }
}

- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6
{
  v7 = a3;
  v8 = [GuidanceETA alloc];
  v16 = [v7 displayEtaInfo];
  v9 = [v7 remainingDistanceInfo];
  v10 = [v7 batteryChargeInfo];
  v11 = [v7 upcomingStop];
  v12 = [v11 timezone];
  v13 = [v7 navigationTransportType];

  v14 = [(GuidanceETA *)v8 initWithDisplayETA:v16 remainingDistance:v9 batteryChargeInfo:v10 destinationTimeZone:v12 transportType:v13];
  latestETA = self->_latestETA;
  self->_latestETA = v14;
}

- (void)_vibrateForRerouteWithService:(id)a3
{
  v4 = a3;
  [(IPCServer *)self setState:3 withReason:2];
  self->_waitingForDistanceAndTimeToManeuver = 0;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100679A90;
  v5[3] = &unk_1016619A8;
  objc_copyWeak(&v6, &location);
  [v4 vibrateForPrompt:3 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)navigationStateDidChangeTo:(unint64_t)a3 reason:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!+[NSThread isMainThread])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100679FA8;
    block[3] = &unk_10165EB08;
    block[4] = self;
    v30 = a3;
    v28 = v8;
    v29 = v9;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_33;
  }

  v10 = sub_100E9E6E8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (a3 >= 5)
    {
      v11 = [NSString stringWithFormat:@"?? - %lu", a3];
    }

    else
    {
      v11 = off_101625898[a3];
    }

    *buf = 138412546;
    v32 = v11;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MAPS IPC Received a navigation state change to %@ for reason %@.", buf, 0x16u);
  }

  [(NSTimer *)self->_waitingToRespondToMessageTimer invalidate];
  waitingToRespondToMessageTimer = self->_waitingToRespondToMessageTimer;
  self->_waitingToRespondToMessageTimer = 0;

  if (a3)
  {
    [(CLInUseAssertion *)self->_coreLocationInUseAssertion invalidate];
    coreLocationInUseAssertion = self->_coreLocationInUseAssertion;
    self->_coreLocationInUseAssertion = 0;
  }

  v14 = [(IPCServer *)self loadDirectionsDelayedReply];
  if (v14)
  {
  }

  else
  {
    v15 = [(IPCServer *)self startNavigationDelayedReply];

    if (!v15)
    {
      v24 = sub_100E9E6E8();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "MAPS IPC Siri/Watch is NOT waiting for us.", buf, 2u);
      }

      goto LABEL_33;
    }
  }

  v16 = sub_100E9E6E8();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "MAPS IPC Siri/Watch was waiting for us.", buf, 2u);
  }

  v17 = sub_100E9E6E8();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "MAPS IPC Sending reply so Siri/Watch can handle the change.", buf, 2u);
  }

  v18 = [(IPCServer *)self loadDirectionsDelayedReply];

  if (v18)
  {
    v19 = objc_alloc_init(IPCLoadDirectionsReply);
    [(IPCLoadDirectionsReply *)v19 setNavigationState:a3];
    [(IPCLoadDirectionsReply *)v19 setError:v9];
    if (a3)
    {
      [(CLInUseAssertion *)self->_coreLocationInUseAssertion invalidate];
      v20 = self->_coreLocationInUseAssertion;
      self->_coreLocationInUseAssertion = 0;
    }

    else if (self->_pendingSafetyWarning)
    {
      [(IPCLoadDirectionsReply *)v19 setSafetyWarningType:1];
      self->_pendingSafetyWarning = 0;
    }

    v23 = [(IPCServer *)self loadDirectionsDelayedReply];
    (v23)[2](v23, v19);

    [(IPCServer *)self setLoadDirectionsDelayedReply:0];
    goto LABEL_32;
  }

  v21 = [(IPCServer *)self startNavigationDelayedReply];

  if (a3 && v21)
  {
    v22 = objc_alloc_init(IPCNavigationActionReply);
    v19 = v22;
    if (a3 == 1)
    {
      [(IPCNavigationActionReply *)v22 setSuccess:1];
    }

    else
    {
      [(IPCNavigationActionReply *)v22 setSuccess:0];
      [(IPCLoadDirectionsReply *)v19 setNavigationActionError:3];
    }

    v25 = [(IPCServer *)self startNavigationDelayedReply];
    (v25)[2](v25, v19);

    [(IPCServer *)self setStartNavigationDelayedReply:0];
    [(CLInUseAssertion *)self->_coreLocationInUseAssertion invalidate];
    v26 = self->_coreLocationInUseAssertion;
    self->_coreLocationInUseAssertion = 0;

LABEL_32:
  }

LABEL_33:
}

- (void)_checkKeySceneInternal
{
  v3 = +[UIApplication _maps_keyMapsSceneDelegate];
  v4 = +[UIApplication _maps_applicationScenes];
  v5 = v4;
  if (v3)
  {
    v6 = v3;
LABEL_6:
    v8 = v6;
    v9 = sub_100E9E6E8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "MAPS IPC Ready-or-not sending pending directions message to %@", &v15, 0xCu);
    }

    self->_keyScenePollCount = 0;
    [(NSTimer *)self->_waitingForKeyScenePollTimer invalidate];
    waitingForKeyScenePollTimer = self->_waitingForKeyScenePollTimer;
    self->_waitingForKeyScenePollTimer = 0;

    if (self->_pendingLoadDirectionsMessage)
    {
      if (v8)
      {
        v11 = [(IPCServer *)self backgroundNavigationDelegate];
        [v11 prepareBackgroundNavigationWithMessage:self->_pendingLoadDirectionsMessage];
      }

      else
      {
        v12 = sub_100E9E6E8();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "MAPS IPC Cancelling prepareBackgroundNavigation, no scene available", &v15, 2u);
        }

        [(IPCServer *)self navigationStateDidChangeTo:2 reason:@"Couldn't service request to start navigation."];
      }

      pendingLoadDirectionsMessage = self->_pendingLoadDirectionsMessage;
      self->_pendingLoadDirectionsMessage = 0;
    }

    goto LABEL_15;
  }

  if ([v4 count] || (keyScenePollCount = self->_keyScenePollCount, keyScenePollCount > -[IPCServer _maximumScenePollCount](self, "_maximumScenePollCount")))
  {
    v6 = [v5 firstObject];
    goto LABEL_6;
  }

  v8 = sub_100E9E6E8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = self->_keyScenePollCount;
    v15 = 134217984;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MAPS IPC Waiting for key scene to connect... %lu", &v15, 0xCu);
  }

LABEL_15:
}

- (void)_startWaitingToHandleMessage:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_pendingLoadDirectionsMessage, a3);
  self->_keyScenePollCount = 0;
  [(NSTimer *)self->_waitingForKeyScenePollTimer invalidate];
  v6 = sub_100E9E6E8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 134218240;
    v10 = 0x3FB999999999999ALL;
    v11 = 2048;
    v12 = [(IPCServer *)self _maximumScenePollCount];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MAPS IPC Start waiting for a scene to service message, will poll every %#.1lfs up to %lu times", &v9, 0x16u);
  }

  v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"_checkKeyOrApplicationScene" selector:0 userInfo:1 repeats:0.1];
  waitingForKeyScenePollTimer = self->_waitingForKeyScenePollTimer;
  self->_waitingForKeyScenePollTimer = v7;
}

- (unint64_t)_maximumScenePollCount
{
  [(IPCLoadDirectionsMessage *)self->_pendingLoadDirectionsMessage originIsWatch];

  return GEOConfigGetUInteger();
}

- (void)_timedOutWaitingToSendResponse
{
  [(NSTimer *)self->_waitingToRespondToMessageTimer invalidate];
  waitingToRespondToMessageTimer = self->_waitingToRespondToMessageTimer;
  self->_waitingToRespondToMessageTimer = 0;

  v4 = [(IPCServer *)self loadDirectionsDelayedReply];

  if (v4)
  {
    [(CLInUseAssertion *)self->_coreLocationInUseAssertion invalidate];
    coreLocationInUseAssertion = self->_coreLocationInUseAssertion;
    self->_coreLocationInUseAssertion = 0;

    v10 = objc_alloc_init(IPCLoadDirectionsReply);
    [(IPCLoadDirectionsReply *)v10 setNavigationState:3];
    v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:4610 userInfo:0];
    [(IPCLoadDirectionsReply *)v10 setError:v6];

    v7 = [(IPCServer *)self loadDirectionsDelayedReply];
    (v7)[2](v7, v10);

    [(IPCServer *)self setLoadDirectionsDelayedReply:0];
  }

  else
  {
    v8 = [(IPCServer *)self startNavigationDelayedReply];

    if (!v8)
    {
      return;
    }

    v10 = objc_alloc_init(IPCNavigationActionReply);
    [(IPCLoadDirectionsReply *)v10 setSuccess:0];
    [(IPCLoadDirectionsReply *)v10 setNavigationActionError:3];
    v9 = [(IPCServer *)self startNavigationDelayedReply];
    (v9)[2](v9, v10);

    [(IPCServer *)self setStartNavigationDelayedReply:0];
  }
}

- (void)_startWaitingToSendResponse
{
  [(NSTimer *)self->_waitingToRespondToMessageTimer invalidate];
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_timedOutWaitingToSendResponse" selector:0 userInfo:0 repeats:60.0];
  waitingToRespondToMessageTimer = self->_waitingToRespondToMessageTimer;
  self->_waitingToRespondToMessageTimer = v3;
}

- (id)_currentGuidanceStateMessageWithGuidanceCausedVibration:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(IPCGuidanceStateReply);
  [(IPCGuidanceStateReply *)v5 setGuidanceState:[(IPCServer *)self state]];
  [(IPCGuidanceStateReply *)v5 setAffectsDimming:[(IPCServer *)self _guidanceAffectsDimming]| v3];
  [(IPCGuidanceStateReply *)v5 setTransportType:self->_transportType];
  transportType = self->_transportType;
  if (qword_10195CE48 != -1)
  {
    dispatch_once(&qword_10195CE48, &stru_101625848);
  }

  v7 = [qword_10195CE40 path];
  AppBooleanValueWithContainer = _CFPreferencesGetAppBooleanValueWithContainer();

  v9 = @"Off Volume";
  if (AppBooleanValueWithContainer != 1)
  {
    if (qword_10195CE48 != -1)
    {
      dispatch_once(&qword_10195CE48, &stru_101625848);
    }

    v10 = qword_10195CE40;
    if (transportType == 2)
    {
      v11 = MNHeadphonesAreInUse();
      v12 = @"VoiceVolumeForWalkingWithoutHeadphonesContext";
      if (v11)
      {
        v12 = @"VoiceVolumeForWalkingWithHeadphonesContext";
      }

      v13 = v12;
    }

    else
    {
      v13 = @"VoiceVolumeForDrivingContext";
    }

    v14 = [v10 path];
    v15 = _CFPreferencesCopyAppValueWithContainer();

    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = @"Normal Volume";
    }

    if (!v15 && transportType == 2)
    {
      if (MNHeadphonesAreInUse())
      {
        v17 = @"Normal Volume";
      }

      else
      {
        v17 = @"Off Volume";
      }

      v16 = v17;
    }

    v9 = v16;
  }

  [(IPCGuidanceStateReply *)v5 setNavVolumeSetting:v9];

  v18 = [(IPCServer *)self lastSceneDeactivationTime];
  [(IPCGuidanceStateReply *)v5 setLastSceneDeactivationTime:v18];

  v19 = +[MNNavigationService sharedService];
  v20 = [v19 currentResponse];
  if ([v20 hasSessionState])
  {
    v21 = [v20 sessionState];
    [(IPCGuidanceStateReply *)v5 setNavSessionData:v21];
  }

  v106 = v20;
  v22 = [v19 route];
  -[IPCGuidanceStateReply setCurrentLegIndex:](v5, "setCurrentLegIndex:", [v22 legIndexForStepIndex:{objc_msgSend(v19, "stepIndex")}]);
  v105 = v22;
  v23 = [v22 legs];
  -[IPCGuidanceStateReply setNumberOfLegs:](v5, "setNumberOfLegs:", [v23 count]);

  v24 = [v19 arrivalInfo];
  [(IPCGuidanceStateReply *)v5 setArrivalInfo:v24];

  if (self->_hasPendingAlight)
  {
    v25 = objc_opt_new();
    v26 = objc_opt_new();
    v27 = [v26 UUIDString];
    [v25 setIdentifier:v27];

    [v25 setStopIndex:{-[MNTransitAlert stopIndex](self->_alightAlert, "stopIndex")}];
    [v25 setStepIndex:{-[MNTransitAlert stepIndex](self->_alightAlert, "stepIndex")}];
    v28 = [(MNTransitAlert *)self->_alightAlert artwork];
    [v25 setArtwork:v28];

    v29 = [(MNTransitAlert *)self->_alightAlert primaryString];
    [v25 setTitle:v29];

    v30 = [(MNTransitAlert *)self->_alightAlert secondaryString];
    [v25 setDetail:v30];

    [(IPCGuidanceStateReply *)v5 setAlightMessage:v25];
    [(IPCGuidanceStateReply *)v5 setAffectsDimming:1];
    self->_hasPendingAlight = 0;
  }

  if (self->_trafficIncidentAlert)
  {
    v31 = objc_alloc_init(IPCTrafficIncidentAlertMessage);
    [(IPCTrafficIncidentAlertMessage *)v31 setType:[(MNTrafficIncidentAlert *)self->_trafficIncidentAlert alertType]];
    v32 = [(MNTrafficIncidentAlert *)self->_trafficIncidentAlert alertTitles];
    v33 = [v32 firstObject];
    [(IPCTrafficIncidentAlertMessage *)v31 setTitle:v33];

    v34 = [(MNTrafficIncidentAlert *)self->_trafficIncidentAlert alertDescriptions];
    v35 = [v34 firstObject];
    [(IPCTrafficIncidentAlertMessage *)v31 setSubtitle:v35];

    v36 = [NSUUID alloc];
    v37 = [(MNTrafficIncidentAlert *)self->_trafficIncidentAlert alertID];
    v38 = [v36 initWithUUIDBytes:{objc_msgSend(v37, "bytes")}];
    v39 = [v38 UUIDString];
    [(IPCTrafficIncidentAlertMessage *)v31 setIdentifier:v39];

    v40 = [(MNTrafficIncidentAlert *)self->_trafficIncidentAlert incident];
    [(IPCTrafficIncidentAlertMessage *)v31 setIncident:v40];

    [(IPCGuidanceStateReply *)v5 setTrafficIncidentAlert:v31];
  }

  [(IPCGuidanceStateReply *)v5 setIsRerouting:self->_isRerouting];
  v41 = [(IPCServer *)self state];
  if (v41 > 2)
  {
    if (v41 == 4)
    {
      [(IPCGuidanceStateReply *)v5 setManeuver:[(IPCServer *)self _maneuver]];
      [(IPCGuidanceStateReply *)v5 setDrivingSide:[(IPCServer *)self _drivingSide]];
      v58 = [(IPCServer *)self junction];
      [(IPCGuidanceStateReply *)v5 setJunction:v58];

      v59 = [(IPCServer *)self artworkOverride];
      [(IPCGuidanceStateReply *)v5 setArtworkOverride:v59];

      v60 = [(IPCServer *)self maneuverInstructions];
      [(IPCGuidanceStateReply *)v5 setPrimaryInstructions:v60];

      v61 = [(IPCServer *)self secondaryManeuverInstructions];
      [(IPCGuidanceStateReply *)v5 setSecondaryInstructions:v61];

      v62 = [(IPCServer *)self _maneuverID];
      [(IPCGuidanceStateReply *)v5 setManeuverID:v62];

      [(IPCServer *)self _distanceToManeuver];
      v63 = [NSNumber numberWithDouble:?];
      [(IPCGuidanceStateReply *)v5 setDistance:v63];

      [(IPCServer *)self _timeToManeuver];
      v64 = [NSNumber numberWithDouble:?];
      [(IPCGuidanceStateReply *)v5 setTimeToNextManeuver:v64];

      v65 = self->_spokenEventProcessing || self->_isStickySignal;
      [(IPCGuidanceStateReply *)v5 setIsAlerting:v65];
      [(IPCGuidanceStateReply *)v5 setCurrentSpokenEventID:self->_currentSpokenEventID];
      *&self->_isStickySignal = 0;
      v66 = [(IPCServer *)self _latestETA];
      [v66 remainingDistance];
      v67 = [NSNumber numberWithDouble:?];
      [(IPCGuidanceStateReply *)v5 setRemainingDistanceOnRoute:v67];

      v68 = [(IPCServer *)self _latestETA];
      v69 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v68 remainingMinutes]);
      [(IPCGuidanceStateReply *)v5 setRemainingMinutesOnRoute:v69];

      v70 = [(IPCServer *)self shieldInfo];
      v71 = [IPCShieldInfoMessage ipcMessageForShieldInfo:v70];
      [(IPCGuidanceStateReply *)v5 setShieldInfo:v71];

      v72 = [(IPCServer *)self laneGuidanceInfo];
      v73 = [IPCLaneGuidanceInfoReply ipcReplyForLaneGuidanceInfo:v72];
      [(IPCGuidanceStateReply *)v5 setLaneGuidanceInfo:v73];

      goto LABEL_41;
    }

    if (v41 == 3)
    {
      v42 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      [(IPCServer *)self _distanceToRoute];
      v43 = [NSNumber numberWithDouble:?];
      [(IPCGuidanceStateReply *)v5 setDistance:v43];

      v44 = [(IPCServer *)self distanceText];

      if (v44)
      {
        v45 = [(IPCServer *)self distanceText];
        v134 = v45;
        v46 = [NSArray arrayWithObjects:&v134 count:1];

        [(IPCGuidanceStateReply *)v5 setPrimaryInstructions:v46];
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (v41 == 1)
    {
      [(IPCGuidanceStateReply *)v5 setManeuver:[(IPCServer *)self _maneuver]];
      v53 = [(IPCServer *)self _maneuverID];
      [(IPCGuidanceStateReply *)v5 setManeuverID:v53];

      v54 = +[NSBundle mainBundle];
      v55 = [v54 localizedStringForKey:@"Arrived [Driving/Walking Navigation]" value:@"localized string not found" table:0];
      v56 = [v55 mkServerFormattedString];
      v133 = v56;
      v57 = [NSArray arrayWithObjects:&v133 count:1];
      [(IPCGuidanceStateReply *)v5 setPrimaryInstructions:v57];

      goto LABEL_41;
    }

    if (v41 == 2)
    {
      v42 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
LABEL_35:
      v47 = v42[445];
      v48 = [(IPCServer *)self _latestETA];
      [v48 remainingDistance];
      v49 = [v47 numberWithDouble:?];
      [(IPCGuidanceStateReply *)v5 setRemainingDistanceOnRoute:v49];

      v50 = v42[445];
      v51 = [(IPCServer *)self _latestETA];
      v52 = [v50 numberWithUnsignedInteger:{objc_msgSend(v51, "remainingMinutes")}];
      [(IPCGuidanceStateReply *)v5 setRemainingMinutesOnRoute:v52];

      [(IPCGuidanceStateReply *)v5 setIsAlerting:1];
    }
  }

LABEL_41:
  v74 = [(IPCServer *)self notificationSettings];
  v75 = [v74 authorizationStatus];
  v76 = [v74 alertSetting];
  v77 = [v74 carPlaySetting];
  v101 = [(IPCServer *)self state];
  v78 = [(IPCServer *)self state];
  v79 = [v19 isInNavigatingState];
  v104 = v79;
  if ([(IPCServer *)self etaOnlyNavMode])
  {
    v80 = 0;
  }

  else
  {
    v80 = ![(IPCServer *)self routePreviewGuidanceNavMode]& v79;
  }

  v107 = v19;
  v100 = v78;
  v99 = v80;
  if (v78 || [(IPCServer *)self _transportType]== 1)
  {
    v81 = v80;
  }

  else
  {
    v81 = 0;
  }

  v102 = v76;
  v103 = v75;
  v82 = v76 != 1 && v75 == 2;
  v83 = v82 & v81;
  v84 = v77 != 1 && v75 == 2;
  v85 = [(IPCGuidanceStateReply *)v5 alightMessage];

  v86 = [(IPCServer *)self _isMapsForegroundOnMainWindow];
  v108 = [(IPCServer *)self _isMapsForegroundOnCarPlay];
  if (v83 == 1 && (v85 != 0) | (v86 ^ 1) & 1)
  {
    v87 = +[CarDisplayController sharedInstance];
    -[IPCGuidanceStateReply setShowInMainScreen:](v5, "setShowInMainScreen:", [v87 isCurrentlyConnectedToCarAppScene] ^ 1);
  }

  else
  {
    [(IPCGuidanceStateReply *)v5 setShowInMainScreen:0];
  }

  v88 = v84 & v81;
  if (SBUIIsSystemApertureEnabled())
  {
    [(IPCGuidanceStateReply *)v5 setShowInMainScreen:v81];
  }

  [(IPCGuidanceStateReply *)v5 setIsMapsForegroundOnMainScreen:v86 & 1];
  v89 = [(IPCServer *)self _isMapsForegroundOnlyOnHybridIC];
  if (!v88)
  {
    goto LABEL_65;
  }

  if (!v108)
  {
    goto LABEL_63;
  }

  if (!v89)
  {
LABEL_65:
    [(IPCGuidanceStateReply *)v5 setShowInCarPlay:0];
    goto LABEL_69;
  }

  v84 = [(IPCGuidanceStateReply *)v5 trafficIncidentAlert];
  if (!v84)
  {
    [(IPCGuidanceStateReply *)v5 setShowInCarPlay:0];
    goto LABEL_68;
  }

LABEL_63:
  v90 = +[MapsCarPlayExternalDeviceMonitor sharedInstance];
  v91 = [v90 carPlayExternalDevice];
  [(IPCGuidanceStateReply *)v5 setShowInCarPlay:v91 != 0];

  if (v108)
  {
LABEL_68:
  }

LABEL_69:
  v92 = [v74 alertStyle];
  isPersistentDisplay = self->_isPersistentDisplay;
  v94 = +[NSUserDefaults standardUserDefaults];
  v95 = [v94 BOOLForKey:@"__internal_MapsDebugForceStickyBanners"];

  if (v95)
  {
    v96 = 1;
  }

  else
  {
    v96 = (v92 == 2) & isPersistentDisplay;
  }

  [(IPCGuidanceStateReply *)v5 setIsSticky:v96];
  [(IPCGuidanceStateReply *)v5 setIsNavigating:v104];
  v97 = sub_100E9E6E8();
  if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
  {
    *buf = 67111936;
    v110 = v83;
    v111 = 1024;
    v112 = v88;
    v113 = 1024;
    v114 = v103 == 2;
    v115 = 1024;
    v116 = v102 != 1;
    v117 = 1024;
    v118 = v100 != 0;
    v119 = 1024;
    v120 = v101 == 4;
    v121 = 1024;
    v122 = v99;
    v123 = 1024;
    v124 = v92 == 2;
    v125 = 1024;
    v126 = isPersistentDisplay;
    v127 = 1024;
    v128 = v86 & 1;
    v129 = 1024;
    v130 = v108;
    v131 = 1024;
    v132 = v85 != 0;
    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "MAPS IPC allowBannersOnPhone: %d, allowBannersOnCarplay: %d due to notificationsAllowed: %d, bannerNotificationsAllowed: %d, hasIPCState:%d, isDriving: %d, isFullGuidanceNavigation: %d; stickyBannersAllowed: %d, bannerShouldStick: %d isMapsForegroundOnMainWindow: %d isMapsForegroundOnCarPlay: %d hasAlightMessage: %d", buf, 0x4Au);
  }

  return v5;
}

- (void)set_maneuverID:(id)a3
{
  v4 = a3;
  v5 = self->__maneuverID;
  v6 = v4;
  if (v6 | v5)
  {
    v10 = v6;
    v7 = [v5 isEqual:v6];

    v6 = v10;
    if ((v7 & 1) == 0)
    {
      v8 = [v10 copy];
      maneuverID = self->__maneuverID;
      self->__maneuverID = v8;

      v6 = v10;
      self->_hasCheckedNotificationSettingsForManeuver = 0;
    }
  }
}

- (void)_postWeakLocationNotification
{
  v2 = +[UNUserNotificationCenter currentNotificationCenter];
  v18 = @"MapsWeakLocation";
  v3 = [NSArray arrayWithObjects:&v18 count:1];
  [v2 removePendingNotificationRequestsWithIdentifiers:v3];

  v17 = @"MapsWeakLocation";
  v4 = [NSArray arrayWithObjects:&v17 count:1];
  [v2 removeDeliveredNotificationsWithIdentifiers:v4];

  v5 = objc_opt_new();
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"[Weak Location] Title" value:@"localized string not found" table:0];
  [v5 setTitle:v7];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[Weak Location] Body" value:@"localized string not found" table:0];
  [v5 setBody:v9];

  v10 = [UNNotificationRequest requestWithIdentifier:@"MapsWeakLocation" content:v5 trigger:0];
  v11 = sub_100E9E6E8();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "MAPS IPC Sending request: %@", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10067B53C;
  v13[3] = &unk_10165F7B8;
  v14 = v10;
  v12 = v10;
  [v2 addNotificationRequest:v12 withCompletionHandler:v13];
}

- (void)_sendWeakLocationNotificationIfNeededWithGuidanceState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_shownWeakLocationAlert && self->_hasPendingWeakLocationAlert)
  {
    v7 = v4;
    v6 = [v4 showInMainScreen];
    v5 = v7;
    if (v6)
    {
      self->_shownWeakLocationAlert = 1;
      [(IPCServer *)self _postWeakLocationNotification];
      v5 = v7;
    }
  }
}

- (void)_pushGuidanceStateIfChangedWithVibration:(BOOL)a3
{
  if (!self->_waitingForDistanceAndTimeToManeuver)
  {
    if ([(IPCServer *)self needsGuidanceUpdate])
    {
      [(IPCServer *)self setNeedsGuidanceUpdate:0];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10067B724;
      v5[3] = &unk_101661AE0;
      v5[4] = self;
      v6 = a3;
      [(IPCServer *)self checkNotificationSettingsAndPerformBlock:v5];
    }
  }
}

- (void)_sceneDidActivate:(id)a3
{
  v4 = a3;
  v5 = sub_100E9E6E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 object];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MAPS IPC _sceneDidActivate: %@", &v7, 0xCu);
  }

  [(IPCServer *)self _noteGuidanceStateChanged];
  [(IPCServer *)self _pushGuidanceState];
}

- (void)_setTimeToManeuver:(double)a3 distanceToManeuver:(double)a4 forStep:(id)a5
{
  v8 = a5;
  [(IPCServer *)self set_timeToManeuver:a3];
  [(IPCServer *)self set_distanceToManeuver:a4];
  v11 = [v8 contentsForContext:1];

  v9 = [v11 stringForDistance:a4];
  v10 = [v9 mkServerFormattedString];
  [(IPCServer *)self setDistanceText:v10];

  self->_waitingForDistanceAndTimeToManeuver = 0;
}

- (void)showRecalculating
{
  self->_lastSeenManeuverAlert = 0;
  [(IPCServer *)self setState:2 withReason:1];
  self->_waitingForDistanceAndTimeToManeuver = 0;
  [(IPCServer *)self setLaneGuidanceInfo:0];
  [(IPCServer *)self _noteGuidanceStateChanged];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)_showNoGuidance
{
  [(IPCServer *)self setState:0 withReason:0];
  self->_lastSeenManeuverAlert = 0;
  self->_waitingForDistanceAndTimeToManeuver = 0;
  [(IPCServer *)self setLaneGuidanceInfo:0];
  [(IPCServer *)self _noteGuidanceStateChanged];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)dismissTrafficIncidentAlert:(id)a3
{
  if (self->_trafficIncidentAlert == a3)
  {
    [(IPCServer *)self _removeTrafficIncidentAlertFromTimer:self->_trafficAlertTimer];
  }
}

- (void)_removeTrafficIncidentAlertFromTimer:(id)a3
{
  v4 = a3;
  trafficIncidentAlert = self->_trafficIncidentAlert;
  v10 = v4;
  v6 = [(NSTimer *)v4 userInfo];

  if (trafficIncidentAlert == v6)
  {
    v7 = self->_trafficIncidentAlert;
    self->_trafficIncidentAlert = 0;
  }

  trafficAlertTimer = self->_trafficAlertTimer;
  v9 = v10;
  if (trafficAlertTimer == v10)
  {
    self->_trafficAlertTimer = 0;

    v9 = v10;
  }

  [(NSTimer *)v9 invalidate];
}

- (void)_invalidatedTrafficIncidentAlert:(id)a3
{
  if (self->_trafficIncidentAlert == a3)
  {
    trafficAlertTimer = self->_trafficAlertTimer;
    v5 = a3;
    v6 = [(NSTimer *)trafficAlertTimer userInfo];

    if (v6 == v5)
    {
      v7 = self->_trafficAlertTimer;

      [(IPCServer *)self _removeTrafficIncidentAlertFromTimer:v7];
    }
  }
}

- (void)_updatedTrafficIncidentAlert:(id)a3
{
  [(IPCServer *)self _noteGuidanceStateChanged];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)_receivedTrafficIncidentAlert:(id)a3
{
  v4 = a3;
  if (self->_trafficAlertTimer)
  {
    [(IPCServer *)self _removeTrafficIncidentAlertFromTimer:?];
  }

  [v4 alertDisplayDuration];
  if (v5 > 0.0)
  {
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"_removeTrafficIncidentAlertFromTimer:" selector:v4 userInfo:0 repeats:?];
    trafficAlertTimer = self->_trafficAlertTimer;
    self->_trafficAlertTimer = v6;
  }

  trafficIncidentAlert = self->_trafficIncidentAlert;
  self->_trafficIncidentAlert = v4;
}

- (void)setNavigationVoiceVolume:(id)a3
{
  v4 = a3;
  v5 = sub_100E9E6E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[IPCServer setNavigationVoiceVolume:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MAPS IPC %s %@", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10067BD38;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)setNavigationMuted:(id)a3
{
  v4 = a3;
  v5 = sub_100E9E6E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[IPCServer setNavigationMuted:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MAPS IPC %s %@", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10067C0F4;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)startPreparedNavigation:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100E9E6E8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[IPCServer startPreparedNavigation:reply:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MAPS IPC %s %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10067C2AC;
  block[3] = &unk_1016605F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)loadDirections:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100E9E6E8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[IPCServer loadDirections:reply:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MAPS IPC %s %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10067C46C;
  block[3] = &unk_1016605F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)repeatLastGuidanceInstructionWithReply:(id)a3
{
  v4 = a3;
  v5 = sub_100E9E6E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[IPCServer repeatLastGuidanceInstructionWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MAPS IPC %s", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10067C70C;
  v7[3] = &unk_101661090;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)repeatLastReroutePromptWithReply:(id)a3
{
  v4 = a3;
  v5 = sub_100E9E6E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[IPCServer repeatLastReroutePromptWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MAPS IPC %s", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10067C9D0;
  v7[3] = &unk_101661090;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)checkNotificationSettingsAndPerformBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hasCheckedNotificationSettingsForManeuver)
  {
    (*(v4 + 2))(v4);
  }

  else
  {
    v6 = +[UNUserNotificationCenter currentNotificationCenter];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10067CC28;
    v7[3] = &unk_1016257E8;
    v7[4] = self;
    v8 = v5;
    [v6 getNotificationSettingsWithCompletionHandler:v7];
  }
}

- (void)getGuidanceState:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100E9E6E8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[IPCServer getGuidanceState:reply:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MAPS IPC %s %@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10067CE7C;
  v11[3] = &unk_1016605F8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(IPCServer *)self checkNotificationSettingsAndPerformBlock:v11];
}

- (void)endNavigationWithReply:(id)a3
{
  v4 = a3;
  v5 = sub_100E9E6E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[IPCServer endNavigationWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MAPS IPC %s", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10067D304;
  v7[3] = &unk_101661090;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)dismissNavigationSafetyAlertWithReply:(id)a3
{
  v3 = a3;
  v4 = sub_100E9E6E8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[IPCServer dismissNavigationSafetyAlertWithReply:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MAPS IPC %s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10067D51C;
  block[3] = &unk_101661760;
  v7 = v3;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleTrafficeReroute:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100E9E6E8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[IPCServer handleTrafficeReroute:reply:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MAPS IPC %s %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10067D6F4;
  block[3] = &unk_1016605F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setPushDaemonListenerEndpoint:(id)a3
{
  v5 = a3;
  if (+[NSThread isMainThread]&& self->_pushDaemonListenerEndpoint != v5)
  {
    v6 = sub_100E9E6E8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      pushDaemonListenerEndpoint = self->_pushDaemonListenerEndpoint;
      *buf = 138412546;
      v19 = pushDaemonListenerEndpoint;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MAPS IPC Changing pushDaemonListenerEndpoint from %@ to %@", buf, 0x16u);
    }

    objc_storeStrong(&self->_pushDaemonListenerEndpoint, a3);
    [(NSXPCConnection *)self->_pushDaemonConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_pushDaemonConnection invalidate];
    pushDaemonConnection = self->_pushDaemonConnection;
    self->_pushDaemonConnection = 0;

    if (v5)
    {
      v9 = [[NSXPCConnection alloc] initWithListenerEndpoint:v5];
      v10 = self->_pushDaemonConnection;
      self->_pushDaemonConnection = v9;

      [(NSXPCConnection *)self->_pushDaemonConnection setExportedObject:self];
      v11 = +[NSXPCInterface _maps_mapsPushDaemonXPCInterface];
      [(NSXPCConnection *)self->_pushDaemonConnection setExportedInterface:v11];

      v12 = +[NSXPCInterface _maps_mapsPushDaemonXPCClientInterface];
      [(NSXPCConnection *)self->_pushDaemonConnection setRemoteObjectInterface:v12];

      [(NSXPCConnection *)self->_pushDaemonConnection _setQueue:&_dispatch_main_q];
      objc_initWeak(buf, self);
      objc_initWeak(&location, self->_pushDaemonConnection);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10067DB08;
      v14[3] = &unk_101654190;
      objc_copyWeak(&v15, buf);
      objc_copyWeak(&v16, &location);
      [(NSXPCConnection *)self->_pushDaemonConnection setInvalidationHandler:v14];
      [(NSXPCConnection *)self->_pushDaemonConnection setInterruptionHandler:&stru_101625798];
      [(NSXPCConnection *)self->_pushDaemonConnection resume];
      v13 = [(NSXPCConnection *)self->_pushDaemonConnection remoteObjectProxy];
      [v13 establishConnection];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }
  }
}

- (void)setCompanionDaemonListenerEndpoint:(id)a3
{
  v5 = a3;
  if (+[NSThread isMainThread]&& self->_companionDaemonListenerEndpoint != v5)
  {
    v6 = sub_100E9E6E8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      companionDaemonListenerEndpoint = self->_companionDaemonListenerEndpoint;
      *buf = 138412546;
      v19 = companionDaemonListenerEndpoint;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MAPS IPC Changing companionDaemonListenerEndpoint from %@ to %@", buf, 0x16u);
    }

    objc_storeStrong(&self->_companionDaemonListenerEndpoint, a3);
    [(NSXPCConnection *)self->_companionDaemonConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_companionDaemonConnection invalidate];
    companionDaemonConnection = self->_companionDaemonConnection;
    self->_companionDaemonConnection = 0;

    if (v5)
    {
      v9 = [[NSXPCConnection alloc] initWithListenerEndpoint:v5];
      v10 = self->_companionDaemonConnection;
      self->_companionDaemonConnection = v9;

      [(NSXPCConnection *)self->_companionDaemonConnection setExportedObject:self];
      v11 = +[NSXPCInterface _maps_mapsCompanionDaemonXPCInterface];
      [(NSXPCConnection *)self->_companionDaemonConnection setExportedInterface:v11];

      v12 = +[NSXPCInterface _maps_mapsCompanionDaemonXPCClientInterface];
      [(NSXPCConnection *)self->_companionDaemonConnection setRemoteObjectInterface:v12];

      [(NSXPCConnection *)self->_companionDaemonConnection _setQueue:&_dispatch_main_q];
      objc_initWeak(buf, self);
      objc_initWeak(&location, self->_companionDaemonConnection);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10067DF70;
      v14[3] = &unk_101654190;
      objc_copyWeak(&v15, buf);
      objc_copyWeak(&v16, &location);
      [(NSXPCConnection *)self->_companionDaemonConnection setInvalidationHandler:v14];
      [(NSXPCConnection *)self->_companionDaemonConnection setInterruptionHandler:&stru_101625778];
      [(NSXPCConnection *)self->_companionDaemonConnection resume];
      v13 = [(NSXPCConnection *)self->_companionDaemonConnection remoteObjectProxy];
      [v13 establishConnection];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }
  }
}

- (void)setSiriPluginListenerEndpoint:(id)a3
{
  v5 = a3;
  if (+[NSThread isMainThread]&& self->_siriPluginListenerEndpoint != v5)
  {
    v6 = sub_100E9E6E8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      siriPluginListenerEndpoint = self->_siriPluginListenerEndpoint;
      *buf = 138412546;
      v19 = siriPluginListenerEndpoint;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MAPS IPC Changing siriPluginListenerEndpoint from %@ to %@", buf, 0x16u);
    }

    objc_storeStrong(&self->_siriPluginListenerEndpoint, a3);
    [(NSXPCConnection *)self->_siriPluginConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_siriPluginConnection invalidate];
    siriPluginConnection = self->_siriPluginConnection;
    self->_siriPluginConnection = 0;

    if (v5)
    {
      v9 = [[NSXPCConnection alloc] initWithListenerEndpoint:v5];
      v10 = self->_siriPluginConnection;
      self->_siriPluginConnection = v9;

      [(NSXPCConnection *)self->_siriPluginConnection setExportedObject:self];
      v11 = +[NSXPCInterface _maps_mapsSiriXPCInterface];
      [(NSXPCConnection *)self->_siriPluginConnection setExportedInterface:v11];

      v12 = +[NSXPCInterface _maps_mapsSiriXPCClientInterface];
      [(NSXPCConnection *)self->_siriPluginConnection setRemoteObjectInterface:v12];

      [(NSXPCConnection *)self->_siriPluginConnection _setQueue:&_dispatch_main_q];
      objc_initWeak(buf, self);
      objc_initWeak(&location, self->_siriPluginConnection);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10067E3D8;
      v14[3] = &unk_101654190;
      objc_copyWeak(&v15, buf);
      objc_copyWeak(&v16, &location);
      [(NSXPCConnection *)self->_siriPluginConnection setInvalidationHandler:v14];
      [(NSXPCConnection *)self->_siriPluginConnection setInterruptionHandler:&stru_101625758];
      [(NSXPCConnection *)self->_siriPluginConnection resume];
      v13 = [(NSXPCConnection *)self->_siriPluginConnection remoteObjectProxy];
      [v13 establishConnection];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }
  }
}

- (BOOL)_isInBackground
{
  if ([(IPCServer *)self _isMapsForegroundOnMainWindow])
  {
    return 0;
  }

  else
  {
    return ![(IPCServer *)self _isMapsForegroundOnCarPlay];
  }
}

- (BOOL)_isSceneOccluded:(id)a3
{
  v3 = a3;
  v4 = [v3 _FBSScene];
  v5 = [v4 uiSettings];
  v6 = [v5 deactivationReasons];

  v7 = [v3 activationState];
  v8 = v7 == 1 && (v6 & 0x80) != 0;

  return v8;
}

- (BOOL)_isAnySceneForegroundAndNotOccludedForRole:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 connectedScenes];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 session];
        v13 = [v12 role];
        v14 = [v13 isEqualToString:v4];

        if (v14 && ![UIApplication _maps_shouldIgnoreActivationStateForScene:v11]&& ![(IPCServer *)self _isSceneOccluded:v11]&& [(IPCServer *)self _isSceneForeground:v11])
        {
          v15 = 1;
          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (void)_sceneWillEnterForeground:(id)a3
{
  v4 = [a3 object];
  if (![UIApplication _maps_shouldIgnoreActivationStateForScene:?])
  {
    [(IPCServer *)self _noteGuidanceStateChanged];
    [(IPCServer *)self _pushGuidanceState];
  }
}

- (void)_sceneDidEnterBackground:(id)a3
{
  v4 = [a3 object];
  if (![UIApplication _maps_shouldIgnoreActivationStateForScene:?])
  {
    [(IPCServer *)self _noteGuidanceStateChanged];
    [(IPCServer *)self _pushGuidanceState];
  }
}

- (void)_sceneWillDeactivate:(id)a3
{
  v4 = [a3 object];
  if (![UIApplication _maps_shouldIgnoreActivationStateForScene:v4])
  {
    v5 = sub_100E9E6E8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MAPS IPC _sceneWillDeactivate: %@", &v7, 0xCu);
    }

    v6 = +[NSDate date];
    [(IPCServer *)self setLastSceneDeactivationTime:v6];

    [(IPCServer *)self _noteGuidanceStateChanged];
  }
}

- (void)setState:(unint64_t)a3 withReason:(unint64_t)a4
{
  if (self->_state != a3)
  {
    v7 = sub_100E9E6E8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      state = self->_state;
      if (a4 > 5)
      {
        v9 = @"Unknown Reason";
      }

      else
      {
        v9 = off_101625868[a4];
      }

      v10 = 134218498;
      v11 = state;
      v12 = 2048;
      v13 = a3;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MAPS IPC IPCServer state is changing from %lu to %lu for reason %@", &v10, 0x20u);
    }

    self->_state = a3;
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[MNNavigationService sharedService];
  [v4 unregisterObserver:self];

  [(CLInUseAssertion *)self->_coreLocationInUseAssertion invalidate];
  [(NSTimer *)self->_waitingToRespondToMessageTimer invalidate];
  [(NSTimer *)self->_waitingForKeyScenePollTimer invalidate];
  [(NSXPCConnection *)self->_siriPluginConnection invalidate];
  v5.receiver = self;
  v5.super_class = IPCServer;
  [(IPCServer *)&v5 dealloc];
}

@end