@interface CTCallCapabilities
- (CTCallCapabilities)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCallCapabilities

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", isWifiCallingAvailable=%d", -[CTCallCapabilities isWifiCallingAvailable](self, "isWifiCallingAvailable")];
  [v3 appendFormat:@", isVoLTECallingAvailable=%d", -[CTCallCapabilities isVoLTECallingAvailable](self, "isVoLTECallingAvailable")];
  [v3 appendFormat:@", isCSCallingAvailable=%d", -[CTCallCapabilities isCSCallingAvailable](self, "isCSCallingAvailable")];
  [v3 appendFormat:@", isEmergencyCallingOnWifiAllowed=%d", -[CTCallCapabilities isEmergencyCallingOnWifiAllowed](self, "isEmergencyCallingOnWifiAllowed")];
  [v3 appendFormat:@", isEmergencyCallingOnWifiAvailable=%d", -[CTCallCapabilities isEmergencyCallingOnWifiAvailable](self, "isEmergencyCallingOnWifiAvailable")];
  [v3 appendFormat:@", isCarrierSupportsEmergencyCallOnWifiNoLimit=%d", -[CTCallCapabilities isCarrierSupportsEmergencyCallOnWifiNoLimit](self, "isCarrierSupportsEmergencyCallOnWifiNoLimit")];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIsWifiCallingAvailable:{-[CTCallCapabilities isWifiCallingAvailable](self, "isWifiCallingAvailable")}];
  [v4 setIsVoLTECallingAvailable:{-[CTCallCapabilities isVoLTECallingAvailable](self, "isVoLTECallingAvailable")}];
  [v4 setIsCSCallingAvailable:{-[CTCallCapabilities isCSCallingAvailable](self, "isCSCallingAvailable")}];
  [v4 setIsEmergencyCallingOnWifiAllowed:{-[CTCallCapabilities isEmergencyCallingOnWifiAllowed](self, "isEmergencyCallingOnWifiAllowed")}];
  [v4 setIsEmergencyCallingOnWifiAvailable:{-[CTCallCapabilities isEmergencyCallingOnWifiAvailable](self, "isEmergencyCallingOnWifiAvailable")}];
  [v4 setIsCarrierSupportsEmergencyCallOnWifiNoLimit:{-[CTCallCapabilities isCarrierSupportsEmergencyCallOnWifiNoLimit](self, "isCarrierSupportsEmergencyCallOnWifiNoLimit")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CTCallCapabilities isWifiCallingAvailable](self forKey:{"isWifiCallingAvailable"), @"isWifiCallingAvailable"}];
  [v4 encodeBool:-[CTCallCapabilities isVoLTECallingAvailable](self forKey:{"isVoLTECallingAvailable"), @"isVoLTECallingAvailable"}];
  [v4 encodeBool:-[CTCallCapabilities isCSCallingAvailable](self forKey:{"isCSCallingAvailable"), @"isCSCallingAvailable"}];
  [v4 encodeBool:-[CTCallCapabilities isEmergencyCallingOnWifiAllowed](self forKey:{"isEmergencyCallingOnWifiAllowed"), @"isEmergencyCallingOnWifiAllowed"}];
  [v4 encodeBool:-[CTCallCapabilities isEmergencyCallingOnWifiAvailable](self forKey:{"isEmergencyCallingOnWifiAvailable"), @"isEmergencyCallingOnWifiAvailable"}];
  [v4 encodeBool:-[CTCallCapabilities isCarrierSupportsEmergencyCallOnWifiNoLimit](self forKey:{"isCarrierSupportsEmergencyCallOnWifiNoLimit"), @"isCarrierSupportsEmergencyCallOnWifiNoLimit"}];
}

- (CTCallCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTCallCapabilities;
  v5 = [(CTCallCapabilities *)&v7 init];
  if (v5)
  {
    v5->_isWifiCallingAvailable = [v4 decodeBoolForKey:@"isWifiCallingAvailable"];
    v5->_isVoLTECallingAvailable = [v4 decodeBoolForKey:@"isVoLTECallingAvailable"];
    v5->_isCSCallingAvailable = [v4 decodeBoolForKey:@"isCSCallingAvailable"];
    v5->_isEmergencyCallingOnWifiAllowed = [v4 decodeBoolForKey:@"isEmergencyCallingOnWifiAllowed"];
    v5->_isEmergencyCallingOnWifiAvailable = [v4 decodeBoolForKey:@"isEmergencyCallingOnWifiAvailable"];
    v5->_isCarrierSupportsEmergencyCallOnWifiNoLimit = [v4 decodeBoolForKey:@"isCarrierSupportsEmergencyCallOnWifiNoLimit"];
  }

  return v5;
}

@end