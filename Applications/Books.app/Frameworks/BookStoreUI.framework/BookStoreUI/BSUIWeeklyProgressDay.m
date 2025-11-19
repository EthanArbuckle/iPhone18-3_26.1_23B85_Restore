@interface BSUIWeeklyProgressDay
- (BOOL)isEqual:(id)a3;
- (BSUIWeeklyProgressDay)initWithType:(int64_t)a3 progress:(double)a4 text:(id)a5 dateShortString:(id)a6;
- (id)description;
@end

@implementation BSUIWeeklyProgressDay

- (BSUIWeeklyProgressDay)initWithType:(int64_t)a3 progress:(double)a4 text:(id)a5 dateShortString:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = BSUIWeeklyProgressDay;
  v13 = [(BSUIWeeklyProgressDay *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = a3;
    v13->_progress = a4;
    objc_storeStrong(&v13->_text, a5);
    objc_storeStrong(&v14->_dateShortString, a6);
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BSUIWeeklyProgressDay *)self type];
  [(BSUIWeeklyProgressDay *)self progress];
  v7 = v6;
  v8 = [(BSUIWeeklyProgressDay *)self text];
  v9 = [(BSUIWeeklyProgressDay *)self dateShortString];
  v10 = [NSString stringWithFormat:@"<%@(%p) type=%ld progress=%.3f text=%@ dateShortString=%@ >", v4, self, v5, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5 && (v6 = -[BSUIWeeklyProgressDay type](self, "type"), v6 == [v5 type]) && (-[BSUIWeeklyProgressDay progress](self, "progress"), v8 = v7, objc_msgSend(v5, "progress"), v8 == v9))
  {
    v10 = [(BSUIWeeklyProgressDay *)self text];
    v11 = [v5 text];
    if ([v10 isEqualToString:v11])
    {
      v12 = [(BSUIWeeklyProgressDay *)self dateShortString];
      v13 = [v5 dateShortString];
      v14 = [v12 isEqualToString:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end