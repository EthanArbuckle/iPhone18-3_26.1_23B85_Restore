@interface AppUsageSession
- (AppUsageSession)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation AppUsageSession

- (AppUsageSession)init
{
  v3.receiver = self;
  v3.super_class = AppUsageSession;
  return [(SQLiteMemoryEntity *)&v3 init];
}

- (id)description
{
  v3 = sub_1002287FC(self);
  v4 = sub_100228834(self);
  v5 = sub_10022886C(self);
  v6 = sub_1002525A8(v5);
  v7 = [NSString stringWithFormat:@"{ bundleID: %@ sessionReporterKey: %@ lastRefresh: %@ expired: %d }", v3, v4, v6, sub_1002288EC(self)];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = AppUsageSession;
  return [(SQLiteMemoryEntity *)&v4 copyWithZone:a3];
}

@end