@interface SizeDimensionRequest
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC18ActivityUIServices20SizeDimensionRequest)init;
- (_TtC18ActivityUIServices20SizeDimensionRequest)initWithCoder:(id)a3;
- (_TtC18ActivityUIServices20SizeDimensionRequest)initWithMinimum:(double)a3 maximum:(double)a4 type:(int64_t)a5;
- (_TtC18ActivityUIServices20SizeDimensionRequest)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SizeDimensionRequest

- (_TtC18ActivityUIServices20SizeDimensionRequest)initWithMinimum:(double)a3 maximum:(double)a4 type:(int64_t)a5
{
  if (a3 <= 0.0)
  {
    a3 = 0.0;
  }

  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type) = a5;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SizeDimensionRequest();
  return [(SizeDimensionRequest *)&v6 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_18E65C7D8(v8);

  sub_18E61D6A8(v8);
  return v6;
}

- (NSString)description
{
  v2 = self;
  sub_18E65C97C();

  v3 = sub_18E65F8F0();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_18E65CB60(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_18E65FDD0();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18E65CC80(v4);
}

- (_TtC18ActivityUIServices20SizeDimensionRequest)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_18E65D168(v3);

  return v4;
}

- (_TtC18ActivityUIServices20SizeDimensionRequest)initWithXPCDictionary:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_18E65D28C(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  if (a3)
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum);
    v6 = self;
    swift_unknownObjectRetain();
    BSSerializeDoubleToXPCDictionaryWithKey();
    v5 = *(&v6->super.isa + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
    BSSerializeDoubleToXPCDictionaryWithKey();
    xpc_dictionary_set_int64(a3, "type", *(&v6->super.isa + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type));
    swift_unknownObjectRelease();
  }
}

- (_TtC18ActivityUIServices20SizeDimensionRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end