@interface AMSUIEngagementContentRecord
+ (BOOL)isURLEngagementContent:(id)a3;
- (AMSUIEngagementContentRecord)initWithURL:(id)a3;
- (NSURL)fallbackURL;
@end

@implementation AMSUIEngagementContentRecord

- (NSURL)fallbackURL
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC44618, &qword_1BB1F0890);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  EngagementContentRecord.fallbackURL.getter(&v9 - v4);
  v6 = sub_1BB1DB398();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    v7 = sub_1BB1DB338();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v7;
}

+ (BOOL)isURLEngagementContent:(id)a3
{
  v3 = sub_1BB1DB398();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB1DB348();
  v8 = static EngagementContentRecord.isURLEngagementContent(url:)();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

- (AMSUIEngagementContentRecord)initWithURL:(id)a3
{
  v3 = sub_1BB1DB398();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB1DB348();
  return EngagementContentRecord.init(url:)(v6);
}

@end