@interface AISAAUISignInViewController
- (_TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController)initWithCoder:(id)coder;
- (_TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didMoveToParentViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation AISAAUISignInViewController

- (void)didMoveToParentViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for AISAAUISignInViewController();
  v4 = v9.receiver;
  controllerCopy = controller;
  [(AISAAUISignInViewController *)&v9 didMoveToParentViewController:controllerCopy];
  if (controllerCopy)
  {
    navigationItem = [controllerCopy navigationItem];
    navigationItem2 = [v4 navigationItem];
    rightBarButtonItems = [navigationItem2 rightBarButtonItems];

    [navigationItem setRightBarButtonItems_];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_240921ECC(appear);
}

- (_TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_240A2BF4C();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController_triggerNextButtonTappedOnAppear) = 1;
    bundleCopy = bundle;
    v7 = sub_240A2BF1C();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController_triggerNextButtonTappedOnAppear) = 1;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AISAAUISignInViewController();
  v9 = [(AAUISignInViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController_triggerNextButtonTappedOnAppear) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AISAAUISignInViewController();
  coderCopy = coder;
  v5 = [(AAUISignInViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end