@interface MarketplaceKitLocalizedStrings
+ (void)showDialogForAlreadyInstalledApp:(id)app presenter:(id)presenter;
- (_TtC9appstored30MarketplaceKitLocalizedStrings)init;
@end

@implementation MarketplaceKitLocalizedStrings

+ (void)showDialogForAlreadyInstalledApp:(id)app presenter:(id)presenter
{
  appCopy = app;
  swift_unknownObjectRetain();
  sub_10011BAF4(appCopy, presenter);

  swift_unknownObjectRelease();
}

- (_TtC9appstored30MarketplaceKitLocalizedStrings)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MarketplaceKitLocalizedStrings *)&v3 init];
}

@end