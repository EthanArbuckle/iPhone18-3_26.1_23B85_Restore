@interface InAppPurchaseTiledLockupCollectionViewCell
- (_TtC18ASMessagesProvider42InAppPurchaseTiledLockupCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation InAppPurchaseTiledLockupCollectionViewCell

- (void)tintColorDidChange
{
  v2 = self;
  sub_2A41A0();
}

- (_TtC18ASMessagesProvider42InAppPurchaseTiledLockupCollectionViewCell)initWithFrame:(CGRect)a3
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