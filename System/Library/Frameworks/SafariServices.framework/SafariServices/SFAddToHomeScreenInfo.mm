@interface SFAddToHomeScreenInfo
- (SFAddToHomeScreenInfo)initWithManifest:(id)manifest;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SFAddToHomeScreenInfo

- (SFAddToHomeScreenInfo)initWithManifest:(id)manifest
{
  manifestCopy = manifest;
  v11.receiver = self;
  v11.super_class = SFAddToHomeScreenInfo;
  v6 = [(SFAddToHomeScreenInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manifest, manifest);
    websiteCookies = v7->_websiteCookies;
    v7->_websiteCookies = MEMORY[0x1E695E0F0];

    v9 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithManifest:", self->_manifest}];
  v5 = [(NSArray *)self->_websiteCookies copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end