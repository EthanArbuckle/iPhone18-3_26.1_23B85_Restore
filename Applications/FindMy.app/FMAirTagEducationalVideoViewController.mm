@interface FMAirTagEducationalVideoViewController
- (_TtC6FindMy38FMAirTagEducationalVideoViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)actionTriggered;
- (void)doneAction;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMAirTagEducationalVideoViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMAirTagEducationalVideoViewController();
  v4 = v9.receiver;
  [(FMAirTagEducationalVideoViewController *)&v9 viewWillAppear:appearCopy];
  view = [v4 view];
  if (view)
  {
    v6 = view;
    [view setNeedsLayout];

    view2 = [v4 view];
    if (view2)
    {
      v8 = view2;
      [view2 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMAirTagEducationalVideoViewController();
  v4 = v5.receiver;
  [(FMAirTagEducationalVideoViewController *)&v5 viewDidAppear:appearCopy];
  if (v4[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_animating] & 1) == 0 && (v4[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_shouldAnimate])
  {
    v4[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_animating] = 1;
    sub_1002C3040();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMAirTagEducationalVideoViewController();
  v4 = v5.receiver;
  [(FMAirTagEducationalVideoViewController *)&v5 viewWillDisappear:disappearCopy];
  if (v4[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_animating] == 1)
  {
    v4[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_animating] = 0;
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMAirTagEducationalVideoViewController();
  v2 = v3.receiver;
  [(FMAirTagEducationalVideoViewController *)&v3 viewDidLayoutSubviews];
  sub_1002C2AF0();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1002C2978(change);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1002C2AF0();
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollHandler);
  if (v5)
  {

    v5(scrollCopy);

    sub_10001835C(v5);
  }

  else
  {
  }
}

- (void)doneAction
{
  selfCopy = self;
  sub_1002C3A30();
}

- (_TtC6FindMy38FMAirTagEducationalVideoViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)actionTriggered
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = v23 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPConfigValue();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v23[1] = sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMAirTagEducationalVideoViewController: Action button pressed", v14, 2u);
  }

  (*(v8 + 104))(v10, enum case for FMIPConfigValue.batteryRecyclingLink(_:), v7);
  v23[2] = 0;
  v23[3] = 0xE000000000000000;
  FMIPGlobalConfig<A>(_:fallback:)();
  (*(v8 + 8))(v10, v7);
  URL.init(string:)();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100012DF0(v2, &unk_1006B0120);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "FMAirTagEducationalVideoViewController: Cannot open invalid URL", v17, 2u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sharedApplication = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    sub_10015391C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_10000A270(&qword_1006AF360, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [sharedApplication openURL:v21 options:isa completionHandler:0];

    (*(v4 + 8))(v6, v3);
  }
}

@end