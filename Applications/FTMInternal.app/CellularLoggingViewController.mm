@interface CellularLoggingViewController
- (_TtC11FTMInternal29CellularLoggingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didChangedChunkFileSliderValue:(id)a3;
- (void)didChangedMaxLogsSlider:(id)a3;
- (void)didTapConfig;
- (void)didTapReset;
- (void)didTapStart;
- (void)didTapStop;
- (void)endAppearanceTransition;
- (void)sliderValueChangedSinope:(id)a3;
- (void)viewDidLoad;
@end

@implementation CellularLoggingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10027D5B0();
}

- (void)endAppearanceTransition
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for CellularLoggingViewController();
  [(CellularLoggingViewController *)&v2 endAppearanceTransition];
}

- (void)didTapStart
{
  v2 = self;
  sub_10027D8EC();
}

- (void)didTapStop
{
  v2 = qword_100375018;
  v3 = self;
  if (v2 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  if (*(qword_100382500 + 154) == 1)
  {
    v5 = v3;
    v4 = sub_10027CD44();
    sub_1001D54B4();

    if (qword_100374F90 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    sub_10027E0C4();
    v3 = v5;
  }
}

- (void)didTapReset
{
  v2 = self;
  sub_10027E5A0();
}

- (void)didTapConfig
{
  v2 = self;
  sub_10027EA60();
}

- (void)sliderValueChangedSinope:(id)a3
{
  v4 = a3;
  v6 = self;
  sub_10027EBA8(v4, v5);
}

- (void)didChangedChunkFileSliderValue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10027EE00(v4);
}

- (void)didChangedMaxLogsSlider:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10027F0F4(v4);
}

- (_TtC11FTMInternal29CellularLoggingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100280D60(v5, v7, a4);
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v8, v4);
  return 60.0;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  if (!v6)
  {
    return 0;
  }

  if (!(v6 >> 62))
  {
    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < 0)
  {
    v8 = *(&self->super.super.super.super.isa + v5);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_100281FB8(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_100282C78(0);
  swift_unknownObjectRetain();

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100282C78(1);
  swift_unknownObjectRetain();

  return v6;
}

@end