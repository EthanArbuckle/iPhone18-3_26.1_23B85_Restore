@interface CTServiceDisconnectionStatus
- (CTServiceDisconnectionStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTServiceDisconnectionStatus

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", contextType=%d", -[CTServiceDisconnectionStatus contextType](self, "contextType")];
  v4 = [(CTServiceDisconnectionStatus *)self apnName];
  [v3 appendFormat:@", apnName=%@", v4];

  [v3 appendFormat:@", activationFailure=%d", -[CTServiceDisconnectionStatus activationFailure](self, "activationFailure")];
  v5 = [(CTServiceDisconnectionStatus *)self connectionMask];
  [v3 appendFormat:@", connectionMask=%@", v5];

  [v3 appendFormat:@", error=%d", -[CTServiceDisconnectionStatus error](self, "error")];
  v6 = [(CTServiceDisconnectionStatus *)self rawCauseCode];
  [v3 appendFormat:@", rawCauseCode=%@", v6];

  v7 = [(CTServiceDisconnectionStatus *)self pdp];
  [v3 appendFormat:@", pdp=%@", v7];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setContextType:{-[CTServiceDisconnectionStatus contextType](self, "contextType")}];
  v5 = [(CTServiceDisconnectionStatus *)self apnName];
  v6 = [v5 copy];
  [v4 setApnName:v6];

  [v4 setActivationFailure:{-[CTServiceDisconnectionStatus activationFailure](self, "activationFailure")}];
  v7 = [(CTServiceDisconnectionStatus *)self connectionMask];
  v8 = [v7 copy];
  [v4 setConnectionMask:v8];

  [v4 setError:{-[CTServiceDisconnectionStatus error](self, "error")}];
  v9 = [(CTServiceDisconnectionStatus *)self rawCauseCode];
  v10 = [v9 copy];
  [v4 setRawCauseCode:v10];

  v11 = [(CTServiceDisconnectionStatus *)self pdp];
  v12 = [v11 copy];
  [v4 setPdp:v12];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[CTServiceDisconnectionStatus contextType](self forKey:{"contextType"), @"contextType"}];
  v5 = [(CTServiceDisconnectionStatus *)self apnName];
  [v4 encodeObject:v5 forKey:@"apnName"];

  [v4 encodeBool:-[CTServiceDisconnectionStatus activationFailure](self forKey:{"activationFailure"), @"activationFailure"}];
  v6 = [(CTServiceDisconnectionStatus *)self connectionMask];
  [v4 encodeObject:v6 forKey:@"connectionMask"];

  [v4 encodeInt:-[CTServiceDisconnectionStatus error](self forKey:{"error"), @"error"}];
  v7 = [(CTServiceDisconnectionStatus *)self rawCauseCode];
  [v4 encodeObject:v7 forKey:@"rawCauseCode"];

  v8 = [(CTServiceDisconnectionStatus *)self pdp];
  [v4 encodeObject:v8 forKey:@"pdp"];
}

- (CTServiceDisconnectionStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CTServiceDisconnectionStatus;
  v5 = [(CTServiceDisconnectionStatus *)&v15 init];
  if (v5)
  {
    v5->_contextType = [v4 decodeIntForKey:@"contextType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"apnName"];
    apnName = v5->_apnName;
    v5->_apnName = v6;

    v5->_activationFailure = [v4 decodeBoolForKey:@"activationFailure"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectionMask"];
    connectionMask = v5->_connectionMask;
    v5->_connectionMask = v8;

    v5->_error = [v4 decodeIntForKey:@"error"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawCauseCode"];
    rawCauseCode = v5->_rawCauseCode;
    v5->_rawCauseCode = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pdp"];
    pdp = v5->_pdp;
    v5->_pdp = v12;
  }

  return v5;
}

@end