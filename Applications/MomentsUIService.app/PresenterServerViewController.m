@interface PresenterServerViewController
- (_TtC16MomentsUIService29PresenterServerViewController)initWithCoder:(id)a3;
- (_TtC16MomentsUIService29PresenterServerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)onboardingSettingsViewControllerDidTapDoneButton:(id)a3;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation PresenterServerViewController

- (_TtC16MomentsUIService29PresenterServerViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController) = 0;
  v4 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentClient;
  v5 = type metadata accessor for Client();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentOptions) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_pendingNavControllerToPresent) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  type metadata accessor for MomentsUIManager();
  v3 = self;
  static MomentsUIManager.dismissWithoutCleanup.setter();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for PresenterServerViewController();
  [(PresenterServerViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for PresenterServerViewController();
  [(PresenterServerViewController *)&v2 viewDidLoad];
}

- (_TtC16MomentsUIService29PresenterServerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  PresenterServerViewController.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(v4);
}

- (void)onboardingSettingsViewControllerDidTapDoneButton:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized PresenterServerViewController.onboardingSettingsViewControllerDidTapDoneButton(_:)(v4);
}

@end