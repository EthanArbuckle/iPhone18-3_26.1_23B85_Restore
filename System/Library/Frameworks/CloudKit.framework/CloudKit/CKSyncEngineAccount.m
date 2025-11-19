@interface CKSyncEngineAccount
- (BOOL)isEqual:(id)a3;
- (CKAccountInfo)accountInfo;
- (CKRecordID)userRecordID;
- (CKSyncEngineAccount)initWithAccountInfo:(id)a3 userRecordID:(id)a4;
- (NSString)description;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setUserRecordID:(id)a3;
@end

@implementation CKSyncEngineAccount

- (CKSyncEngineAccount)initWithAccountInfo:(id)a3 userRecordID:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_188505260(v5, a4);
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

- (void)setUserRecordID:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18850545C(a3);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188505490(v4);
}

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

  v6 = CKSyncEngineAccount.isEqual(_:)(v8);

  sub_18847EBC8(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = CKSyncEngineAccount.hash.getter();

  return v3;
}

- (NSString)description
{
  v2 = self;
  v3 = CKSyncEngineAccount.description.getter();
  v5 = v4;

  v6 = MEMORY[0x18CFD5010](v3, v5);

  return v6;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  CKSyncEngineAccount.copy(with:)(v3, v6);

  sub_188400B68(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_1883FE944(v6);
  return v4;
}

@end