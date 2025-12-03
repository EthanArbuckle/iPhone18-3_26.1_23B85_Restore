@interface APManagedAppProtectability
- (APManagedAppProtectability)initWithCoder:(id)coder;
- (id)initLockable:(BOOL)lockable hideable:(BOOL)hideable;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APManagedAppProtectability

- (id)initLockable:(BOOL)lockable hideable:(BOOL)hideable
{
  v7.receiver = self;
  v7.super_class = APManagedAppProtectability;
  result = [(APManagedAppProtectability *)&v7 init];
  if (result)
  {
    *(result + 8) = lockable;
    *(result + 9) = hideable;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_hideable)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [coder encodeInt:v3 | self->_lockable forKey:@"protectability"];
}

- (APManagedAppProtectability)initWithCoder:(id)coder
{
  v4 = [coder decodeIntForKey:@"protectability"];
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