@interface NEIKEv2IPv6SubnetAttribute
- (id)attributeName;
- (id)initEmptyRequest;
- (unint64_t)attributeType;
@end

@implementation NEIKEv2IPv6SubnetAttribute

- (id)attributeName
{
  if (self)
  {
    if (self->super._customType && objc_getProperty(self, a2, 8, 1))
    {
      v5 = objc_getProperty(self, v4, 8, 1);
    }

    else
    {
      v5 = @"AssignedIPv6Subnet";
    }
  }

  else
  {
    v5 = @"AssignedIPv6Subnet";
  }

  return v5;
}

- (unint64_t)attributeType
{
  if (!self)
  {
    return 15;
  }

  if (self->super._customType)
  {
    return self->super._customType;
  }

  return 15;
}

- (id)initEmptyRequest
{
  v6[1] = 0;
  v7 = 0;
  v6[2] = 0;
  v6[0] = 7708;
  v3 = [MEMORY[0x1E6977E08] endpointWithAddress:v6];
  v4 = [(NEIKEv2SubnetAttribute *)self initWithAddress:v3 prefix:0];

  return v4;
}

@end