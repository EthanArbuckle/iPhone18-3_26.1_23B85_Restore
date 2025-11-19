@interface TipKitController
+ (void)configureTips;
- (_TtC4Maps16TipKitController)init;
@end

@implementation TipKitController

+ (void)configureTips
{
  if (GEOConfigGetBOOL())
  {
    v2 = "Hiding All Tips For Testing";
    v3 = &static Tips.hideAllTipsForTesting();
LABEL_5:
    sub_100232870(v2, v3);
    goto LABEL_6;
  }

  if (GEOConfigGetBOOL())
  {
    v2 = "Showing All Tips For Testing";
    v3 = &static Tips.showAllTipsForTesting();
    goto LABEL_5;
  }

  if (GEOConfigGetBOOL())
  {
    +[TipKitController resetDatastore]_0();
  }

LABEL_6:

  sub_10023265C();
}

- (_TtC4Maps16TipKitController)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TipKitController *)&v3 init];
}

@end