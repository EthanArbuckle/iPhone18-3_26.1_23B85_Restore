@interface TVSetupCaptiveNetworkWarningViewController
- (_TtC16TVSetupUIService42TVSetupCaptiveNetworkWarningViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation TVSetupCaptiveNetworkWarningViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000154BC();
}

- (_TtC16TVSetupUIService42TVSetupCaptiveNetworkWarningViewController)initWithContentView:(id)view
{
  *&self->delegate[OBJC_IVAR____TtC16TVSetupUIService42TVSetupCaptiveNetworkWarningViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16TVSetupUIService42TVSetupCaptiveNetworkWarningViewController_didTapContinue] = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for TVSetupCaptiveNetworkWarningViewController();
  return [(TVSetupCaptiveNetworkWarningViewController *)&v6 initWithContentView:view];
}

@end