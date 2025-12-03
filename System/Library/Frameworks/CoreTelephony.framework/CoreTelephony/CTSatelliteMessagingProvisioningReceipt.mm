@interface CTSatelliteMessagingProvisioningReceipt
- (CTSatelliteMessagingProvisioningReceipt)initWithCoder:(id)coder;
- (CTSatelliteMessagingProvisioningReceipt)initWithID:(id)d result:(id)result sps:(id)sps;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSatelliteMessagingProvisioningReceipt

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  cfg_id = [(CTSatelliteMessagingProvisioningReceipt *)self cfg_id];
  [v3 appendFormat:@", cfg_id=%@", cfg_id];

  result = [(CTSatelliteMessagingProvisioningReceipt *)self result];
  [v3 appendFormat:@", result=%@", result];

  sps_environment = [(CTSatelliteMessagingProvisioningReceipt *)self sps_environment];
  [v3 appendFormat:@", env=%@", sps_environment];

  [v3 appendString:@">"];

  return v3;
}

- (CTSatelliteMessagingProvisioningReceipt)initWithID:(id)d result:(id)result sps:(id)sps
{
  dCopy = d;
  resultCopy = result;
  spsCopy = sps;
  v14.receiver = self;
  v14.super_class = CTSatelliteMessagingProvisioningReceipt;
  v11 = [(CTSatelliteMessagingProvisioningReceipt *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CTSatelliteMessagingProvisioningReceipt *)v11 setCfg_id:dCopy];
    [(CTSatelliteMessagingProvisioningReceipt *)v12 setResult:resultCopy];
    [(CTSatelliteMessagingProvisioningReceipt *)v12 setSps_environment:spsCopy];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  cfg_id = [(CTSatelliteMessagingProvisioningReceipt *)self cfg_id];
  v6 = [cfg_id copy];
  [v4 setCfg_id:v6];

  result = [(CTSatelliteMessagingProvisioningReceipt *)self result];
  v8 = [result copy];
  [v4 setResult:v8];

  sps_environment = [(CTSatelliteMessagingProvisioningReceipt *)self sps_environment];
  v10 = [sps_environment copy];
  [v4 setSps_environment:v10];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cfg_id = [(CTSatelliteMessagingProvisioningReceipt *)self cfg_id];
  [coderCopy encodeObject:cfg_id forKey:@"cfg_idx"];

  result = [(CTSatelliteMessagingProvisioningReceipt *)self result];
  [coderCopy encodeObject:result forKey:@"result"];

  sps_environment = [(CTSatelliteMessagingProvisioningReceipt *)self sps_environment];
  [coderCopy encodeObject:sps_environment forKey:@"sps_environment"];
}

- (CTSatelliteMessagingProvisioningReceipt)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTSatelliteMessagingProvisioningReceipt;
  v5 = [(CTSatelliteMessagingProvisioningReceipt *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cfg_idx"];
    cfg_id = v5->_cfg_id;
    v5->_cfg_id = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v9 = v5->_result;
    v5->_result = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sps_environment"];
    sps_environment = v5->_sps_environment;
    v5->_sps_environment = v10;
  }

  return v5;
}

@end