@interface TapTestParameter
- (NSString)testName;
- (id)completionHandler;
- (id)composerBlock;
- (void)setTestName:(id)a3;
@end

@implementation TapTestParameter

- (NSString)testName
{
  sub_100952650();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTestName:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_10095270C(v4, v6);
}

- (id)completionHandler
{
  v2 = sub_1009527D0();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1000742F0;
    v6[3] = &unk_100C76FC0;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)composerBlock
{
  sub_10095281C();
  v5[4] = sub_1009529FC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100952598;
  v5[3] = &unk_100C76F70;
  v3 = _Block_copy(v5);

  return v3;
}

@end