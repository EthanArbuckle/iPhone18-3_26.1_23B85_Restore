@interface OnboardingContactHostViewController
+ (id)makeHostingControllerWithName:(id)a3 bottomField:(id)a4 contactCountText:(id)a5 bottomText:(id)a6 avatarWidth:(double)a7 trailPadding:(double)a8 imageData:(id)a9;
- (_TtC25OnboardingPromptExtension35OnboardingContactHostViewController)initWithCoder:(id)a3;
- (_TtC25OnboardingPromptExtension35OnboardingContactHostViewController)initWithName:(id)a3 bottomField:(id)a4 contactCountText:(id)a5 bottomText:(id)a6 imageData:(id)a7;
- (_TtC25OnboardingPromptExtension35OnboardingContactHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation OnboardingContactHostViewController

+ (id)makeHostingControllerWithName:(id)a3 bottomField:(id)a4 contactCountText:(id)a5 bottomText:(id)a6 avatarWidth:(double)a7 trailPadding:(double)a8 imageData:(id)a9
{
  v10 = sub_100004DE0();
  v12 = v11;
  v13 = sub_100004DE0();
  v15 = v14;
  v16 = sub_100004DE0();
  v18 = v17;
  v19 = sub_100004DE0();
  v20 = v19;
  v22 = v21;
  if (a9)
  {
    v33 = v18;
    v23 = v15;
    v24 = v12;
    v25 = v19;
    v26 = v13;
    v27 = v10;
    v28 = a9;
    a9 = sub_100004AC0();
    v30 = v29;

    v20 = v25;
    v12 = v24;
    v15 = v23;
    v18 = v33;
    v10 = v27;
    v13 = v26;
  }

  else
  {
    v30 = 0xF000000000000000;
  }

  v31 = sub_100004708(v10, v12, v13, v15, v16, v18, v20, v22, a9, v30);
  sub_10000489C(a9, v30);

  return v31;
}

- (_TtC25OnboardingPromptExtension35OnboardingContactHostViewController)initWithName:(id)a3 bottomField:(id)a4 contactCountText:(id)a5 bottomText:(id)a6 imageData:(id)a7
{
  v8 = sub_100004DE0();
  v25 = v9;
  v10 = sub_100004DE0();
  v12 = v11;
  v13 = sub_100004DE0();
  v15 = v14;
  v17 = sub_100004DE0();
  v18 = v16;
  if (a7)
  {
    v24 = v16;
    v19 = a7;
    a7 = sub_100004AC0();
    v21 = v20;

    v18 = v24;
  }

  else
  {
    v21 = 0xF000000000000000;
  }

  v22 = sub_100004904(v8, v25, v10, v12, v13, v15, v17, v18, a7, v21);
  sub_10000489C(a7, v21);
  return v22;
}

- (_TtC25OnboardingPromptExtension35OnboardingContactHostViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_imageData) = xmmword_100005820;
  result = sub_100004E30();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  OnboardingContactHostViewController.viewDidLoad()();
}

- (_TtC25OnboardingPromptExtension35OnboardingContactHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end