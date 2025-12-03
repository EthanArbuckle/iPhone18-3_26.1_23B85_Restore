@interface B389CustomEmojiViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC18SharingViewService29B389CustomEmojiViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation B389CustomEmojiViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000675B8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(B389CustomEmojiViewController *)&v5 viewDidAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_hiddenEmojiField] becomeFirstResponder];
}

- (_TtC18SharingViewService29B389CustomEmojiViewController)initWithContentView:(id)view
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
  v9 = sub_100068E2C();

  return v9;
}

@end