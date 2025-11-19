@interface VKWalkAssistManager
- (BOOL)isInWalkingNavigatingState;
- (VKWalkAssistManager)init;
- (double)_bearingFromCurrentLocation:(id)a3 toEndLocation:(id)a4;
- (id)_startRouteLocation;
- (void)_queueAssistStatusAnnouncement:(id)a3;
- (void)_startObservingNavigationUpdates;
- (void)_stopObservingNavigationUpdates;
- (void)didArrive:(BOOL)a3;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didReroute:(id)a4;
- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6;
- (void)navigationService:(id)a3 didUpdateHeading:(double)a4 accuracy:(double)a5;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
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
  v3 = [(VKWalkAssistManager *)self hapticEngine];
  [v3 start];

  v4 = [(VKWalkAssistManager *)self feedbackProcessor];
  [v4 setShouldPlayAudio:1];

  [(VKWalkAssistManager *)self _startObservingNavigationUpdates];
}

- (void)stop
{
  [(VKWalkAssistManager *)self setRunning:0];
  v3 = [(VKWalkAssistManager *)self hapticEngine];
  [v3 stop];

  v4 = [(VKWalkAssistManager *)self feedbackProcessor];
  [v4 stopProcessing];

  [(VKWalkAssistManager *)self _stopObservingNavigationUpdates];
}

- (BOOL)isInWalkingNavigatingState
{
  v2 = [MEMORY[0x29EDC5E28] sharedService];
  if ([v2 isInNavigatingState])
  {
    v3 = [MEMORY[0x29EDC5E28] sharedService];
    v4 = [v3 navigationTransportType] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_startObservingNavigationUpdates
{
  v3 = [MEMORY[0x29EDC5E28] sharedService];
  [v3 registerObserver:self];
}

- (void)_stopObservingNavigationUpdates
{
  v3 = [MEMORY[0x29EDC5E28] sharedService];
  [v3 unregisterObserver:self];
}

- (id)_startRouteLocation
{
  v3 = [MEMORY[0x29EDC5E28] sharedService];
  v4 = [v3 route];

  objc_opt_class();
  v5 = [v4 steps];
  v6 = [v5 firstObject];
  v7 = __UIAccessibilityCastAsClass();

  [v4 pointAtRouteCoordinate:{objc_msgSend(v7, "startRouteCoordinate")}];
  v9 = v8;
  v11 = v10;
  v12 = [v7 maneuverRoadName];
  [(VKWalkAssistManager *)self setStartRouteRoadName:v12];

  v13 = [objc_alloc(MEMORY[0x29EDC5E20]) initWithLatitude:v9 longitude:v11];

  return v13;
}

- (void)_queueAssistStatusAnnouncement:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(VKWalkAssistManager *)self lastAssistStatusAnnouncement];
    v5 = [v4 isEqualToString:v8];

    if ((v5 & 1) == 0)
    {
      v6 = +[VKMapViewOutputManager sharedOutputManager];
      [v6 clearOutputQueue];

      v7 = +[VKMapViewOutputManager sharedOutputManager];
      [v7 queueOutput:v8];
    }
  }

  [(VKWalkAssistManager *)self setLastAssistStatusAnnouncement:v8];
}

- (void)navigationService:(id)a3 didUpdateHeading:(double)a4 accuracy:(double)a5
{
  if (UIAccessibilityIsVoiceOverRunning() || self->_arrived)
  {
    v9 = [(VKWalkAssistManager *)self headingManager];
    [(VKWalkAssistManager *)self bearing];
    [v9 updateHeading:a4 bearing:v7];
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

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v5 = a4;
  if (UIAccessibilityIsVoiceOverRunning() || self->_arrived)
  {
    if (CFAbsoluteTimeGetCurrent() - *&navigationService_didUpdateMatchedLocation__LastProcessTime >= 0.5)
    {
      navigationService_didUpdateMatchedLocation__LastProcessTime = CFAbsoluteTimeGetCurrent();
      v6 = [(VKWalkAssistManager *)self _startRouteLocation];
      [(VKWalkAssistManager *)self _bearingFromCurrentLocation:v5 toEndLocation:v6];
      [(VKWalkAssistManager *)self setBearing:?];
      v7 = [(VKWalkAssistManager *)self assistStatus];
      v8 = [(VKWalkAssistManager *)self headingManager];
      v9 = [(VKWalkAssistManager *)self feedbackProcessor];
      [v5 speed];
      v11 = v10 <= 0.35;
      [v5 coordinate];
      [v5 coordinate];
      [v6 coordinate];
      [v6 coordinate];
      GEOCalculateDistance();
      v13 = v12;
      v14 = [v8 isFacingStartLocation];
      v15 = [v8 isFacingStartLocation];
      [v9 processPulseFeedbackForDistance:v13 shouldProcessHapticPulse:v14];
      [v7 updateAssistStatusWithCurrentDistance:self->_startRouteRoadName startRouteRoadName:v15 isFacingStartLocation:v11 isStationary:v13];
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

- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6
{
  if (a4 != 2)
  {
    [(VKWalkAssistManager *)self stop:a3];
  }
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v7 = a3;
  if (a5 >= 4)
  {
    if (a5 - 4 >= 3)
    {
      goto LABEL_6;
    }

    v8 = v7;
    [(VKWalkAssistManager *)self start];
  }

  else
  {
    v8 = v7;
    [(VKWalkAssistManager *)self stop];
  }

  v7 = v8;
LABEL_6:
}

- (void)navigationService:(id)a3 didReroute:(id)a4
{
  if (self->_arrived)
  {
    [(VKWalkAssistManager *)self setArrived:0, a4];
  }
}

- (double)_bearingFromCurrentLocation:(id)a3 toEndLocation:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 coordinate];
  [v6 coordinate];

  [v5 coordinate];
  [v5 coordinate];

  GEOBearingFromCoordinateToCoordinate();
  return result;
}

- (void)didArrive:(BOOL)a3
{
  if (a3)
  {
    [(AVAudioPlayer *)self->_audioPlayer play];
    [(VKWalkAssistManager *)self setArrived:1];

    [(VKWalkAssistManager *)self stop];
  }
}

@end