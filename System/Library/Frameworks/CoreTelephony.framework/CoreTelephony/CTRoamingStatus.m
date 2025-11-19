@interface CTRoamingStatus
- (CTRoamingStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIsVoiceRoaming:{-[CTRoamingStatus isVoiceRoaming](self, "isVoiceRoaming")}];
  [v4 setIsDataRoaming:{-[CTRoamingStatus isDataRoaming](self, "isDataRoaming")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CTRoamingStatus isVoiceRoaming](self forKey:{"isVoiceRoaming"), @"voice_roaming"}];
  [v4 encodeBool:-[CTRoamingStatus isDataRoaming](self forKey:{"isDataRoaming"), @"data_roaming"}];
}

- (CTRoamingStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTRoamingStatus;
  v5 = [(CTRoamingStatus *)&v7 init];
  if (v5)
  {
    v5->_isVoiceRoaming = [v4 decodeBoolForKey:@"voice_roaming"];
    v5->_isDataRoaming = [v4 decodeBoolForKey:@"data_roaming"];
  }

  return v5;
}

@end