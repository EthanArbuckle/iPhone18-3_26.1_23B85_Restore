@interface ATPayload
- (BOOL)isEqual:(id)equal;
- (NSArray)allResponses;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (_TtC9AskToCore9ATPayload)init;
- (_TtC9AskToCore9ATPayload)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(void *)zone
{
  initWithCopying_ = [objc_allocWithZone(swift_getObjectType()) initWithCopying_];
  v3 = sub_2410DF8C0();

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  selfCopy = self;
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

- (_TtC9AskToCore9ATPayload)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v4 = sub_2410DF050();
  swift_getObjectType();
  v5 = sub_241090B1C(v4);
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ATPayload.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2410DF4E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = ATPayload.isEqual(_:)(v8);

  sub_241086184(v8, &unk_27E525CA0, "P?");
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = ATPayload.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  ATPayload.description.getter();

  v3 = sub_2410DF0A0();

  return v3;
}

@end