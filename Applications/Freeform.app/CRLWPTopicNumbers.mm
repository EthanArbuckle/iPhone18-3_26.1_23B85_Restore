@interface CRLWPTopicNumbers
- (_TtC8Freeform17CRLWPTopicNumbers)init;
- (_TtC8Freeform17CRLWPTopicNumbers)initWithStorage:(id)storage;
- (id)numberedListLabelForCharIndex:(int64_t)index includeFormatting:(BOOL)formatting;
- (unint64_t)listNumberForCharIndex:(int64_t)index;
- (void)invalidateFromCharIndex:(int64_t)index;
@end

@implementation CRLWPTopicNumbers

- (_TtC8Freeform17CRLWPTopicNumbers)initWithStorage:(id)storage
{
  v4 = OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_topicNumberData;
  swift_unknownObjectRetain();
  *(&self->super.isa + v4) = sub_100BD9E18(_swiftEmptyArrayStorage);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_invalidCharIndex) = 0;
  type metadata accessor for CRLWPStorage();
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_storage) = swift_dynamicCastClassUnconditional();
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLWPTopicNumbers();
  return [(CRLWPTopicNumbers *)&v6 init];
}

- (void)invalidateFromCharIndex:(int64_t)index
{
  selfCopy = self;
  CRLWPTopicNumbers.invalidate(from:)(index);
}

- (unint64_t)listNumberForCharIndex:(int64_t)index
{
  selfCopy = self;
  v5 = CRLWPTopicNumbers.listNumber(for:)(index);

  return v5;
}

- (id)numberedListLabelForCharIndex:(int64_t)index includeFormatting:(BOOL)formatting
{
  selfCopy = self;
  CRLWPTopicNumbers.numberedListLabel(for:includeFormatting:)(index, formatting);

  v7 = String._bridgeToObjectiveC()();

  return v7;
}

- (_TtC8Freeform17CRLWPTopicNumbers)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end