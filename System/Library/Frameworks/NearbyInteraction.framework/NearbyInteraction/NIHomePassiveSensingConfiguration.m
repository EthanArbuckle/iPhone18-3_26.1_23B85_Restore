@interface NIHomePassiveSensingConfiguration
- (BOOL)canUpdateToConfiguration:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NIHomePassiveSensingConfiguration)init;
- (NIHomePassiveSensingConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIHomePassiveSensingConfiguration

- (NIHomePassiveSensingConfiguration)init
{
  v3.receiver = self;
  v3.super_class = NIHomePassiveSensingConfiguration;
  result = [(NIConfiguration *)&v3 initInternal];
  if (result)
  {
    result->_minimumPreferredUpdatedRate = 3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NIHomePassiveSensingConfiguration;
  v4 = [(NIConfiguration *)&v6 copyWithZone:a3];
  [v4 setMinimumPreferredUpdatedRate:self->_minimumPreferredUpdatedRate];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NIHomePassiveSensingConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_minimumPreferredUpdatedRate forKey:@"minimumPreferredUpdatedRate"];
}

- (NIHomePassiveSensingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NIHomePassiveSensingConfiguration;
  v5 = [(NIConfiguration *)&v9 initWithCoder:v4];
  if (v5 && (v6 = [v4 decodeIntegerForKey:@"minimumPreferredUpdatedRate"], +[NIInternalUtils isIntValidNearbyObjectUpdateRate:](NIInternalUtils, "isIntValidNearbyObjectUpdateRate:", v6)))
  {
    v5->_minimumPreferredUpdatedRate = v6;
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canUpdateToConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = self == v4 || [(NIHomePassiveSensingConfiguration *)v4 minimumPreferredUpdatedRate]== self->_minimumPreferredUpdatedRate;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5 == self || [(NIHomePassiveSensingConfiguration *)self canUpdateToConfiguration:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NIHomePassiveSensingConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

@end