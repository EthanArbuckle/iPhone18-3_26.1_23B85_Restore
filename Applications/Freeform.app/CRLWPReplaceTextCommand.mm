@interface CRLWPReplaceTextCommand
- (BOOL)wantsToCoalesceWith:(id)with;
- (NSString)actionString;
- (_TtC8Freeform23CRLWPReplaceTextCommand)init;
- (_TtC8Freeform23CRLWPReplaceTextCommand)initWithShapeItem:(id)item range:(_NSRange)range text:(id)text;
@end

@implementation CRLWPReplaceTextCommand

- (_TtC8Freeform23CRLWPReplaceTextCommand)initWithShapeItem:(id)item range:(_NSRange)range text:(id)text
{
  length = range.length;
  location = range.location;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1008AA24C(item, location, length, v8, v9);
}

- (BOOL)wantsToCoalesceWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  LOBYTE(self) = sub_1008AC374(withCopy);

  return self & 1;
}

- (NSString)actionString
{
  v3 = objc_opt_self();
  selfCopy = self;
  mainBundle = [v3 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [mainBundle localizedStringForKey:v6 value:v7 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (_TtC8Freeform23CRLWPReplaceTextCommand)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end