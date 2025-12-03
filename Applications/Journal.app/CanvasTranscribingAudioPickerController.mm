@interface CanvasTranscribingAudioPickerController
- (_TtC7Journal39CanvasTranscribingAudioPickerController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CanvasTranscribingAudioPickerController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10050850C();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CanvasTranscribingAudioPickerController();
  v4 = v6.receiver;
  [(CanvasTranscribingAudioPickerController *)&v6 viewDidDisappear:disappearCopy];
  v5 = OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_notificationsTask;
  if (*&v4[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_notificationsTask])
  {

    Task.cancel()();
  }

  *&v4[v5] = 0;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100508764(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_100508918(appearing);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CanvasTranscribingAudioPickerController();
  v2 = v3.receiver;
  [(CanvasTranscribingAudioPickerController *)&v3 viewWillLayoutSubviews];
  sub_100509C68();
}

- (_TtC7Journal39CanvasTranscribingAudioPickerController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end