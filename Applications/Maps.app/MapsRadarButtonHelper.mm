@interface MapsRadarButtonHelper
+ (BOOL)shouldShowButton;
+ (id)configureMenuWith:(id)with;
+ (void)configureWithButton:(id)button presentationViewController:(id)controller actionHandler:(id)handler;
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

+ (void)configureWithButton:(id)button presentationViewController:(id)controller actionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  swift_getObjCClassMetadata();
  buttonCopy = button;
  controllerCopy = controller;
  sub_10011CC98(buttonCopy, controllerCopy, sub_1000FA694, v8);
}

+ (id)configureMenuWith:(id)with
{
  withCopy = with;
  v4 = sub_100121D48(withCopy);

  return v4;
}

- (MapsRadarButtonHelper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MapsRadarButtonHelper *)&v3 init];
}

@end