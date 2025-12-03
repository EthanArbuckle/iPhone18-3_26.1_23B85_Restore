@interface CRLChangeRecord
- (_TtC8Freeform15CRLChangeRecord)init;
- (_TtC8Freeform15CRLChangeRecord)initWithKind:(unsigned int)kind details:(id)details;
- (void)setDetails:(id)details;
@end

@implementation CRLChangeRecord

- (void)setDetails:(id)details
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details) = details;
  detailsCopy = details;
}

- (_TtC8Freeform15CRLChangeRecord)initWithKind:(unsigned int)kind details:(id)details
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_kind) = kind;
  detailsCopy = details;
  if (!details)
  {
    v7 = sub_100BD51F4(_swiftEmptyArrayStorage);
    v8 = type metadata accessor for CRLPropertyMap();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data] = v7;
    v13.receiver = v9;
    v13.super_class = v8;
    detailsCopy = [(CRLChangeRecord *)&v13 init];
  }

  *(&self->super.isa + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details) = detailsCopy;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CRLChangeRecord();
  detailsCopy2 = details;
  return [(CRLChangeRecord *)&v12 init];
}

- (_TtC8Freeform15CRLChangeRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end