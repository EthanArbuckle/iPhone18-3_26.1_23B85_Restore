@interface ASDManifestRequest
- (ASDManifestRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDManifestRequest

- (void)encodeWithCoder:(id)a3
{
  archiveType = self->_archiveType;
  v5 = a3;
  [v5 encodeInt64:archiveType forKey:@"ArchiveType"];
  [v5 encodeObject:self->_manifest forKey:@"Manifest"];
  [v5 encodeObject:self->_manifestURL forKey:@"ManifestURL"];
  [v5 encodeObject:self->_certificates forKey:@"Certificates"];
  [v5 encodeBool:self->_pinningRevocationCheckRequired forKey:@"PinningRequired"];
  [v5 encodeObject:self->_requestIdentifier forKey:@"Request"];
  [v5 encodeInt64:self->_softwarePlatform forKey:@"SoftwarePlatform"];
}

- (ASDManifestRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ASDManifestRequest;
  v5 = [(ASDManifestRequest *)&v24 init];
  if (v5)
  {
    v5->_archiveType = [v4 decodeInt64ForKey:@"ArchiveType"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"Manifest"];
    manifest = v5->_manifest;
    v5->_manifest = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ManifestURL"];
    manifestURL = v5->_manifestURL;
    v5->_manifestURL = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"Certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v19;

    v5->_pinningRevocationCheckRequired = [v4 decodeBoolForKey:@"PinningRequired"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Request"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v21;

    v5->_softwarePlatform = [v4 decodeInt64ForKey:@"SoftwarePlatform"];
  }

  return v5;
}

@end