@interface HeadphoneErrorViewController
- (_TtC20HeadphoneProxService28HeadphoneErrorViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneErrorViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10003DF20();
}

- (_TtC20HeadphoneProxService28HeadphoneErrorViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneErrorViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneErrorViewController_type] = 16;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneErrorViewController *)&v7 initWithContentView:a3];
}

@end