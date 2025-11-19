@interface MOAngelRootViewController
- (_TtC16MomentsUIService25MOAngelRootViewController)initWithCoder:(id)a3;
- (_TtC16MomentsUIService25MOAngelRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)onboardingSettingsViewControllerDidTapDoneButton:(id)a3;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3;
@end

@implementation MOAngelRootViewController

- (_TtC16MomentsUIService25MOAngelRootViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_presentedSheetController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_currentlyPresentedOptions) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService25MOAngelRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  MOAngelRootViewController.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(v4);
}

- (void)onboardingSettingsViewControllerDidTapDoneButton:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized MOAngelRootViewController.onboardingSettingsViewControllerDidTapDoneButton(_:)(v4);
}

@end