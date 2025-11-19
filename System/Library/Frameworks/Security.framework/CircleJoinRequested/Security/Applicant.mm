@interface Applicant
- (Applicant)initWithPeerInfo:(__OpaqueSOSPeerInfo *)a3;
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
  v3 = [(Applicant *)self applicantUIState];
  if (v3 >= 4)
  {
    v4 = [NSString stringWithFormat:@"UnknownState#%d", [(Applicant *)self applicantUIState]];
  }

  else
  {
    v4 = *(&off_10000C448 + v3);
  }

  return v4;
}

- (NSString)deviceType
{
  v2 = [(Applicant *)self rawPeerInfo];

  return _SOSPeerInfoGetPeerDeviceType(v2);
}

- (id)description
{
  v3 = [(Applicant *)self rawPeerInfo];
  v4 = [(Applicant *)self applicantUIStateName];
  v5 = [NSString stringWithFormat:@"%@=%@", v3, v4];

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
  v2 = [(Applicant *)self rawPeerInfo];

  return _SOSPeerInfoGetPeerName(v2);
}

- (NSString)idString
{
  v2 = [(Applicant *)self rawPeerInfo];

  return _SOSPeerInfoGetPeerID(v2);
}

- (Applicant)initWithPeerInfo:(__OpaqueSOSPeerInfo *)a3
{
  v6.receiver = self;
  v6.super_class = Applicant;
  v4 = [(Applicant *)&v6 init];
  if (v4)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    [(Applicant *)v4 setRawPeerInfo:a3];
    [(Applicant *)v4 setApplicantUIState:0];
  }

  return v4;
}

@end