@interface CRLWPListStyle
+ (NSString)defaultLabelString;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (_TtC8Freeform14CRLWPListStyle)init;
- (float)labelIndentForLevel:(int64_t)a3;
- (float)textIndentForLevel:(int64_t)a3;
- (id)boxedValueForProperty:(unint64_t)a3;
- (unint64_t)firstLabelType;
- (unint64_t)labelTypeForLevel:(int64_t)a3;
@end

@implementation CRLWPListStyle

+ (NSString)defaultLabelString
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)boxedValueForProperty:(unint64_t)a3
{
  v4 = self;
  v5 = sub_10084A5F0(a3);

  return v5;
}

- (NSString)debugDescription
{
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)isEqual:(id)a3
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
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_10084ACB4(v8);

  sub_1005E09AC(v8);
  return v6;
}

- (_TtC8Freeform14CRLWPListStyle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (unint64_t)labelTypeForLevel:(int64_t)a3
{
  if (a3 > 8)
  {
    return 0;
  }

  v4 = self;
  result = sub_10084AB1C();
  if (a3 < 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a3)
  {
    v6 = *(result + 8 * a3 + 32);

    return v6;
  }

  __break(1u);
  return result;
}

- (unint64_t)firstLabelType
{
  v2 = self;
  v3 = sub_10084AB1C();
  v4 = *(v3 + 16);
  v5 = 32;
  while (v4)
  {
    v6 = *(v3 + v5);
    v5 += 8;
    --v4;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (float)labelIndentForLevel:(int64_t)a3
{
  v3 = 0.0;
  if (a3 > 8)
  {
    return v3;
  }

  v5 = sub_10084A98C();
  if (a3 < 0)
  {
    __break(1u);
  }

  else if (*(v5 + 2) > a3)
  {
    v3 = v5[a3 + 8];

    return v3;
  }

  __break(1u);
  return result;
}

- (float)textIndentForLevel:(int64_t)a3
{
  v3 = 0.0;
  if (a3 > 8)
  {
    return v3;
  }

  v5 = self;
  v6 = sub_10084ABC4();
  if (a3 < 0)
  {
    __break(1u);
  }

  else if (*(v6 + 16) > a3)
  {
    v3 = *(v6 + 4 * a3 + 32);

    return v3;
  }

  __break(1u);
  return result;
}

@end