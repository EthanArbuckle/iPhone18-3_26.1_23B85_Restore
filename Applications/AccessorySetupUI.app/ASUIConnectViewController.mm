@interface ASUIConnectViewController
- (_TtC16AccessorySetupUI25ASUIConnectViewController)initWithContentView:(id)view;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation ASUIConnectViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ASUIConnectViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_100042E60(ended);
}

- (_TtC16AccessorySetupUI25ASUIConnectViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_100042FF4(view);

  return v5;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_100043114();
}

@end