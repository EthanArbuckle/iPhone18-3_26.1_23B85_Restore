@interface HeadphoneAdaptiveControlsUpsellViewController
- (_TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneAdaptiveControlsUpsellViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10000626C();
}

- (_TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_sectionWidth] = 0x4074000000000000;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_estimatedSectionHeight] = 0x4056800000000000;
  *&self->sectionWidth[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_type] = 8;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneAdaptiveControlsUpsellViewController *)&v7 initWithContentView:a3];
}

@end