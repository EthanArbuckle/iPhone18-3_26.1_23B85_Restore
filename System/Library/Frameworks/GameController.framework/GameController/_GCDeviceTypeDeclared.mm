@interface _GCDeviceTypeDeclared
- (uint64_t)initWithType:(uint64_t)type;
- (void)dealloc;
@end

@implementation _GCDeviceTypeDeclared

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _GCDeviceTypeDeclared;
  [(_GCDeviceTypeDeclared *)&v3 dealloc];
}

- (uint64_t)initWithType:(uint64_t)type
{
  if (type)
  {
    *(type + 8) = a2;
  }

  return type;
}

@end