@interface HeadphoneInstallFindMyViewController
- (_TtC20HeadphoneProxService36HeadphoneInstallFindMyViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation HeadphoneInstallFindMyViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HeadphoneInstallFindMyViewController();
  v2 = v3.receiver;
  [(HeadphoneInstallFindMyViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (_TtC20HeadphoneProxService36HeadphoneInstallFindMyViewController)initWithContentView:(id)view
{
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneInstallFindMyViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneInstallFindMyViewController_type] = 27;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HeadphoneInstallFindMyViewController();
  return [(HeadphoneInstallFindMyViewController *)&v6 initWithContentView:view];
}

@end