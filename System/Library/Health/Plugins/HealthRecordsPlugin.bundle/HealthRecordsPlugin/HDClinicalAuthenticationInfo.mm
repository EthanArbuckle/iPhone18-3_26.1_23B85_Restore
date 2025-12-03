@interface HDClinicalAuthenticationInfo
- (HDClinicalAuthenticationInfo)initWithCoder:(id)coder;
- (HDClinicalAuthenticationInfo)initWithCredential:(id)credential tokenKeyFingerprint:(id)fingerprint;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAuthenticationInfo

- (HDClinicalAuthenticationInfo)initWithCredential:(id)credential tokenKeyFingerprint:(id)fingerprint
{
  credentialCopy = credential;
  fingerprintCopy = fingerprint;
  v14.receiver = self;
  v14.super_class = HDClinicalAuthenticationInfo;
  v8 = [(HDClinicalAuthenticationInfo *)&v14 init];
  if (v8)
  {
    v9 = [credentialCopy copy];
    credential = v8->_credential;
    v8->_credential = v9;

    v11 = [fingerprintCopy copy];
    tokenKeyFingerprint = v8->_tokenKeyFingerprint;
    v8->_tokenKeyFingerprint = v11;
  }

  return v8;
}

- (HDClinicalAuthenticationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credential"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenKeyFingerprint"];
    if (v6)
    {
      v14.receiver = self;
      v14.super_class = HDClinicalAuthenticationInfo;
      v7 = [(HDClinicalAuthenticationInfo *)&v14 init];
      if (v7)
      {
        v8 = [v5 copy];
        credential = v7->_credential;
        v7->_credential = v8;

        v10 = [v6 copy];
        tokenKeyFingerprint = v7->_tokenKeyFingerprint;
        v7->_tokenKeyFingerprint = v10;
      }

      self = v7;
      selfCopy = self;
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      selfCopy = 0;
    }
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  credential = self->_credential;
  coderCopy = coder;
  [coderCopy encodeObject:credential forKey:@"credential"];
  [coderCopy encodeObject:self->_tokenKeyFingerprint forKey:@"tokenKeyFingerprint"];
}

@end