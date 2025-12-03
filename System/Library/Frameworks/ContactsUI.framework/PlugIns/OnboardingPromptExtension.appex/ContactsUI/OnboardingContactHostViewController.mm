@interface OnboardingContactHostViewController
+ (id)makeHostingControllerWithName:(id)name bottomField:(id)field contactCountText:(id)text bottomText:(id)bottomText avatarWidth:(double)width trailPadding:(double)padding imageData:(id)data;
- (_TtC25OnboardingPromptExtension35OnboardingContactHostViewController)initWithCoder:(id)coder;
- (_TtC25OnboardingPromptExtension35OnboardingContactHostViewController)initWithName:(id)name bottomField:(id)field contactCountText:(id)text bottomText:(id)bottomText imageData:(id)data;
- (_TtC25OnboardingPromptExtension35OnboardingContactHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation OnboardingContactHostViewController

+ (id)makeHostingControllerWithName:(id)name bottomField:(id)field contactCountText:(id)text bottomText:(id)bottomText avatarWidth:(double)width trailPadding:(double)padding imageData:(id)data
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
  if (data)
  {
    v33 = v18;
    v23 = v15;
    v24 = v12;
    v25 = v19;
    v26 = v13;
    v27 = v10;
    dataCopy = data;
    data = sub_100004AC0();
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

  v31 = sub_100004708(v10, v12, v13, v15, v16, v18, v20, v22, data, v30);
  sub_10000489C(data, v30);

  return v31;
}

- (_TtC25OnboardingPromptExtension35OnboardingContactHostViewController)initWithName:(id)name bottomField:(id)field contactCountText:(id)text bottomText:(id)bottomText imageData:(id)data
{
  v8 = sub_100004DE0();
  v25 = v9;
  v10 = sub_100004DE0();
  v12 = v11;
  v13 = sub_100004DE0();
  v15 = v14;
  v17 = sub_100004DE0();
  v18 = v16;
  if (data)
  {
    v24 = v16;
    dataCopy = data;
    data = sub_100004AC0();
    v21 = v20;

    v18 = v24;
  }

  else
  {
    v21 = 0xF000000000000000;
  }

  v22 = sub_100004904(v8, v25, v10, v12, v13, v15, v17, v18, data, v21);
  sub_10000489C(data, v21);
  return v22;
}

- (_TtC25OnboardingPromptExtension35OnboardingContactHostViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_imageData) = xmmword_100005820;
  result = sub_100004E30();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  OnboardingContactHostViewController.viewDidLoad()();
}

- (_TtC25OnboardingPromptExtension35OnboardingContactHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end