@interface NISystemState
- (BOOL)isEqual:(id)equal;
- (NISystemState)init;
- (NISystemState)initWithCoder:(id)coder;
- (NISystemState)initWithUWBPreciseDistanceAvailability:(unint64_t)availability uwbExtendedDistanceAvailability:(unint64_t)distanceAvailability;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NISystemState

- (NISystemState)init
{
  v3 = [[NISystemState alloc] initWithUWBPreciseDistanceAvailability:0 uwbExtendedDistanceAvailability:0];

  return v3;
}

- (NISystemState)initWithUWBPreciseDistanceAvailability:(unint64_t)availability uwbExtendedDistanceAvailability:(unint64_t)distanceAvailability
{
  v7.receiver = self;
  v7.super_class = NISystemState;
  result = [(NISystemState *)&v7 init];
  if (result)
  {
    result->_uwbPreciseDistanceAvailability = availability;
    result->_uwbExtendedDistanceAvailability = distanceAvailability;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NISystemState allocWithZone:zone];
  uwbPreciseDistanceAvailability = self->_uwbPreciseDistanceAvailability;
  uwbExtendedDistanceAvailability = self->_uwbExtendedDistanceAvailability;

  return [(NISystemState *)v4 initWithUWBPreciseDistanceAvailability:uwbPreciseDistanceAvailability uwbExtendedDistanceAvailability:uwbExtendedDistanceAvailability];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_uwbPreciseDistanceAvailability forKey:@"uwbPreciseDistanceAvailability"];
  [coderCopy encodeInteger:self->_uwbExtendedDistanceAvailability forKey:@"uwbExtendedDistanceAvailability"];
}

- (NISystemState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[NISystemState initWithUWBPreciseDistanceAvailability:uwbExtendedDistanceAvailability:]([NISystemState alloc], "initWithUWBPreciseDistanceAvailability:uwbExtendedDistanceAvailability:", [coderCopy decodeIntegerForKey:@"uwbPreciseDistanceAvailability"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"uwbExtendedDistanceAvailability"));

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v11 = 1;
    }

    else
    {
      uwbPreciseDistanceAvailability = [(NISystemState *)v5 uwbPreciseDistanceAvailability];
      uwbPreciseDistanceAvailability = self->_uwbPreciseDistanceAvailability;
      uwbExtendedDistanceAvailability = [(NISystemState *)v6 uwbExtendedDistanceAvailability];
      v11 = uwbPreciseDistanceAvailability == uwbPreciseDistanceAvailability && uwbExtendedDistanceAvailability == self->_uwbExtendedDistanceAvailability;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NISystemState *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [NIInternalUtils NISystemResourceAvailabilityToString:self->_uwbPreciseDistanceAvailability];
  v5 = [NIInternalUtils NISystemResourceAvailabilityToString:self->_uwbExtendedDistanceAvailability];
  v6 = [v3 stringWithFormat:@"<UWB [precise distance: %@, extended distance: %@]>", v4, v5];

  return v6;
}

@end