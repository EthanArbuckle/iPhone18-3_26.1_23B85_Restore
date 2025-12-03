@interface CRLiOSCompactScenesNavigatorViewController
+ (BOOL)scenesNavigatorHasFixedPositionWith:(id)with;
- (_TtC8Freeform42CRLiOSCompactScenesNavigatorViewController)initWithCoder:(id)coder;
- (_TtC8Freeform42CRLiOSCompactScenesNavigatorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismiss;
- (void)selectionPathDidChangeWithNotification:(id)notification;
- (void)teardown;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CRLiOSCompactScenesNavigatorViewController

- (_TtC8Freeform42CRLiOSCompactScenesNavigatorViewController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform42CRLiOSCompactScenesNavigatorViewController_contentViewSize);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)teardown
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1009FFBB8();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLiOSCompactScenesNavigatorViewController();
  v2 = v3.receiver;
  [(CRLiOSCompactScenesNavigatorViewController *)&v3 viewDidLayoutSubviews];
  sub_100A00500();
}

+ (BOOL)scenesNavigatorHasFixedPositionWith:(id)with
{
  v4 = objc_opt_self();
  withCopy = with;
  if ([v4 crl_phoneUI])
  {
    crl_isCompactWidth = 1;
  }

  else
  {
    crl_isCompactWidth = [withCopy crl_isCompactWidth];
  }

  return crl_isCompactWidth;
}

- (void)dismiss
{
  selfCopy = self;
  view = [(CRLiOSCompactScenesNavigatorViewController *)selfCopy view];
  if (view)
  {
    v3 = view;
    [view removeFromSuperview];

    [(CRLiOSCompactScenesNavigatorViewController *)selfCopy removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8Freeform42CRLiOSCompactScenesNavigatorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)selectionPathDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100A00908(notificationCopy);
}

@end