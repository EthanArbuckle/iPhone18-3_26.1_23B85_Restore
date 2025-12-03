@interface NSAttributedString
- (id)crl_writeToFileUsingName:(id)name type:(int64_t)type error:(id *)error;
@end

@implementation NSAttributedString

- (id)crl_writeToFileUsingName:(id)name type:(int64_t)type error:(id *)error
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  selfCopy = self;
  sub_10075F720(v11, v13, type, v10);

  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  (*(v8 + 8))(v10, v7);

  return v17;
}

@end