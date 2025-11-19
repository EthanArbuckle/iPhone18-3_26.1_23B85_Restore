@interface CRLWPReplaceTextCommand
- (BOOL)wantsToCoalesceWith:(id)a3;
- (NSString)actionString;
- (_TtC8Freeform23CRLWPReplaceTextCommand)init;
- (_TtC8Freeform23CRLWPReplaceTextCommand)initWithShapeItem:(id)a3 range:(_NSRange)a4 text:(id)a5;
@end

@implementation CRLWPReplaceTextCommand

- (_TtC8Freeform23CRLWPReplaceTextCommand)initWithShapeItem:(id)a3 range:(_NSRange)a4 text:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1008AA24C(a3, location, length, v8, v9);
}

- (BOOL)wantsToCoalesceWith:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1008AC374(v4);

  return self & 1;
}

- (NSString)actionString
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

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