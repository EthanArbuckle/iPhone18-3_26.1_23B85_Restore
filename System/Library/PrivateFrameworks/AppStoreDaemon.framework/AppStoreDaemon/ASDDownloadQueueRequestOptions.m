@interface ASDDownloadQueueRequestOptions
- (ASDDownloadQueueRequestOptions)initWithCoder:(id)a3;
- (ASDDownloadQueueRequestOptions)initWithManifest:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASDDownloadQueueRequestOptions

- (ASDDownloadQueueRequestOptions)initWithManifest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDDownloadQueueRequestOptions;
  v6 = [(ASDDownloadQueueRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manifest, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDDownloadQueueRequestOptions allocWithZone:](ASDDownloadQueueRequestOptions init];
  v6 = [(ASDJobManifest *)self->_manifest copyWithZone:a3];
  manifest = v5->_manifest;
  v5->_manifest = v6;

  return v5;
}

- (ASDDownloadQueueRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDDownloadQueueRequestOptions;
  v5 = [(ASDRequestOptions *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manifest"];
    manifest = v5->_manifest;
    v5->_manifest = v6;
  }

  return v5;
}

@end