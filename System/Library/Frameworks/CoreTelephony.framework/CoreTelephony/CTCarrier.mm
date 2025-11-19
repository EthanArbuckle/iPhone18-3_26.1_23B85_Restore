@interface CTCarrier
- (BOOL)isEqual:(id)a3;
- (CTCarrier)init;
- (id)description;
@end

@implementation CTCarrier

- (CTCarrier)init
{
  v9.receiver = self;
  v9.super_class = CTCarrier;
  v2 = [(CTCarrier *)&v9 init];
  v3 = v2;
  if (v2)
  {
    carrierName = v2->_carrierName;
    v2->_carrierName = @"--";

    mobileCountryCode = v3->_mobileCountryCode;
    v3->_mobileCountryCode = @"65535";

    mobileNetworkCode = v3->_mobileNetworkCode;
    v3->_mobileNetworkCode = @"65535";

    isoCountryCode = v3->_isoCountryCode;
    v3->_isoCountryCode = @"--";

    v3->_allowsVOIP = 1;
  }

  return v3;
}

- (id)description
{
  if (self->_carrierName)
  {
    carrierName = self->_carrierName;
  }

  else
  {
    carrierName = @"<nil>";
  }

  if (self->_mobileCountryCode)
  {
    mobileCountryCode = self->_mobileCountryCode;
  }

  else
  {
    mobileCountryCode = @"<nil>";
  }

  mobileNetworkCode = self->_mobileNetworkCode;
  if (!mobileNetworkCode)
  {
    mobileNetworkCode = @"<nil>";
  }

  if (self->_isoCountryCode)
  {
    isoCountryCode = self->_isoCountryCode;
  }

  else
  {
    isoCountryCode = @"<nil>";
  }

  v7 = MEMORY[0x1E696AEC0];
  if (self->_allowsVOIP)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = mobileNetworkCode;
  v10 = mobileCountryCode;
  v11 = carrierName;
  v12 = [v7 stringWithFormat:@"CTCarrier (%p) {\n\tCarrier name: [%@]\n\tMobile Country Code: [%@]\n\tMobile Network Code:[%@]\n\tISO Country Code:[%@]\n\tAllows VOIP? [%@]\n}\n", self, v11, v10, v9, isoCountryCode, v8];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else if ([(CTCarrier *)v4 isMemberOfClass:objc_opt_class()]&& (allowsVOIP = self->_allowsVOIP, allowsVOIP == [(CTCarrier *)v4 allowsVOIP]))
  {
    carrierName = self->_carrierName;
    v7 = [(CTCarrier *)v4 carrierName];
    if ([(NSString *)carrierName isEqualToString:v7])
    {
      mobileNetworkCode = self->_mobileNetworkCode;
      v9 = [(CTCarrier *)v4 mobileNetworkCode];
      if ([(NSString *)mobileNetworkCode isEqualToString:v9])
      {
        mobileCountryCode = self->_mobileCountryCode;
        v11 = [(CTCarrier *)v4 mobileCountryCode];
        if ([(NSString *)mobileCountryCode isEqualToString:v11])
        {
          isoCountryCode = self->_isoCountryCode;
          v13 = [(CTCarrier *)v4 isoCountryCode];
          v14 = [(NSString *)isoCountryCode isEqualToString:v13];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end