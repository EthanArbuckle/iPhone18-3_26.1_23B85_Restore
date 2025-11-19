@interface PaceFormatter
- (id)stringForObjectValue:(id)a3;
@end

@implementation PaceFormatter

- (id)stringForObjectValue:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v5 = self;
  }

  sub_1002E08AC(v10);
  v7 = v6;

  sub_10000EA04(v10, &qword_1008E51F0);
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end