@interface HKRollingBaselineConfiguration
- (BOOL)isEqual:(id)a3;
- (HKRollingBaselineConfiguration)initWithCoder:(id)a3;
- (HKRollingBaselineConfiguration)initWithMinimumSampleCount:(int64_t)a3 maximumSampleCount:(int64_t)a4 maximumWindowDuration:(double)a5 options:(int64_t)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKRollingBaselineConfiguration

- (HKRollingBaselineConfiguration)initWithMinimumSampleCount:(int64_t)a3 maximumSampleCount:(int64_t)a4 maximumWindowDuration:(double)a5 options:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = HKRollingBaselineConfiguration;
  result = [(HKRollingBaselineConfiguration *)&v11 init];
  if (result)
  {
    result->_minimumSampleCount = a3;
    result->_maximumSampleCount = a4;
    result->_maximumWindowDuration = a5;
    result->_options = a6;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_minimumSampleCount == v5->_minimumSampleCount && self->_maximumSampleCount == v5->_maximumSampleCount && self->_maximumWindowDuration == v5->_maximumWindowDuration && self->_options == v5->_options;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = self->_maximumSampleCount ^ self->_minimumSampleCount;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maximumWindowDuration];
  v5 = [v4 hash];
  v6 = v3 ^ self->_options;

  return v6 ^ v5;
}

- (void)encodeWithCoder:(id)a3
{
  minimumSampleCount = self->_minimumSampleCount;
  v5 = a3;
  [v5 encodeInteger:minimumSampleCount forKey:@"minimumSampleCount"];
  [v5 encodeInteger:self->_maximumSampleCount forKey:@"maximumSampleCount"];
  [v5 encodeDouble:@"maximumWindowDuration" forKey:self->_maximumWindowDuration];
  [v5 encodeInteger:self->_options forKey:@"options"];
}

- (HKRollingBaselineConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKRollingBaselineConfiguration;
  v5 = [(HKRollingBaselineConfiguration *)&v8 init];
  if (v5)
  {
    v5->_minimumSampleCount = [v4 decodeIntegerForKey:@"minimumSampleCount"];
    v5->_maximumSampleCount = [v4 decodeIntegerForKey:@"maximumSampleCount"];
    [v4 decodeDoubleForKey:@"maximumWindowDuration"];
    v5->_maximumWindowDuration = v6;
    v5->_options = [v4 decodeIntegerForKey:@"options"];
  }

  return v5;
}

@end