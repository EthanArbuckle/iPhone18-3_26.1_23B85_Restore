@interface SharePlayWelcomeViewController
- (_TtC18RemotePeoplePicker30SharePlayWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18RemotePeoplePicker30SharePlayWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
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
  selfCopy = self;
  sub_100002854();
}

- (void)didTapContinueButton
{
  selfCopy = self;
  sub_100002C50();
}

- (_TtC18RemotePeoplePicker30SharePlayWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = sub_1000074E4();
  v11 = v10;
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_100002D48(v9, v11, text, v13, v14, v16, layout);
  }

  text = sub_1000074E4();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1000074E4();
  v16 = v15;
  return sub_100002D48(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC18RemotePeoplePicker30SharePlayWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  v9 = sub_1000074E4();
  v11 = v10;
  if (text)
  {
    text = sub_1000074E4();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  iconCopy = icon;
  return sub_100002F24(v9, v11, text, v13, icon, layout);
}

@end