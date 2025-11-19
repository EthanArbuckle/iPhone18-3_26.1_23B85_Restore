@interface CameraControlsView
- (CGSize)intrinsicContentSize;
- (_TtC11AssetViewer18CameraControlsView)initWithFrame:(CGRect)a3;
- (void)buttonPressedWithSender:(id)a3;
@end

@implementation CameraControlsView

- (CGSize)intrinsicContentSize
{
  v2 = 256.0;
  v3 = 152.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)buttonPressedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24125AD8C();
}

- (_TtC11AssetViewer18CameraControlsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end