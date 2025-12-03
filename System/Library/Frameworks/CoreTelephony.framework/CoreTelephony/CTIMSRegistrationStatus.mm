@interface CTIMSRegistrationStatus
- (CTIMSRegistrationStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIsRegisteredForVoice:{-[CTIMSRegistrationStatus isRegisteredForVoice](self, "isRegisteredForVoice")}];
  [v4 setIsRegisteredForSMS:{-[CTIMSRegistrationStatus isRegisteredForSMS](self, "isRegisteredForSMS")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CTIMSRegistrationStatus isRegisteredForVoice](self forKey:{"isRegisteredForVoice"), @"isRegisteredForVoice"}];
  [coderCopy encodeBool:-[CTIMSRegistrationStatus isRegisteredForSMS](self forKey:{"isRegisteredForSMS"), @"isRegisteredForSMS"}];
}

- (CTIMSRegistrationStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTIMSRegistrationStatus;
  v5 = [(CTIMSRegistrationStatus *)&v7 init];
  if (v5)
  {
    v5->_isRegisteredForVoice = [coderCopy decodeBoolForKey:@"isRegisteredForVoice"];
    v5->_isRegisteredForSMS = [coderCopy decodeBoolForKey:@"isRegisteredForSMS"];
  }

  return v5;
}

@end