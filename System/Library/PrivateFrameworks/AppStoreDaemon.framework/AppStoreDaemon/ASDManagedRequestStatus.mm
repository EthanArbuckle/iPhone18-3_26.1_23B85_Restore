@interface ASDManagedRequestStatus
- (ASDManagedRequestStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDManagedRequestStatus

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"BundleIdentifier"];
  [coderCopy encodeObject:self->_bundleVersion forKey:@"BundleVersion"];
  [coderCopy encodeObject:self->_requestIdentifier forKey:@"RequestIdentifier"];
  [coderCopy encodeInteger:self->_state forKey:@"State"];
  [coderCopy encodeObject:self->_title forKey:@"Title"];
}

- (ASDManagedRequestStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ASDManagedRequestStatus;
  v5 = [(ASDManagedRequestStatus *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RequestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v10;

    v5->_state = [coderCopy decodeIntegerForKey:@"State"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    title = v5->_title;
    v5->_title = v12;
  }

  return v5;
}

@end