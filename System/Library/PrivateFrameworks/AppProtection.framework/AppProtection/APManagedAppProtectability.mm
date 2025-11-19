@interface APManagedAppProtectability
- (APManagedAppProtectability)initWithCoder:(id)a3;
- (id)initLockable:(BOOL)a3 hideable:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APManagedAppProtectability

- (id)initLockable:(BOOL)a3 hideable:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = APManagedAppProtectability;
  result = [(APManagedAppProtectability *)&v7 init];
  if (result)
  {
    *(result + 8) = a3;
    *(result + 9) = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  if (self->_hideable)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [a3 encodeInt:v3 | self->_lockable forKey:@"protectability"];
}

- (APManagedAppProtectability)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntForKey:@"protectability"];
  v6.receiver = self;
  v6.super_class = APManagedAppProtectability;
  result = [(APManagedAppProtectability *)&v6 init];
  if (result)
  {
    result->_lockable = v4 & 1;
    result->_hideable = (v4 & 2) != 0;
  }

  return result;
}

@end