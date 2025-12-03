@interface EmergencyWebRTCViewController
- (CGSize)preferredContentSize;
- (EmergencyWebRTCViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)flashButtonTapped;
- (void)flipCameraButtonTapped;
- (void)pinch:(id)pinch;
- (void)recentMessageViewTapped;
- (void)requestCancel;
- (void)requestContinue;
- (void)rttAudioRouteButtonTapped;
- (void)rttCallControlsButtonTapped;
- (void)rttVideoButtonTapped;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCallStatus;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)zoomButtonTapped;
@end

@implementation EmergencyWebRTCViewController

- (void)rttAudioRouteButtonTapped
{
  selfCopy = self;
  sub_100157E70();
}

- (void)rttCallControlsButtonTapped
{
  selfCopy = self;
  sub_100158164(3);
}

- (void)rttVideoButtonTapped
{
  selfCopy = self;
  sub_1001580B8();
}

- (void)recentMessageViewTapped
{
  selfCopy = self;
  sub_100158164(4);
}

- (CGSize)preferredContentSize
{
  selfCopy = self;
  sub_100158D68();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001838C4();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100183948(appear);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100183A84(change);
}

- (void)updateCallStatus
{
  selfCopy = self;
  sub_100184098();
}

- (void)flashButtonTapped
{
  selfCopy = self;
  sub_100187458();
}

- (void)flipCameraButtonTapped
{
  selfCopy = self;
  sub_10018B730();
}

- (void)zoomButtonTapped
{
  selfCopy = self;
  sub_10018BDF4();
}

- (void)pinch:(id)pinch
{
  pinchCopy = pinch;
  selfCopy = self;
  sub_10018C598(pinchCopy);
}

- (EmergencyWebRTCViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_10018D42C();
}

- (void)requestCancel
{
  selfCopy = self;
  sub_10018D7D8("EnhancedEmergency: video streaming request cancelled, request to remove webview", &selRef_cancelVideoStreamingRequest);
}

- (void)requestContinue
{
  selfCopy = self;
  sub_10018D7D8("EnhancedEmergency: video streaming request continued, request to start streaming video", &selRef_continueVideoStreamingRequest);
}

@end