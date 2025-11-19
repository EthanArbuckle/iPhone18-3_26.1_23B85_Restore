@interface NSValue
- (int64_t)compare:(id)a3;
@end

@implementation NSValue

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(NSValue *)self rangeValue];
  v6 = [v4 rangeValue];

  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

@end