@interface CanvasTranscribingAudioPickerController
- (_TtC7Journal39CanvasTranscribingAudioPickerController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CanvasTranscribingAudioPickerController

- (void)viewDidLoad
{
  v2 = self;
  sub_10050850C();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CanvasTranscribingAudioPickerController();
  v4 = v6.receiver;
  [(CanvasTranscribingAudioPickerController *)&v6 viewDidDisappear:v3];
  v5 = OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_notificationsTask;
  if (*&v4[OBJC_IVAR____TtC7Journal39CanvasTranscribingAudioPickerController_notificationsTask])
  {

    Task.cancel()();
  }

  *&v4[v5] = 0;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100508764(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_100508918(a3);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CanvasTranscribingAudioPickerController();
  v2 = v3.receiver;
  [(CanvasTranscribingAudioPickerController *)&v3 viewWillLayoutSubviews];
  sub_100509C68();
}

- (_TtC7Journal39CanvasTranscribingAudioPickerController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end