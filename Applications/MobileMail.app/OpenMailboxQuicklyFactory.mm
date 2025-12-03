@interface OpenMailboxQuicklyFactory
+ (id)createOpenMailboxQuicklyItemWithFavoriteItem:(id)item;
+ (id)createOpenMailboxQuicklyViewControllerWithFavoritesManager:(id)manager delegate:(id)delegate;
@end

@implementation OpenMailboxQuicklyFactory

+ (id)createOpenMailboxQuicklyViewControllerWithFavoritesManager:(id)manager delegate:(id)delegate
{
  swift_getObjCClassMetadata();
  _objc_retain(manager);
  swift_unknownObjectRetain();
  swift_getObjCClassMetadata();
  v7 = static OpenMailboxQuicklyFactory.createOpenMailboxQuicklyViewController(with:delegate:)(manager, delegate);
  swift_unknownObjectRelease();
  _objc_release(manager);

  return v7;
}

+ (id)createOpenMailboxQuicklyItemWithFavoriteItem:(id)item
{
  swift_getObjCClassMetadata();
  _objc_retain(item);
  swift_getObjCClassMetadata();
  v5 = static OpenMailboxQuicklyFactory.createOpenMailboxQuicklyItem(with:)(item);
  _objc_release(item);

  return v5;
}

@end