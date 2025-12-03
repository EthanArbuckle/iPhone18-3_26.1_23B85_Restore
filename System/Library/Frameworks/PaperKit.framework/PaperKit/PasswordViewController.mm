@interface PasswordViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtC8PaperKit22PasswordViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation PasswordViewController

- (void)loadView
{
  selfCopy = self;
  PasswordViewController.loadView()();
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  LOBYTE(self) = PasswordViewController.textFieldShouldReturn(_:)(returnCopy);

  return self & 1;
}

- (_TtC8PaperKit22PasswordViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return PasswordViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end