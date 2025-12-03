@interface BSUIWeeklyProgressDay
- (BOOL)isEqual:(id)equal;
- (BSUIWeeklyProgressDay)initWithType:(int64_t)type progress:(double)progress text:(id)text dateShortString:(id)string;
- (id)description;
@end

@implementation BSUIWeeklyProgressDay

- (BSUIWeeklyProgressDay)initWithType:(int64_t)type progress:(double)progress text:(id)text dateShortString:(id)string
{
  textCopy = text;
  stringCopy = string;
  v16.receiver = self;
  v16.super_class = BSUIWeeklyProgressDay;
  v13 = [(BSUIWeeklyProgressDay *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = type;
    v13->_progress = progress;
    objc_storeStrong(&v13->_text, text);
    objc_storeStrong(&v14->_dateShortString, string);
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  type = [(BSUIWeeklyProgressDay *)self type];
  [(BSUIWeeklyProgressDay *)self progress];
  v7 = v6;
  text = [(BSUIWeeklyProgressDay *)self text];
  dateShortString = [(BSUIWeeklyProgressDay *)self dateShortString];
  v10 = [NSString stringWithFormat:@"<%@(%p) type=%ld progress=%.3f text=%@ dateShortString=%@ >", v4, self, type, v7, text, dateShortString];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5 && (v6 = -[BSUIWeeklyProgressDay type](self, "type"), v6 == [v5 type]) && (-[BSUIWeeklyProgressDay progress](self, "progress"), v8 = v7, objc_msgSend(v5, "progress"), v8 == v9))
  {
    text = [(BSUIWeeklyProgressDay *)self text];
    text2 = [v5 text];
    if ([text isEqualToString:text2])
    {
      dateShortString = [(BSUIWeeklyProgressDay *)self dateShortString];
      dateShortString2 = [v5 dateShortString];
      v14 = [dateShortString isEqualToString:dateShortString2];
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