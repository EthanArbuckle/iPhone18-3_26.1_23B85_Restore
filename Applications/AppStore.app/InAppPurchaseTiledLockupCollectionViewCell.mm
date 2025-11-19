@interface InAppPurchaseTiledLockupCollectionViewCell
- (_TtC8AppStore42InAppPurchaseTiledLockupCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation InAppPurchaseTiledLockupCollectionViewCell

- (void)tintColorDidChange
{
  v2 = self;
  sub_1002C9E64();
}

- (_TtC8AppStore42InAppPurchaseTiledLockupCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(InAppPurchaseLockupCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

@end