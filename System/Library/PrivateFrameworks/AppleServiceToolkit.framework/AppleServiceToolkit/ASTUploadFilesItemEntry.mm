@interface ASTUploadFilesItemEntry
- (ASTUploadFilesItemEntry)initWithCoder:(id)coder;
- (ASTUploadFilesItemEntry)initWithId:(id)id andName:(id)name andSig:(id)sig andPubKeyDigest:(id)digest andStatus:(id)status andSize:(id)size andUploadUrl:(id)url;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASTUploadFilesItemEntry

- (ASTUploadFilesItemEntry)initWithId:(id)id andName:(id)name andSig:(id)sig andPubKeyDigest:(id)digest andStatus:(id)status andSize:(id)size andUploadUrl:(id)url
{
  idCopy = id;
  nameCopy = name;
  sigCopy = sig;
  digestCopy = digest;
  statusCopy = status;
  sizeCopy = size;
  urlCopy = url;
  v26.receiver = self;
  v26.super_class = ASTUploadFilesItemEntry;
  v18 = [(ASTUploadFilesItemEntry *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uploadId, id);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_sig, sig);
    objc_storeStrong(&v19->_pubKeyDigest, digest);
    objc_storeStrong(&v19->_status, status);
    objc_storeStrong(&v19->_size, size);
    objc_storeStrong(&v19->_uploadUrl, url);
  }

  return v19;
}

- (ASTUploadFilesItemEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASTUploadFilesItemEntry *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uploadId"];
    uploadId = v5->_uploadId;
    v5->_uploadId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sig"];
    sig = v5->_sig;
    v5->_sig = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pubKeyDigest"];
    pubKeyDigest = v5->_pubKeyDigest;
    v5->_pubKeyDigest = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    status = v5->_status;
    v5->_status = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    size = v5->_size;
    v5->_size = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uploadUrl"];
    uploadUrl = v5->_uploadUrl;
    v5->_uploadUrl = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uploadId = [(ASTUploadFilesItemEntry *)self uploadId];
  [coderCopy encodeObject:uploadId forKey:@"uploadId"];

  name = [(ASTUploadFilesItemEntry *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  v7 = [(ASTUploadFilesItemEntry *)self sig];
  [coderCopy encodeObject:v7 forKey:@"sig"];

  pubKeyDigest = [(ASTUploadFilesItemEntry *)self pubKeyDigest];
  [coderCopy encodeObject:pubKeyDigest forKey:@"pubKeyDigest"];

  status = [(ASTUploadFilesItemEntry *)self status];
  [coderCopy encodeObject:status forKey:@"status"];

  v10 = [(ASTUploadFilesItemEntry *)self size];
  [coderCopy encodeObject:v10 forKey:@"size"];

  uploadUrl = [(ASTUploadFilesItemEntry *)self uploadUrl];
  [coderCopy encodeObject:uploadUrl forKey:@"uploadUrl"];
}

@end