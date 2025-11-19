@interface LARatchetStateValue
- (BOOL)isEqual:(id)a3;
- (LARatchetStateValue)initWithDuration:(double)a3;
@end

@implementation LARatchetStateValue

- (LARatchetStateValue)initWithDuration:(double)a3
{
  v5.receiver = self;
  v5.super_class = LARatchetStateValue;
  result = [(LARatchetStateValue *)&v5 init];
  if (result)
  {
    result->_duration = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 duration];
    v6 = v5;
    [(LARatchetStateValue *)self duration];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end