@interface CanvasDateTitleBarButton
- (_TtC7Journal24CanvasDateTitleBarButton)init;
- (void)updateConfiguration;
- (void)updateRolloverActive:(id)a3;
@end

@implementation CanvasDateTitleBarButton

- (_TtC7Journal24CanvasDateTitleBarButton)init
{
  v2 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v2 - 8);
  swift_getObjectType();
  static UIButton.Configuration.borderless()();
  v3 = UIButton.init(configuration:primaryAction:)();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)updateConfiguration
{
  v2 = self;
  sub_10085D244();
}

- (void)updateRolloverActive:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 state] != 1)
  {
    [v4 state];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.setter();
}

@end