@interface CameraPreviewViewController
- (void)applicationDidResume;
- (void)applicationWillSuspend;
- (void)debugTapInteractionWithRecognizer:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CameraPreviewViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100165D34();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_10016E264();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_100166178(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)applicationWillSuspend
{
  v2 = self;
  sub_100166360();
}

- (void)applicationDidResume
{
  v2 = self;
  sub_1001664CC();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = self;
  sub_10016E32C();
}

- (void)debugTapInteractionWithRecognizer:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_translationBridge);
  if (v3)
  {
    v5 = self;
    v4 = v3;
    VisualTranslationViewBridge.showDebugMenu()();
  }
}

@end