@interface HMDeviceSetupResponseMessage
- (HMDeviceSetupResponseMessage)initWithCoder:(id)a3;
- (HMDeviceSetupResponseMessage)initWithPayload:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDeviceSetupResponseMessage

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDeviceSetupResponseMessage;
  v4 = a3;
  [(TRMessage *)&v6 encodeWithCoder:v4];
  v5 = [(HMDeviceSetupResponseMessage *)self payload:v6.receiver];
  [v4 encodeObject:v5 forKey:@"HM.payload"];
}

- (HMDeviceSetupResponseMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDeviceSetupResponseMessage;
  v5 = [(TRMessage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.payload"];
    payload = v5->_payload;
    v5->_payload = v6;
  }

  return v5;
}

- (HMDeviceSetupResponseMessage)initWithPayload:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDeviceSetupResponseMessage;
  v5 = [(HMDeviceSetupResponseMessage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    payload = v5->_payload;
    v5->_payload = v6;
  }

  return v5;
}

@end