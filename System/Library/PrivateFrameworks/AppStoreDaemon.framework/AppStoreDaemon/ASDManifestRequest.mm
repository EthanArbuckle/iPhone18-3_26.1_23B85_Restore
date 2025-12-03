@interface ASDManifestRequest
- (ASDManifestRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDManifestRequest

- (void)encodeWithCoder:(id)coder
{
  archiveType = self->_archiveType;
  coderCopy = coder;
  [coderCopy encodeInt64:archiveType forKey:@"ArchiveType"];
  [coderCopy encodeObject:self->_manifest forKey:@"Manifest"];
  [coderCopy encodeObject:self->_manifestURL forKey:@"ManifestURL"];
  [coderCopy encodeObject:self->_certificates forKey:@"Certificates"];
  [coderCopy encodeBool:self->_pinningRevocationCheckRequired forKey:@"PinningRequired"];
  [coderCopy encodeObject:self->_requestIdentifier forKey:@"Request"];
  [coderCopy encodeInt64:self->_softwarePlatform forKey:@"SoftwarePlatform"];
}

- (ASDManifestRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = ASDManifestRequest;
  v5 = [(ASDManifestRequest *)&v24 init];
  if (v5)
  {
    v5->_archiveType = [coderCopy decodeInt64ForKey:@"ArchiveType"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"Manifest"];
    manifest = v5->_manifest;
    v5->_manifest = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ManifestURL"];
    manifestURL = v5->_manifestURL;
    v5->_manifestURL = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"Certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v19;

    v5->_pinningRevocationCheckRequired = [coderCopy decodeBoolForKey:@"PinningRequired"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Request"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v21;

    v5->_softwarePlatform = [coderCopy decodeInt64ForKey:@"SoftwarePlatform"];
  }

  return v5;
}

@end