@interface CTSatelliteMessagingProvisioning
- (CTSatelliteMessagingProvisioning)initWithCoder:(id)coder;
- (CTSatelliteMessagingProvisioning)initWithID:(id)d data:(id)data sps:(id)sps;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSatelliteMessagingProvisioning

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  cfg_id = [(CTSatelliteMessagingProvisioning *)self cfg_id];
  [v3 appendFormat:@", cfg_id=%@", cfg_id];

  v5 = [(CTSatelliteMessagingProvisioning *)self cfg];
  [v3 appendFormat:@", cfg=%@", v5];

  sps_environment = [(CTSatelliteMessagingProvisioning *)self sps_environment];
  [v3 appendFormat:@", env=%@", sps_environment];

  [v3 appendString:@">"];

  return v3;
}

- (CTSatelliteMessagingProvisioning)initWithID:(id)d data:(id)data sps:(id)sps
{
  dCopy = d;
  dataCopy = data;
  spsCopy = sps;
  v14.receiver = self;
  v14.super_class = CTSatelliteMessagingProvisioning;
  v11 = [(CTSatelliteMessagingProvisioning *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CTSatelliteMessagingProvisioning *)v11 setCfg_id:dCopy];
    [(CTSatelliteMessagingProvisioning *)v12 setCfg:dataCopy];
    [(CTSatelliteMessagingProvisioning *)v12 setSps_environment:spsCopy];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  cfg_id = [(CTSatelliteMessagingProvisioning *)self cfg_id];
  v6 = [cfg_id copy];
  [v4 setCfg_id:v6];

  v7 = [(CTSatelliteMessagingProvisioning *)self cfg];
  v8 = [v7 copy];
  [v4 setCfg:v8];

  sps_environment = [(CTSatelliteMessagingProvisioning *)self sps_environment];
  v10 = [sps_environment copy];
  [v4 setSps_environment:v10];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cfg_id = [(CTSatelliteMessagingProvisioning *)self cfg_id];
  [coderCopy encodeObject:cfg_id forKey:@"cfg_idx"];

  v6 = [(CTSatelliteMessagingProvisioning *)self cfg];
  [coderCopy encodeObject:v6 forKey:@"cfg"];

  sps_environment = [(CTSatelliteMessagingProvisioning *)self sps_environment];
  [coderCopy encodeObject:sps_environment forKey:@"sps_environment"];
}

- (CTSatelliteMessagingProvisioning)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTSatelliteMessagingProvisioning;
  v5 = [(CTSatelliteMessagingProvisioning *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cfg_idx"];
    cfg_id = v5->_cfg_id;
    v5->_cfg_id = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cfg"];
    cfg = v5->_cfg;
    v5->_cfg = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sps_environment"];
    sps_environment = v5->_sps_environment;
    v5->_sps_environment = v10;
  }

  return v5;
}

@end