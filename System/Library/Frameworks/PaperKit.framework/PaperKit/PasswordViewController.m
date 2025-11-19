@interface PasswordViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (_TtC8PaperKit22PasswordViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation PasswordViewController

- (void)loadView
{
  v2 = self;
  PasswordViewController.loadView()();
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = PasswordViewController.textFieldShouldReturn(_:)(v4);

  return self & 1;
}

- (_TtC8PaperKit22PasswordViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return PasswordViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end