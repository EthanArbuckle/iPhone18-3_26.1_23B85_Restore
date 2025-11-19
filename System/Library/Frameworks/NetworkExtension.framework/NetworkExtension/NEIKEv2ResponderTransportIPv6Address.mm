@interface NEIKEv2ResponderTransportIPv6Address
- (id)attributeName;
- (unint64_t)attributeType;
@end

@implementation NEIKEv2ResponderTransportIPv6Address

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
      v5 = @"AssignedResponderTransportIPv6Address";
    }
  }

  else
  {
    v5 = @"AssignedResponderTransportIPv6Address";
  }

  return v5;
}

- (unint64_t)attributeType
{
  if (!self)
  {
    return 25959;
  }

  if (self->super._customType)
  {
    return self->super._customType;
  }

  return 25959;
}

@end