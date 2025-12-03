@interface HKRollingBaselineConfiguration
- (BOOL)isEqual:(id)equal;
- (HKRollingBaselineConfiguration)initWithCoder:(id)coder;
- (HKRollingBaselineConfiguration)initWithMinimumSampleCount:(int64_t)count maximumSampleCount:(int64_t)sampleCount maximumWindowDuration:(double)duration options:(int64_t)options;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKRollingBaselineConfiguration

- (HKRollingBaselineConfiguration)initWithMinimumSampleCount:(int64_t)count maximumSampleCount:(int64_t)sampleCount maximumWindowDuration:(double)duration options:(int64_t)options
{
  v11.receiver = self;
  v11.super_class = HKRollingBaselineConfiguration;
  result = [(HKRollingBaselineConfiguration *)&v11 init];
  if (result)
  {
    result->_minimumSampleCount = count;
    result->_maximumSampleCount = sampleCount;
    result->_maximumWindowDuration = duration;
    result->_options = options;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  minimumSampleCount = self->_minimumSampleCount;
  coderCopy = coder;
  [coderCopy encodeInteger:minimumSampleCount forKey:@"minimumSampleCount"];
  [coderCopy encodeInteger:self->_maximumSampleCount forKey:@"maximumSampleCount"];
  [coderCopy encodeDouble:@"maximumWindowDuration" forKey:self->_maximumWindowDuration];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
}

- (HKRollingBaselineConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HKRollingBaselineConfiguration;
  v5 = [(HKRollingBaselineConfiguration *)&v8 init];
  if (v5)
  {
    v5->_minimumSampleCount = [coderCopy decodeIntegerForKey:@"minimumSampleCount"];
    v5->_maximumSampleCount = [coderCopy decodeIntegerForKey:@"maximumSampleCount"];
    [coderCopy decodeDoubleForKey:@"maximumWindowDuration"];
    v5->_maximumWindowDuration = v6;
    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
  }

  return v5;
}

@end