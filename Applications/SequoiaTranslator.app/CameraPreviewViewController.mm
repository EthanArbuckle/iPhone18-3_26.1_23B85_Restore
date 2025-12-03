@interface CameraPreviewViewController
- (void)applicationDidResume;
- (void)applicationWillSuspend;
- (void)debugTapInteractionWithRecognizer:(id)recognizer;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CameraPreviewViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100165D34();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10016E264();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100166178(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)applicationWillSuspend
{
  selfCopy = self;
  sub_100166360();
}

- (void)applicationDidResume
{
  selfCopy = self;
  sub_1001664CC();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10016E32C();
}

- (void)debugTapInteractionWithRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_translationBridge);
  if (v3)
  {
    selfCopy = self;
    v4 = v3;
    VisualTranslationViewBridge.showDebugMenu()();
  }
}

@end