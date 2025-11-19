@interface OpenMailboxQuicklyFactory
+ (id)createOpenMailboxQuicklyItemWithFavoriteItem:(id)a3;
+ (id)createOpenMailboxQuicklyViewControllerWithFavoritesManager:(id)a3 delegate:(id)a4;
@end

@implementation OpenMailboxQuicklyFactory

+ (id)createOpenMailboxQuicklyViewControllerWithFavoritesManager:(id)a3 delegate:(id)a4
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  swift_unknownObjectRetain();
  swift_getObjCClassMetadata();
  v7 = static OpenMailboxQuicklyFactory.createOpenMailboxQuicklyViewController(with:delegate:)(a3, a4);
  swift_unknownObjectRelease();
  _objc_release(a3);

  return v7;
}

+ (id)createOpenMailboxQuicklyItemWithFavoriteItem:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  swift_getObjCClassMetadata();
  v5 = static OpenMailboxQuicklyFactory.createOpenMailboxQuicklyItem(with:)(a3);
  _objc_release(a3);

  return v5;
}

@end