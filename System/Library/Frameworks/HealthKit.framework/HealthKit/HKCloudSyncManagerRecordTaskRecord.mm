@interface HKCloudSyncManagerRecordTaskRecord
- (HKCloudSyncManagerRecordTaskRecord)init;
- (HKCloudSyncManagerRecordTaskRecord)initWithOwnerID:(id)d zoneID:(id)iD recordID:(id)recordID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCloudSyncManagerRecordTaskRecord

- (HKCloudSyncManagerRecordTaskRecord)initWithOwnerID:(id)d zoneID:(id)iD recordID:(id)recordID
{
  v6 = sub_191CC67B8();
  v8 = v7;
  v9 = sub_191CC67B8();
  v11 = v10;
  v12 = sub_191CC67B8();
  v13 = (self + OBJC_IVAR___HKCloudSyncManagerRecordTaskRecord_ownerID);
  *v13 = v6;
  v13[1] = v8;
  v14 = (self + OBJC_IVAR___HKCloudSyncManagerRecordTaskRecord_zoneID);
  *v14 = v9;
  v14[1] = v11;
  v15 = (self + OBJC_IVAR___HKCloudSyncManagerRecordTaskRecord_recordID);
  *v15 = v12;
  v15[1] = v16;
  v18.receiver = self;
  v18.super_class = HKCloudSyncManagerRecordTaskRecord;
  return [(HKCloudSyncManagerRecordTaskRecord *)&v18 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  HKCloudSyncManagerRecordTaskRecord.encode(with:)(coderCopy);
}

- (HKCloudSyncManagerRecordTaskRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end