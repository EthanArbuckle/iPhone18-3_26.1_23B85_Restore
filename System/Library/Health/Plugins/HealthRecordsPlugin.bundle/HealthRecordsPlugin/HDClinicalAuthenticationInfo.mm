@interface HDClinicalAuthenticationInfo
- (HDClinicalAuthenticationInfo)initWithCoder:(id)a3;
- (HDClinicalAuthenticationInfo)initWithCredential:(id)a3 tokenKeyFingerprint:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalAuthenticationInfo

- (HDClinicalAuthenticationInfo)initWithCredential:(id)a3 tokenKeyFingerprint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDClinicalAuthenticationInfo;
  v8 = [(HDClinicalAuthenticationInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    credential = v8->_credential;
    v8->_credential = v9;

    v11 = [v7 copy];
    tokenKeyFingerprint = v8->_tokenKeyFingerprint;
    v8->_tokenKeyFingerprint = v11;
  }

  return v8;
}

- (HDClinicalAuthenticationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credential"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenKeyFingerprint"];
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
      v12 = self;
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v12 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  credential = self->_credential;
  v5 = a3;
  [v5 encodeObject:credential forKey:@"credential"];
  [v5 encodeObject:self->_tokenKeyFingerprint forKey:@"tokenKeyFingerprint"];
}

@end