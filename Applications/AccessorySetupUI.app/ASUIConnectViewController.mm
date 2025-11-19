@interface ASUIConnectViewController
- (_TtC16AccessorySetupUI25ASUIConnectViewController)initWithContentView:(id)a3;
- (void)motionEnded:(int64_t)a3 withEvent:(id)a4;
- (void)presentationControllerWillDismiss:(id)a3;
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

- (void)motionEnded:(int64_t)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_100042E60(a3);
}

- (_TtC16AccessorySetupUI25ASUIConnectViewController)initWithContentView:(id)a3
{
  v4 = a3;
  v5 = sub_100042FF4(a3);

  return v5;
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100043114();
}

@end