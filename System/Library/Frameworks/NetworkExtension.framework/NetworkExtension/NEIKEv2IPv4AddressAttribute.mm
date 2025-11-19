@interface NEIKEv2IPv4AddressAttribute
- (id)attributeName;
- (unint64_t)attributeType;
@end

@implementation NEIKEv2IPv4AddressAttribute

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
      v5 = @"AssignedIPv4Address";
    }
  }

  else
  {
    v5 = @"AssignedIPv4Address";
  }

  return v5;
}

- (unint64_t)attributeType
{
  if (!self)
  {
    return 1;
  }

  if (self->super._customType <= 1)
  {
    return 1;
  }

  return self->super._customType;
}

@end