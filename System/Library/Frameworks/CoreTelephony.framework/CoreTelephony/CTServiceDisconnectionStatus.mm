@interface CTServiceDisconnectionStatus
- (CTServiceDisconnectionStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTServiceDisconnectionStatus

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", contextType=%d", -[CTServiceDisconnectionStatus contextType](self, "contextType")];
  apnName = [(CTServiceDisconnectionStatus *)self apnName];
  [v3 appendFormat:@", apnName=%@", apnName];

  [v3 appendFormat:@", activationFailure=%d", -[CTServiceDisconnectionStatus activationFailure](self, "activationFailure")];
  connectionMask = [(CTServiceDisconnectionStatus *)self connectionMask];
  [v3 appendFormat:@", connectionMask=%@", connectionMask];

  [v3 appendFormat:@", error=%d", -[CTServiceDisconnectionStatus error](self, "error")];
  rawCauseCode = [(CTServiceDisconnectionStatus *)self rawCauseCode];
  [v3 appendFormat:@", rawCauseCode=%@", rawCauseCode];

  v7 = [(CTServiceDisconnectionStatus *)self pdp];
  [v3 appendFormat:@", pdp=%@", v7];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setContextType:{-[CTServiceDisconnectionStatus contextType](self, "contextType")}];
  apnName = [(CTServiceDisconnectionStatus *)self apnName];
  v6 = [apnName copy];
  [v4 setApnName:v6];

  [v4 setActivationFailure:{-[CTServiceDisconnectionStatus activationFailure](self, "activationFailure")}];
  connectionMask = [(CTServiceDisconnectionStatus *)self connectionMask];
  v8 = [connectionMask copy];
  [v4 setConnectionMask:v8];

  [v4 setError:{-[CTServiceDisconnectionStatus error](self, "error")}];
  rawCauseCode = [(CTServiceDisconnectionStatus *)self rawCauseCode];
  v10 = [rawCauseCode copy];
  [v4 setRawCauseCode:v10];

  v11 = [(CTServiceDisconnectionStatus *)self pdp];
  v12 = [v11 copy];
  [v4 setPdp:v12];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[CTServiceDisconnectionStatus contextType](self forKey:{"contextType"), @"contextType"}];
  apnName = [(CTServiceDisconnectionStatus *)self apnName];
  [coderCopy encodeObject:apnName forKey:@"apnName"];

  [coderCopy encodeBool:-[CTServiceDisconnectionStatus activationFailure](self forKey:{"activationFailure"), @"activationFailure"}];
  connectionMask = [(CTServiceDisconnectionStatus *)self connectionMask];
  [coderCopy encodeObject:connectionMask forKey:@"connectionMask"];

  [coderCopy encodeInt:-[CTServiceDisconnectionStatus error](self forKey:{"error"), @"error"}];
  rawCauseCode = [(CTServiceDisconnectionStatus *)self rawCauseCode];
  [coderCopy encodeObject:rawCauseCode forKey:@"rawCauseCode"];

  v8 = [(CTServiceDisconnectionStatus *)self pdp];
  [coderCopy encodeObject:v8 forKey:@"pdp"];
}

- (CTServiceDisconnectionStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CTServiceDisconnectionStatus;
  v5 = [(CTServiceDisconnectionStatus *)&v15 init];
  if (v5)
  {
    v5->_contextType = [coderCopy decodeIntForKey:@"contextType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"apnName"];
    apnName = v5->_apnName;
    v5->_apnName = v6;

    v5->_activationFailure = [coderCopy decodeBoolForKey:@"activationFailure"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectionMask"];
    connectionMask = v5->_connectionMask;
    v5->_connectionMask = v8;

    v5->_error = [coderCopy decodeIntForKey:@"error"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawCauseCode"];
    rawCauseCode = v5->_rawCauseCode;
    v5->_rawCauseCode = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pdp"];
    pdp = v5->_pdp;
    v5->_pdp = v12;
  }

  return v5;
}

@end