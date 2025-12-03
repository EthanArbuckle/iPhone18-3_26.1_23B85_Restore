@interface HMRemoteLoginMessage
- (HMRemoteLoginMessage)initWithCoder:(id)coder;
- (HMRemoteLoginMessage)initWithSessionID:(id)d;
- (id)description;
- (id)initNewMessage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMRemoteLoginMessage

- (HMRemoteLoginMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HMRemoteLoginMessage;
  v5 = [(HMRemoteLoginMessage *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionID = [(HMRemoteLoginMessage *)self sessionID];
  [coderCopy encodeObject:sessionID forKey:@"sessionID"];

  error = [(HMRemoteLoginMessage *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  sessionID = [(HMRemoteLoginMessage *)self sessionID];
  error = [(HMRemoteLoginMessage *)self error];
  v6 = [v3 stringWithFormat:@"Session: %@, Error: %@", sessionID, error];

  return v6;
}

- (HMRemoteLoginMessage)initWithSessionID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HMRemoteLoginMessage;
  v6 = [(HMRemoteLoginMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionID, d);
  }

  return v7;
}

- (id)initNewMessage
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [(HMRemoteLoginMessage *)self initWithSessionID:uUIDString];

  return v5;
}

@end