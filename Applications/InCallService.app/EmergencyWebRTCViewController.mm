@interface EmergencyWebRTCViewController
- (CGSize)preferredContentSize;
- (EmergencyWebRTCViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)flashButtonTapped;
- (void)flipCameraButtonTapped;
- (void)pinch:(id)a3;
- (void)recentMessageViewTapped;
- (void)requestCancel;
- (void)requestContinue;
- (void)rttAudioRouteButtonTapped;
- (void)rttCallControlsButtonTapped;
- (void)rttVideoButtonTapped;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCallStatus;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)zoomButtonTapped;
@end

@implementation EmergencyWebRTCViewController

- (void)rttAudioRouteButtonTapped
{
  v2 = self;
  sub_100157E70();
}

- (void)rttCallControlsButtonTapped
{
  v2 = self;
  sub_100158164(3);
}

- (void)rttVideoButtonTapped
{
  v2 = self;
  sub_1001580B8();
}

- (void)recentMessageViewTapped
{
  v2 = self;
  sub_100158164(4);
}

- (CGSize)preferredContentSize
{
  v2 = self;
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
  v2 = self;
  sub_1001838C4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100183948(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100183A84(a3);
}

- (void)updateCallStatus
{
  v2 = self;
  sub_100184098();
}

- (void)flashButtonTapped
{
  v2 = self;
  sub_100187458();
}

- (void)flipCameraButtonTapped
{
  v2 = self;
  sub_10018B730();
}

- (void)zoomButtonTapped
{
  v2 = self;
  sub_10018BDF4();
}

- (void)pinch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10018C598(v4);
}

- (EmergencyWebRTCViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_10018D42C();
}

- (void)requestCancel
{
  v2 = self;
  sub_10018D7D8("EnhancedEmergency: video streaming request cancelled, request to remove webview", &selRef_cancelVideoStreamingRequest);
}

- (void)requestContinue
{
  v2 = self;
  sub_10018D7D8("EnhancedEmergency: video streaming request continued, request to start streaming video", &selRef_continueVideoStreamingRequest);
}

@end