@interface LightContentStatusBarEXHostViewController
- (_TtC25AutomatedDeviceEnrollment41LightContentStatusBarEXHostViewController)initWithCoder:(id)a3;
- (_TtC25AutomatedDeviceEnrollment41LightContentStatusBarEXHostViewController)initWithConfiguration:(id)a3;
- (_TtC25AutomatedDeviceEnrollment41LightContentStatusBarEXHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation LightContentStatusBarEXHostViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for LightContentStatusBarEXHostViewController();
  v2 = v6.receiver;
  [(_EXHostViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() blackColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC25AutomatedDeviceEnrollment41LightContentStatusBarEXHostViewController)initWithConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for LightContentStatusBarEXHostViewController();
  return [(_EXHostViewController *)&v5 initWithConfiguration:a3];
}

- (_TtC25AutomatedDeviceEnrollment41LightContentStatusBarEXHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_236DEE818();
    v6 = a4;
    v7 = sub_236DEE808();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for LightContentStatusBarEXHostViewController();
  v9 = [(LightContentStatusBarEXHostViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC25AutomatedDeviceEnrollment41LightContentStatusBarEXHostViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LightContentStatusBarEXHostViewController();
  v4 = a3;
  v5 = [(LightContentStatusBarEXHostViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end