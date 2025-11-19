@interface AAMessagingCapability
- (AAMessagingCapability)initWithCapabilityType:(int64_t)a3;
- (AAMessagingCapability)initWithCoder:(id)a3;
- (NSString)capabilityString;
@end

@implementation AAMessagingCapability

- (AAMessagingCapability)initWithCapabilityType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AAMessagingCapability;
  result = [(AAMessagingCapability *)&v5 init];
  if (result)
  {
    result->_capability = a3;
  }

  return result;
}

- (NSString)capabilityString
{
  capability = self->_capability;
  if (capability > 3)
  {
    return @"IDSRegistrationPropertyUnknown";
  }

  else
  {
    return &off_1E7C9D8A8[capability]->isa;
  }
}

- (AAMessagingCapability)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AAMessagingCapability *)self init];
  if (v5)
  {
    v5->_capability = [v4 decodeIntegerForKey:@"capability"];
  }

  return v5;
}

@end