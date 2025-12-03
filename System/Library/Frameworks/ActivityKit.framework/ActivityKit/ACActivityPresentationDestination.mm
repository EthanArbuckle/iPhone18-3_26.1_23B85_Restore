@interface ACActivityPresentationDestination
- (ACActivityPresentationDestination)initWithDestination:(int64_t)destination;
- (BOOL)isEqual:(id)equal;
@end

@implementation ACActivityPresentationDestination

- (ACActivityPresentationDestination)initWithDestination:(int64_t)destination
{
  v5.receiver = self;
  v5.super_class = ACActivityPresentationDestination;
  result = [(ACActivityPresentationDestination *)&v5 init];
  if (result)
  {
    result->_destination = destination;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      destination = self->_destination;
      v6 = destination == [(ACActivityPresentationDestination *)equalCopy destination];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end