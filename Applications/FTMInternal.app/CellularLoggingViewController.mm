@interface CellularLoggingViewController
- (_TtC11FTMInternal29CellularLoggingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didChangedChunkFileSliderValue:(id)value;
- (void)didChangedMaxLogsSlider:(id)slider;
- (void)didTapConfig;
- (void)didTapReset;
- (void)didTapStart;
- (void)didTapStop;
- (void)endAppearanceTransition;
- (void)sliderValueChangedSinope:(id)sinope;
- (void)viewDidLoad;
@end

@implementation CellularLoggingViewController

- (void)viewDidLoad
{
  selfCopy = self;
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
  selfCopy = self;
  sub_10027D8EC();
}

- (void)didTapStop
{
  v2 = qword_100375018;
  selfCopy = self;
  if (v2 != -1)
  {
    v6 = selfCopy;
    swift_once();
    selfCopy = v6;
  }

  if (*(qword_100382500 + 154) == 1)
  {
    v5 = selfCopy;
    v4 = sub_10027CD44();
    sub_1001D54B4();

    if (qword_100374F90 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    sub_10027E0C4();
    selfCopy = v5;
  }
}

- (void)didTapReset
{
  selfCopy = self;
  sub_10027E5A0();
}

- (void)didTapConfig
{
  selfCopy = self;
  sub_10027EA60();
}

- (void)sliderValueChangedSinope:(id)sinope
{
  sinopeCopy = sinope;
  selfCopy = self;
  sub_10027EBA8(sinopeCopy, v5);
}

- (void)didChangedChunkFileSliderValue:(id)value
{
  valueCopy = value;
  selfCopy = self;
  sub_10027EE00(valueCopy);
}

- (void)didChangedMaxLogsSlider:(id)slider
{
  sliderCopy = slider;
  selfCopy = self;
  sub_10027F0F4(sliderCopy);
}

- (_TtC11FTMInternal29CellularLoggingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100280D60(v5, v7, bundle);
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_100281FB8(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_100282C78(0);
  swift_unknownObjectRetain();

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_100282C78(1);
  swift_unknownObjectRetain();

  return v6;
}

@end