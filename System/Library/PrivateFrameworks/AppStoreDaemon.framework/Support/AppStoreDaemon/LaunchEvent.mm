@interface LaunchEvent
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation LaunchEvent

- (id)description
{
  v3 = +[NSMutableArray array];
  v4 = sub_10038AD6C(self);
  v5 = [NSString stringWithFormat:@"bundleID: %@", v4];
  [v3 addObject:v5];

  v6 = sub_10038ADA4(self);

  if (v6)
  {
    v7 = sub_10038ADA4(self);
    v8 = sub_1002525A8(v7);
    v9 = [NSString stringWithFormat:@"startTime: %@", v8];
    [v3 addObject:v9];
  }

  v10 = sub_10038AE18(self);
  v11 = sub_1002525A8(v10);
  v12 = [NSString stringWithFormat:@"endTime: %@", v11];
  [v3 addObject:v12];

  v13 = sub_10038AE8C(self);

  if (v13)
  {
    v14 = sub_10038AE8C(self);
    v15 = [NSString stringWithFormat:@"launchReason: %@", v14];
    [v3 addObject:v15];
  }

  if (sub_10038AEFC(self))
  {
    [v3 addObject:@"isExtension: Y"];
  }

  v16 = sub_10038AF64(self);
  v17 = [v16 length];

  if (v17)
  {
    v18 = sub_10038AF64(self);
    v19 = [NSString stringWithFormat:@"bundleID: %@", v18];
    [v3 addObject:v19];
  }

  v20 = [v3 componentsJoinedByString:{@", "}];
  v21 = [NSString stringWithFormat:@"{ %@ }", v20];

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = LaunchEvent;
  return [(SQLiteMemoryEntity *)&v4 copyWithZone:zone];
}

@end