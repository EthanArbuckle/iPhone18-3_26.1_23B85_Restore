@interface ASDExternalManifestRequestOptions
- (ASDExternalManifestRequestOptions)initWithCoder:(id)a3;
- (ASDExternalManifestRequestOptions)initWithURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDExternalManifestRequestOptions

- (ASDExternalManifestRequestOptions)initWithURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDExternalManifestRequestOptions;
  v5 = [(ASDExternalManifestRequestOptions *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    manifestURL = v5->_manifestURL;
    v5->_manifestURL = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDExternalManifestRequestOptions allocWithZone:](ASDExternalManifestRequestOptions init];
  v6 = [(NSURL *)self->_manifestURL copyWithZone:a3];
  manifestURL = v5->_manifestURL;
  v5->_manifestURL = v6;

  v5->_shouldHideUserPrompts = self->_shouldHideUserPrompts;
  return v5;
}

- (ASDExternalManifestRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDExternalManifestRequestOptions;
  v5 = [(ASDRequestOptions *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manifestURL"];
    manifestURL = v5->_manifestURL;
    v5->_manifestURL = v6;

    v5->_shouldHideUserPrompts = [v4 decodeBoolForKey:@"shouldHideUserPrompts"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(ASDExternalManifestRequestOptions *)self manifestURL];
  [v5 encodeObject:v4 forKey:@"manifestURL"];

  [v5 encodeBool:-[ASDExternalManifestRequestOptions shouldHideUserPrompts](self forKey:{"shouldHideUserPrompts"), @"shouldHideUserPrompts"}];
}

@end