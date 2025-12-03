@interface AAMessagingCapability
- (AAMessagingCapability)initWithCapabilityType:(int64_t)type;
- (AAMessagingCapability)initWithCoder:(id)coder;
- (NSString)capabilityString;
@end

@implementation AAMessagingCapability

- (AAMessagingCapability)initWithCapabilityType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = AAMessagingCapability;
  result = [(AAMessagingCapability *)&v5 init];
  if (result)
  {
    result->_capability = type;
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

- (AAMessagingCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AAMessagingCapability *)self init];
  if (v5)
  {
    v5->_capability = [coderCopy decodeIntegerForKey:@"capability"];
  }

  return v5;
}

@end