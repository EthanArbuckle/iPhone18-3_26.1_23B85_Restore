@interface HeadphoneMuteCallUpsellViewController
- (_TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneMuteCallUpsellViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10004FA6C();
}

- (_TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_tintColor] = 0;
  *&self->tintColor[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_type] = 7;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneMuteCallUpsellViewController *)&v7 initWithContentView:a3];
}

@end