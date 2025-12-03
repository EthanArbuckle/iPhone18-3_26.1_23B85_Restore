@interface IPCServer
+ (id)sharedServer;
- (BOOL)_isAnySceneForegroundAndNotOccludedForRole:(id)role;
- (BOOL)_isInBackground;
- (BOOL)_isMapsForegroundOnMainWindow;
- (BOOL)_isMapsForegroundOnlyOnHybridIC;
- (BOOL)_isSceneOccluded:(id)occluded;
- (BackgroundNavigationDelegate)backgroundNavigationDelegate;
- (ExternalGuidanceSource)externalGuidanceSource;
- (IPCServer)init;
- (VirtualGarageSource)virtualGarageSource;
- (id)_currentGuidanceStateMessageWithGuidanceCausedVibration:(BOOL)vibration;
- (unint64_t)_maximumScenePollCount;
- (void)_checkKeySceneInternal;
- (void)_invalidatedTrafficIncidentAlert:(id)alert;
- (void)_postWeakLocationNotification;
- (void)_pushGuidanceStateIfChangedWithVibration:(BOOL)vibration;
- (void)_receivedTrafficIncidentAlert:(id)alert;
- (void)_removeTrafficIncidentAlertFromTimer:(id)timer;
- (void)_sceneDidActivate:(id)activate;
- (void)_sceneDidEnterBackground:(id)background;
- (void)_sceneWillConnect;
- (void)_sceneWillDeactivate:(id)deactivate;
- (void)_sceneWillEnterForeground:(id)foreground;
- (void)_sendWeakLocationNotificationIfNeededWithGuidanceState:(id)state;
- (void)_setTimeToManeuver:(double)maneuver distanceToManeuver:(double)toManeuver forStep:(id)step;
- (void)_showNoGuidance;
- (void)_startWaitingToHandleMessage:(id)message;
- (void)_startWaitingToSendResponse;
- (void)_timedOutWaitingToSendResponse;
- (void)_updatedTrafficIncidentAlert:(id)alert;
- (void)_vibrateForRerouteWithService:(id)service;
- (void)checkNotificationSettingsAndPerformBlock:(id)block;
- (void)dealloc;
- (void)dismissNavigationSafetyAlertWithReply:(id)reply;
- (void)dismissTrafficIncidentAlert:(id)alert;
- (void)endNavigationWithReply:(id)reply;
- (void)getGuidanceState:(id)state reply:(id)reply;
- (void)handleTrafficeReroute:(id)reroute reply:(id)reply;
- (void)loadDirections:(id)directions reply:(id)reply;
- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationService:(id)service didChangeGuidanceState:(id)state;
- (void)navigationService:(id)service didChangeNavigationState:(int)state;
- (void)navigationService:(id)service didEnableGuidancePrompts:(BOOL)prompts;
- (void)navigationService:(id)service didFailWithError:(id)error;
- (void)navigationService:(id)service didProcessSpeechEvent:(id)event;
- (void)navigationService:(id)service didReceiveRouteSignalStrength:(unint64_t)strength;
- (void)navigationService:(id)service didReceiveTransitAlert:(id)alert;
- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic;
- (void)navigationService:(id)service didUpdateArrivalInfo:(id)info previousState:(int64_t)state;
- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info;
- (void)navigationService:(id)service didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign forStepIndex:(unint64_t)index;
- (void)navigationService:(id)service didUpdateProceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index;
- (void)navigationService:(id)service didUpdateVehicleParkingInfo:(id)info;
- (void)navigationService:(id)service displayManeuverAlertForAnnouncementStage:(unint64_t)stage;
- (void)navigationService:(id)service displayPrimaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side maneuverStepIndex:(unint64_t)index isSynthetic:(BOOL)self0;
- (void)navigationService:(id)service showLaneDirections:(id)directions;
- (void)navigationService:(id)service updateSignsWithInfo:(id)info;
- (void)navigationService:(id)service usePersistentDisplay:(BOOL)display;
- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service willProcessSpeechEvent:(id)event;
- (void)navigationServiceWillReroute:(id)reroute;
- (void)navigationStateDidChangeTo:(unint64_t)to reason:(id)reason error:(id)error;
- (void)repeatLastGuidanceInstructionWithReply:(id)reply;
- (void)repeatLastReroutePromptWithReply:(id)reply;
- (void)setCompanionDaemonListenerEndpoint:(id)endpoint;
- (void)setNavigationMuted:(id)muted;
- (void)setNavigationVoiceVolume:(id)volume;
- (void)setPushDaemonListenerEndpoint:(id)endpoint;
- (void)setSiriPluginListenerEndpoint:(id)endpoint;
- (void)setState:(unint64_t)state withReason:(unint64_t)reason;
- (void)set_maneuverID:(id)d;
- (void)showRecalculating;
- (void)startPreparedNavigation:(id)navigation reply:(id)reply;
@end

@implementation IPCServer

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005C68;
  block[3] = &unk_1016611D0;
  block[4] = self;
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
  connectedScenes = [v3 connectedScenes];
  v5 = sub_1000282CC(connectedScenes, &stru_101625710);

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

- (void)navigationService:(id)service didReceiveRouteSignalStrength:(unint64_t)strength
{
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"NavigationEnableWeakLocationNotification"];

  if (v7)
  {
    self->_hasPendingWeakLocationAlert = strength == 2;
    [(IPCServer *)self _noteGuidanceStateChanged];

    [(IPCServer *)self _pushGuidanceState];
  }
}

- (void)navigationService:(id)service didReceiveTransitAlert:(id)alert
{
  alertCopy = alert;
  objc_storeStrong(&self->_alightAlert, alert);
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

- (void)navigationService:(id)service didProcessSpeechEvent:(id)event
{
  self->_spokenEventProcessing = 0;
  currentSpokenEventID = self->_currentSpokenEventID;
  self->_currentSpokenEventID = 0;

  [(IPCServer *)self _noteGuidanceStateChanged];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)service willProcessSpeechEvent:(id)event
{
  self->_spokenEventProcessing = 1;
  uniqueID = [event uniqueID];
  currentSpokenEventID = self->_currentSpokenEventID;
  self->_currentSpokenEventID = uniqueID;

  [(IPCServer *)self _noteGuidanceStateChanged];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)service showLaneDirections:(id)directions
{
  directionsCopy = directions;
  v6 = [[NavSignLaneGuidanceInfo alloc] initWithGuidanceLaneInfo:directionsCopy];

  [(IPCServer *)self setLaneGuidanceInfo:v6];
}

- (void)navigationService:(id)service usePersistentDisplay:(BOOL)display
{
  displayCopy = display;
  v6 = sub_100E9E6E8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [NSNumber numberWithBool:displayCopy];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MAPS IPC Updated usePersistentDisplay : %@", &v8, 0xCu);
  }

  self->_isPersistentDisplay = displayCopy;
  self->_isStickySignal = displayCopy;
  [(IPCServer *)self _noteGuidanceStateChanged];
  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)service updateSignsWithInfo:(id)info
{
  infoCopy = info;
  primarySign = [infoCopy primarySign];
  if (primarySign)
  {

    goto LABEL_4;
  }

  secondarySign = [infoCopy secondarySign];

  if (secondarySign)
  {
LABEL_4:
    v8 = [MKServerFormattedStringParameters alloc];
    primarySign2 = [infoCopy primarySign];
    distanceDetailLevel = [primarySign2 distanceDetailLevel];
    primarySign3 = [infoCopy primarySign];
    variableOverrides = [primarySign3 variableOverrides];
    v13 = [v8 initWithInstructionsDistanceDetailLevel:distanceDetailLevel variableOverrides:variableOverrides];

    primarySign4 = [infoCopy primarySign];
    titles = [primarySign4 titles];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100678B44;
    v52[3] = &unk_10165CBB8;
    v16 = v13;
    v53 = v16;
    v17 = sub_100021DB0(titles, v52);

    primarySign5 = [infoCopy primarySign];
    details = [primarySign5 details];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100678BAC;
    v50[3] = &unk_10165CBB8;
    v20 = v16;
    v51 = v20;
    v21 = sub_100021DB0(details, v50);

    if ([(IPCServer *)self state]!= 4)
    {
      goto LABEL_13;
    }

    primarySign6 = [infoCopy primarySign];
    junction = [primarySign6 junction];
    maneuverType = [junction maneuverType];
    if (maneuverType == [(IPCServer *)self _maneuver])
    {
      maneuverInstructions = [(IPCServer *)self maneuverInstructions];
      if ([maneuverInstructions isEqualToArray:v17])
      {
        secondaryManeuverInstructions = [(IPCServer *)self secondaryManeuverInstructions];
        if ([secondaryManeuverInstructions isEqualToArray:v21])
        {
          _maneuverID = [(IPCServer *)self _maneuverID];
          primarySign7 = [infoCopy primarySign];
          uniqueID = [primarySign7 uniqueID];
          v48 = [_maneuverID isEqual:uniqueID];

          if (v48)
          {
LABEL_17:
            [infoCopy timeUntilPrimarySign_SIRI_USE_ONLY];
            [(IPCServer *)self set_timeToManeuver:?];
            [infoCopy primaryDistance_SIRI_USE_ONLY];
            [(IPCServer *)self set_distanceToManeuver:?];
            self->_waitingForDistanceAndTimeToManeuver = 0;
            [(IPCServer *)self _noteGuidanceStateChanged];

            goto LABEL_18;
          }

LABEL_13:
          [(IPCServer *)self setState:4 withReason:4];
          primarySign8 = [infoCopy primarySign];
          junction2 = [primarySign8 junction];
          -[IPCServer set_maneuver:](self, "set_maneuver:", [junction2 maneuverType]);

          primarySign9 = [infoCopy primarySign];
          junction3 = [primarySign9 junction];
          if (junction3)
          {
            v32 = [MKJunction alloc];
            primarySign10 = [infoCopy primarySign];
            junction4 = [primarySign10 junction];
            v35 = [v32 initWithJunction:junction4];
            [(IPCServer *)self setJunction:v35];
          }

          else
          {
            [(IPCServer *)self setJunction:0];
          }

          primarySign11 = [infoCopy primarySign];
          artworkOverride = [primarySign11 artworkOverride];
          [(IPCServer *)self setArtworkOverride:artworkOverride];

          primarySign12 = [infoCopy primarySign];
          uniqueID2 = [primarySign12 uniqueID];
          [(IPCServer *)self set_maneuverID:uniqueID2];

          primarySign13 = [infoCopy primarySign];
          junction5 = [primarySign13 junction];
          -[IPCServer set_drivingSide:](self, "set_drivingSide:", [junction5 drivingSide]);

          [(IPCServer *)self setManeuverInstructions:v17];
          [(IPCServer *)self setSecondaryManeuverInstructions:v21];
          primarySign14 = [infoCopy primarySign];
          shieldID = [primarySign14 shieldID];
          shieldStringID = [primarySign14 shieldStringID];
          shieldText = [primarySign14 shieldText];
          v46 = [NavSignShieldInfo shieldWithID:shieldID stringID:shieldStringID text:shieldText];
          [(IPCServer *)self setShieldInfo:v46];

          goto LABEL_17;
        }
      }
    }

    goto LABEL_13;
  }

LABEL_18:
}

- (void)navigationService:(id)service didUpdateArrivalInfo:(id)info previousState:(int64_t)state
{
  [(IPCServer *)self _noteGuidanceStateChanged:service];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)service didChangeGuidanceState:(id)state
{
  [(IPCServer *)self _noteGuidanceStateChanged:service];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)service didChangeNavigationState:(int)state
{
  serviceCopy = service;
  if ([(IPCServer *)self _transportType]== 2)
  {
    if (state == 5)
    {
      [(IPCServer *)self showRecalculating];
      goto LABEL_8;
    }

    if ([(IPCServer *)self state]== 2)
    {
      [(IPCServer *)self _vibrateForRerouteWithService:serviceCopy];
    }
  }

  if (!state)
  {
    [(BannerSource *)self->_bannerSource reset];
    self->_isRerouting = 0;
    *&self->_shownWeakLocationAlert = 0;
  }

LABEL_8:
}

- (void)navigationService:(id)service didFailWithError:(id)error
{
  serviceCopy = service;
  [(IPCServer *)self _showNoGuidance];
  if ([(IPCServer *)self _transportType]== 2 && [(IPCServer *)self state]== 2)
  {
    [(IPCServer *)self _vibrateForRerouteWithService:serviceCopy];
  }
}

- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  self->_isRerouting = 0;
  [(BannerSource *)self->_bannerSource resetExcludingJindo:service];
  [(IPCServer *)self _noteGuidanceStateChanged];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationServiceWillReroute:(id)reroute
{
  self->_isRerouting = 1;
  [(IPCServer *)self _noteGuidanceStateChanged];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    -[IPCServer set_transportType:](self, "set_transportType:", [serviceCopy desiredTransportType]);
  }

  else if (!toState)
  {
    if (self->_trafficAlertTimer)
    {
      [(IPCServer *)self _removeTrafficIncidentAlertFromTimer:?];
    }

    [(IPCServer *)self _showNoGuidance];
  }
}

- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic
{
  v6 = *&type;
  serviceCopy = service;
  _transportType = [(IPCServer *)self _transportType];
  if (v6 == 2 && !_transportType && [(IPCServer *)self _isInBackground])
  {
    [serviceCopy vibrateForPrompt:5 completion:&stru_101625828];
  }

  [(IPCServer *)self set_transportType:v6];
}

- (void)navigationService:(id)service didEnableGuidancePrompts:(BOOL)prompts
{
  if (!prompts)
  {
    [(IPCServer *)self setState:0 withReason:5];
    self->_lastSeenManeuverAlert = 0;
  }
}

- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  serviceCopy = service;
  waypointCopy = waypoint;
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
    [serviceCopy vibrateForPrompt:4 completion:v10];
  }

  else
  {
    (v9[2])(v9, 0);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)navigationService:(id)service displayManeuverAlertForAnnouncementStage:(unint64_t)stage
{
  stageCopy = stage;
  serviceCopy = service;
  v7 = 3;
  v8 = 2;
  if (stageCopy != 4)
  {
    v8 = 0;
  }

  if (stageCopy != 5)
  {
    v7 = v8;
  }

  v9 = stageCopy != 3 && stageCopy == 5;
  if (stageCopy == 3)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = (v10 | *&stageCopy & 0x10000);
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
    [serviceCopy vibrateForPrompt:MNInstructionsShortPromptTypeForManeuver() completion:v12];
  }

  else
  {
    (v12[2])(v12, 0);
  }

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)navigationService:(id)service displayPrimaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side maneuverStepIndex:(unint64_t)index isSynthetic:(BOOL)self0
{
  v10 = *&side;
  v12 = *&type;
  stepCopy = step;
  textCopy = text;
  v16 = sub_100021DB0(instructions, &stru_101625808);
  if (-[IPCServer state](self, "state") != 4 || (v17 = [stepCopy maneuverType], v17 != -[IPCServer _maneuver](self, "_maneuver")) || (-[IPCServer secondaryManeuverInstructions](self, "secondaryManeuverInstructions"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToArray:", v16), v18, (v19 & 1) == 0))
  {
    [(IPCServer *)self setState:4 withReason:4];
    -[IPCServer set_maneuver:](self, "set_maneuver:", [stepCopy maneuverType]);
    if ([stepCopy hasJunctionType])
    {
      v20 = [[MKJunction alloc] initWithType:objc_msgSend(stepCopy maneuver:"junctionType") drivingSide:objc_msgSend(stepCopy elements:"maneuverType") count:{v10, objc_msgSend(stepCopy, "junctionElements"), objc_msgSend(stepCopy, "junctionElementsCount")}];
      [(IPCServer *)self setJunction:v20];
    }

    else
    {
      [(IPCServer *)self setJunction:0];
    }

    artworkOverride = [stepCopy artworkOverride];
    [(IPCServer *)self setArtworkOverride:artworkOverride];

    [(IPCServer *)self set_drivingSide:v10];
    [(IPCServer *)self setManeuverInstructions:0];
    [(IPCServer *)self setSecondaryManeuverInstructions:v16];
    v22 = +[NSUUID UUID];
    [(IPCServer *)self set_maneuverID:v22];

    self->_lastSeenManeuverAlert = 0;
    if (v12)
    {
      v23 = [NavSignShieldInfo shieldWithID:v12 stringID:0 text:textCopy];
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

- (void)navigationService:(id)service didUpdateVehicleParkingInfo:(id)info
{
  [(IPCServer *)self _noteGuidanceStateChanged:service];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)navigationService:(id)service didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign forStepIndex:(unint64_t)index
{
  serviceCopy = service;
  route = [serviceCopy route];
  steps = [route steps];
  v12 = [steps count];

  if (v12 > index)
  {
    route2 = [serviceCopy route];
    steps2 = [route2 steps];
    v15 = [steps2 objectAtIndexedSubscript:index];

    [(IPCServer *)self _setTimeToManeuver:v15 distanceToManeuver:untilSign forStep:sign];
    [(IPCServer *)self _noteGuidanceStateChanged];
  }
}

- (void)navigationService:(id)service didUpdateProceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index
{
  v8 = [MNNavigationService sharedService:service];
  navigationState = [v8 navigationState];

  if (navigationState != 5)
  {
    self->_lastSeenManeuverAlert = 0;
    [(IPCServer *)self setState:3 withReason:3];
    [(IPCServer *)self set_distanceToRoute:distance];
    self->_waitingForDistanceAndTimeToManeuver = 0;

    [(IPCServer *)self _noteGuidanceStateChanged];
  }
}

- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info
{
  serviceCopy = service;
  v8 = [GuidanceETA alloc];
  displayEtaInfo = [serviceCopy displayEtaInfo];
  remainingDistanceInfo = [serviceCopy remainingDistanceInfo];
  batteryChargeInfo = [serviceCopy batteryChargeInfo];
  upcomingStop = [serviceCopy upcomingStop];
  timezone = [upcomingStop timezone];
  navigationTransportType = [serviceCopy navigationTransportType];

  v14 = [(GuidanceETA *)v8 initWithDisplayETA:displayEtaInfo remainingDistance:remainingDistanceInfo batteryChargeInfo:batteryChargeInfo destinationTimeZone:timezone transportType:navigationTransportType];
  latestETA = self->_latestETA;
  self->_latestETA = v14;
}

- (void)_vibrateForRerouteWithService:(id)service
{
  serviceCopy = service;
  [(IPCServer *)self setState:3 withReason:2];
  self->_waitingForDistanceAndTimeToManeuver = 0;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100679A90;
  v5[3] = &unk_1016619A8;
  objc_copyWeak(&v6, &location);
  [serviceCopy vibrateForPrompt:3 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)navigationStateDidChangeTo:(unint64_t)to reason:(id)reason error:(id)error
{
  reasonCopy = reason;
  errorCopy = error;
  if (!+[NSThread isMainThread])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100679FA8;
    block[3] = &unk_10165EB08;
    block[4] = self;
    toCopy = to;
    v28 = reasonCopy;
    v29 = errorCopy;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_33;
  }

  v10 = sub_100E9E6E8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (to >= 5)
    {
      v11 = [NSString stringWithFormat:@"?? - %lu", to];
    }

    else
    {
      v11 = off_101625898[to];
    }

    *buf = 138412546;
    v32 = v11;
    v33 = 2112;
    v34 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MAPS IPC Received a navigation state change to %@ for reason %@.", buf, 0x16u);
  }

  [(NSTimer *)self->_waitingToRespondToMessageTimer invalidate];
  waitingToRespondToMessageTimer = self->_waitingToRespondToMessageTimer;
  self->_waitingToRespondToMessageTimer = 0;

  if (to)
  {
    [(CLInUseAssertion *)self->_coreLocationInUseAssertion invalidate];
    coreLocationInUseAssertion = self->_coreLocationInUseAssertion;
    self->_coreLocationInUseAssertion = 0;
  }

  loadDirectionsDelayedReply = [(IPCServer *)self loadDirectionsDelayedReply];
  if (loadDirectionsDelayedReply)
  {
  }

  else
  {
    startNavigationDelayedReply = [(IPCServer *)self startNavigationDelayedReply];

    if (!startNavigationDelayedReply)
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

  loadDirectionsDelayedReply2 = [(IPCServer *)self loadDirectionsDelayedReply];

  if (loadDirectionsDelayedReply2)
  {
    v19 = objc_alloc_init(IPCLoadDirectionsReply);
    [(IPCLoadDirectionsReply *)v19 setNavigationState:to];
    [(IPCLoadDirectionsReply *)v19 setError:errorCopy];
    if (to)
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

    loadDirectionsDelayedReply3 = [(IPCServer *)self loadDirectionsDelayedReply];
    (loadDirectionsDelayedReply3)[2](loadDirectionsDelayedReply3, v19);

    [(IPCServer *)self setLoadDirectionsDelayedReply:0];
    goto LABEL_32;
  }

  startNavigationDelayedReply2 = [(IPCServer *)self startNavigationDelayedReply];

  if (to && startNavigationDelayedReply2)
  {
    v22 = objc_alloc_init(IPCNavigationActionReply);
    v19 = v22;
    if (to == 1)
    {
      [(IPCNavigationActionReply *)v22 setSuccess:1];
    }

    else
    {
      [(IPCNavigationActionReply *)v22 setSuccess:0];
      [(IPCLoadDirectionsReply *)v19 setNavigationActionError:3];
    }

    startNavigationDelayedReply3 = [(IPCServer *)self startNavigationDelayedReply];
    (startNavigationDelayedReply3)[2](startNavigationDelayedReply3, v19);

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
    firstObject = v3;
LABEL_6:
    v8 = firstObject;
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
        backgroundNavigationDelegate = [(IPCServer *)self backgroundNavigationDelegate];
        [backgroundNavigationDelegate prepareBackgroundNavigationWithMessage:self->_pendingLoadDirectionsMessage];
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
    firstObject = [v5 firstObject];
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

- (void)_startWaitingToHandleMessage:(id)message
{
  messageCopy = message;
  objc_storeStrong(&self->_pendingLoadDirectionsMessage, message);
  self->_keyScenePollCount = 0;
  [(NSTimer *)self->_waitingForKeyScenePollTimer invalidate];
  v6 = sub_100E9E6E8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 134218240;
    v10 = 0x3FB999999999999ALL;
    v11 = 2048;
    _maximumScenePollCount = [(IPCServer *)self _maximumScenePollCount];
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

  loadDirectionsDelayedReply = [(IPCServer *)self loadDirectionsDelayedReply];

  if (loadDirectionsDelayedReply)
  {
    [(CLInUseAssertion *)self->_coreLocationInUseAssertion invalidate];
    coreLocationInUseAssertion = self->_coreLocationInUseAssertion;
    self->_coreLocationInUseAssertion = 0;

    v10 = objc_alloc_init(IPCLoadDirectionsReply);
    [(IPCLoadDirectionsReply *)v10 setNavigationState:3];
    v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:4610 userInfo:0];
    [(IPCLoadDirectionsReply *)v10 setError:v6];

    loadDirectionsDelayedReply2 = [(IPCServer *)self loadDirectionsDelayedReply];
    (loadDirectionsDelayedReply2)[2](loadDirectionsDelayedReply2, v10);

    [(IPCServer *)self setLoadDirectionsDelayedReply:0];
  }

  else
  {
    startNavigationDelayedReply = [(IPCServer *)self startNavigationDelayedReply];

    if (!startNavigationDelayedReply)
    {
      return;
    }

    v10 = objc_alloc_init(IPCNavigationActionReply);
    [(IPCLoadDirectionsReply *)v10 setSuccess:0];
    [(IPCLoadDirectionsReply *)v10 setNavigationActionError:3];
    startNavigationDelayedReply2 = [(IPCServer *)self startNavigationDelayedReply];
    (startNavigationDelayedReply2)[2](startNavigationDelayedReply2, v10);

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

- (id)_currentGuidanceStateMessageWithGuidanceCausedVibration:(BOOL)vibration
{
  vibrationCopy = vibration;
  v5 = objc_alloc_init(IPCGuidanceStateReply);
  [(IPCGuidanceStateReply *)v5 setGuidanceState:[(IPCServer *)self state]];
  [(IPCGuidanceStateReply *)v5 setAffectsDimming:[(IPCServer *)self _guidanceAffectsDimming]| vibrationCopy];
  [(IPCGuidanceStateReply *)v5 setTransportType:self->_transportType];
  transportType = self->_transportType;
  if (qword_10195CE48 != -1)
  {
    dispatch_once(&qword_10195CE48, &stru_101625848);
  }

  path = [qword_10195CE40 path];
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

    path2 = [v10 path];
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

  lastSceneDeactivationTime = [(IPCServer *)self lastSceneDeactivationTime];
  [(IPCGuidanceStateReply *)v5 setLastSceneDeactivationTime:lastSceneDeactivationTime];

  v19 = +[MNNavigationService sharedService];
  currentResponse = [v19 currentResponse];
  if ([currentResponse hasSessionState])
  {
    sessionState = [currentResponse sessionState];
    [(IPCGuidanceStateReply *)v5 setNavSessionData:sessionState];
  }

  v106 = currentResponse;
  route = [v19 route];
  -[IPCGuidanceStateReply setCurrentLegIndex:](v5, "setCurrentLegIndex:", [route legIndexForStepIndex:{objc_msgSend(v19, "stepIndex")}]);
  v105 = route;
  legs = [route legs];
  -[IPCGuidanceStateReply setNumberOfLegs:](v5, "setNumberOfLegs:", [legs count]);

  arrivalInfo = [v19 arrivalInfo];
  [(IPCGuidanceStateReply *)v5 setArrivalInfo:arrivalInfo];

  if (self->_hasPendingAlight)
  {
    v25 = objc_opt_new();
    v26 = objc_opt_new();
    uUIDString = [v26 UUIDString];
    [v25 setIdentifier:uUIDString];

    [v25 setStopIndex:{-[MNTransitAlert stopIndex](self->_alightAlert, "stopIndex")}];
    [v25 setStepIndex:{-[MNTransitAlert stepIndex](self->_alightAlert, "stepIndex")}];
    artwork = [(MNTransitAlert *)self->_alightAlert artwork];
    [v25 setArtwork:artwork];

    primaryString = [(MNTransitAlert *)self->_alightAlert primaryString];
    [v25 setTitle:primaryString];

    secondaryString = [(MNTransitAlert *)self->_alightAlert secondaryString];
    [v25 setDetail:secondaryString];

    [(IPCGuidanceStateReply *)v5 setAlightMessage:v25];
    [(IPCGuidanceStateReply *)v5 setAffectsDimming:1];
    self->_hasPendingAlight = 0;
  }

  if (self->_trafficIncidentAlert)
  {
    v31 = objc_alloc_init(IPCTrafficIncidentAlertMessage);
    [(IPCTrafficIncidentAlertMessage *)v31 setType:[(MNTrafficIncidentAlert *)self->_trafficIncidentAlert alertType]];
    alertTitles = [(MNTrafficIncidentAlert *)self->_trafficIncidentAlert alertTitles];
    firstObject = [alertTitles firstObject];
    [(IPCTrafficIncidentAlertMessage *)v31 setTitle:firstObject];

    alertDescriptions = [(MNTrafficIncidentAlert *)self->_trafficIncidentAlert alertDescriptions];
    firstObject2 = [alertDescriptions firstObject];
    [(IPCTrafficIncidentAlertMessage *)v31 setSubtitle:firstObject2];

    v36 = [NSUUID alloc];
    alertID = [(MNTrafficIncidentAlert *)self->_trafficIncidentAlert alertID];
    v38 = [v36 initWithUUIDBytes:{objc_msgSend(alertID, "bytes")}];
    uUIDString2 = [v38 UUIDString];
    [(IPCTrafficIncidentAlertMessage *)v31 setIdentifier:uUIDString2];

    incident = [(MNTrafficIncidentAlert *)self->_trafficIncidentAlert incident];
    [(IPCTrafficIncidentAlertMessage *)v31 setIncident:incident];

    [(IPCGuidanceStateReply *)v5 setTrafficIncidentAlert:v31];
  }

  [(IPCGuidanceStateReply *)v5 setIsRerouting:self->_isRerouting];
  state = [(IPCServer *)self state];
  if (state > 2)
  {
    if (state == 4)
    {
      [(IPCGuidanceStateReply *)v5 setManeuver:[(IPCServer *)self _maneuver]];
      [(IPCGuidanceStateReply *)v5 setDrivingSide:[(IPCServer *)self _drivingSide]];
      junction = [(IPCServer *)self junction];
      [(IPCGuidanceStateReply *)v5 setJunction:junction];

      artworkOverride = [(IPCServer *)self artworkOverride];
      [(IPCGuidanceStateReply *)v5 setArtworkOverride:artworkOverride];

      maneuverInstructions = [(IPCServer *)self maneuverInstructions];
      [(IPCGuidanceStateReply *)v5 setPrimaryInstructions:maneuverInstructions];

      secondaryManeuverInstructions = [(IPCServer *)self secondaryManeuverInstructions];
      [(IPCGuidanceStateReply *)v5 setSecondaryInstructions:secondaryManeuverInstructions];

      _maneuverID = [(IPCServer *)self _maneuverID];
      [(IPCGuidanceStateReply *)v5 setManeuverID:_maneuverID];

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
      _latestETA = [(IPCServer *)self _latestETA];
      [_latestETA remainingDistance];
      v67 = [NSNumber numberWithDouble:?];
      [(IPCGuidanceStateReply *)v5 setRemainingDistanceOnRoute:v67];

      _latestETA2 = [(IPCServer *)self _latestETA];
      v69 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [_latestETA2 remainingMinutes]);
      [(IPCGuidanceStateReply *)v5 setRemainingMinutesOnRoute:v69];

      shieldInfo = [(IPCServer *)self shieldInfo];
      v71 = [IPCShieldInfoMessage ipcMessageForShieldInfo:shieldInfo];
      [(IPCGuidanceStateReply *)v5 setShieldInfo:v71];

      laneGuidanceInfo = [(IPCServer *)self laneGuidanceInfo];
      v73 = [IPCLaneGuidanceInfoReply ipcReplyForLaneGuidanceInfo:laneGuidanceInfo];
      [(IPCGuidanceStateReply *)v5 setLaneGuidanceInfo:v73];

      goto LABEL_41;
    }

    if (state == 3)
    {
      v42 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      [(IPCServer *)self _distanceToRoute];
      v43 = [NSNumber numberWithDouble:?];
      [(IPCGuidanceStateReply *)v5 setDistance:v43];

      distanceText = [(IPCServer *)self distanceText];

      if (distanceText)
      {
        distanceText2 = [(IPCServer *)self distanceText];
        v134 = distanceText2;
        v46 = [NSArray arrayWithObjects:&v134 count:1];

        [(IPCGuidanceStateReply *)v5 setPrimaryInstructions:v46];
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (state == 1)
    {
      [(IPCGuidanceStateReply *)v5 setManeuver:[(IPCServer *)self _maneuver]];
      _maneuverID2 = [(IPCServer *)self _maneuverID];
      [(IPCGuidanceStateReply *)v5 setManeuverID:_maneuverID2];

      v54 = +[NSBundle mainBundle];
      v55 = [v54 localizedStringForKey:@"Arrived [Driving/Walking Navigation]" value:@"localized string not found" table:0];
      mkServerFormattedString = [v55 mkServerFormattedString];
      v133 = mkServerFormattedString;
      v57 = [NSArray arrayWithObjects:&v133 count:1];
      [(IPCGuidanceStateReply *)v5 setPrimaryInstructions:v57];

      goto LABEL_41;
    }

    if (state == 2)
    {
      v42 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
LABEL_35:
      v47 = v42[445];
      _latestETA3 = [(IPCServer *)self _latestETA];
      [_latestETA3 remainingDistance];
      v49 = [v47 numberWithDouble:?];
      [(IPCGuidanceStateReply *)v5 setRemainingDistanceOnRoute:v49];

      v50 = v42[445];
      _latestETA4 = [(IPCServer *)self _latestETA];
      v52 = [v50 numberWithUnsignedInteger:{objc_msgSend(_latestETA4, "remainingMinutes")}];
      [(IPCGuidanceStateReply *)v5 setRemainingMinutesOnRoute:v52];

      [(IPCGuidanceStateReply *)v5 setIsAlerting:1];
    }
  }

LABEL_41:
  notificationSettings = [(IPCServer *)self notificationSettings];
  authorizationStatus = [notificationSettings authorizationStatus];
  alertSetting = [notificationSettings alertSetting];
  carPlaySetting = [notificationSettings carPlaySetting];
  state2 = [(IPCServer *)self state];
  state3 = [(IPCServer *)self state];
  isInNavigatingState = [v19 isInNavigatingState];
  v104 = isInNavigatingState;
  if ([(IPCServer *)self etaOnlyNavMode])
  {
    v80 = 0;
  }

  else
  {
    v80 = ![(IPCServer *)self routePreviewGuidanceNavMode]& isInNavigatingState;
  }

  v107 = v19;
  v100 = state3;
  v99 = v80;
  if (state3 || [(IPCServer *)self _transportType]== 1)
  {
    v81 = v80;
  }

  else
  {
    v81 = 0;
  }

  v102 = alertSetting;
  v103 = authorizationStatus;
  v82 = alertSetting != 1 && authorizationStatus == 2;
  v83 = v82 & v81;
  trafficIncidentAlert = carPlaySetting != 1 && authorizationStatus == 2;
  alightMessage = [(IPCGuidanceStateReply *)v5 alightMessage];

  _isMapsForegroundOnMainWindow = [(IPCServer *)self _isMapsForegroundOnMainWindow];
  _isMapsForegroundOnCarPlay = [(IPCServer *)self _isMapsForegroundOnCarPlay];
  if (v83 == 1 && (alightMessage != 0) | (_isMapsForegroundOnMainWindow ^ 1) & 1)
  {
    v87 = +[CarDisplayController sharedInstance];
    -[IPCGuidanceStateReply setShowInMainScreen:](v5, "setShowInMainScreen:", [v87 isCurrentlyConnectedToCarAppScene] ^ 1);
  }

  else
  {
    [(IPCGuidanceStateReply *)v5 setShowInMainScreen:0];
  }

  v88 = trafficIncidentAlert & v81;
  if (SBUIIsSystemApertureEnabled())
  {
    [(IPCGuidanceStateReply *)v5 setShowInMainScreen:v81];
  }

  [(IPCGuidanceStateReply *)v5 setIsMapsForegroundOnMainScreen:_isMapsForegroundOnMainWindow & 1];
  _isMapsForegroundOnlyOnHybridIC = [(IPCServer *)self _isMapsForegroundOnlyOnHybridIC];
  if (!v88)
  {
    goto LABEL_65;
  }

  if (!_isMapsForegroundOnCarPlay)
  {
    goto LABEL_63;
  }

  if (!_isMapsForegroundOnlyOnHybridIC)
  {
LABEL_65:
    [(IPCGuidanceStateReply *)v5 setShowInCarPlay:0];
    goto LABEL_69;
  }

  trafficIncidentAlert = [(IPCGuidanceStateReply *)v5 trafficIncidentAlert];
  if (!trafficIncidentAlert)
  {
    [(IPCGuidanceStateReply *)v5 setShowInCarPlay:0];
    goto LABEL_68;
  }

LABEL_63:
  v90 = +[MapsCarPlayExternalDeviceMonitor sharedInstance];
  carPlayExternalDevice = [v90 carPlayExternalDevice];
  [(IPCGuidanceStateReply *)v5 setShowInCarPlay:carPlayExternalDevice != 0];

  if (_isMapsForegroundOnCarPlay)
  {
LABEL_68:
  }

LABEL_69:
  alertStyle = [notificationSettings alertStyle];
  isPersistentDisplay = self->_isPersistentDisplay;
  v94 = +[NSUserDefaults standardUserDefaults];
  v95 = [v94 BOOLForKey:@"__internal_MapsDebugForceStickyBanners"];

  if (v95)
  {
    v96 = 1;
  }

  else
  {
    v96 = (alertStyle == 2) & isPersistentDisplay;
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
    v120 = state2 == 4;
    v121 = 1024;
    v122 = v99;
    v123 = 1024;
    v124 = alertStyle == 2;
    v125 = 1024;
    v126 = isPersistentDisplay;
    v127 = 1024;
    v128 = _isMapsForegroundOnMainWindow & 1;
    v129 = 1024;
    v130 = _isMapsForegroundOnCarPlay;
    v131 = 1024;
    v132 = alightMessage != 0;
    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "MAPS IPC allowBannersOnPhone: %d, allowBannersOnCarplay: %d due to notificationsAllowed: %d, bannerNotificationsAllowed: %d, hasIPCState:%d, isDriving: %d, isFullGuidanceNavigation: %d; stickyBannersAllowed: %d, bannerShouldStick: %d isMapsForegroundOnMainWindow: %d isMapsForegroundOnCarPlay: %d hasAlightMessage: %d", buf, 0x4Au);
  }

  return v5;
}

- (void)set_maneuverID:(id)d
{
  dCopy = d;
  v5 = self->__maneuverID;
  v6 = dCopy;
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

- (void)_sendWeakLocationNotificationIfNeededWithGuidanceState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (!self->_shownWeakLocationAlert && self->_hasPendingWeakLocationAlert)
  {
    v7 = stateCopy;
    showInMainScreen = [stateCopy showInMainScreen];
    v5 = v7;
    if (showInMainScreen)
    {
      self->_shownWeakLocationAlert = 1;
      [(IPCServer *)self _postWeakLocationNotification];
      v5 = v7;
    }
  }
}

- (void)_pushGuidanceStateIfChangedWithVibration:(BOOL)vibration
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
      vibrationCopy = vibration;
      [(IPCServer *)self checkNotificationSettingsAndPerformBlock:v5];
    }
  }
}

- (void)_sceneDidActivate:(id)activate
{
  activateCopy = activate;
  v5 = sub_100E9E6E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    object = [activateCopy object];
    v7 = 138412290;
    v8 = object;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MAPS IPC _sceneDidActivate: %@", &v7, 0xCu);
  }

  [(IPCServer *)self _noteGuidanceStateChanged];
  [(IPCServer *)self _pushGuidanceState];
}

- (void)_setTimeToManeuver:(double)maneuver distanceToManeuver:(double)toManeuver forStep:(id)step
{
  stepCopy = step;
  [(IPCServer *)self set_timeToManeuver:maneuver];
  [(IPCServer *)self set_distanceToManeuver:toManeuver];
  v11 = [stepCopy contentsForContext:1];

  v9 = [v11 stringForDistance:toManeuver];
  mkServerFormattedString = [v9 mkServerFormattedString];
  [(IPCServer *)self setDistanceText:mkServerFormattedString];

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

- (void)dismissTrafficIncidentAlert:(id)alert
{
  if (self->_trafficIncidentAlert == alert)
  {
    [(IPCServer *)self _removeTrafficIncidentAlertFromTimer:self->_trafficAlertTimer];
  }
}

- (void)_removeTrafficIncidentAlertFromTimer:(id)timer
{
  timerCopy = timer;
  trafficIncidentAlert = self->_trafficIncidentAlert;
  v10 = timerCopy;
  userInfo = [(NSTimer *)timerCopy userInfo];

  if (trafficIncidentAlert == userInfo)
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

- (void)_invalidatedTrafficIncidentAlert:(id)alert
{
  if (self->_trafficIncidentAlert == alert)
  {
    trafficAlertTimer = self->_trafficAlertTimer;
    alertCopy = alert;
    userInfo = [(NSTimer *)trafficAlertTimer userInfo];

    if (userInfo == alertCopy)
    {
      v7 = self->_trafficAlertTimer;

      [(IPCServer *)self _removeTrafficIncidentAlertFromTimer:v7];
    }
  }
}

- (void)_updatedTrafficIncidentAlert:(id)alert
{
  [(IPCServer *)self _noteGuidanceStateChanged];

  [(IPCServer *)self _pushGuidanceState];
}

- (void)_receivedTrafficIncidentAlert:(id)alert
{
  alertCopy = alert;
  if (self->_trafficAlertTimer)
  {
    [(IPCServer *)self _removeTrafficIncidentAlertFromTimer:?];
  }

  [alertCopy alertDisplayDuration];
  if (v5 > 0.0)
  {
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"_removeTrafficIncidentAlertFromTimer:" selector:alertCopy userInfo:0 repeats:?];
    trafficAlertTimer = self->_trafficAlertTimer;
    self->_trafficAlertTimer = v6;
  }

  trafficIncidentAlert = self->_trafficIncidentAlert;
  self->_trafficIncidentAlert = alertCopy;
}

- (void)setNavigationVoiceVolume:(id)volume
{
  volumeCopy = volume;
  v5 = sub_100E9E6E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[IPCServer setNavigationVoiceVolume:]";
    v11 = 2112;
    v12 = volumeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MAPS IPC %s %@", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10067BD38;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = volumeCopy;
  v6 = volumeCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)setNavigationMuted:(id)muted
{
  mutedCopy = muted;
  v5 = sub_100E9E6E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[IPCServer setNavigationMuted:]";
    v11 = 2112;
    v12 = mutedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MAPS IPC %s %@", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10067C0F4;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = mutedCopy;
  v6 = mutedCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)startPreparedNavigation:(id)navigation reply:(id)reply
{
  navigationCopy = navigation;
  replyCopy = reply;
  v8 = sub_100E9E6E8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[IPCServer startPreparedNavigation:reply:]";
    v16 = 2112;
    v17 = navigationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MAPS IPC %s %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10067C2AC;
  block[3] = &unk_1016605F8;
  v12 = navigationCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = navigationCopy;
  v10 = replyCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)loadDirections:(id)directions reply:(id)reply
{
  directionsCopy = directions;
  replyCopy = reply;
  v8 = sub_100E9E6E8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[IPCServer loadDirections:reply:]";
    v16 = 2112;
    v17 = directionsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MAPS IPC %s %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10067C46C;
  block[3] = &unk_1016605F8;
  v12 = directionsCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = directionsCopy;
  v10 = replyCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)repeatLastGuidanceInstructionWithReply:(id)reply
{
  replyCopy = reply;
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
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)repeatLastReroutePromptWithReply:(id)reply
{
  replyCopy = reply;
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
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)checkNotificationSettingsAndPerformBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (self->_hasCheckedNotificationSettingsForManeuver)
  {
    (*(blockCopy + 2))(blockCopy);
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

- (void)getGuidanceState:(id)state reply:(id)reply
{
  stateCopy = state;
  replyCopy = reply;
  v8 = sub_100E9E6E8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[IPCServer getGuidanceState:reply:]";
    v16 = 2112;
    v17 = stateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MAPS IPC %s %@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10067CE7C;
  v11[3] = &unk_1016605F8;
  v11[4] = self;
  v12 = stateCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = stateCopy;
  [(IPCServer *)self checkNotificationSettingsAndPerformBlock:v11];
}

- (void)endNavigationWithReply:(id)reply
{
  replyCopy = reply;
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
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)dismissNavigationSafetyAlertWithReply:(id)reply
{
  replyCopy = reply;
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
  v7 = replyCopy;
  v5 = replyCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleTrafficeReroute:(id)reroute reply:(id)reply
{
  rerouteCopy = reroute;
  replyCopy = reply;
  v8 = sub_100E9E6E8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[IPCServer handleTrafficeReroute:reply:]";
    v16 = 2112;
    v17 = rerouteCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MAPS IPC %s %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10067D6F4;
  block[3] = &unk_1016605F8;
  block[4] = self;
  v12 = rerouteCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = rerouteCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setPushDaemonListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (+[NSThread isMainThread]&& self->_pushDaemonListenerEndpoint != endpointCopy)
  {
    v6 = sub_100E9E6E8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      pushDaemonListenerEndpoint = self->_pushDaemonListenerEndpoint;
      *buf = 138412546;
      v19 = pushDaemonListenerEndpoint;
      v20 = 2112;
      v21 = endpointCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MAPS IPC Changing pushDaemonListenerEndpoint from %@ to %@", buf, 0x16u);
    }

    objc_storeStrong(&self->_pushDaemonListenerEndpoint, endpoint);
    [(NSXPCConnection *)self->_pushDaemonConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_pushDaemonConnection invalidate];
    pushDaemonConnection = self->_pushDaemonConnection;
    self->_pushDaemonConnection = 0;

    if (endpointCopy)
    {
      v9 = [[NSXPCConnection alloc] initWithListenerEndpoint:endpointCopy];
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
      remoteObjectProxy = [(NSXPCConnection *)self->_pushDaemonConnection remoteObjectProxy];
      [remoteObjectProxy establishConnection];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }
  }
}

- (void)setCompanionDaemonListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (+[NSThread isMainThread]&& self->_companionDaemonListenerEndpoint != endpointCopy)
  {
    v6 = sub_100E9E6E8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      companionDaemonListenerEndpoint = self->_companionDaemonListenerEndpoint;
      *buf = 138412546;
      v19 = companionDaemonListenerEndpoint;
      v20 = 2112;
      v21 = endpointCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MAPS IPC Changing companionDaemonListenerEndpoint from %@ to %@", buf, 0x16u);
    }

    objc_storeStrong(&self->_companionDaemonListenerEndpoint, endpoint);
    [(NSXPCConnection *)self->_companionDaemonConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_companionDaemonConnection invalidate];
    companionDaemonConnection = self->_companionDaemonConnection;
    self->_companionDaemonConnection = 0;

    if (endpointCopy)
    {
      v9 = [[NSXPCConnection alloc] initWithListenerEndpoint:endpointCopy];
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
      remoteObjectProxy = [(NSXPCConnection *)self->_companionDaemonConnection remoteObjectProxy];
      [remoteObjectProxy establishConnection];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }
  }
}

- (void)setSiriPluginListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (+[NSThread isMainThread]&& self->_siriPluginListenerEndpoint != endpointCopy)
  {
    v6 = sub_100E9E6E8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      siriPluginListenerEndpoint = self->_siriPluginListenerEndpoint;
      *buf = 138412546;
      v19 = siriPluginListenerEndpoint;
      v20 = 2112;
      v21 = endpointCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MAPS IPC Changing siriPluginListenerEndpoint from %@ to %@", buf, 0x16u);
    }

    objc_storeStrong(&self->_siriPluginListenerEndpoint, endpoint);
    [(NSXPCConnection *)self->_siriPluginConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_siriPluginConnection invalidate];
    siriPluginConnection = self->_siriPluginConnection;
    self->_siriPluginConnection = 0;

    if (endpointCopy)
    {
      v9 = [[NSXPCConnection alloc] initWithListenerEndpoint:endpointCopy];
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
      remoteObjectProxy = [(NSXPCConnection *)self->_siriPluginConnection remoteObjectProxy];
      [remoteObjectProxy establishConnection];

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

- (BOOL)_isSceneOccluded:(id)occluded
{
  occludedCopy = occluded;
  _FBSScene = [occludedCopy _FBSScene];
  uiSettings = [_FBSScene uiSettings];
  deactivationReasons = [uiSettings deactivationReasons];

  activationState = [occludedCopy activationState];
  v8 = activationState == 1 && (deactivationReasons & 0x80) != 0;

  return v8;
}

- (BOOL)_isAnySceneForegroundAndNotOccludedForRole:(id)role
{
  roleCopy = role;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = +[UIApplication sharedApplication];
  connectedScenes = [v5 connectedScenes];

  v7 = [connectedScenes countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(connectedScenes);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        session = [v11 session];
        role = [session role];
        v14 = [role isEqualToString:roleCopy];

        if (v14 && ![UIApplication _maps_shouldIgnoreActivationStateForScene:v11]&& ![(IPCServer *)self _isSceneOccluded:v11]&& [(IPCServer *)self _isSceneForeground:v11])
        {
          v15 = 1;
          goto LABEL_14;
        }
      }

      v8 = [connectedScenes countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)_sceneWillEnterForeground:(id)foreground
{
  object = [foreground object];
  if (![UIApplication _maps_shouldIgnoreActivationStateForScene:?])
  {
    [(IPCServer *)self _noteGuidanceStateChanged];
    [(IPCServer *)self _pushGuidanceState];
  }
}

- (void)_sceneDidEnterBackground:(id)background
{
  object = [background object];
  if (![UIApplication _maps_shouldIgnoreActivationStateForScene:?])
  {
    [(IPCServer *)self _noteGuidanceStateChanged];
    [(IPCServer *)self _pushGuidanceState];
  }
}

- (void)_sceneWillDeactivate:(id)deactivate
{
  object = [deactivate object];
  if (![UIApplication _maps_shouldIgnoreActivationStateForScene:object])
  {
    v5 = sub_100E9E6E8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = object;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MAPS IPC _sceneWillDeactivate: %@", &v7, 0xCu);
    }

    v6 = +[NSDate date];
    [(IPCServer *)self setLastSceneDeactivationTime:v6];

    [(IPCServer *)self _noteGuidanceStateChanged];
  }
}

- (void)setState:(unint64_t)state withReason:(unint64_t)reason
{
  if (self->_state != state)
  {
    v7 = sub_100E9E6E8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      state = self->_state;
      if (reason > 5)
      {
        v9 = @"Unknown Reason";
      }

      else
      {
        v9 = off_101625868[reason];
      }

      v10 = 134218498;
      stateCopy = state;
      v12 = 2048;
      stateCopy2 = state;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MAPS IPC IPCServer state is changing from %lu to %lu for reason %@", &v10, 0x20u);
    }

    self->_state = state;
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