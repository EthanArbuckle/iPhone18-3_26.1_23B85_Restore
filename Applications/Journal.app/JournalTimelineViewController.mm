@interface JournalTimelineViewController
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_TtC7Journal29JournalTimelineViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)activateJournalSearchOnKeyCommand;
- (void)adminLongPressWithSender:(id)a3;
- (void)changeSortOrderFrom:(id)a3;
- (void)composeButtonSelected;
- (void)presentExport;
- (void)printEntry;
- (void)selectAll:(id)a3;
- (void)shouldDismissOnboarding;
- (void)updateProperties;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation JournalTimelineViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100027ABC();
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UIContentUnavailableConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10002E71C();

  (*(v5 + 8))(v7, v4);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_10002EBD4(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_10002EE24();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100033658(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10041B0C4(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for JournalTimelineViewController(0);
  v4 = v5.receiver;
  [(JournalTimelineViewController *)&v5 viewDidDisappear:v3];
  sub_10041B1F4(0);
}

- (void)updateProperties
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JournalTimelineViewController(0);
  v2 = v3.receiver;
  [(JournalTimelineViewController *)&v3 updateProperties];
  sub_10041B368();
}

- (void)selectAll:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10041BDC0();
  sub_1003027EC();
  sub_10041EE2C();
  sub_10041CD74(0);
  sub_10041B368();

  sub_100004F84(v6, &qword_100AD13D0);
}

- (void)adminLongPressWithSender:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10041C3A8(v6);

  sub_100004F84(v6, &qword_100AD13D0);
}

- (BOOL)accessibilityPerformMagicTap
{
  v2 = self;
  v3 = [(JournalTimelineViewController *)v2 presentedViewController];
  if (v3)
  {

    v6.receiver = v2;
    v6.super_class = type metadata accessor for JournalTimelineViewController(0);
    v4 = [(JournalTimelineViewController *)&v6 accessibilityPerformMagicTap];
  }

  else
  {
    [(JournalTimelineViewController *)v2 composeButtonSelected];

    return 1;
  }

  return v4;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004208D8(v4);
}

- (_TtC7Journal29JournalTimelineViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)changeSortOrderFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10041DFCC(v4);
}

- (void)presentExport
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = qword_100AD02B0;
  v7 = self;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v7;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  *(v11 + 48) = v9;
  sub_1003E9628(0, 0, v5, &unk_1009555E0, v11);
}

- (void)activateJournalSearchOnKeyCommand
{
  v2 = self;
  sub_10041E4EC();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_10041E860(a3, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (void)composeButtonSelected
{
  v2 = self;
  sub_1008A1408();
}

- (void)printEntry
{
  v2 = self;
  sub_1008A1BA4();
}

- (void)shouldDismissOnboarding
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_1003E9628(0, 0, v5, &unk_100971C18, v9);
}

@end