@interface ASDJobOptions
- (ASDJobOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDJobOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  manifest = [(ASDJobOptions *)self manifest];
  [coderCopy encodeObject:manifest forKey:@"purchaseManifest"];

  endpoint = [(ASDJobOptions *)self endpoint];
  [coderCopy encodeObject:endpoint forKey:@"endpoint"];
}

- (ASDJobOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ASDJobOptions;
  v5 = [(ASDJobOptions *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaseManifest"];
    manifest = v5->_manifest;
    v5->_manifest = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
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