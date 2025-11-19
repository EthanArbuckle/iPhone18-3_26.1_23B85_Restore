@interface JSSettingsContainerViewController
- (_TtC16MusicApplication33JSSettingsContainerViewController)init;
- (_TtC16MusicApplication33JSSettingsContainerViewController)initWithCoder:(id)a3;
- (void)handleDoneButtonTapped;
- (void)viewDidLoad;
@end

@implementation JSSettingsContainerViewController

- (void)viewDidLoad
{
  v2 = self;
  JSSettingsContainerViewController.viewDidLoad()();
}

- (void)handleDoneButtonTapped
{
  v5 = self;
  v2 = [(JSSettingsContainerViewController *)v5 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [(JSSettingsContainerViewController *)v2 dismissViewControllerAnimated:1 completion:0];

    v4 = v3;
  }

  else
  {
    v4 = v5;
  }
}

- (_TtC16MusicApplication33JSSettingsContainerViewController)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication33JSSettingsContainerViewController_allowedServicesSubscription) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(JSDrivenViewController *)&v5 init];
}

- (_TtC16MusicApplication33JSSettingsContainerViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication33JSSettingsContainerViewController_allowedServicesSubscription) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(JSDrivenViewController *)&v9 initWithCoder:v6];

  return v7;
}

@end