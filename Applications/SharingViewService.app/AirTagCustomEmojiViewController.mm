@interface AirTagCustomEmojiViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC18SharingViewService31AirTagCustomEmojiViewController)initWithContentView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation AirTagCustomEmojiViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100070EC4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(AirTagCustomEmojiViewController *)&v5 viewDidAppear:v3];
  [*&v4[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_hiddenEmojiField] becomeFirstResponder];
}

- (_TtC18SharingViewService31AirTagCustomEmojiViewController)initWithContentView:(id)a3
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
  v9 = sub_10007279C();

  return v9;
}

@end