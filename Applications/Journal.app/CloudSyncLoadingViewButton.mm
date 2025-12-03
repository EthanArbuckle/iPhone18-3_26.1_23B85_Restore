@interface CloudSyncLoadingViewButton
- (_TtC7Journal26CloudSyncLoadingViewButton)initWithFrame:(CGRect)frame;
- (void)updateDisplay;
@end

@implementation CloudSyncLoadingViewButton

- (_TtC7Journal26CloudSyncLoadingViewButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_isSyncing) = 0;
  v8 = OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_activityIndicator;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v11.receiver = self;
  v11.super_class = type metadata accessor for CloudSyncLoadingViewButton();
  height = [(CloudSyncLoadingViewButton *)&v11 initWithFrame:x, y, width, height];
  sub_1001BCAA4();

  return height;
}

- (void)updateDisplay
{
  selfCopy = self;
  sub_1001BD358();
}

@end