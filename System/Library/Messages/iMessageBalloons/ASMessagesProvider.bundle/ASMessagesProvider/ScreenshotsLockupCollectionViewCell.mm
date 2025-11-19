@interface ScreenshotsLockupCollectionViewCell
- (_TtC18ASMessagesProvider35ScreenshotsLockupCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation ScreenshotsLockupCollectionViewCell

- (_TtC18ASMessagesProvider35ScreenshotsLockupCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(MixedMediaLockupCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

@end