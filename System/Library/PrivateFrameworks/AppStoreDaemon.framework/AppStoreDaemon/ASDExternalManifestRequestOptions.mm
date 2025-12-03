@interface ASDExternalManifestRequestOptions
- (ASDExternalManifestRequestOptions)initWithCoder:(id)coder;
- (ASDExternalManifestRequestOptions)initWithURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDExternalManifestRequestOptions

- (ASDExternalManifestRequestOptions)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = ASDExternalManifestRequestOptions;
  v5 = [(ASDExternalManifestRequestOptions *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    manifestURL = v5->_manifestURL;
    v5->_manifestURL = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDExternalManifestRequestOptions allocWithZone:](ASDExternalManifestRequestOptions init];
  v6 = [(NSURL *)self->_manifestURL copyWithZone:zone];
  manifestURL = v5->_manifestURL;
  v5->_manifestURL = v6;

  v5->_shouldHideUserPrompts = self->_shouldHideUserPrompts;
  return v5;
}

- (ASDExternalManifestRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ASDExternalManifestRequestOptions;
  v5 = [(ASDRequestOptions *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manifestURL"];
    manifestURL = v5->_manifestURL;
    v5->_manifestURL = v6;

    v5->_shouldHideUserPrompts = [coderCopy decodeBoolForKey:@"shouldHideUserPrompts"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  manifestURL = [(ASDExternalManifestRequestOptions *)self manifestURL];
  [coderCopy encodeObject:manifestURL forKey:@"manifestURL"];

  [coderCopy encodeBool:-[ASDExternalManifestRequestOptions shouldHideUserPrompts](self forKey:{"shouldHideUserPrompts"), @"shouldHideUserPrompts"}];
}

@end