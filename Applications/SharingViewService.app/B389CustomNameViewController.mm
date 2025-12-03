@interface B389CustomNameViewController
- (_TtC18SharingViewService28B389CustomNameViewController)initWithContentView:(id)view;
- (void)updateContinueButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation B389CustomNameViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10009F000();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(B389CustomNameViewController *)&v5 viewDidAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC18SharingViewService28B389CustomNameViewController_nameField] becomeFirstResponder];
}

- (void)updateContinueButton
{
  v2 = *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService28B389CustomNameViewController_continueAction];
  v3 = *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService28B389CustomNameViewController_nameField];
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

- (_TtC18SharingViewService28B389CustomNameViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end