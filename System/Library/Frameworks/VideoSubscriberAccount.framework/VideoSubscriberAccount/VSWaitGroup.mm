@interface VSWaitGroup
- (BOOL)waitWithMilliseconds:(unint64_t)milliseconds;
- (VSWaitGroup)init;
@end

@implementation VSWaitGroup

- (VSWaitGroup)init
{
  v6.receiver = self;
  v6.super_class = VSWaitGroup;
  v2 = [(VSWaitGroup *)&v6 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v3;
  }

  return v2;
}

- (BOOL)waitWithMilliseconds:(unint64_t)milliseconds
{
  if (milliseconds)
  {
    v4 = dispatch_time(0, 1000000 * milliseconds);
  }

  else
  {
    v4 = -1;
  }

  return dispatch_group_wait(self->_group, v4) == 0;
}

@end