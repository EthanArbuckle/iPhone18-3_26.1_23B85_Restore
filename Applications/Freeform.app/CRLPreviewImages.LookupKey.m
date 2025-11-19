@interface CRLPreviewImages.LookupKey
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtCC8Freeform16CRLPreviewImages9LookupKey)init;
- (int64_t)hash;
@end

@implementation CRLPreviewImages.LookupKey

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

  v6 = sub_1006CA3AC(v8);

  sub_10000CAAC(v8, &unk_1019F4D00);
  return v6;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1006CA630();

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_1006D7A2C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtCC8Freeform16CRLPreviewImages9LookupKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end