@interface HomePodSetupSiriVoiceSelectionViewController
- (_TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController)initWithContentView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)voiceSelectionController:(id)controller didSelectVoice:(id)voice;
- (void)voiceSelectionControllerRequestsDismissal:(id)dismissal;
@end

@implementation HomePodSetupSiriVoiceSelectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100058F80();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000595F8(appear, &selRef_viewWillAppear_, "HomePod Setup %@ viewWillAppear");
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000595F8(disappear, &selRef_viewDidDisappear_, "HomePod Setup %@ viewDidDisappear");
}

- (_TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)voiceSelectionController:(id)controller didSelectVoice:(id)voice
{
  controllerCopy = controller;
  voiceCopy = voice;
  selfCopy = self;
  sub_100059FA0(voiceCopy);
}

- (void)voiceSelectionControllerRequestsDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  selfCopy = self;
  sub_10005A1B4();
}

@end