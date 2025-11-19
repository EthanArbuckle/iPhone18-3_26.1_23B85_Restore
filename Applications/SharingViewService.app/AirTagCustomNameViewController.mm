@interface AirTagCustomNameViewController
- (_TtC18SharingViewService30AirTagCustomNameViewController)initWithContentView:(id)a3;
- (void)updateContinueButton;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation AirTagCustomNameViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100073A50();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(AirTagCustomNameViewController *)&v5 viewDidAppear:v3];
  [*&v4[OBJC_IVAR____TtC18SharingViewService30AirTagCustomNameViewController_nameField] becomeFirstResponder];
}

- (void)updateContinueButton
{
  v2 = *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService30AirTagCustomNameViewController_continueAction];
  v3 = *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService30AirTagCustomNameViewController_nameField];
  v8 = self;
  v4 = [v3 text];
  if (v4)
  {
    v5 = v4;
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

- (_TtC18SharingViewService30AirTagCustomNameViewController)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end