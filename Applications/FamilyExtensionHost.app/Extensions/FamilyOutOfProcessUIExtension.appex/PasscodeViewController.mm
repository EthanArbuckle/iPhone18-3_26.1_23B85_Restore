@interface PasscodeViewController
- (_TtC29FamilyOutOfProcessUIExtension22PasscodeViewController)initWithCoder:(id)a3;
- (_TtC29FamilyOutOfProcessUIExtension22PasscodeViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() whiteColor];
    [v4 setBackgroundColor:v5];

    sub_100018F28();
  }

  else
  {
    __break(1u);
  }
}

- (void)nextTapped
{
  v4 = self;
  v2 = [(PasscodeViewController *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
  }
}

- (_TtC29FamilyOutOfProcessUIExtension22PasscodeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_10001BD30();
    v6 = a4;
    v7 = sub_10001BD00();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PasscodeViewController();
  v9 = [(PasscodeViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC29FamilyOutOfProcessUIExtension22PasscodeViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PasscodeViewController();
  v4 = a3;
  v5 = [(PasscodeViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end