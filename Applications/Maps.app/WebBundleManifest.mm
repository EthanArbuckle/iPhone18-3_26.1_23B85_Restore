@interface WebBundleManifest
- (BOOL)isEqual:(id)equal;
- (WebBundleManifest)initWithCoder:(id)coder;
- (WebBundleManifest)initWithVersion:(id)version files:(id)files;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WebBundleManifest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    version = [(WebBundleManifest *)v6 version];
    version2 = [(WebBundleManifest *)self version];
    if (version == version2 || [version isEqual:version2])
    {
      files = [(WebBundleManifest *)v6 files];
      files2 = [(WebBundleManifest *)self files];
      if (files == files2)
      {
        v11 = 1;
      }

      else
      {
        v11 = [files isEqual:files2];
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
  version = [(WebBundleManifest *)self version];
  v4 = [version hash];
  files = [(WebBundleManifest *)self files];
  v6 = [files hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeObject:version forKey:@"WebBundleManifestVersionKey"];
  [coderCopy encodeObject:self->_files forKey:@"WebBundleManifestFilesKey"];
}

- (WebBundleManifest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WebBundleManifest;
  v5 = [(WebBundleManifest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WebBundleManifestVersionKey"];
    [(WebBundleManifest *)v5 setVersion:v6];

    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"WebBundleManifestFilesKey"];
    [(WebBundleManifest *)v5 setFiles:v9];
  }

  return v5;
}

- (WebBundleManifest)initWithVersion:(id)version files:(id)files
{
  versionCopy = version;
  filesCopy = files;
  v11.receiver = self;
  v11.super_class = WebBundleManifest;
  v8 = [(WebBundleManifest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(WebBundleManifest *)v8 setVersion:versionCopy];
    [(WebBundleManifest *)v9 setFiles:filesCopy];
  }

  return v9;
}

@end