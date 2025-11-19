@interface WebBundleManifest
- (BOOL)isEqual:(id)a3;
- (WebBundleManifest)initWithCoder:(id)a3;
- (WebBundleManifest)initWithVersion:(id)a3 files:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WebBundleManifest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(WebBundleManifest *)v6 version];
    v8 = [(WebBundleManifest *)self version];
    if (v7 == v8 || [v7 isEqual:v8])
    {
      v9 = [(WebBundleManifest *)v6 files];
      v10 = [(WebBundleManifest *)self files];
      if (v9 == v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = [v9 isEqual:v10];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(WebBundleManifest *)self version];
  v4 = [v3 hash];
  v5 = [(WebBundleManifest *)self files];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeObject:version forKey:@"WebBundleManifestVersionKey"];
  [v5 encodeObject:self->_files forKey:@"WebBundleManifestFilesKey"];
}

- (WebBundleManifest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WebBundleManifest;
  v5 = [(WebBundleManifest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WebBundleManifestVersionKey"];
    [(WebBundleManifest *)v5 setVersion:v6];

    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"WebBundleManifestFilesKey"];
    [(WebBundleManifest *)v5 setFiles:v9];
  }

  return v5;
}

- (WebBundleManifest)initWithVersion:(id)a3 files:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = WebBundleManifest;
  v8 = [(WebBundleManifest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(WebBundleManifest *)v8 setVersion:v6];
    [(WebBundleManifest *)v9 setFiles:v7];
  }

  return v9;
}

@end