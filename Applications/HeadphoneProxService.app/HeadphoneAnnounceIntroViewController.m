@interface HeadphoneAnnounceIntroViewController
- (_TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController)initWithContentView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneAnnounceIntroViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100014794();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100014DC4(a3);
}

- (_TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController_type] = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneAnnounceIntroViewController *)&v7 initWithContentView:a3];
}

@end