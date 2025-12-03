@interface HMDeviceSetupResponseMessage
- (HMDeviceSetupResponseMessage)initWithCoder:(id)coder;
- (HMDeviceSetupResponseMessage)initWithPayload:(id)payload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDeviceSetupResponseMessage

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDeviceSetupResponseMessage;
  coderCopy = coder;
  [(TRMessage *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMDeviceSetupResponseMessage *)self payload:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"HM.payload"];
}

- (HMDeviceSetupResponseMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDeviceSetupResponseMessage;
  v5 = [(TRMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.payload"];
    payload = v5->_payload;
    v5->_payload = v6;
  }

  return v5;
}

- (HMDeviceSetupResponseMessage)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v9.receiver = self;
  v9.super_class = HMDeviceSetupResponseMessage;
  v5 = [(HMDeviceSetupResponseMessage *)&v9 init];
  if (v5)
  {
    v6 = [payloadCopy copy];
    payload = v5->_payload;
    v5->_payload = v6;
  }

  return v5;
}

@end