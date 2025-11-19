@interface AVFloat64Range
+ (id)float64RangeWithAudioValueRange:(AudioValueRange)a3;
+ (id)float64RangeWithMinimum:(double)a3 maximum:(double)a4;
- (AVFloat64Range)initWithMinimum:(double)a3 maximum:(double)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVFloat64Range

- (AVFloat64Range)initWithMinimum:(double)a3 maximum:(double)a4
{
  v7.receiver = self;
  v7.super_class = AVFloat64Range;
  result = [(AVFloat64Range *)&v7 init];
  if (result)
  {
    result->_minimum = a3;
    result->_maximum = a4;
  }

  return result;
}

+ (id)float64RangeWithMinimum:(double)a3 maximum:(double)a4
{
  v4 = [[a1 alloc] initWithMinimum:a3 maximum:a4];

  return v4;
}

+ (id)float64RangeWithAudioValueRange:(AudioValueRange)a3
{
  v3 = [[a1 alloc] initWithAudioValueRange:{a3.mMinimum, a3.mMaximum}];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [a3 minimum];
  v6 = v5;
  [(AVFloat64Range *)self minimum];
  if (v6 != v7)
  {
    return 0;
  }

  [a3 maximum];
  v9 = v8;
  [(AVFloat64Range *)self maximum];
  return v9 == v10;
}

- (unint64_t)hash
{
  [(AVFloat64Range *)self minimum];
  v4 = v3;
  [(AVFloat64Range *)self maximum];
  return v5 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(AVFloat64Range *)self minimum];
  v7 = v6;
  [(AVFloat64Range *)self maximum];
  return [v3 stringWithFormat:@"<%@: %p, minimum = %f, maximum = %f>", v5, self, v7, v8];
}

@end