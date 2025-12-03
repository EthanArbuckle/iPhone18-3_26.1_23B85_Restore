@interface SRWebUsage
+ (SRWebUsage)webUsageWithTotalUsageTime:(double)time;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SRWebUsage)initWithCoder:(id)coder;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRWebUsage

+ (SRWebUsage)webUsageWithTotalUsageTime:(double)time
{
  v4 = objc_alloc_init(SRWebUsage);
  [(SRWebUsage *)v4 setTotalUsageTime:time];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [(SRWebUsage *)self totalUsageTime];

  [coder encodeDouble:@"totalUsageTime" forKey:?];
}

- (SRWebUsage)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v9.receiver = self;
  v9.super_class = SRWebUsage;
  v6 = [(SRWebUsage *)&v9 init];
  if (v6)
  {
    [coder decodeDoubleForKey:@"totalUsageTime"];
    v6->_totalUsageTime = v7;
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SRWebUsage;
  [(SRWebUsage *)&v2 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  totalUsageTime = self->_totalUsageTime;
  [equal totalUsageTime];
  return totalUsageTime == v6;
}

- (id)sr_dictionaryRepresentation
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"totalUsageTime";
  v5[0] = [MEMORY[0x1E696AD98] numberWithDouble:self->_totalUsageTime];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ {totalUsageTime: %f}", NSStringFromClass(v4), *&self->_totalUsageTime];
}

@end