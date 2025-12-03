@interface CTRoamingStatus
- (CTRoamingStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTRoamingStatus

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", isVoiceRoaming=%d", -[CTRoamingStatus isVoiceRoaming](self, "isVoiceRoaming")];
  [v3 appendFormat:@", isDataRoaming=%d", -[CTRoamingStatus isDataRoaming](self, "isDataRoaming")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIsVoiceRoaming:{-[CTRoamingStatus isVoiceRoaming](self, "isVoiceRoaming")}];
  [v4 setIsDataRoaming:{-[CTRoamingStatus isDataRoaming](self, "isDataRoaming")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CTRoamingStatus isVoiceRoaming](self forKey:{"isVoiceRoaming"), @"voice_roaming"}];
  [coderCopy encodeBool:-[CTRoamingStatus isDataRoaming](self forKey:{"isDataRoaming"), @"data_roaming"}];
}

- (CTRoamingStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTRoamingStatus;
  v5 = [(CTRoamingStatus *)&v7 init];
  if (v5)
  {
    v5->_isVoiceRoaming = [coderCopy decodeBoolForKey:@"voice_roaming"];
    v5->_isDataRoaming = [coderCopy decodeBoolForKey:@"data_roaming"];
  }

  return v5;
}

@end