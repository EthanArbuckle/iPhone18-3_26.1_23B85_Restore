@interface LARatchetStateValue
- (BOOL)isEqual:(id)equal;
- (LARatchetStateValue)initWithDuration:(double)duration;
@end

@implementation LARatchetStateValue

- (LARatchetStateValue)initWithDuration:(double)duration
{
  v5.receiver = self;
  v5.super_class = LARatchetStateValue;
  result = [(LARatchetStateValue *)&v5 init];
  if (result)
  {
    result->_duration = duration;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [equalCopy duration];
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