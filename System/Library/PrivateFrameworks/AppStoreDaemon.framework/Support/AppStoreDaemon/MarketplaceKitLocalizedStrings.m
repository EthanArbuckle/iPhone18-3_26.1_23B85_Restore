@interface MarketplaceKitLocalizedStrings
+ (void)showDialogForAlreadyInstalledApp:(id)a3 presenter:(id)a4;
- (_TtC9appstored30MarketplaceKitLocalizedStrings)init;
@end

@implementation MarketplaceKitLocalizedStrings

+ (void)showDialogForAlreadyInstalledApp:(id)a3 presenter:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  sub_10011BAF4(v5, a4);

  swift_unknownObjectRelease();
}

- (_TtC9appstored30MarketplaceKitLocalizedStrings)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MarketplaceKitLocalizedStrings *)&v3 init];
}

@end