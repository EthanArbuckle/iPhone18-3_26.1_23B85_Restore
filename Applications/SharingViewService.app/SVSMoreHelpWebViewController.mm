@interface SVSMoreHelpWebViewController
- (_TtC18SharingViewService28SVSMoreHelpWebViewController)init;
- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithCoder:(id)coder;
- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithURL:(id)l;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation SVSMoreHelpWebViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SVSMoreHelpWebViewController();
  v4 = v6.receiver;
  [(SVSMoreHelpWebViewController *)&v6 viewDidDisappear:disappearCopy];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didRejectForInterventionViewController:{0, v6.receiver, v6.super_class}];
    swift_unknownObjectRelease();
  }
}

- (_TtC18SharingViewService28SVSMoreHelpWebViewController)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for SVSMoreHelpWebViewController();
  return [(SVSMoreHelpWebViewController *)&v4 init];
}

- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for SVSMoreHelpWebViewController();
  return [(SVSMoreHelpWebViewController *)&v8 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectWeakInit();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_unknownObjectWeakInit();
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SVSMoreHelpWebViewController();
  v9 = [(SVSMoreHelpWebViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for SVSMoreHelpWebViewController();
  coderCopy = coder;
  v6 = [(SVSMoreHelpWebViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithURL:(id)l
{
  v4 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  return sub_1000AA77C(v6);
}

@end