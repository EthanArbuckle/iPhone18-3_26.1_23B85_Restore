@interface ASDTestFlightServiceExtensionPushMessage
- (ASDTestFlightServiceExtensionPushMessage)initWithCoder:(id)a3;
- (ASDTestFlightServiceExtensionPushMessage)initWithTimestamp:(id)a3 userInfo:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDTestFlightServiceExtensionPushMessage

- (ASDTestFlightServiceExtensionPushMessage)initWithTimestamp:(id)a3 userInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASDTestFlightServiceExtensionPushMessage;
  v9 = [(ASDTestFlightServiceExtensionPushMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timestamp, a3);
    objc_storeStrong(&v10->_userInfo, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDTestFlightServiceExtensionPushMessage allocWithZone:](ASDTestFlightServiceExtensionPushMessage init];
  v6 = [(NSDate *)self->_timestamp copyWithZone:a3];
  timestamp = v5->_timestamp;
  v5->_timestamp = v6;

  v8 = [(NSDictionary *)self->_userInfo copyWithZone:a3];
  userInfo = v5->_userInfo;
  v5->_userInfo = v8;

  return v5;
}

- (ASDTestFlightServiceExtensionPushMessage)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ASDTestFlightServiceExtensionPushMessage *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
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
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_userInfo forKey:@"userInfo"];
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