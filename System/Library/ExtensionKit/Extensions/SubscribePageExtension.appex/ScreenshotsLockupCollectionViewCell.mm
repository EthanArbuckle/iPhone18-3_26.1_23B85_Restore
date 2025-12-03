@interface ScreenshotsLockupCollectionViewCell
- (_TtC22SubscribePageExtension35ScreenshotsLockupCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation ScreenshotsLockupCollectionViewCell

- (_TtC22SubscribePageExtension35ScreenshotsLockupCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(MixedMediaLockupCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

@end