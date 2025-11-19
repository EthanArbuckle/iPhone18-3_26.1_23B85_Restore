@interface SVSMoreHelpWebViewController
- (_TtC18SharingViewService28SVSMoreHelpWebViewController)init;
- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithCoder:(id)a3;
- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithURL:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation SVSMoreHelpWebViewController

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SVSMoreHelpWebViewController();
  v4 = v6.receiver;
  [(SVSMoreHelpWebViewController *)&v6 viewDidDisappear:v3];
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

- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for SVSMoreHelpWebViewController();
  return [(SVSMoreHelpWebViewController *)&v8 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectWeakInit();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_unknownObjectWeakInit();
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SVSMoreHelpWebViewController();
  v9 = [(SVSMoreHelpWebViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for SVSMoreHelpWebViewController();
  v5 = a3;
  v6 = [(SVSMoreHelpWebViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

- (_TtC18SharingViewService28SVSMoreHelpWebViewController)initWithURL:(id)a3
{
  v4 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if (a3)
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