@interface ACActivityPresentationDestination
- (ACActivityPresentationDestination)initWithDestination:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation ACActivityPresentationDestination

- (ACActivityPresentationDestination)initWithDestination:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ACActivityPresentationDestination;
  result = [(ACActivityPresentationDestination *)&v5 init];
  if (result)
  {
    result->_destination = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      destination = self->_destination;
      v6 = destination == [(ACActivityPresentationDestination *)v4 destination];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end