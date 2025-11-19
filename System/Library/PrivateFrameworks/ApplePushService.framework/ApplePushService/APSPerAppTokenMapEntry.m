@interface APSPerAppTokenMapEntry
- (id)description;
@end

@implementation APSPerAppTokenMapEntry

- (id)description
{
  if (self->_flag)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [NSString stringWithFormat:@"{ perAppToken = %@, info = %@, flag = %@ }", self->_perAppToken, self->_info, v2];
}

@end