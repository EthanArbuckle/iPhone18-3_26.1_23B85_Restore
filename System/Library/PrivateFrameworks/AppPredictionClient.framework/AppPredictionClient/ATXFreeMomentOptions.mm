@interface ATXFreeMomentOptions
- (ATXFreeMomentOptions)initWithCoder:(id)a3;
- (ATXFreeMomentOptions)initWithDurationHint:(double)a3 matchingOptions:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXFreeMomentOptions

- (ATXFreeMomentOptions)initWithDurationHint:(double)a3 matchingOptions:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = ATXFreeMomentOptions;
  result = [(ATXFreeMomentOptions *)&v7 init];
  if (result)
  {
    result->_durationHint = a3;
    result->_matchingOptions = a4;
  }

  return result;
}

- (ATXFreeMomentOptions)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"durationHint"];
  v6 = v5;
  v7 = [v4 decodeIntegerForKey:@"matchingOptions"];

  return [(ATXFreeMomentOptions *)self initWithDurationHint:v7 matchingOptions:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(ATXFreeMomentOptions *)self durationHint];
  [v4 encodeDouble:@"durationHint" forKey:?];
  [v4 encodeInteger:-[ATXFreeMomentOptions matchingOptions](self forKey:{"matchingOptions"), @"matchingOptions"}];
}

@end