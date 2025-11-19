@interface LargeChartLockupCollectionViewCell
- (_TtC23ShelfKitCollectionViews34LargeChartLockupCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation LargeChartLockupCollectionViewCell

- (_TtC23ShelfKitCollectionViews34LargeChartLockupCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(LargeLockupCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

@end