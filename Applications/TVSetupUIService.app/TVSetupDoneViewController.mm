@interface TVSetupDoneViewController
- (_TtC16TVSetupUIService25TVSetupDoneViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation TVSetupDoneViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100011708();
}

- (_TtC16TVSetupUIService25TVSetupDoneViewController)initWithContentView:(id)view
{
  *&self->delegate[OBJC_IVAR____TtC16TVSetupUIService25TVSetupDoneViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  v5 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16TVSetupUIService25TVSetupDoneViewController_deviceIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16TVSetupUIService25TVSetupDoneViewController_error] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TVSetupDoneViewController();
  return [(TVSetupDoneViewController *)&v7 initWithContentView:view];
}

@end