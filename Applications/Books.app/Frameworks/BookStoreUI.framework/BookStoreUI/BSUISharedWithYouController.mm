@interface BSUISharedWithYouController
+ (_TtC11BookStoreUI27BSUISharedWithYouController)shared;
- (id)createHighlightAttributionViewFor:(id)for viewController:(id)controller;
- (void)highlightCenterHighlightsDidChange:(id)change;
@end

@implementation BSUISharedWithYouController

+ (_TtC11BookStoreUI27BSUISharedWithYouController)shared
{
  if (qword_3BB710 != -1)
  {
    swift_once();
  }

  v3 = qword_3BB718;

  return v3;
}

- (id)createHighlightAttributionViewFor:(id)for viewController:(id)controller
{
  v6 = sub_2C58C8();
  v8 = v7;
  controllerCopy = controller;
  selfCopy = self;
  v11 = sub_59A6C(v6, v8, controller);

  return v11;
}

- (void)highlightCenterHighlightsDidChange:(id)change
{
  selfCopy = self;
  _s11BookStoreUI27BSUISharedWithYouControllerC34highlightCenterHighlightsDidChangeyySo011SWHighlightI0CF_0();
}

@end