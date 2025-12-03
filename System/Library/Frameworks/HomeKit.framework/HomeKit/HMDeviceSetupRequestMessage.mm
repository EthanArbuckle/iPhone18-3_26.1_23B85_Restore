@interface HMDeviceSetupRequestMessage
- (HMDeviceSetupRequestMessage)initWithCoder:(id)coder;
- (HMDeviceSetupRequestMessage)initWithPayload:(id)payload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDeviceSetupRequestMessage

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDeviceSetupRequestMessage;
  coderCopy = coder;
  [(TRMessage *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMDeviceSetupRequestMessage *)self payload:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"HM.payload"];

  [coderCopy encodeInteger:-[HMDeviceSetupRequestMessage qualityOfService](self forKey:{"qualityOfService"), @"HM.qos"}];
}

- (HMDeviceSetupRequestMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDeviceSetupRequestMessage;
  v5 = [(TRMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.payload"];
    payload = v5->_payload;
    v5->_payload = v6;

    if ([coderCopy containsValueForKey:@"HM.qos"])
    {
      v5->_qualityOfService = [coderCopy decodeIntegerForKey:@"HM.qos"];
    }
  }

  return v5;
}

- (HMDeviceSetupRequestMessage)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v9.receiver = self;
  v9.super_class = HMDeviceSetupRequestMessage;
  v5 = [(HMDeviceSetupRequestMessage *)&v9 init];
  if (v5)
  {
    v6 = [payloadCopy copy];
    payload = v5->_payload;
    v5->_payload = v6;

    v5->_qualityOfService = -1;
  }

  return v5;
}

@end