@interface AppEvent
- (AppEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation AppEvent

- (AppEvent)init
{
  v3.receiver = self;
  v3.super_class = AppEvent;
  return [(SQLiteMemoryEntity *)&v3 init];
}

- (id)description
{
  v3 = +[NSMutableArray array];
  v4 = sub_10023E604(self, @"event_type");
  v5 = sub_1001FC658(AppEvent, v4);
  v6 = [NSString stringWithFormat:@"eventType:%@", v5];
  [v3 addObject:v6];

  if (v4 == 2)
  {
    v7 = sub_10023E590(self, @"launch_time");
    v8 = v7;
    if (v7)
    {
      v9 = sub_1002525A8(v7);
      v10 = [NSString stringWithFormat:@"launchTime:%@", v9];
      [v3 addObject:v10];
    }

    v11 = sub_10023E590(self, @"launch_end_time");
    v12 = v11;
    if (v11)
    {
      v13 = sub_1002525A8(v11);
      v14 = [NSString stringWithFormat:@"launchEndTime:%@", v13];
      [v3 addObject:v14];
    }
  }

  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [NSString stringWithFormat:@"{ %@ }", v15];

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = AppEvent;
  v5 = [(SQLiteMemoryEntity *)&v9 copyWithZone:?];
  v6 = [(NSMutableArray *)self->_mutableForegroundEvents copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  return v5;
}

@end