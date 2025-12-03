@interface CKRecordZone.Reference
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
@end

@implementation CKRecordZone.Reference

- (NSString)description
{
  selfCopy = self;
  v3 = CKRecordZone.Reference.description.getter();
  v5 = v4;

  v6 = MEMORY[0x18CFD5010](v3, v5);

  return v6;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  CKRecordZone.Reference.copy(with:)(v6);

  sub_188400B68(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_1883FE944(v6);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CKRecordZone.Reference.isEqual(_:)(v8);

  sub_18847EBC8(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CKRecordZone.Reference.hash.getter();

  return v3;
}

@end