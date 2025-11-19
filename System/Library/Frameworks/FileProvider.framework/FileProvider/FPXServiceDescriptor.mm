@interface FPXServiceDescriptor
- (FPXServiceDescriptor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPXServiceDescriptor

- (void)encodeWithCoder:(id)a3
{
  serviceName = self->_serviceName;
  v5 = a3;
  [v5 encodeObject:serviceName forKey:@"_serviceName"];
  [v5 encodeObject:self->_requiredEntitlement forKey:@"_requiredEntitlement"];
}

- (FPXServiceDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FPXServiceDescriptor;
  v5 = [(FPXServiceDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_requiredEntitlement"];
    requiredEntitlement = v5->_requiredEntitlement;
    v5->_requiredEntitlement = v8;
  }

  return v5;
}

@end