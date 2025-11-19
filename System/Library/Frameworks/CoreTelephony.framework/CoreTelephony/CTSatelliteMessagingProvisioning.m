@interface CTSatelliteMessagingProvisioning
- (CTSatelliteMessagingProvisioning)initWithCoder:(id)a3;
- (CTSatelliteMessagingProvisioning)initWithID:(id)a3 data:(id)a4 sps:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSatelliteMessagingProvisioning

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTSatelliteMessagingProvisioning *)self cfg_id];
  [v3 appendFormat:@", cfg_id=%@", v4];

  v5 = [(CTSatelliteMessagingProvisioning *)self cfg];
  [v3 appendFormat:@", cfg=%@", v5];

  v6 = [(CTSatelliteMessagingProvisioning *)self sps_environment];
  [v3 appendFormat:@", env=%@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (CTSatelliteMessagingProvisioning)initWithID:(id)a3 data:(id)a4 sps:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CTSatelliteMessagingProvisioning;
  v11 = [(CTSatelliteMessagingProvisioning *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CTSatelliteMessagingProvisioning *)v11 setCfg_id:v8];
    [(CTSatelliteMessagingProvisioning *)v12 setCfg:v9];
    [(CTSatelliteMessagingProvisioning *)v12 setSps_environment:v10];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTSatelliteMessagingProvisioning *)self cfg_id];
  v6 = [v5 copy];
  [v4 setCfg_id:v6];

  v7 = [(CTSatelliteMessagingProvisioning *)self cfg];
  v8 = [v7 copy];
  [v4 setCfg:v8];

  v9 = [(CTSatelliteMessagingProvisioning *)self sps_environment];
  v10 = [v9 copy];
  [v4 setSps_environment:v10];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTSatelliteMessagingProvisioning *)self cfg_id];
  [v4 encodeObject:v5 forKey:@"cfg_idx"];

  v6 = [(CTSatelliteMessagingProvisioning *)self cfg];
  [v4 encodeObject:v6 forKey:@"cfg"];

  v7 = [(CTSatelliteMessagingProvisioning *)self sps_environment];
  [v4 encodeObject:v7 forKey:@"sps_environment"];
}

- (CTSatelliteMessagingProvisioning)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTSatelliteMessagingProvisioning;
  v5 = [(CTSatelliteMessagingProvisioning *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cfg_idx"];
    cfg_id = v5->_cfg_id;
    v5->_cfg_id = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cfg"];
    cfg = v5->_cfg;
    v5->_cfg = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sps_environment"];
    sps_environment = v5->_sps_environment;
    v5->_sps_environment = v10;
  }

  return v5;
}

@end