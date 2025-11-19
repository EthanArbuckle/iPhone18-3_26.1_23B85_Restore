@interface ASDManagedRequestStatus
- (ASDManagedRequestStatus)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDManagedRequestStatus

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"BundleIdentifier"];
  [v5 encodeObject:self->_bundleVersion forKey:@"BundleVersion"];
  [v5 encodeObject:self->_requestIdentifier forKey:@"RequestIdentifier"];
  [v5 encodeInteger:self->_state forKey:@"State"];
  [v5 encodeObject:self->_title forKey:@"Title"];
}

- (ASDManagedRequestStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASDManagedRequestStatus;
  v5 = [(ASDManagedRequestStatus *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RequestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v10;

    v5->_state = [v4 decodeIntegerForKey:@"State"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    title = v5->_title;
    v5->_title = v12;
  }

  return v5;
}

@end