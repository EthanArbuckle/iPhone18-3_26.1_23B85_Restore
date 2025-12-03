@interface InAppPurchaseTiledLockupCollectionViewCell
- (_TtC22SubscribePageExtension42InAppPurchaseTiledLockupCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation InAppPurchaseTiledLockupCollectionViewCell

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_100301BA4();
}

- (_TtC22SubscribePageExtension42InAppPurchaseTiledLockupCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(InAppPurchaseLockupCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

@end