@interface B389CustomEmojiViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC18SharingViewService29B389CustomEmojiViewController)initWithContentView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation B389CustomEmojiViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000675B8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(B389CustomEmojiViewController *)&v5 viewDidAppear:v3];
  [*&v4[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_hiddenEmojiField] becomeFirstResponder];
}

- (_TtC18SharingViewService29B389CustomEmojiViewController)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  v9 = sub_100068E2C();

  return v9;
}

@end