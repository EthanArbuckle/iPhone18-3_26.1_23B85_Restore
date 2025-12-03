@interface ASDDownloadQueueRequestOptions
- (ASDDownloadQueueRequestOptions)initWithCoder:(id)coder;
- (ASDDownloadQueueRequestOptions)initWithManifest:(id)manifest;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASDDownloadQueueRequestOptions

- (ASDDownloadQueueRequestOptions)initWithManifest:(id)manifest
{
  manifestCopy = manifest;
  v9.receiver = self;
  v9.super_class = ASDDownloadQueueRequestOptions;
  v6 = [(ASDDownloadQueueRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manifest, manifest);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDDownloadQueueRequestOptions allocWithZone:](ASDDownloadQueueRequestOptions init];
  v6 = [(ASDJobManifest *)self->_manifest copyWithZone:zone];
  manifest = v5->_manifest;
  v5->_manifest = v6;

  return v5;
}

- (ASDDownloadQueueRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ASDDownloadQueueRequestOptions;
  v5 = [(ASDRequestOptions *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manifest"];
    manifest = v5->_manifest;
    v5->_manifest = v6;
  }

  return v5;
}

@end