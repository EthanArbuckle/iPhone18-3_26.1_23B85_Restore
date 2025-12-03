@interface FPXServiceDescriptor
- (FPXServiceDescriptor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPXServiceDescriptor

- (void)encodeWithCoder:(id)coder
{
  serviceName = self->_serviceName;
  coderCopy = coder;
  [coderCopy encodeObject:serviceName forKey:@"_serviceName"];
  [coderCopy encodeObject:self->_requiredEntitlement forKey:@"_requiredEntitlement"];
}

- (FPXServiceDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FPXServiceDescriptor;
  v5 = [(FPXServiceDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_requiredEntitlement"];
    requiredEntitlement = v5->_requiredEntitlement;
    v5->_requiredEntitlement = v8;
  }

  return v5;
}

@end