@interface SSHBHIDUsage
- (SSHBHIDUsage)initWithPrimaryUsage:(unsigned int)usage primaryUsagePage:(unsigned int)page;
@end

@implementation SSHBHIDUsage

- (SSHBHIDUsage)initWithPrimaryUsage:(unsigned int)usage primaryUsagePage:(unsigned int)page
{
  v7.receiver = self;
  v7.super_class = SSHBHIDUsage;
  result = [(SSHBHIDUsage *)&v7 init];
  if (result)
  {
    result->_primaryUsage = usage;
    result->_primaryUsagePage = page;
  }

  return result;
}

@end