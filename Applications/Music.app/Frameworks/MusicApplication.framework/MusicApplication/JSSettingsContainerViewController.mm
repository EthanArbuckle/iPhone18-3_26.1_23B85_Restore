@interface JSSettingsContainerViewController
- (_TtC16MusicApplication33JSSettingsContainerViewController)init;
- (_TtC16MusicApplication33JSSettingsContainerViewController)initWithCoder:(id)coder;
- (void)handleDoneButtonTapped;
- (void)viewDidLoad;
@end

@implementation JSSettingsContainerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  JSSettingsContainerViewController.viewDidLoad()();
}

- (void)handleDoneButtonTapped
{
  selfCopy = self;
  presentingViewController = [(JSSettingsContainerViewController *)selfCopy presentingViewController];
  if (presentingViewController)
  {
    v3 = presentingViewController;
    [(JSSettingsContainerViewController *)presentingViewController dismissViewControllerAnimated:1 completion:0];

    v4 = v3;
  }

  else
  {
    v4 = selfCopy;
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

- (_TtC16MusicApplication33JSSettingsContainerViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication33JSSettingsContainerViewController_allowedServicesSubscription) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(JSDrivenViewController *)&v9 initWithCoder:coderCopy];

  return v7;
}

@end