@interface _GCDeviceTypeUnknown
- (uint64_t)initWithIdentifier:(uint64_t)identifier;
- (void)dealloc;
@end

@implementation _GCDeviceTypeUnknown

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _GCDeviceTypeUnknown;
  [(_GCDeviceTypeUnknown *)&v3 dealloc];
}

- (uint64_t)initWithIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    *(identifier + 8) = [a2 copy];
  }

  return identifier;
}

@end