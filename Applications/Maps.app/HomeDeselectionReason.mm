@interface HomeDeselectionReason
- (HomeDeselectionReason)initWithAction:(int64_t)action;
- (id)description;
@end

@implementation HomeDeselectionReason

- (id)description
{
  v3 = objc_opt_class();
  v4 = self->_action - 1;
  if (v4 > 2)
  {
    v5 = @"HomeDeselectionActionUnknown";
  }

  else
  {
    v5 = off_101656820[v4];
  }

  return [NSString stringWithFormat:@"<%@: %p; action = %@>", v3, self, v5];
}

- (HomeDeselectionReason)initWithAction:(int64_t)action
{
  v5.receiver = self;
  v5.super_class = HomeDeselectionReason;
  result = [(HomeDeselectionReason *)&v5 init];
  if (result)
  {
    result->_action = action;
  }

  return result;
}

@end