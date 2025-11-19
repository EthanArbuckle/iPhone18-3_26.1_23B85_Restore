@interface NEIKEv2IPv4DNSAttribute
- (id)attributeName;
- (unint64_t)attributeType;
@end

@implementation NEIKEv2IPv4DNSAttribute

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
      v5 = @"AssignedIPv4DNS";
    }
  }

  else
  {
    v5 = @"AssignedIPv4DNS";
  }

  return v5;
}

- (unint64_t)attributeType
{
  if (!self)
  {
    return 3;
  }

  if (self->super._customType)
  {
    return self->super._customType;
  }

  return 3;
}

@end