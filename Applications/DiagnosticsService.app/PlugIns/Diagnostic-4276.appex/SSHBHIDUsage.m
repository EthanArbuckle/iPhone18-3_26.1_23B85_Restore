@interface SSHBHIDUsage
- (SSHBHIDUsage)initWithPrimaryUsage:(unsigned int)a3 primaryUsagePage:(unsigned int)a4;
@end

@implementation SSHBHIDUsage

- (SSHBHIDUsage)initWithPrimaryUsage:(unsigned int)a3 primaryUsagePage:(unsigned int)a4
{
  v7.receiver = self;
  v7.super_class = SSHBHIDUsage;
  result = [(SSHBHIDUsage *)&v7 init];
  if (result)
  {
    result->_primaryUsage = a3;
    result->_primaryUsagePage = a4;
  }

  return result;
}

@end