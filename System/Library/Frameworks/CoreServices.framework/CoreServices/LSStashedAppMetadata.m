@interface LSStashedAppMetadata
- (LSStashedAppMetadata)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSStashedAppMetadata

- (LSStashedAppMetadata)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = LSStashedAppMetadata;
  v4 = [(LSStashedAppMetadata *)&v16 init];
  if (v4)
  {
    v5 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"exactBundleVersion"];
    exactBundleVersion = v4->_exactBundleVersion;
    v4->_exactBundleVersion = v5;

    v7 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleShortVersion"];
    bundleShortVersion = v4->_bundleShortVersion;
    v4->_bundleShortVersion = v7;

    v9 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"dateStashed"];
    dateStashed = v4->_dateStashed;
    v4->_dateStashed = v9;

    v11 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"dateOriginallyInstalled"];
    dateOriginallyInstalled = v4->_dateOriginallyInstalled;
    v4->_dateOriginallyInstalled = v11;

    v13 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"signerOrganization"];
    signerOrganization = v4->_signerOrganization;
    v4->_signerOrganization = v13;

    v4->_validationState = [a3 decodeIntForKey:@"validationState"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_exactBundleVersion forKey:@"exactBundleVersion"];
  [a3 encodeObject:self->_bundleShortVersion forKey:@"bundleShortVersion"];
  [a3 encodeObject:self->_dateStashed forKey:@"dateStashed"];
  [a3 encodeObject:self->_dateOriginallyInstalled forKey:@"dateOriginallyInstalled"];
  [a3 encodeObject:self->_signerOrganization forKey:@"signerOrganization"];
  validationState = self->_validationState;

  [a3 encodeInt:validationState forKey:@"validationState"];
}

@end