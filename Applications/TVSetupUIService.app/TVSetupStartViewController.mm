@interface TVSetupStartViewController
- (_TtC16TVSetupUIService26TVSetupStartViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVSetupStartViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100002504();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100002FA8(appear);
}

- (_TtC16TVSetupUIService26TVSetupStartViewController)initWithContentView:(id)view
{
  *&self->delegate[OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  v5 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_deviceIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_deviceModelCode] = 256;
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16TVSetupUIService26TVSetupStartViewController_isStarted] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TVSetupStartViewController();
  return [(TVSetupStartViewController *)&v7 initWithContentView:view];
}

@end