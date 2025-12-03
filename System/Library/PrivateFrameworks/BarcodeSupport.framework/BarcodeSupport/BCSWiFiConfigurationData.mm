@interface BCSWiFiConfigurationData
- (BCSWiFiConfigurationData)initWithCoder:(id)coder;
- (BCSWiFiConfigurationData)initWithSSID:(id)d isWEP:(BOOL)p password:(id)password isHidden:(BOOL)hidden;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSWiFiConfigurationData

- (BCSWiFiConfigurationData)initWithSSID:(id)d isWEP:(BOOL)p password:(id)password isHidden:(BOOL)hidden
{
  dCopy = d;
  passwordCopy = password;
  v19.receiver = self;
  v19.super_class = BCSWiFiConfigurationData;
  v12 = [(BCSWiFiConfigurationData *)&v19 init];
  if (v12)
  {
    v13 = [dCopy copy];
    ssid = v12->_ssid;
    v12->_ssid = v13;

    v12->_WEP = p;
    v15 = [passwordCopy copy];
    password = v12->_password;
    v12->_password = v15;

    v12->_hidden = hidden;
    v17 = v12;
  }

  return v12;
}

- (BCSWiFiConfigurationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"ssid"];
  v6 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"isWEP"];
  bOOLValue = [v6 BOOLValue];

  v8 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"password"];
  v9 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"isHidden"];
  bOOLValue2 = [v9 BOOLValue];

  v11 = [(BCSWiFiConfigurationData *)self initWithSSID:v5 isWEP:bOOLValue password:v8 isHidden:bOOLValue2];
  v12 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"airplayBrokerID"];
  [(BCSWiFiConfigurationData *)v11 setAirplayBrokerID:v12];

  v13 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"airplayBrokerPin"];
  [(BCSWiFiConfigurationData *)v11 setAirplayBrokerPin:v13];

  v14 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"captivePortalToken"];

  [(BCSWiFiConfigurationData *)v11 setCaptivePortalToken:v14];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_ssid forKey:@"ssid"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_WEP];
  [coderCopy encodeObject:v4 forKey:@"isWEP"];

  [coderCopy encodeObject:self->_password forKey:@"password"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_hidden];
  [coderCopy encodeObject:v5 forKey:@"isHidden"];

  airplayBrokerID = self->_airplayBrokerID;
  if (airplayBrokerID)
  {
    [coderCopy encodeObject:airplayBrokerID forKey:@"airplayBrokerID"];
  }

  airplayBrokerPin = self->_airplayBrokerPin;
  if (airplayBrokerPin)
  {
    [coderCopy encodeObject:airplayBrokerPin forKey:@"airplayBrokerPin"];
  }

  captivePortalToken = self->_captivePortalToken;
  v9 = coderCopy;
  if (captivePortalToken)
  {
    [coderCopy encodeObject:captivePortalToken forKey:@"captivePortalToken"];
    v9 = coderCopy;
  }
}

@end