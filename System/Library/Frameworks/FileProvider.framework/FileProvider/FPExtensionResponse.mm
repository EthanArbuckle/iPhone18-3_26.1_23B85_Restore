@interface FPExtensionResponse
- (FPExtensionResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPExtensionResponse

- (FPExtensionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FPExtensionResponse;
  v5 = [(FPExtensionResponse *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_domainVersion"];
    domainVersion = v5->_domainVersion;
    v5->_domainVersion = v6;

    v8 = [v4 fp_safeDecodeNSDictionaryForKey:@"_domainUserInfo"];
    domainUserInfo = v5->_domainUserInfo;
    v5->_domainUserInfo = v8;

    v5->_extensionPid = [v4 decodeIntForKey:@"_extensionPid"];
    v5->_sequenceNumber = [v4 decodeIntegerForKey:@"_sequenceNumber"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_callDescription"];
    callDescription = v5->_callDescription;
    v5->_callDescription = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  domainVersion = self->_domainVersion;
  v5 = a3;
  [v5 encodeObject:domainVersion forKey:@"_domainVersion"];
  [v5 encodeObject:self->_domainUserInfo forKey:@"_domainUserInfo"];
  [v5 encodeInt:self->_extensionPid forKey:@"_extensionPid"];
  [v5 encodeInteger:self->_sequenceNumber forKey:@"_sequenceNumber"];
  [v5 encodeObject:self->_callDescription forKey:@"_callDescription"];
}

@end