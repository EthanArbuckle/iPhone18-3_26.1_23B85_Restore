@interface CTCallCapabilities
- (CTCallCapabilities)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIsWifiCallingAvailable:{-[CTCallCapabilities isWifiCallingAvailable](self, "isWifiCallingAvailable")}];
  [v4 setIsVoLTECallingAvailable:{-[CTCallCapabilities isVoLTECallingAvailable](self, "isVoLTECallingAvailable")}];
  [v4 setIsCSCallingAvailable:{-[CTCallCapabilities isCSCallingAvailable](self, "isCSCallingAvailable")}];
  [v4 setIsEmergencyCallingOnWifiAllowed:{-[CTCallCapabilities isEmergencyCallingOnWifiAllowed](self, "isEmergencyCallingOnWifiAllowed")}];
  [v4 setIsEmergencyCallingOnWifiAvailable:{-[CTCallCapabilities isEmergencyCallingOnWifiAvailable](self, "isEmergencyCallingOnWifiAvailable")}];
  [v4 setIsCarrierSupportsEmergencyCallOnWifiNoLimit:{-[CTCallCapabilities isCarrierSupportsEmergencyCallOnWifiNoLimit](self, "isCarrierSupportsEmergencyCallOnWifiNoLimit")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CTCallCapabilities isWifiCallingAvailable](self forKey:{"isWifiCallingAvailable"), @"isWifiCallingAvailable"}];
  [coderCopy encodeBool:-[CTCallCapabilities isVoLTECallingAvailable](self forKey:{"isVoLTECallingAvailable"), @"isVoLTECallingAvailable"}];
  [coderCopy encodeBool:-[CTCallCapabilities isCSCallingAvailable](self forKey:{"isCSCallingAvailable"), @"isCSCallingAvailable"}];
  [coderCopy encodeBool:-[CTCallCapabilities isEmergencyCallingOnWifiAllowed](self forKey:{"isEmergencyCallingOnWifiAllowed"), @"isEmergencyCallingOnWifiAllowed"}];
  [coderCopy encodeBool:-[CTCallCapabilities isEmergencyCallingOnWifiAvailable](self forKey:{"isEmergencyCallingOnWifiAvailable"), @"isEmergencyCallingOnWifiAvailable"}];
  [coderCopy encodeBool:-[CTCallCapabilities isCarrierSupportsEmergencyCallOnWifiNoLimit](self forKey:{"isCarrierSupportsEmergencyCallOnWifiNoLimit"), @"isCarrierSupportsEmergencyCallOnWifiNoLimit"}];
}

- (CTCallCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTCallCapabilities;
  v5 = [(CTCallCapabilities *)&v7 init];
  if (v5)
  {
    v5->_isWifiCallingAvailable = [coderCopy decodeBoolForKey:@"isWifiCallingAvailable"];
    v5->_isVoLTECallingAvailable = [coderCopy decodeBoolForKey:@"isVoLTECallingAvailable"];
    v5->_isCSCallingAvailable = [coderCopy decodeBoolForKey:@"isCSCallingAvailable"];
    v5->_isEmergencyCallingOnWifiAllowed = [coderCopy decodeBoolForKey:@"isEmergencyCallingOnWifiAllowed"];
    v5->_isEmergencyCallingOnWifiAvailable = [coderCopy decodeBoolForKey:@"isEmergencyCallingOnWifiAvailable"];
    v5->_isCarrierSupportsEmergencyCallOnWifiNoLimit = [coderCopy decodeBoolForKey:@"isCarrierSupportsEmergencyCallOnWifiNoLimit"];
  }

  return v5;
}

@end