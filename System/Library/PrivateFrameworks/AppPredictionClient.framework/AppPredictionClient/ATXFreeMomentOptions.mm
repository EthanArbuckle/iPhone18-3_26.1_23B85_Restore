@interface ATXFreeMomentOptions
- (ATXFreeMomentOptions)initWithCoder:(id)coder;
- (ATXFreeMomentOptions)initWithDurationHint:(double)hint matchingOptions:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXFreeMomentOptions

- (ATXFreeMomentOptions)initWithDurationHint:(double)hint matchingOptions:(unint64_t)options
{
  v7.receiver = self;
  v7.super_class = ATXFreeMomentOptions;
  result = [(ATXFreeMomentOptions *)&v7 init];
  if (result)
  {
    result->_durationHint = hint;
    result->_matchingOptions = options;
  }

  return result;
}

- (ATXFreeMomentOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"durationHint"];
  v6 = v5;
  v7 = [coderCopy decodeIntegerForKey:@"matchingOptions"];

  return [(ATXFreeMomentOptions *)self initWithDurationHint:v7 matchingOptions:v6];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(ATXFreeMomentOptions *)self durationHint];
  [coderCopy encodeDouble:@"durationHint" forKey:?];
  [coderCopy encodeInteger:-[ATXFreeMomentOptions matchingOptions](self forKey:{"matchingOptions"), @"matchingOptions"}];
}

@end