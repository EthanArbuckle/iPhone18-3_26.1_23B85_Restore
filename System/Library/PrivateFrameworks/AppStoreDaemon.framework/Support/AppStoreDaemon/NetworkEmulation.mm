@interface NetworkEmulation
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NetworkEmulation

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[NetworkEmulation allocWithZone:?]];
  *(result + 2) = self->_interfaceType;
  *(result + 8) = self->_isConstrained;
  *(result + 9) = self->_isExpensive;
  *(result + 10) = self->_isRoaming;
  return result;
}

- (id)description
{
  isConstrained = self->_isConstrained;
  isExpensive = self->_isExpensive;
  isRoaming = self->_isRoaming;
  interfaceType = self->_interfaceType;
  if (interfaceType >= 5)
  {
    interfaceType = [[NSString alloc] initWithFormat:@"unknown (%ld)", interfaceType];
  }

  else
  {
    interfaceType = off_100520330[interfaceType];
  }

  v7 = [NSString stringWithFormat:@"{constrained = %d, expensive = %d, roaming = %d, interface = %@}", isConstrained, isExpensive, isRoaming, interfaceType];

  return v7;
}

@end