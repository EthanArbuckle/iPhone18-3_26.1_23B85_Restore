@interface AISAAUISignInViewController
- (_TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController)initWithCoder:(id)a3;
- (_TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation AISAAUISignInViewController

- (void)didMoveToParentViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for AISAAUISignInViewController();
  v4 = v9.receiver;
  v5 = a3;
  [(AISAAUISignInViewController *)&v9 didMoveToParentViewController:v5];
  if (v5)
  {
    v6 = [v5 navigationItem];
    v7 = [v4 navigationItem];
    v8 = [v7 rightBarButtonItems];

    [v6 setRightBarButtonItems_];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_240921ECC(a3);
}

- (_TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_240A2BF4C();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController_triggerNextButtonTappedOnAppear) = 1;
    v6 = a4;
    v7 = sub_240A2BF1C();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController_triggerNextButtonTappedOnAppear) = 1;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AISAAUISignInViewController();
  v9 = [(AAUISignInViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController_triggerNextButtonTappedOnAppear) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AISAAUISignInViewController();
  v4 = a3;
  v5 = [(AAUISignInViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end