@interface AirTagCustomEmojiViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC18SharingViewService31AirTagCustomEmojiViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AirTagCustomEmojiViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100070EC4();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(AirTagCustomEmojiViewController *)&v5 viewDidAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_hiddenEmojiField] becomeFirstResponder];
}

- (_TtC18SharingViewService31AirTagCustomEmojiViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  fieldCopy = field;
  selfCopy = self;
  v9 = sub_10007279C();

  return v9;
}

@end