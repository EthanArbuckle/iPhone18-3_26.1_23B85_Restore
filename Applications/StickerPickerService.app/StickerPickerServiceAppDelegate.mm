@interface StickerPickerServiceAppDelegate
- (_TtC20StickerPickerService31StickerPickerServiceAppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation StickerPickerServiceAppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:role];

  type metadata accessor for StickerPickerServiceSceneDelegate();
  [v7 setDelegateClass:swift_getObjCClassFromMetadata()];

  return v7;
}

- (_TtC20StickerPickerService31StickerPickerServiceAppDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickerPickerServiceAppDelegate();
  return [(StickerPickerServiceAppDelegate *)&v3 init];
}

@end