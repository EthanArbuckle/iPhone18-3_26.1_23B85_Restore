@interface NISystemState
- (BOOL)isEqual:(id)a3;
- (NISystemState)init;
- (NISystemState)initWithCoder:(id)a3;
- (NISystemState)initWithUWBPreciseDistanceAvailability:(unint64_t)a3 uwbExtendedDistanceAvailability:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NISystemState

- (NISystemState)init
{
  v3 = [[NISystemState alloc] initWithUWBPreciseDistanceAvailability:0 uwbExtendedDistanceAvailability:0];

  return v3;
}

- (NISystemState)initWithUWBPreciseDistanceAvailability:(unint64_t)a3 uwbExtendedDistanceAvailability:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = NISystemState;
  result = [(NISystemState *)&v7 init];
  if (result)
  {
    result->_uwbPreciseDistanceAvailability = a3;
    result->_uwbExtendedDistanceAvailability = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NISystemState allocWithZone:a3];
  uwbPreciseDistanceAvailability = self->_uwbPreciseDistanceAvailability;
  uwbExtendedDistanceAvailability = self->_uwbExtendedDistanceAvailability;

  return [(NISystemState *)v4 initWithUWBPreciseDistanceAvailability:uwbPreciseDistanceAvailability uwbExtendedDistanceAvailability:uwbExtendedDistanceAvailability];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_uwbPreciseDistanceAvailability forKey:@"uwbPreciseDistanceAvailability"];
  [v4 encodeInteger:self->_uwbExtendedDistanceAvailability forKey:@"uwbExtendedDistanceAvailability"];
}

- (NISystemState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[NISystemState initWithUWBPreciseDistanceAvailability:uwbExtendedDistanceAvailability:]([NISystemState alloc], "initWithUWBPreciseDistanceAvailability:uwbExtendedDistanceAvailability:", [v4 decodeIntegerForKey:@"uwbPreciseDistanceAvailability"], objc_msgSend(v4, "decodeIntegerForKey:", @"uwbExtendedDistanceAvailability"));

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v11 = 1;
    }

    else
    {
      v7 = [(NISystemState *)v5 uwbPreciseDistanceAvailability];
      uwbPreciseDistanceAvailability = self->_uwbPreciseDistanceAvailability;
      v9 = [(NISystemState *)v6 uwbExtendedDistanceAvailability];
      v11 = v7 == uwbPreciseDistanceAvailability && v9 == self->_uwbExtendedDistanceAvailability;
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
  v6 = [(NISystemState *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

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