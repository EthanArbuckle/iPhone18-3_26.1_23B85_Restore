@interface WCSessionFile
- (BOOL)isEqual:(id)a3;
- (BOOL)updateUserInfo:(id)a3 error:(id *)a4;
- (BOOL)updateUserInfoData:(id)a3 error:(id *)a4;
- (BOOL)verifyMetadata;
- (NSData)userInfoData;
- (NSDictionary)metadata;
- (NSURL)fileURL;
- (WCSessionFile)initWithCoder:(id)a3;
- (WCSessionFile)initWithFileURL:(id)a3;
- (WCSessionFile)initWithIdentifier:(id)a3 fileURL:(id)a4 relativePath:(id)a5;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WCSessionFile

- (WCSessionFile)initWithIdentifier:(id)a3 fileURL:(id)a4 relativePath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = WCSessionFile;
  v12 = [(WCSessionFile *)&v20 init];
  v13 = v12;
  if (v12)
  {
    metadata = v12->_metadata;
    v12->_metadata = 0;

    objc_storeStrong(&v13->_fileURL, a4);
    objc_storeStrong(&v13->_fileIdentifier, a3);
    objc_storeStrong(&v13->_relativePath, a5);
    v15 = objc_opt_new();
    creationDate = v13->_creationDate;
    v13->_creationDate = v15;

    v17 = objc_alloc_init(WCUserInfo);
    userInfoStorage = v13->_userInfoStorage;
    v13->_userInfoStorage = v17;
  }

  return v13;
}

- (WCSessionFile)initWithFileURL:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v5 UUIDString];
  v7 = [(WCSessionFile *)self initWithIdentifier:v6 fileURL:v4 relativePath:0];

  return v7;
}

- (NSURL)fileURL
{
  v3 = self->_fileURL;
  if (!v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = NSHomeDirectory();
    v6 = [v4 fileURLWithPath:v5 isDirectory:1];

    v7 = MEMORY[0x277CBEBC0];
    v8 = [(WCSessionFile *)self relativePath];
    v3 = [v7 fileURLWithPath:v8 isDirectory:0 relativeToURL:v6];
  }

  return v3;
}

- (NSDictionary)metadata
{
  v2 = [(WCSessionFile *)self userInfoStorage];
  v3 = [v2 userInfo];

  return v3;
}

- (BOOL)updateUserInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WCSessionFile *)self userInfoStorage];
  LOBYTE(a4) = [v7 updateUserInfo:v6 error:a4];

  return a4;
}

- (BOOL)updateUserInfoData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WCSessionFile *)self userInfoStorage];
  LOBYTE(a4) = [v7 updateUserInfoData:v6 error:a4];

  return a4;
}

- (NSData)userInfoData
{
  v2 = [(WCSessionFile *)self userInfoStorage];
  v3 = [v2 userInfoData];

  return v3;
}

- (BOOL)verifyMetadata
{
  v3 = [(WCSessionFile *)self userInfoStorage];
  v4 = [v3 userInfoData];

  if (!v4)
  {
    return 1;
  }

  v5 = [(WCSessionFile *)self userInfoStorage];
  v6 = [v5 verifyUserInfo];

  return v6;
}

- (id)description
{
  v3 = [(WCSessionFile *)self userInfoStorage];
  v4 = [v3 userInfoData];
  v5 = "YES";
  if (!v4)
  {
    v6 = [(WCSessionFile *)self userInfoStorage];
    v7 = [v6 userInfo];
    if (!v7)
    {
      v5 = "NO";
    }
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [(WCSessionFile *)self fileIdentifier];
  v12 = [(WCSessionFile *)self fileURL];
  v13 = [v12 path];
  v14 = [v8 stringWithFormat:@"<%@: %p, identifier: %@, file: %@, hasMetadata: %s>", v10, self, v11, v13, v5];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WCSessionFile *)self fileIdentifier];
      v7 = [(WCSessionFile *)v5 fileIdentifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(WCSessionFile *)self fileIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(WCSessionFile *)self creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_fileSize forKey:@"fileSize"];
  [v4 encodeObject:self->_fileURL forKey:@"fileURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 encodeObject:self->_fileDescriptor forKey:@"fileDescriptor"];
  }

  [v4 encodeObject:self->_fileIdentifier forKey:@"fileIdentifier"];
  [v4 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v4 encodeObject:self->_userInfoStorage forKey:@"userInfoStorage"];
  [v4 encodeObject:self->_relativePath forKey:@"relativePath"];
}

- (WCSessionFile)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = WCSessionFile;
  v5 = [(WCSessionFile *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileSize"];
    v7 = [v6 copy];
    fileSize = v5->_fileSize;
    v5->_fileSize = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    fileURL = v5->_fileURL;
    v5->_fileURL = v9;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileDescriptor"];
      fileDescriptor = v5->_fileDescriptor;
      v5->_fileDescriptor = v11;
    }

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileIdentifier"];
    v14 = [v13 copy];
    fileIdentifier = v5->_fileIdentifier;
    v5->_fileIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userInfoStorage"];
    userInfoStorage = v5->_userInfoStorage;
    v5->_userInfoStorage = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relativePath"];
    v21 = [v20 copy];
    relativePath = v5->_relativePath;
    v5->_relativePath = v21;
  }

  return v5;
}

@end