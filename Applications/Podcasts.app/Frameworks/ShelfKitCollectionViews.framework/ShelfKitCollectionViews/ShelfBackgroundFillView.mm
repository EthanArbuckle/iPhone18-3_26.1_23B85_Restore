@interface ShelfBackgroundFillView
- (_TtC23ShelfKitCollectionViews23ShelfBackgroundFillView)initWithFrame:(CGRect)frame;
@end

@implementation ShelfBackgroundFillView

- (_TtC23ShelfKitCollectionViews23ShelfBackgroundFillView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradientView) = 0;
  v7 = (self + OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradient);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v8 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background;
  *v8 = 0;
  *(v8 + 2) = 256;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ShelfBackgroundFillView();
  return [(ShelfBackgroundFillView *)&v10 initWithFrame:x, y, width, height];
}

@end