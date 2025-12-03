@interface ASDTestFlightServiceExtensionPushMessage
- (ASDTestFlightServiceExtensionPushMessage)initWithCoder:(id)coder;
- (ASDTestFlightServiceExtensionPushMessage)initWithTimestamp:(id)timestamp userInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDTestFlightServiceExtensionPushMessage

- (ASDTestFlightServiceExtensionPushMessage)initWithTimestamp:(id)timestamp userInfo:(id)info
{
  timestampCopy = timestamp;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = ASDTestFlightServiceExtensionPushMessage;
  v9 = [(ASDTestFlightServiceExtensionPushMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timestamp, timestamp);
    objc_storeStrong(&v10->_userInfo, info);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDTestFlightServiceExtensionPushMessage allocWithZone:](ASDTestFlightServiceExtensionPushMessage init];
  v6 = [(NSDate *)self->_timestamp copyWithZone:zone];
  timestamp = v5->_timestamp;
  v5->_timestamp = v6;

  v8 = [(NSDictionary *)self->_userInfo copyWithZone:zone];
  userInfo = v5->_userInfo;
  v5->_userInfo = v8;

  return v5;
}

- (ASDTestFlightServiceExtensionPushMessage)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(ASDTestFlightServiceExtensionPushMessage *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:7];
    v9 = [MEMORY[0x1E695DFD8] setWithArray:{v8, v14, v15, v16, v17, v18, v19}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_userInfo forKey:@"userInfo"];
}

- (id)description
{
  v3 = [(NSDictionary *)self->_userInfo mutableCopy];
  if (![MEMORY[0x1E696ACB0] isValidJSONObject:v3] || (objc_msgSend(MEMORY[0x1E696ACB0], "dataWithJSONObject:options:error:", v3, 0, 0), (v4 = objc_claimAutoreleasedReturnValue()) == 0) || (v5 = v4, v6 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", v4, 4), v5, !v6))
  {
    v6 = [v3 description];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", self->_timestamp, v6];

  return v7;
}

@end