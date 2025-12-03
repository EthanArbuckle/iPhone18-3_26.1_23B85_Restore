@interface WebBundleFile
- (BOOL)isEqual:(id)equal;
- (WebBundleFile)initWithCoder:(id)coder;
- (WebBundleFile)initWithPath:(id)path hash:(id)hash;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WebBundleFile

- (unint64_t)hash
{
  filePath = [(WebBundleFile *)self filePath];
  v4 = [filePath hash];
  fileHash = [(WebBundleFile *)self fileHash];
  v6 = [fileHash hash];

  return v6 ^ v4;
}

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
    filePath = [(WebBundleFile *)v6 filePath];
    filePath2 = [(WebBundleFile *)self filePath];
    if (filePath == filePath2 || [filePath isEqual:filePath2])
    {
      fileHash = [(WebBundleFile *)v6 fileHash];
      fileHash2 = [(WebBundleFile *)self fileHash];
      if (fileHash == fileHash2)
      {
        v11 = 1;
      }

      else
      {
        v11 = [fileHash isEqual:fileHash2];
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

- (void)encodeWithCoder:(id)coder
{
  filePath = self->_filePath;
  coderCopy = coder;
  [coderCopy encodeObject:filePath forKey:@"WebBundleFileFilePathKey"];
  [coderCopy encodeObject:self->_fileHash forKey:@"WebBundleFileHashKey"];
}

- (WebBundleFile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = WebBundleFile;
  v5 = [(WebBundleFile *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WebBundleFileFilePathKey"];
    [(WebBundleFile *)v5 setFilePath:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WebBundleFileHashKey"];
    [(WebBundleFile *)v5 setFileHash:v7];
  }

  return v5;
}

- (WebBundleFile)initWithPath:(id)path hash:(id)hash
{
  pathCopy = path;
  hashCopy = hash;
  v11.receiver = self;
  v11.super_class = WebBundleFile;
  v8 = [(WebBundleFile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(WebBundleFile *)v8 setFilePath:pathCopy];
    [(WebBundleFile *)v9 setFileHash:hashCopy];
  }

  return v9;
}

@end