@interface Row
- (Row)initWithType:(int64_t)a3;
@end

@implementation Row

- (Row)initWithType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = Row;
  v4 = [(Row *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(Row *)v4 setType:a3];
  }

  return v5;
}

@end