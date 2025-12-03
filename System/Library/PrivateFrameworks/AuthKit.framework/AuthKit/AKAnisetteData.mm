@interface AKAnisetteData
- (AKAnisetteData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAnisetteData

- (AKAnisetteData)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v12.receiver = v3;
  v12.super_class = AKAnisetteData;
  selfCopy = [(AKAnisetteData *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_machineID"];
    machineID = selfCopy->_machineID;
    selfCopy->_machineID = v4;
    MEMORY[0x1E69E5920](machineID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_oneTimePassword"];
    oneTimePassword = selfCopy->_oneTimePassword;
    selfCopy->_oneTimePassword = v6;
    MEMORY[0x1E69E5920](oneTimePassword);
    v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_routingInfo"];
    unsignedLongLongValue = [v11 unsignedLongLongValue];
    selfCopy->_routingInfo = unsignedLongLongValue;
    MEMORY[0x1E69E5920](v11);
  }

  v10 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_machineID forKey:@"_machineID"];
  [location[0] encodeObject:selfCopy->_oneTimePassword forKey:@"_oneTimePassword"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:selfCopy->_routingInfo];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v9[2] = a2;
  v9[1] = zone;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSString *)selfCopy->_machineID copy];
  v4 = *(v9[0] + 1);
  *(v9[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_oneTimePassword copy];
  v6 = *(v9[0] + 2);
  *(v9[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  *(v9[0] + 3) = selfCopy->_routingInfo;
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