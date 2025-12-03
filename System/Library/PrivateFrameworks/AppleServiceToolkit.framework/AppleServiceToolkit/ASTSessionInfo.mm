@interface ASTSessionInfo
- (ASTSessionInfo)initWithIsGuided:(BOOL)guided deviceSerialNumber:(id)number sessionType:(int64_t)type;
- (id)_descriptionForSessionType:(int64_t)type;
- (id)description;
@end

@implementation ASTSessionInfo

- (ASTSessionInfo)initWithIsGuided:(BOOL)guided deviceSerialNumber:(id)number sessionType:(int64_t)type
{
  numberCopy = number;
  v13.receiver = self;
  v13.super_class = ASTSessionInfo;
  v10 = [(ASTSessionInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_isGuided = guided;
    objc_storeStrong(&v10->_deviceSerialNumber, number);
    v11->_sessionType = type;
  }

  return v11;
}

- (id)description
{
  v3 = [(ASTSessionInfo *)self _descriptionForSessionType:[(ASTSessionInfo *)self sessionType]];
  v4 = MEMORY[0x277CCACA8];
  isGuidedSessionType = [(ASTSessionInfo *)self isGuidedSessionType];
  deviceSerialNumber = [(ASTSessionInfo *)self deviceSerialNumber];
  v7 = [v4 stringWithFormat:@"[ASTSessionInfo isGuided: %d, deviceSerialNumber: %@, sessionType: %@]", isGuidedSessionType, deviceSerialNumber, v3];

  return v7;
}

- (id)_descriptionForSessionType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    return @"none";
  }

  else
  {
    return off_278CBD5B0[type - 1];
  }
}

@end