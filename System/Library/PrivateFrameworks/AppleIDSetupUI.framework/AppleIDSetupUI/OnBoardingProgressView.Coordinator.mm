@interface OnBoardingProgressView.Coordinator
- (_TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidLoad;
@end

@implementation OnBoardingProgressView.Coordinator

- (void)viewDidLoad
{
  v2 = self;
  sub_2409C5D24();
}

- (_TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = sub_240A2BF4C();
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
    return sub_2409C5FEC(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = sub_240A2BF4C();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_240A2BF4C();
  v16 = v15;
  return sub_2409C5FEC(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  sub_240A2BF4C();
  if (a4)
  {
    sub_240A2BF4C();
    a4 = v10;
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator_activityIndicator) = 0;
  v11 = a5;
  v12 = sub_240A2BF1C();

  if (a4)
  {
    v13 = sub_240A2BF1C();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for OnBoardingProgressView.Coordinator();
  v14 = [(OnBoardingProgressView.Coordinator *)&v16 initWithTitle:v12 detailText:v13 icon:v11 contentLayout:a6];

  return v14;
}

@end