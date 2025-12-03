@interface CellularPlanFactory
- (id)createCKContainer;
- (id)createCKDatabase;
- (id)createCKModifyRecordsOperation;
@end

@implementation CellularPlanFactory

- (id)createCKContainer
{
  v2 = objc_autoreleasePoolPush();
  if (qword_10008DB78 != -1)
  {
    sub_100057B68();
  }

  if (byte_10008DB80 == 1)
  {
    v3 = [CKContainer containerWithIdentifier:@"com.apple.iCloud.CommCenter"];
  }

  else
  {
    v3 = 0;
  }

  objc_autoreleasePoolPop(v2);

  return v3;
}

- (id)createCKDatabase
{
  v2 = objc_autoreleasePoolPush();
  if (qword_10008DB78 != -1)
  {
    sub_100057B68();
  }

  if (byte_10008DB80 == 1)
  {
    v3 = [CKContainer containerWithIdentifier:@"com.apple.iCloud.CommCenter"];
    privateCloudDatabase = [v3 privateCloudDatabase];
  }

  else
  {
    privateCloudDatabase = 0;
  }

  objc_autoreleasePoolPop(v2);

  return privateCloudDatabase;
}

- (id)createCKModifyRecordsOperation
{
  v2 = objc_autoreleasePoolPush();
  if (qword_10008DB78 != -1)
  {
    sub_100057B68();
  }

  if (byte_10008DB80 == 1)
  {
    v3 = objc_alloc_init(CKModifyRecordsOperation);
    [v3 setSavePolicy:2];
    [v3 setQualityOfService:25];
  }

  else
  {
    v3 = 0;
  }

  objc_autoreleasePoolPop(v2);

  return v3;
}

@end