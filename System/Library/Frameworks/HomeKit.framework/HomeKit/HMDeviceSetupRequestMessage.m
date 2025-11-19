@interface HMDeviceSetupRequestMessage
- (HMDeviceSetupRequestMessage)initWithCoder:(id)a3;
- (HMDeviceSetupRequestMessage)initWithPayload:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDeviceSetupRequestMessage

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDeviceSetupRequestMessage;
  v4 = a3;
  [(TRMessage *)&v6 encodeWithCoder:v4];
  v5 = [(HMDeviceSetupRequestMessage *)self payload:v6.receiver];
  [v4 encodeObject:v5 forKey:@"HM.payload"];

  [v4 encodeInteger:-[HMDeviceSetupRequestMessage qualityOfService](self forKey:{"qualityOfService"), @"HM.qos"}];
}

- (HMDeviceSetupRequestMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDeviceSetupRequestMessage;
  v5 = [(TRMessage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.payload"];
    payload = v5->_payload;
    v5->_payload = v6;

    if ([v4 containsValueForKey:@"HM.qos"])
    {
      v5->_qualityOfService = [v4 decodeIntegerForKey:@"HM.qos"];
    }
  }

  return v5;
}

- (HMDeviceSetupRequestMessage)initWithPayload:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDeviceSetupRequestMessage;
  v5 = [(HMDeviceSetupRequestMessage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    payload = v5->_payload;
    v5->_payload = v6;

    v5->_qualityOfService = -1;
  }

  return v5;
}

@end