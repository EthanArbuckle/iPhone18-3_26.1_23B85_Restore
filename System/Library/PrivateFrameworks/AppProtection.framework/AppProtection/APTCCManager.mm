@interface APTCCManager
+ (id)sharedManager;
- (APTCCManager)init;
- (id)TCCServicesForBundleIdentifier:(id)identifier;
- (void)accessingRecordsForTCCService:(id)service completion:(id)completion;
- (void)fetchUsersForRecord:(id)record completion:(id)completion;
@end

@implementation APTCCManager

+ (id)sharedManager
{
  if (qword_1EA8CC3B8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EA8CCF70;

  return v3;
}

- (id)TCCServicesForBundleIdentifier:(id)identifier
{
  v4 = sub_185B67E4C();
  v6 = v5;
  v7 = qword_1EA8CC3A8;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = off_1EA8CCF68;
  if (*(off_1EA8CCF68 + 2))
  {
    v10 = sub_185AC9F40(v4, v6);
    if (v11)
    {
      v12 = *(v9[7] + 8 * v10);
    }
  }

  v13 = sub_185B67F5C();

  return v13;
}

- (void)accessingRecordsForTCCService:(id)service completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = sub_185B67E4C();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  if (qword_1EA8CBBF0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EA8D2318;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_185AF3714;
  *(v10 + 24) = v8;

  sub_185AEED40(v5, v7, sub_185AF371C, v10, v9);
}

- (void)fetchUsersForRecord:(id)record completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  recordCopy = record;
  selfCopy = self;
  sub_185AF3194(recordCopy, sub_185AF318C, v7);
}

- (APTCCManager)init
{
  v3.receiver = self;
  v3.super_class = APTCCManager;
  return [(APTCCManager *)&v3 init];
}

@end