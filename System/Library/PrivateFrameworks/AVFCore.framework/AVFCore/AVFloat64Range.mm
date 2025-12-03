@interface AVFloat64Range
+ (id)float64RangeWithAudioValueRange:(AudioValueRange)range;
+ (id)float64RangeWithMinimum:(double)minimum maximum:(double)maximum;
- (AVFloat64Range)initWithMinimum:(double)minimum maximum:(double)maximum;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVFloat64Range

- (AVFloat64Range)initWithMinimum:(double)minimum maximum:(double)maximum
{
  v7.receiver = self;
  v7.super_class = AVFloat64Range;
  result = [(AVFloat64Range *)&v7 init];
  if (result)
  {
    result->_minimum = minimum;
    result->_maximum = maximum;
  }

  return result;
}

+ (id)float64RangeWithMinimum:(double)minimum maximum:(double)maximum
{
  v4 = [[self alloc] initWithMinimum:minimum maximum:maximum];

  return v4;
}

+ (id)float64RangeWithAudioValueRange:(AudioValueRange)range
{
  v3 = [[self alloc] initWithAudioValueRange:{range.mMinimum, range.mMaximum}];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [equal minimum];
  v6 = v5;
  [(AVFloat64Range *)self minimum];
  if (v6 != v7)
  {
    return 0;
  }

  [equal maximum];
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