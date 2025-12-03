@interface LSStashedAppMetadata
- (LSStashedAppMetadata)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSStashedAppMetadata

- (LSStashedAppMetadata)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = LSStashedAppMetadata;
  v4 = [(LSStashedAppMetadata *)&v16 init];
  if (v4)
  {
    v5 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"exactBundleVersion"];
    exactBundleVersion = v4->_exactBundleVersion;
    v4->_exactBundleVersion = v5;

    v7 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleShortVersion"];
    bundleShortVersion = v4->_bundleShortVersion;
    v4->_bundleShortVersion = v7;

    v9 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"dateStashed"];
    dateStashed = v4->_dateStashed;
    v4->_dateStashed = v9;

    v11 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"dateOriginallyInstalled"];
    dateOriginallyInstalled = v4->_dateOriginallyInstalled;
    v4->_dateOriginallyInstalled = v11;

    v13 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"signerOrganization"];
    signerOrganization = v4->_signerOrganization;
    v4->_signerOrganization = v13;

    v4->_validationState = [coder decodeIntForKey:@"validationState"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_exactBundleVersion forKey:@"exactBundleVersion"];
  [coder encodeObject:self->_bundleShortVersion forKey:@"bundleShortVersion"];
  [coder encodeObject:self->_dateStashed forKey:@"dateStashed"];
  [coder encodeObject:self->_dateOriginallyInstalled forKey:@"dateOriginallyInstalled"];
  [coder encodeObject:self->_signerOrganization forKey:@"signerOrganization"];
  validationState = self->_validationState;

  [coder encodeInt:validationState forKey:@"validationState"];
}

@end