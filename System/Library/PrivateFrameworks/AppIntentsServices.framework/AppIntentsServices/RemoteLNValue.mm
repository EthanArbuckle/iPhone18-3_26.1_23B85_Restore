@interface RemoteLNValue
- (_TtC18AppIntentsServices13RemoteLNValue)initWithValue:(id)value valueType:(id)type;
- (_TtC18AppIntentsServices13RemoteLNValue)initWithValue:(id)value valueType:(id)type displayRepresentation:(id)representation;
- (_TtC18AppIntentsServices13RemoteLNValue)initWithValue:(id)value valueType:(id)type exportedContent:(id)content displayRepresentation:(id)representation;
- (_TtC18AppIntentsServices13RemoteLNValue)initWithValues:(id)values memberValueType:(id)type;
@end

@implementation RemoteLNValue

- (_TtC18AppIntentsServices13RemoteLNValue)initWithValue:(id)value valueType:(id)type
{
  swift_unknownObjectRetain();
  typeCopy = type;
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_221B82824();
}

- (_TtC18AppIntentsServices13RemoteLNValue)initWithValues:(id)values memberValueType:(id)type
{
  sub_2219A8E5C();
  sub_221BCD668();
  typeCopy = type;
  sub_221B82894();
}

- (_TtC18AppIntentsServices13RemoteLNValue)initWithValue:(id)value valueType:(id)type displayRepresentation:(id)representation
{
  swift_unknownObjectRetain();
  typeCopy = type;
  representationCopy = representation;
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_221B828F8();
}

- (_TtC18AppIntentsServices13RemoteLNValue)initWithValue:(id)value valueType:(id)type exportedContent:(id)content displayRepresentation:(id)representation
{
  swift_unknownObjectRetain();
  typeCopy = type;
  contentCopy = content;
  representationCopy = representation;
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_221B82974();
}

@end