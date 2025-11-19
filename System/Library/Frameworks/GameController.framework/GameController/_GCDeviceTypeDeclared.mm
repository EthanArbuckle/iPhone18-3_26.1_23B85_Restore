@interface _GCDeviceTypeDeclared
- (uint64_t)initWithType:(uint64_t)a1;
- (void)dealloc;
@end

@implementation _GCDeviceTypeDeclared

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _GCDeviceTypeDeclared;
  [(_GCDeviceTypeDeclared *)&v3 dealloc];
}

- (uint64_t)initWithType:(uint64_t)a1
{
  if (a1)
  {
    *(a1 + 8) = a2;
  }

  return a1;
}

@end