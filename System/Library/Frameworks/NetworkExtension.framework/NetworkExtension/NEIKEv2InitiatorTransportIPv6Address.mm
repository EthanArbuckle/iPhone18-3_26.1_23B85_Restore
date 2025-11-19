@interface NEIKEv2InitiatorTransportIPv6Address
- (id)attributeName;
- (unint64_t)attributeType;
@end

@implementation NEIKEv2InitiatorTransportIPv6Address

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
      v5 = @"AssignedInitiatorTransportIPv6Address";
    }
  }

  else
  {
    v5 = @"AssignedInitiatorTransportIPv6Address";
  }

  return v5;
}

- (unint64_t)attributeType
{
  if (!self)
  {
    return 25958;
  }

  if (self->super._customType)
  {
    return self->super._customType;
  }

  return 25958;
}

@end