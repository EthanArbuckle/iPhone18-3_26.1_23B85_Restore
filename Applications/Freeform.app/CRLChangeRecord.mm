@interface CRLChangeRecord
- (_TtC8Freeform15CRLChangeRecord)init;
- (_TtC8Freeform15CRLChangeRecord)initWithKind:(unsigned int)a3 details:(id)a4;
- (void)setDetails:(id)a3;
@end

@implementation CRLChangeRecord

- (void)setDetails:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details) = a3;
  v3 = a3;
}

- (_TtC8Freeform15CRLChangeRecord)initWithKind:(unsigned int)a3 details:(id)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_kind) = a3;
  v6 = a4;
  if (!a4)
  {
    v7 = sub_100BD51F4(_swiftEmptyArrayStorage);
    v8 = type metadata accessor for CRLPropertyMap();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data] = v7;
    v13.receiver = v9;
    v13.super_class = v8;
    v6 = [(CRLChangeRecord *)&v13 init];
  }

  *(&self->super.isa + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details) = v6;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CRLChangeRecord();
  v10 = a4;
  return [(CRLChangeRecord *)&v12 init];
}

- (_TtC8Freeform15CRLChangeRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end