@interface VKWalkAssistManager
- (BOOL)isInWalkingNavigatingState;
- (VKWalkAssistManager)init;
- (double)_bearingFromCurrentLocation:(id)location toEndLocation:(id)endLocation;
- (id)_startRouteLocation;
- (void)_queueAssistStatusAnnouncement:(id)announcement;
- (void)_startObservingNavigationUpdates;
- (void)_stopObservingNavigationUpdates;
- (void)didArrive:(BOOL)arrive;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didReroute:(id)reroute;
- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic;
- (void)navigationService:(id)service didUpdateHeading:(double)heading accuracy:(double)accuracy;
- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location;
- (void)start;
- (void)stop;
@end

@implementation VKWalkAssistManager

- (VKWalkAssistManager)init
{
  v24 = *MEMORY[0x29EDCA608];
  v21.receiver = self;
  v21.super_class = VKWalkAssistManager;
  v2 = [(VKWalkAssistManager *)&v21 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v4 = [v3 URLForResource:@"point_reached" withExtension:@"aiff"];
    v20 = 0;
    v5 = [objc_alloc(MEMORY[0x29EDB8028]) initWithContentsOfURL:v4 error:&v20];
    v6 = v20;
    audioPlayer = v2->_audioPlayer;
    v2->_audioPlayer = v5;

    if (v6)
    {
      v8 = AXLogTemp();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v6;
        _os_log_impl(&dword_29C6F1000, v8, OS_LOG_TYPE_INFO, "Cannot read audio file: %@", buf, 0xCu);
      }
    }

    v9 = objc_alloc_init(VKWalkAssistHapticEngine);
    hapticEngine = v2->_hapticEngine;
    v2->_hapticEngine = v9;

    v11 = [[VKWalkAssistHeadingManager alloc] initWithHapticEngineDelegate:v2->_hapticEngine];
    headingManager = v2->_headingManager;
    v2->_headingManager = v11;

    v13 = [[VKToneGenerator alloc] initWithHapticEngineDelegate:v2->_hapticEngine];
    v14 = [[VKWalkAssistFeedbackProcessor alloc] initWithToneGenerator:v13];
    feedbackProcessor = v2->_feedbackProcessor;
    v2->_feedbackProcessor = v14;

    v16 = [[VKWalkAssistStatus alloc] initWithArrivalRadius:v2 delegate:8.0];
    assistStatus = v2->_assistStatus;
    v2->_assistStatus = v16;

    v18 = v2;
  }

  return v2;
}

- (void)start
{
  [(VKWalkAssistManager *)self setRunning:1];
  hapticEngine = [(VKWalkAssistManager *)self hapticEngine];
  [hapticEngine start];

  feedbackProcessor = [(VKWalkAssistManager *)self feedbackProcessor];
  [feedbackProcessor setShouldPlayAudio:1];

  [(VKWalkAssistManager *)self _startObservingNavigationUpdates];
}

- (void)stop
{
  [(VKWalkAssistManager *)self setRunning:0];
  hapticEngine = [(VKWalkAssistManager *)self hapticEngine];
  [hapticEngine stop];

  feedbackProcessor = [(VKWalkAssistManager *)self feedbackProcessor];
  [feedbackProcessor stopProcessing];

  [(VKWalkAssistManager *)self _stopObservingNavigationUpdates];
}

- (BOOL)isInWalkingNavigatingState
{
  mEMORY[0x29EDC5E28] = [MEMORY[0x29EDC5E28] sharedService];
  if ([mEMORY[0x29EDC5E28] isInNavigatingState])
  {
    mEMORY[0x29EDC5E28]2 = [MEMORY[0x29EDC5E28] sharedService];
    v4 = [mEMORY[0x29EDC5E28]2 navigationTransportType] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_startObservingNavigationUpdates
{
  mEMORY[0x29EDC5E28] = [MEMORY[0x29EDC5E28] sharedService];
  [mEMORY[0x29EDC5E28] registerObserver:self];
}

- (void)_stopObservingNavigationUpdates
{
  mEMORY[0x29EDC5E28] = [MEMORY[0x29EDC5E28] sharedService];
  [mEMORY[0x29EDC5E28] unregisterObserver:self];
}

- (id)_startRouteLocation
{
  mEMORY[0x29EDC5E28] = [MEMORY[0x29EDC5E28] sharedService];
  route = [mEMORY[0x29EDC5E28] route];

  objc_opt_class();
  steps = [route steps];
  firstObject = [steps firstObject];
  v7 = __UIAccessibilityCastAsClass();

  [route pointAtRouteCoordinate:{objc_msgSend(v7, "startRouteCoordinate")}];
  v9 = v8;
  v11 = v10;
  maneuverRoadName = [v7 maneuverRoadName];
  [(VKWalkAssistManager *)self setStartRouteRoadName:maneuverRoadName];

  v13 = [objc_alloc(MEMORY[0x29EDC5E20]) initWithLatitude:v9 longitude:v11];

  return v13;
}

- (void)_queueAssistStatusAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  if (announcementCopy)
  {
    lastAssistStatusAnnouncement = [(VKWalkAssistManager *)self lastAssistStatusAnnouncement];
    v5 = [lastAssistStatusAnnouncement isEqualToString:announcementCopy];

    if ((v5 & 1) == 0)
    {
      v6 = +[VKMapViewOutputManager sharedOutputManager];
      [v6 clearOutputQueue];

      v7 = +[VKMapViewOutputManager sharedOutputManager];
      [v7 queueOutput:announcementCopy];
    }
  }

  [(VKWalkAssistManager *)self setLastAssistStatusAnnouncement:announcementCopy];
}

- (void)navigationService:(id)service didUpdateHeading:(double)heading accuracy:(double)accuracy
{
  if (UIAccessibilityIsVoiceOverRunning() || self->_arrived)
  {
    headingManager = [(VKWalkAssistManager *)self headingManager];
    [(VKWalkAssistManager *)self bearing];
    [headingManager updateHeading:heading bearing:v7];
  }

  else
  {
    [(VKWalkAssistManager *)self stop];
    v8 = AXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C6F1000, v8, OS_LOG_TYPE_DEFAULT, "Unable to continue walk assist without VoiceOver", buf, 2u);
    }
  }
}

- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location
{
  locationCopy = location;
  if (UIAccessibilityIsVoiceOverRunning() || self->_arrived)
  {
    if (CFAbsoluteTimeGetCurrent() - *&navigationService_didUpdateMatchedLocation__LastProcessTime >= 0.5)
    {
      navigationService_didUpdateMatchedLocation__LastProcessTime = CFAbsoluteTimeGetCurrent();
      _startRouteLocation = [(VKWalkAssistManager *)self _startRouteLocation];
      [(VKWalkAssistManager *)self _bearingFromCurrentLocation:locationCopy toEndLocation:_startRouteLocation];
      [(VKWalkAssistManager *)self setBearing:?];
      assistStatus = [(VKWalkAssistManager *)self assistStatus];
      headingManager = [(VKWalkAssistManager *)self headingManager];
      feedbackProcessor = [(VKWalkAssistManager *)self feedbackProcessor];
      [locationCopy speed];
      v11 = v10 <= 0.35;
      [locationCopy coordinate];
      [locationCopy coordinate];
      [_startRouteLocation coordinate];
      [_startRouteLocation coordinate];
      GEOCalculateDistance();
      v13 = v12;
      isFacingStartLocation = [headingManager isFacingStartLocation];
      isFacingStartLocation2 = [headingManager isFacingStartLocation];
      [feedbackProcessor processPulseFeedbackForDistance:v13 shouldProcessHapticPulse:isFacingStartLocation];
      [assistStatus updateAssistStatusWithCurrentDistance:self->_startRouteRoadName startRouteRoadName:isFacingStartLocation2 isFacingStartLocation:v11 isStationary:v13];
    }
  }

  else
  {
    [(VKWalkAssistManager *)self stop];
    v16 = AXLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_29C6F1000, v16, OS_LOG_TYPE_DEFAULT, "Unable to continue walk assist without VoiceOver", v17, 2u);
    }
  }
}

- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic
{
  if (type != 2)
  {
    [(VKWalkAssistManager *)self stop:service];
  }
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (toState >= 4)
  {
    if (toState - 4 >= 3)
    {
      goto LABEL_6;
    }

    v8 = serviceCopy;
    [(VKWalkAssistManager *)self start];
  }

  else
  {
    v8 = serviceCopy;
    [(VKWalkAssistManager *)self stop];
  }

  serviceCopy = v8;
LABEL_6:
}

- (void)navigationService:(id)service didReroute:(id)reroute
{
  if (self->_arrived)
  {
    [(VKWalkAssistManager *)self setArrived:0, reroute];
  }
}

- (double)_bearingFromCurrentLocation:(id)location toEndLocation:(id)endLocation
{
  endLocationCopy = endLocation;
  locationCopy = location;
  [locationCopy coordinate];
  [locationCopy coordinate];

  [endLocationCopy coordinate];
  [endLocationCopy coordinate];

  GEOBearingFromCoordinateToCoordinate();
  return result;
}

- (void)didArrive:(BOOL)arrive
{
  if (arrive)
  {
    [(AVAudioPlayer *)self->_audioPlayer play];
    [(VKWalkAssistManager *)self setArrived:1];

    [(VKWalkAssistManager *)self stop];
  }
}

@end