@interface CKSyncEngineAccount
- (BOOL)isEqual:(id)equal;
- (CKAccountInfo)accountInfo;
- (CKRecordID)userRecordID;
- (CKSyncEngineAccount)initWithAccountInfo:(id)info userRecordID:(id)d;
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setUserRecordID:(id)d;
@end

@implementation CKSyncEngineAccount

- (CKSyncEngineAccount)initWithAccountInfo:(id)info userRecordID:(id)d
{
  infoCopy = info;
  dCopy = d;
  return sub_188505260(infoCopy, d);
}

- (CKAccountInfo)accountInfo
{
  v2 = sub_188505374();

  return v2;
}

- (CKRecordID)userRecordID
{
  v2 = sub_1885053C0();

  return v2;
}

- (void)setUserRecordID:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_18850545C(d);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_188505490(coderCopy);
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

  v6 = CKSyncEngineAccount.isEqual(_:)(v8);

  sub_18847EBC8(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CKSyncEngineAccount.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  v3 = CKSyncEngineAccount.description.getter();
  v5 = v4;

  v6 = MEMORY[0x18CFD5010](v3, v5);

  return v6;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  CKSyncEngineAccount.copy(with:)(selfCopy, v6);

  sub_188400B68(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_1883FE944(v6);
  return v4;
}

@end