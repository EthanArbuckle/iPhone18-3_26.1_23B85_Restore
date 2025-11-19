@interface _GCDeviceTypeUnknown
- (uint64_t)initWithIdentifier:(uint64_t)a1;
- (void)dealloc;
@end

@implementation _GCDeviceTypeUnknown

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _GCDeviceTypeUnknown;
  [(_GCDeviceTypeUnknown *)&v3 dealloc];
}

- (uint64_t)initWithIdentifier:(uint64_t)a1
{
  if (a1)
  {
    *(a1 + 8) = [a2 copy];
  }

  return a1;
}

@end