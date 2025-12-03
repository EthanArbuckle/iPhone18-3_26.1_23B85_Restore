@interface PaceFormatter
- (id)stringForObjectValue:(id)value;
@end

@implementation PaceFormatter

- (id)stringForObjectValue:(id)value
{
  if (value)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
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