@interface FullScreenStateOfMindView
- (_TtC7Journal25FullScreenStateOfMindView)initWithFrame:(CGRect)frame;
@end

@implementation FullScreenStateOfMindView

- (_TtC7Journal25FullScreenStateOfMindView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_stateOfMindAsset) = 0;
  v8 = OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_stateOfMindView;
  type metadata accessor for StateOfMindAssetGridView();
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_scrollView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(UIScrollView) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for FullScreenStateOfMindView();
  return [(FullScreenStateOfMindView *)&v11 initWithFrame:x, y, width, height];
}

@end