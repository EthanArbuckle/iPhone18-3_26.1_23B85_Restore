@interface ASDInstallManifestRequestOptions
- (ASDInstallManifestRequestOptions)initWithCoder:(id)a3;
- (ASDInstallManifestRequestOptions)initWithManifest:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASDInstallManifestRequestOptions

- (ASDInstallManifestRequestOptions)initWithManifest:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASDInstallManifestRequestOptions;
  v5 = [(ASDInstallManifestRequestOptions *)&v12 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
      p_super = &v5->_manifest->super;
      v5->_manifest = v6;
    }

    else
    {
      p_super = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        *buf = 138543362;
        v14 = v10;
        v11 = v10;
        _os_log_error_impl(&dword_1B8220000, p_super, OS_LOG_TYPE_ERROR, "[%{public}@]: Request contained a nil manifest", buf, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ASDInstallManifestRequestOptions allocWithZone:a3];
  manifest = self->_manifest;

  return [(ASDInstallManifestRequestOptions *)v4 initWithManifest:manifest];
}

- (ASDInstallManifestRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDInstallManifestRequestOptions *)self initWithManifest:0];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manifest"];
    manifest = v5->_manifest;
    v5->_manifest = v6;
  }

  return v5;
}

@end