@interface SharePlayWelcomeViewController
- (_TtC18RemotePeoplePicker30SharePlayWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC18RemotePeoplePicker30SharePlayWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapContinueButton;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SharePlayWelcomeViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SharePlayWelcomeViewController();
  v2 = v3.receiver;
  [(SharePlayWelcomeViewController *)&v3 viewDidLoad];
  sub_100002994();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_100002854();
}

- (void)didTapContinueButton
{
  v2 = self;
  sub_100002C50();
}

- (_TtC18RemotePeoplePicker30SharePlayWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = sub_1000074E4();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_100002D48(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = sub_1000074E4();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1000074E4();
  v16 = v15;
  return sub_100002D48(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC18RemotePeoplePicker30SharePlayWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v9 = sub_1000074E4();
  v11 = v10;
  if (a4)
  {
    a4 = sub_1000074E4();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  return sub_100002F24(v9, v11, a4, v13, a5, a6);
}

@end