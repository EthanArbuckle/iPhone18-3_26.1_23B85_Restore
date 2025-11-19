@interface Environment
- (Environment)init;
@end

@implementation Environment

- (Environment)init
{
  v3.receiver = self;
  v3.super_class = Environment;
  result = [(Environment *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end