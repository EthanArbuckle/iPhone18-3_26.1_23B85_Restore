@interface FPExtensionResponse
- (FPExtensionResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPExtensionResponse

- (FPExtensionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = FPExtensionResponse;
  v5 = [(FPExtensionResponse *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_domainVersion"];
    domainVersion = v5->_domainVersion;
    v5->_domainVersion = v6;

    v8 = [coderCopy fp_safeDecodeNSDictionaryForKey:@"_domainUserInfo"];
    domainUserInfo = v5->_domainUserInfo;
    v5->_domainUserInfo = v8;

    v5->_extensionPid = [coderCopy decodeIntForKey:@"_extensionPid"];
    v5->_sequenceNumber = [coderCopy decodeIntegerForKey:@"_sequenceNumber"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_callDescription"];
    callDescription = v5->_callDescription;
    v5->_callDescription = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  domainVersion = self->_domainVersion;
  coderCopy = coder;
  [coderCopy encodeObject:domainVersion forKey:@"_domainVersion"];
  [coderCopy encodeObject:self->_domainUserInfo forKey:@"_domainUserInfo"];
  [coderCopy encodeInt:self->_extensionPid forKey:@"_extensionPid"];
  [coderCopy encodeInteger:self->_sequenceNumber forKey:@"_sequenceNumber"];
  [coderCopy encodeObject:self->_callDescription forKey:@"_callDescription"];
}

@end