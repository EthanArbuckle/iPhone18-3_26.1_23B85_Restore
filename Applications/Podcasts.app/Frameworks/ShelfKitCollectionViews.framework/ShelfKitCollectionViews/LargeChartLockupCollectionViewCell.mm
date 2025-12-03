@interface LargeChartLockupCollectionViewCell
- (_TtC23ShelfKitCollectionViews34LargeChartLockupCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation LargeChartLockupCollectionViewCell

- (_TtC23ShelfKitCollectionViews34LargeChartLockupCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(LargeLockupCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

@end