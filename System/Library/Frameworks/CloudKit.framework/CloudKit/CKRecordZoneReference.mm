@interface CKRecordZoneReference
- (BOOL)isEqual:(id)equal;
- (CKRecordZoneID)zoneID;
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKRecordZoneReference

- (CKRecordZoneID)zoneID
{
  v2 = CKRecordZoneReference.zoneID.getter();

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CKRecordZoneReference.encode(with:)(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  CKRecordZoneReference.copy(with:)(selfCopy, v6);

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

  v6 = CKRecordZoneReference.isEqual(_:)(v8);

  sub_18847EBC8(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CKRecordZoneReference.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  v3 = CKRecordZoneReference.description.getter();
  v5 = v4;

  v6 = MEMORY[0x18CFD5010](v3, v5);

  return v6;
}

@end