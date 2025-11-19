@interface AKAnisetteData
- (AKAnisetteData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAnisetteData

- (AKAnisetteData)initWithCoder:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12.receiver = v3;
  v12.super_class = AKAnisetteData;
  v14 = [(AKAnisetteData *)&v12 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_machineID"];
    machineID = v14->_machineID;
    v14->_machineID = v4;
    MEMORY[0x1E69E5920](machineID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_oneTimePassword"];
    oneTimePassword = v14->_oneTimePassword;
    v14->_oneTimePassword = v6;
    MEMORY[0x1E69E5920](oneTimePassword);
    v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_routingInfo"];
    v8 = [v11 unsignedLongLongValue];
    v14->_routingInfo = v8;
    MEMORY[0x1E69E5920](v11);
  }

  v10 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v6->_machineID forKey:@"_machineID"];
  [location[0] encodeObject:v6->_oneTimePassword forKey:@"_oneTimePassword"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6->_routingInfo];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10 = self;
  v9[2] = a2;
  v9[1] = a3;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSString *)v10->_machineID copy];
  v4 = *(v9[0] + 1);
  *(v9[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v10->_oneTimePassword copy];
  v6 = *(v9[0] + 2);
  *(v9[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  *(v9[0] + 3) = v10->_routingInfo;
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

- (id)description
{
  v6 = MEMORY[0x1E696AEC0];
  machineID = self->_machineID;
  oneTimePassword = self->_oneTimePassword;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_routingInfo];
  v8 = [v6 stringWithFormat:@"AKAnisetteData <%p>: {MID: %@ - OTP: %@ - RD: %@}", self, machineID, oneTimePassword, v7];
  MEMORY[0x1E69E5920](v7);

  return v8;
}

@end