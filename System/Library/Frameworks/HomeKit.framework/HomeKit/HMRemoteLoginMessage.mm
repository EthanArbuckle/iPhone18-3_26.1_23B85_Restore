@interface HMRemoteLoginMessage
- (HMRemoteLoginMessage)initWithCoder:(id)a3;
- (HMRemoteLoginMessage)initWithSessionID:(id)a3;
- (id)description;
- (id)initNewMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMRemoteLoginMessage

- (HMRemoteLoginMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMRemoteLoginMessage;
  v5 = [(HMRemoteLoginMessage *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMRemoteLoginMessage *)self sessionID];
  [v4 encodeObject:v5 forKey:@"sessionID"];

  v6 = [(HMRemoteLoginMessage *)self error];
  [v4 encodeObject:v6 forKey:@"error"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMRemoteLoginMessage *)self sessionID];
  v5 = [(HMRemoteLoginMessage *)self error];
  v6 = [v3 stringWithFormat:@"Session: %@, Error: %@", v4, v5];

  return v6;
}

- (HMRemoteLoginMessage)initWithSessionID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMRemoteLoginMessage;
  v6 = [(HMRemoteLoginMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionID, a3);
  }

  return v7;
}

- (id)initNewMessage
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [(HMRemoteLoginMessage *)self initWithSessionID:v4];

  return v5;
}

@end