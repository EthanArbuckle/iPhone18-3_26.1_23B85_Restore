@interface ATXTimeContext
- (ATXTimeContext)initWithCoder:(id)coder;
- (ATXTimeContext)initWithType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (NSString)title;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTimeContext

- (ATXTimeContext)initWithType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = ATXTimeContext;
  v4 = [(ATXTimeContext *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_contextType = type;
    v6 = v4;
  }

  return v5;
}

- (ATXTimeContext)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"type"];

  return [(ATXTimeContext *)self initWithType:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ATXTimeContext contextType](self forKey:{"contextType"), @"type"}];
}

- (NSString)title
{
  contextType = [(ATXTimeContext *)self contextType];
  v3 = @"Unknown";
  if (contextType == 1)
  {
    v3 = @"Meet Your Goals";
  }

  if (contextType)
  {
    return &v3->isa;
  }

  else
  {
    return @"Relax With Your Favorites";
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXTimeContext *)self isEqualToATXTimeContext:v5];
  }

  return v6;
}

@end