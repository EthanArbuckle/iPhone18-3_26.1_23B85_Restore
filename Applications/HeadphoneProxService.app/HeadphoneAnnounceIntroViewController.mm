@interface HeadphoneAnnounceIntroViewController
- (_TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneAnnounceIntroViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100014794();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100014DC4(appear);
}

- (_TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController_type] = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneAnnounceIntroViewController *)&v7 initWithContentView:view];
}

@end