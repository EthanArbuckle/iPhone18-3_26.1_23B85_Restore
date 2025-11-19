@interface MapsRadarButtonHelper
+ (BOOL)shouldShowButton;
+ (id)configureMenuWith:(id)a3;
+ (void)configureWithButton:(id)a3 presentationViewController:(id)a4 actionHandler:(id)a5;
- (MapsRadarButtonHelper)init;
@end

@implementation MapsRadarButtonHelper

+ (BOOL)shouldShowButton
{
  if (GEOConfigGetBOOL() && [objc_opt_self() shouldEnableTTRButton] && !GEOConfigGetBOOL())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_10002B22C();
  }

  return v2 & 1;
}

+ (void)configureWithButton:(id)a3 presentationViewController:(id)a4 actionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  swift_getObjCClassMetadata();
  v9 = a3;
  v10 = a4;
  sub_10011CC98(v9, v10, sub_1000FA694, v8);
}

+ (id)configureMenuWith:(id)a3
{
  v3 = a3;
  v4 = sub_100121D48(v3);

  return v4;
}

- (MapsRadarButtonHelper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MapsRadarButtonHelper *)&v3 init];
}

@end