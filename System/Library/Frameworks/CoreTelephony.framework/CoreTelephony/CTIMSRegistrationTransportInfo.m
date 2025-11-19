@interface CTIMSRegistrationTransportInfo
- (CTIMSRegistrationTransportInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTIMSRegistrationTransportInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", isRegistered=%d", -[CTIMSRegistrationTransportInfo isRegistered](self, "isRegistered")];
  [v3 appendFormat:@", contextType=%d", -[CTIMSRegistrationTransportInfo contextType](self, "contextType")];
  [v3 appendFormat:@", transportType=%d", -[CTIMSRegistrationTransportInfo transportType](self, "transportType")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIsRegistered:{-[CTIMSRegistrationTransportInfo isRegistered](self, "isRegistered")}];
  [v4 setContextType:{-[CTIMSRegistrationTransportInfo contextType](self, "contextType")}];
  [v4 setTransportType:{-[CTIMSRegistrationTransportInfo transportType](self, "transportType")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CTIMSRegistrationTransportInfo isRegistered](self forKey:{"isRegistered"), @"isRegistered"}];
  [v4 encodeInt:-[CTIMSRegistrationTransportInfo contextType](self forKey:{"contextType"), @"contextType"}];
  [v4 encodeInt:-[CTIMSRegistrationTransportInfo transportType](self forKey:{"transportType"), @"transportType"}];
}

- (CTIMSRegistrationTransportInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTIMSRegistrationTransportInfo;
  v5 = [(CTIMSRegistrationTransportInfo *)&v7 init];
  if (v5)
  {
    v5->_isRegistered = [v4 decodeBoolForKey:@"isRegistered"];
    v5->_contextType = [v4 decodeIntForKey:@"contextType"];
    v5->_transportType = [v4 decodeIntForKey:@"transportType"];
  }

  return v5;
}

@end