@interface InAppPurchaseNonTiledLockupCollectionViewCell
- (_TtC18ASMessagesProvider45InAppPurchaseNonTiledLockupCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation InAppPurchaseNonTiledLockupCollectionViewCell

- (_TtC18ASMessagesProvider45InAppPurchaseNonTiledLockupCollectionViewCell)initWithFrame:(CGRect)frame
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