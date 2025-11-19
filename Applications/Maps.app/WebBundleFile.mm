@interface WebBundleFile
- (BOOL)isEqual:(id)a3;
- (WebBundleFile)initWithCoder:(id)a3;
- (WebBundleFile)initWithPath:(id)a3 hash:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WebBundleFile

- (unint64_t)hash
{
  v3 = [(WebBundleFile *)self filePath];
  v4 = [v3 hash];
  v5 = [(WebBundleFile *)self fileHash];
  v6 = [v5 hash];

  return v6 ^ v4;
}

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
    v7 = [(WebBundleFile *)v6 filePath];
    v8 = [(WebBundleFile *)self filePath];
    if (v7 == v8 || [v7 isEqual:v8])
    {
      v9 = [(WebBundleFile *)v6 fileHash];
      v10 = [(WebBundleFile *)self fileHash];
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

- (void)encodeWithCoder:(id)a3
{
  filePath = self->_filePath;
  v5 = a3;
  [v5 encodeObject:filePath forKey:@"WebBundleFileFilePathKey"];
  [v5 encodeObject:self->_fileHash forKey:@"WebBundleFileHashKey"];
}

- (WebBundleFile)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WebBundleFile;
  v5 = [(WebBundleFile *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WebBundleFileFilePathKey"];
    [(WebBundleFile *)v5 setFilePath:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WebBundleFileHashKey"];
    [(WebBundleFile *)v5 setFileHash:v7];
  }

  return v5;
}

- (WebBundleFile)initWithPath:(id)a3 hash:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = WebBundleFile;
  v8 = [(WebBundleFile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(WebBundleFile *)v8 setFilePath:v6];
    [(WebBundleFile *)v9 setFileHash:v7];
  }

  return v9;
}

@end