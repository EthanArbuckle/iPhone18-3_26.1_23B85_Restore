@interface TUIAnimationStep
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TUIAnimationStep

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TUIAnimationStep allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    v4->_startTime = self->_startTime;
    v4->_duration = self->_duration;
    v6 = [(NSDictionary *)self->_values copy];
    values = v5->_values;
    v5->_values = v6;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:@"<"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 addObject:v5];

  v6 = [NSString stringWithFormat:@" %p", self];
  [v3 addObject:v6];

  v7 = [NSString stringWithFormat:@" startTime: %g", *&self->_startTime];
  [v3 addObject:v7];

  v8 = [NSString stringWithFormat:@" duration: %g", *&self->_duration];
  [v3 addObject:v8];

  [v3 addObject:@" values: { "];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  values = self->_values;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_78B10;
  v13[3] = &unk_260300;
  v15 = &v16;
  v10 = v3;
  v14 = v10;
  [(NSDictionary *)values enumerateKeysAndObjectsUsingBlock:v13];
  if (*(v17 + 24) == 1)
  {
    [v10 addObject:@" "];
  }

  [v10 addObject:@"}>"];
  v11 = [v10 componentsJoinedByString:&stru_264550];

  _Block_object_dispose(&v16, 8);

  return v11;
}

@end