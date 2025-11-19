@interface BSUISharedWithYouController
+ (_TtC11BookStoreUI27BSUISharedWithYouController)shared;
- (id)createHighlightAttributionViewFor:(id)a3 viewController:(id)a4;
- (void)highlightCenterHighlightsDidChange:(id)a3;
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

- (id)createHighlightAttributionViewFor:(id)a3 viewController:(id)a4
{
  v6 = sub_2C58C8();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11 = sub_59A6C(v6, v8, a4);

  return v11;
}

- (void)highlightCenterHighlightsDidChange:(id)a3
{
  v3 = self;
  _s11BookStoreUI27BSUISharedWithYouControllerC34highlightCenterHighlightsDidChangeyySo011SWHighlightI0CF_0();
}

@end