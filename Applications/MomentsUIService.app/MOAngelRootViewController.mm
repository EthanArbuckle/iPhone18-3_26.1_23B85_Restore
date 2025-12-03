@interface MOAngelRootViewController
- (_TtC16MomentsUIService25MOAngelRootViewController)initWithCoder:(id)coder;
- (_TtC16MomentsUIService25MOAngelRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)onboardingSettingsViewControllerDidTapDoneButton:(id)button;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier;
@end

@implementation MOAngelRootViewController

- (_TtC16MomentsUIService25MOAngelRootViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_presentedSheetController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_currentlyPresentedOptions) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService25MOAngelRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  MOAngelRootViewController.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(identifierCopy);
}

- (void)onboardingSettingsViewControllerDidTapDoneButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  specialized MOAngelRootViewController.onboardingSettingsViewControllerDidTapDoneButton(_:)(buttonCopy);
}

@end