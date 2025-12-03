@interface Applicant
- (Applicant)initWithPeerInfo:(__OpaqueSOSPeerInfo *)info;
- (NSString)applicantUIStateName;
- (NSString)deviceType;
- (NSString)idString;
- (NSString)name;
- (id)description;
- (void)dealloc;
@end

@implementation Applicant

- (NSString)applicantUIStateName
{
  applicantUIState = [(Applicant *)self applicantUIState];
  if (applicantUIState >= 4)
  {
    v4 = [NSString stringWithFormat:@"UnknownState#%d", [(Applicant *)self applicantUIState]];
  }

  else
  {
    v4 = *(&off_10000C448 + applicantUIState);
  }

  return v4;
}

- (NSString)deviceType
{
  rawPeerInfo = [(Applicant *)self rawPeerInfo];

  return _SOSPeerInfoGetPeerDeviceType(rawPeerInfo);
}

- (id)description
{
  rawPeerInfo = [(Applicant *)self rawPeerInfo];
  applicantUIStateName = [(Applicant *)self applicantUIStateName];
  v5 = [NSString stringWithFormat:@"%@=%@", rawPeerInfo, applicantUIStateName];

  return v5;
}

- (void)dealloc
{
  rawPeerInfo = self->_rawPeerInfo;
  if (rawPeerInfo)
  {
    CFRelease(rawPeerInfo);
  }

  v4.receiver = self;
  v4.super_class = Applicant;
  [(Applicant *)&v4 dealloc];
}

- (NSString)name
{
  rawPeerInfo = [(Applicant *)self rawPeerInfo];

  return _SOSPeerInfoGetPeerName(rawPeerInfo);
}

- (NSString)idString
{
  rawPeerInfo = [(Applicant *)self rawPeerInfo];

  return _SOSPeerInfoGetPeerID(rawPeerInfo);
}

- (Applicant)initWithPeerInfo:(__OpaqueSOSPeerInfo *)info
{
  v6.receiver = self;
  v6.super_class = Applicant;
  v4 = [(Applicant *)&v6 init];
  if (v4)
  {
    if (info)
    {
      CFRetain(info);
    }

    [(Applicant *)v4 setRawPeerInfo:info];
    [(Applicant *)v4 setApplicantUIState:0];
  }

  return v4;
}

@end