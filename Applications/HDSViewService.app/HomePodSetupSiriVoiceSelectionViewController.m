@interface HomePodSetupSiriVoiceSelectionViewController
- (_TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController)initWithContentView:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)voiceSelectionController:(id)a3 didSelectVoice:(id)a4;
- (void)voiceSelectionControllerRequestsDismissal:(id)a3;
@end

@implementation HomePodSetupSiriVoiceSelectionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100058F80();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000595F8(a3, &selRef_viewWillAppear_, "HomePod Setup %@ viewWillAppear");
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000595F8(a3, &selRef_viewDidDisappear_, "HomePod Setup %@ viewDidDisappear");
}

- (_TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)voiceSelectionController:(id)a3 didSelectVoice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100059FA0(v7);
}

- (void)voiceSelectionControllerRequestsDismissal:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10005A1B4();
}

@end