@interface SizeDimensionRequest
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC18ActivityUIServices20SizeDimensionRequest)init;
- (_TtC18ActivityUIServices20SizeDimensionRequest)initWithCoder:(id)coder;
- (_TtC18ActivityUIServices20SizeDimensionRequest)initWithMinimum:(double)minimum maximum:(double)maximum type:(int64_t)type;
- (_TtC18ActivityUIServices20SizeDimensionRequest)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SizeDimensionRequest

- (_TtC18ActivityUIServices20SizeDimensionRequest)initWithMinimum:(double)minimum maximum:(double)maximum type:(int64_t)type
{
  if (minimum <= 0.0)
  {
    minimum = 0.0;
  }

  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum) = minimum;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum) = maximum;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type) = type;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SizeDimensionRequest();
  return [(SizeDimensionRequest *)&v6 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_18E65C7D8(v8);

  sub_18E61D6A8(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  sub_18E65C97C();

  v3 = sub_18E65F8F0();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_18E65CB60(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_18E65FDD0();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_18E65CC80(coderCopy);
}

- (_TtC18ActivityUIServices20SizeDimensionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_18E65D168(coderCopy);

  return v4;
}

- (_TtC18ActivityUIServices20SizeDimensionRequest)initWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  v4 = sub_18E65D28C(dictionary);
  swift_unknownObjectRelease();
  return v4;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum);
    selfCopy = self;
    swift_unknownObjectRetain();
    BSSerializeDoubleToXPCDictionaryWithKey();
    v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
    BSSerializeDoubleToXPCDictionaryWithKey();
    xpc_dictionary_set_int64(dictionary, "type", *(&selfCopy->super.isa + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type));
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