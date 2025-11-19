@interface AURealtimeDrawingBaseViewController
- (_TtC12CoreAudioKit35AURealtimeDrawingBaseViewController)init;
- (void)checkLastRenderedTime;
- (void)viewDidLoad;
@end

@implementation AURealtimeDrawingBaseViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AURealtimeDrawingBaseViewController();
  v2 = v3.receiver;
  [(AUAppleViewControllerBase *)&v3 viewDidLoad];
  *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_realtimeDrawingInterval] = 0x3FA999999999999ALL;
}

- (void)checkLastRenderedTime
{
  v2 = self;
  sub_237195B48();
}

- (_TtC12CoreAudioKit35AURealtimeDrawingBaseViewController)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_renderingPollingInterval) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_numChannels) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_meterTimer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController____lazy_storage___decimalFormatter) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AURealtimeDrawingBaseViewController();
  return [(AUAppleViewControllerBase *)&v3 init];
}

@end