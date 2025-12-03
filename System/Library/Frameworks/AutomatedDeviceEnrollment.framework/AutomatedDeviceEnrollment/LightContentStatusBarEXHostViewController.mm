@interface LightContentStatusBarEXHostViewController
- (_TtC25AutomatedDeviceEnrollment41LightContentStatusBarEXHostViewController)initWithCoder:(id)coder;
- (_TtC25AutomatedDeviceEnrollment41LightContentStatusBarEXHostViewController)initWithConfiguration:(id)configuration;
- (_TtC25AutomatedDeviceEnrollment41LightContentStatusBarEXHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation LightContentStatusBarEXHostViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for LightContentStatusBarEXHostViewController();
  v2 = v6.receiver;
  [(_EXHostViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    blackColor = [objc_opt_self() blackColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC25AutomatedDeviceEnrollment41LightContentStatusBarEXHostViewController)initWithConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for LightContentStatusBarEXHostViewController();
  return [(_EXHostViewController *)&v5 initWithConfiguration:configuration];
}

- (_TtC25AutomatedDeviceEnrollment41LightContentStatusBarEXHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_236DEE818();
    bundleCopy = bundle;
    v7 = sub_236DEE808();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for LightContentStatusBarEXHostViewController();
  v9 = [(LightContentStatusBarEXHostViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC25AutomatedDeviceEnrollment41LightContentStatusBarEXHostViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LightContentStatusBarEXHostViewController();
  coderCopy = coder;
  v5 = [(LightContentStatusBarEXHostViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end