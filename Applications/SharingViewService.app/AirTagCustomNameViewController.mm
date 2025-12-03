@interface AirTagCustomNameViewController
- (_TtC18SharingViewService30AirTagCustomNameViewController)initWithContentView:(id)view;
- (void)updateContinueButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AirTagCustomNameViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100073A50();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(AirTagCustomNameViewController *)&v5 viewDidAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC18SharingViewService30AirTagCustomNameViewController_nameField] becomeFirstResponder];
}

- (void)updateContinueButton
{
  v2 = *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService30AirTagCustomNameViewController_continueAction];
  v3 = *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService30AirTagCustomNameViewController_nameField];
  selfCopy = self;
  text = [v3 text];
  if (text)
  {
    v5 = text;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String.count.getter();

    v7 = v6 > 0;
  }

  else
  {
    v7 = 0;
  }

  [v2 setEnabled:v7];
}

- (_TtC18SharingViewService30AirTagCustomNameViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end