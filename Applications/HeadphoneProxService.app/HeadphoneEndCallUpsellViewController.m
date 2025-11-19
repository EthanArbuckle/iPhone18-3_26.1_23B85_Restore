@interface HeadphoneEndCallUpsellViewController
- (_TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneEndCallUpsellViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10009492C();
}

- (_TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController_type] = 6;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneEndCallUpsellViewController *)&v7 initWithContentView:a3];
}

@end