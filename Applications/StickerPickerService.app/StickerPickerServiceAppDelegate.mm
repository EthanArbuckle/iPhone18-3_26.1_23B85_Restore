@interface StickerPickerServiceAppDelegate
- (_TtC20StickerPickerService31StickerPickerServiceAppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation StickerPickerServiceAppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [v5 role];
  v7 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v6];

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