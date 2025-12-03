@interface Row
- (Row)initWithType:(int64_t)type;
@end

@implementation Row

- (Row)initWithType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = Row;
  v4 = [(Row *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(Row *)v4 setType:type];
  }

  return v5;
}

@end