@interface ASDJobOptions
- (ASDJobOptions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDJobOptions

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDJobOptions *)self manifest];
  [v4 encodeObject:v5 forKey:@"purchaseManifest"];

  v6 = [(ASDJobOptions *)self endpoint];
  [v4 encodeObject:v6 forKey:@"endpoint"];
}

- (ASDJobOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASDJobOptions;
  v5 = [(ASDJobOptions *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaseManifest"];
    manifest = v5->_manifest;
    v5->_manifest = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v8];
      endpoint = v5->_endpoint;
      v5->_endpoint = v9;
    }
  }

  return v5;
}

@end