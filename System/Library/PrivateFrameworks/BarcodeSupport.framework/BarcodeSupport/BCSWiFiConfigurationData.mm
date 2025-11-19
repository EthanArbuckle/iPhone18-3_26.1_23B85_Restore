@interface BCSWiFiConfigurationData
- (BCSWiFiConfigurationData)initWithCoder:(id)a3;
- (BCSWiFiConfigurationData)initWithSSID:(id)a3 isWEP:(BOOL)a4 password:(id)a5 isHidden:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSWiFiConfigurationData

- (BCSWiFiConfigurationData)initWithSSID:(id)a3 isWEP:(BOOL)a4 password:(id)a5 isHidden:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = BCSWiFiConfigurationData;
  v12 = [(BCSWiFiConfigurationData *)&v19 init];
  if (v12)
  {
    v13 = [v10 copy];
    ssid = v12->_ssid;
    v12->_ssid = v13;

    v12->_WEP = a4;
    v15 = [v11 copy];
    password = v12->_password;
    v12->_password = v15;

    v12->_hidden = a6;
    v17 = v12;
  }

  return v12;
}

- (BCSWiFiConfigurationData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"ssid"];
  v6 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"isWEP"];
  v7 = [v6 BOOLValue];

  v8 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"password"];
  v9 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"isHidden"];
  v10 = [v9 BOOLValue];

  v11 = [(BCSWiFiConfigurationData *)self initWithSSID:v5 isWEP:v7 password:v8 isHidden:v10];
  v12 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"airplayBrokerID"];
  [(BCSWiFiConfigurationData *)v11 setAirplayBrokerID:v12];

  v13 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"airplayBrokerPin"];
  [(BCSWiFiConfigurationData *)v11 setAirplayBrokerPin:v13];

  v14 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"captivePortalToken"];

  [(BCSWiFiConfigurationData *)v11 setCaptivePortalToken:v14];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeObject:self->_ssid forKey:@"ssid"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_WEP];
  [v10 encodeObject:v4 forKey:@"isWEP"];

  [v10 encodeObject:self->_password forKey:@"password"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_hidden];
  [v10 encodeObject:v5 forKey:@"isHidden"];

  airplayBrokerID = self->_airplayBrokerID;
  if (airplayBrokerID)
  {
    [v10 encodeObject:airplayBrokerID forKey:@"airplayBrokerID"];
  }

  airplayBrokerPin = self->_airplayBrokerPin;
  if (airplayBrokerPin)
  {
    [v10 encodeObject:airplayBrokerPin forKey:@"airplayBrokerPin"];
  }

  captivePortalToken = self->_captivePortalToken;
  v9 = v10;
  if (captivePortalToken)
  {
    [v10 encodeObject:captivePortalToken forKey:@"captivePortalToken"];
    v9 = v10;
  }
}

@end