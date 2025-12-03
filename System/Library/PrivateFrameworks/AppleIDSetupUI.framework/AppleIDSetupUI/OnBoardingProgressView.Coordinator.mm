@interface OnBoardingProgressView.Coordinator
- (_TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
@end

@implementation OnBoardingProgressView.Coordinator

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2409C5D24();
}

- (_TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = sub_240A2BF4C();
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
    return sub_2409C5FEC(v9, v11, text, v13, v14, v16, layout);
  }

  text = sub_240A2BF4C();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_240A2BF4C();
  v16 = v15;
  return sub_2409C5FEC(v9, v11, text, v13, v14, v16, layout);
}

- (_TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  sub_240A2BF4C();
  if (text)
  {
    sub_240A2BF4C();
    text = v10;
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator_activityIndicator) = 0;
  iconCopy = icon;
  v12 = sub_240A2BF1C();

  if (text)
  {
    v13 = sub_240A2BF1C();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for OnBoardingProgressView.Coordinator();
  v14 = [(OnBoardingProgressView.Coordinator *)&v16 initWithTitle:v12 detailText:v13 icon:iconCopy contentLayout:layout];

  return v14;
}

@end