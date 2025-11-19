@interface ASTSessionInfo
- (ASTSessionInfo)initWithIsGuided:(BOOL)a3 deviceSerialNumber:(id)a4 sessionType:(int64_t)a5;
- (id)_descriptionForSessionType:(int64_t)a3;
- (id)description;
@end

@implementation ASTSessionInfo

- (ASTSessionInfo)initWithIsGuided:(BOOL)a3 deviceSerialNumber:(id)a4 sessionType:(int64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = ASTSessionInfo;
  v10 = [(ASTSessionInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_isGuided = a3;
    objc_storeStrong(&v10->_deviceSerialNumber, a4);
    v11->_sessionType = a5;
  }

  return v11;
}

- (id)description
{
  v3 = [(ASTSessionInfo *)self _descriptionForSessionType:[(ASTSessionInfo *)self sessionType]];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(ASTSessionInfo *)self isGuidedSessionType];
  v6 = [(ASTSessionInfo *)self deviceSerialNumber];
  v7 = [v4 stringWithFormat:@"[ASTSessionInfo isGuided: %d, deviceSerialNumber: %@, sessionType: %@]", v5, v6, v3];

  return v7;
}

- (id)_descriptionForSessionType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return @"none";
  }

  else
  {
    return off_278CBD5B0[a3 - 1];
  }
}

@end