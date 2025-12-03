@interface PasscodeViewController
- (_TtC29FamilyOutOfProcessUIExtension22PasscodeViewController)initWithCoder:(id)coder;
- (_TtC29FamilyOutOfProcessUIExtension22PasscodeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)nextTapped;
- (void)viewDidLoad;
@end

@implementation PasscodeViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PasscodeViewController();
  v2 = v6.receiver;
  [(PasscodeViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    whiteColor = [objc_opt_self() whiteColor];
    [v4 setBackgroundColor:whiteColor];

    sub_100018F28();
  }

  else
  {
    __break(1u);
  }
}

- (void)nextTapped
{
  selfCopy = self;
  navigationController = [(PasscodeViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
  }
}

- (_TtC29FamilyOutOfProcessUIExtension22PasscodeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_10001BD30();
    bundleCopy = bundle;
    v7 = sub_10001BD00();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PasscodeViewController();
  v9 = [(PasscodeViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC29FamilyOutOfProcessUIExtension22PasscodeViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PasscodeViewController();
  coderCopy = coder;
  v5 = [(PasscodeViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end