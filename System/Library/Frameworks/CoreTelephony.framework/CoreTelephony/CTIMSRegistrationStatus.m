@interface CTIMSRegistrationStatus
- (CTIMSRegistrationStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTIMSRegistrationStatus

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", isRegisteredForVoice=%d", -[CTIMSRegistrationStatus isRegisteredForVoice](self, "isRegisteredForVoice")];
  [v3 appendFormat:@", isRegisteredForSMS=%d", -[CTIMSRegistrationStatus isRegisteredForSMS](self, "isRegisteredForSMS")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIsRegisteredForVoice:{-[CTIMSRegistrationStatus isRegisteredForVoice](self, "isRegisteredForVoice")}];
  [v4 setIsRegisteredForSMS:{-[CTIMSRegistrationStatus isRegisteredForSMS](self, "isRegisteredForSMS")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CTIMSRegistrationStatus isRegisteredForVoice](self forKey:{"isRegisteredForVoice"), @"isRegisteredForVoice"}];
  [v4 encodeBool:-[CTIMSRegistrationStatus isRegisteredForSMS](self forKey:{"isRegisteredForSMS"), @"isRegisteredForSMS"}];
}

- (CTIMSRegistrationStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTIMSRegistrationStatus;
  v5 = [(CTIMSRegistrationStatus *)&v7 init];
  if (v5)
  {
    v5->_isRegisteredForVoice = [v4 decodeBoolForKey:@"isRegisteredForVoice"];
    v5->_isRegisteredForSMS = [v4 decodeBoolForKey:@"isRegisteredForSMS"];
  }

  return v5;
}

@end