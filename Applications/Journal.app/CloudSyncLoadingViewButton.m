@interface CloudSyncLoadingViewButton
- (_TtC7Journal26CloudSyncLoadingViewButton)initWithFrame:(CGRect)a3;
- (void)updateDisplay;
@end

@implementation CloudSyncLoadingViewButton

- (_TtC7Journal26CloudSyncLoadingViewButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_isSyncing) = 0;
  v8 = OBJC_IVAR____TtC7Journal26CloudSyncLoadingViewButton_activityIndicator;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v11.receiver = self;
  v11.super_class = type metadata accessor for CloudSyncLoadingViewButton();
  v9 = [(CloudSyncLoadingViewButton *)&v11 initWithFrame:x, y, width, height];
  sub_1001BCAA4();

  return v9;
}

- (void)updateDisplay
{
  v2 = self;
  sub_1001BD358();
}

@end