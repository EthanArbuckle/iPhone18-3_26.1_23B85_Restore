@interface WCSessionFile
- (BOOL)isEqual:(id)equal;
- (BOOL)updateUserInfo:(id)info error:(id *)error;
- (BOOL)updateUserInfoData:(id)data error:(id *)error;
- (BOOL)verifyMetadata;
- (NSData)userInfoData;
- (NSDictionary)metadata;
- (NSURL)fileURL;
- (WCSessionFile)initWithCoder:(id)coder;
- (WCSessionFile)initWithFileURL:(id)l;
- (WCSessionFile)initWithIdentifier:(id)identifier fileURL:(id)l relativePath:(id)path;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WCSessionFile

- (WCSessionFile)initWithIdentifier:(id)identifier fileURL:(id)l relativePath:(id)path
{
  identifierCopy = identifier;
  lCopy = l;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = WCSessionFile;
  v12 = [(WCSessionFile *)&v20 init];
  v13 = v12;
  if (v12)
  {
    metadata = v12->_metadata;
    v12->_metadata = 0;

    objc_storeStrong(&v13->_fileURL, l);
    objc_storeStrong(&v13->_fileIdentifier, identifier);
    objc_storeStrong(&v13->_relativePath, path);
    v15 = objc_opt_new();
    creationDate = v13->_creationDate;
    v13->_creationDate = v15;

    v17 = objc_alloc_init(WCUserInfo);
    userInfoStorage = v13->_userInfoStorage;
    v13->_userInfoStorage = v17;
  }

  return v13;
}

- (WCSessionFile)initWithFileURL:(id)l
{
  lCopy = l;
  v5 = objc_opt_new();
  uUIDString = [v5 UUIDString];
  v7 = [(WCSessionFile *)self initWithIdentifier:uUIDString fileURL:lCopy relativePath:0];

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
    relativePath = [(WCSessionFile *)self relativePath];
    v3 = [v7 fileURLWithPath:relativePath isDirectory:0 relativeToURL:v6];
  }

  return v3;
}

- (NSDictionary)metadata
{
  userInfoStorage = [(WCSessionFile *)self userInfoStorage];
  userInfo = [userInfoStorage userInfo];

  return userInfo;
}

- (BOOL)updateUserInfo:(id)info error:(id *)error
{
  infoCopy = info;
  userInfoStorage = [(WCSessionFile *)self userInfoStorage];
  LOBYTE(error) = [userInfoStorage updateUserInfo:infoCopy error:error];

  return error;
}

- (BOOL)updateUserInfoData:(id)data error:(id *)error
{
  dataCopy = data;
  userInfoStorage = [(WCSessionFile *)self userInfoStorage];
  LOBYTE(error) = [userInfoStorage updateUserInfoData:dataCopy error:error];

  return error;
}

- (NSData)userInfoData
{
  userInfoStorage = [(WCSessionFile *)self userInfoStorage];
  userInfoData = [userInfoStorage userInfoData];

  return userInfoData;
}

- (BOOL)verifyMetadata
{
  userInfoStorage = [(WCSessionFile *)self userInfoStorage];
  userInfoData = [userInfoStorage userInfoData];

  if (!userInfoData)
  {
    return 1;
  }

  userInfoStorage2 = [(WCSessionFile *)self userInfoStorage];
  verifyUserInfo = [userInfoStorage2 verifyUserInfo];

  return verifyUserInfo;
}

- (id)description
{
  userInfoStorage = [(WCSessionFile *)self userInfoStorage];
  userInfoData = [userInfoStorage userInfoData];
  v5 = "YES";
  if (!userInfoData)
  {
    userInfoStorage2 = [(WCSessionFile *)self userInfoStorage];
    userInfo = [userInfoStorage2 userInfo];
    if (!userInfo)
    {
      v5 = "NO";
    }
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  fileIdentifier = [(WCSessionFile *)self fileIdentifier];
  fileURL = [(WCSessionFile *)self fileURL];
  path = [fileURL path];
  v14 = [v8 stringWithFormat:@"<%@: %p, identifier: %@, file: %@, hasMetadata: %s>", v10, self, fileIdentifier, path, v5];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      fileIdentifier = [(WCSessionFile *)self fileIdentifier];
      fileIdentifier2 = [(WCSessionFile *)v5 fileIdentifier];

      v8 = [fileIdentifier isEqual:fileIdentifier2];
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
  fileIdentifier = [(WCSessionFile *)self fileIdentifier];
  v3 = [fileIdentifier hash];

  return v3;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  creationDate = [(WCSessionFile *)self creationDate];
  creationDate2 = [compareCopy creationDate];

  v7 = [creationDate compare:creationDate2];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_fileSize forKey:@"fileSize"];
  [coderCopy encodeObject:self->_fileURL forKey:@"fileURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [coderCopy encodeObject:self->_fileDescriptor forKey:@"fileDescriptor"];
  }

  [coderCopy encodeObject:self->_fileIdentifier forKey:@"fileIdentifier"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_userInfoStorage forKey:@"userInfoStorage"];
  [coderCopy encodeObject:self->_relativePath forKey:@"relativePath"];
}

- (WCSessionFile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = WCSessionFile;
  v5 = [(WCSessionFile *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileSize"];
    v7 = [v6 copy];
    fileSize = v5->_fileSize;
    v5->_fileSize = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    fileURL = v5->_fileURL;
    v5->_fileURL = v9;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileDescriptor"];
      fileDescriptor = v5->_fileDescriptor;
      v5->_fileDescriptor = v11;
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileIdentifier"];
    v14 = [v13 copy];
    fileIdentifier = v5->_fileIdentifier;
    v5->_fileIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userInfoStorage"];
    userInfoStorage = v5->_userInfoStorage;
    v5->_userInfoStorage = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relativePath"];
    v21 = [v20 copy];
    relativePath = v5->_relativePath;
    v5->_relativePath = v21;
  }

  return v5;
}

@end