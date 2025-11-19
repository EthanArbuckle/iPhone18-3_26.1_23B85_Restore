@interface ATPayload
- (BOOL)isEqual:(id)a3;
- (NSArray)allResponses;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (_TtC9AskToCore9ATPayload)init;
- (_TtC9AskToCore9ATPayload)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATPayload

- (NSArray)allResponses
{
  if (*(self + OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses))
  {
    type metadata accessor for ATResponse();

    v2 = sub_2410DF2B0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC9AskToCore9ATPayload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)a3
{
  v5 = [objc_allocWithZone(swift_getObjectType()) initWithCopying_];
  v3 = sub_2410DF8C0();

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = self;
  v3 = ATPayload.dictionaryRepresentation.getter();

  if (v3)
  {
    v4 = sub_2410DF040();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtC9AskToCore9ATPayload)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v4 = sub_2410DF050();
  swift_getObjectType();
  v5 = sub_241090B1C(v4);
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ATPayload.encode(with:)(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2410DF4E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = ATPayload.isEqual(_:)(v8);

  sub_241086184(v8, &unk_27E525CA0, "P?");
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = ATPayload.hash.getter();

  return v3;
}

- (NSString)description
{
  v2 = self;
  ATPayload.description.getter();

  v3 = sub_2410DF0A0();

  return v3;
}

@end