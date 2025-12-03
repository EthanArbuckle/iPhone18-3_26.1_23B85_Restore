@interface JSLocalize
- (id)nativeString:(id)string;
@end

@implementation JSLocalize

- (id)nativeString:(id)string
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_10011E510(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end