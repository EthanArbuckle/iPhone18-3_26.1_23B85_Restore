@interface ASTUploadFilesItemEntry
- (ASTUploadFilesItemEntry)initWithCoder:(id)a3;
- (ASTUploadFilesItemEntry)initWithId:(id)a3 andName:(id)a4 andSig:(id)a5 andPubKeyDigest:(id)a6 andStatus:(id)a7 andSize:(id)a8 andUploadUrl:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASTUploadFilesItemEntry

- (ASTUploadFilesItemEntry)initWithId:(id)a3 andName:(id)a4 andSig:(id)a5 andPubKeyDigest:(id)a6 andStatus:(id)a7 andSize:(id)a8 andUploadUrl:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = ASTUploadFilesItemEntry;
  v18 = [(ASTUploadFilesItemEntry *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uploadId, a3);
    objc_storeStrong(&v19->_name, a4);
    objc_storeStrong(&v19->_sig, a5);
    objc_storeStrong(&v19->_pubKeyDigest, a6);
    objc_storeStrong(&v19->_status, a7);
    objc_storeStrong(&v19->_size, a8);
    objc_storeStrong(&v19->_uploadUrl, a9);
  }

  return v19;
}

- (ASTUploadFilesItemEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTUploadFilesItemEntry *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uploadId"];
    uploadId = v5->_uploadId;
    v5->_uploadId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sig"];
    sig = v5->_sig;
    v5->_sig = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pubKeyDigest"];
    pubKeyDigest = v5->_pubKeyDigest;
    v5->_pubKeyDigest = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    status = v5->_status;
    v5->_status = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    size = v5->_size;
    v5->_size = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uploadUrl"];
    uploadUrl = v5->_uploadUrl;
    v5->_uploadUrl = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTUploadFilesItemEntry *)self uploadId];
  [v4 encodeObject:v5 forKey:@"uploadId"];

  v6 = [(ASTUploadFilesItemEntry *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  v7 = [(ASTUploadFilesItemEntry *)self sig];
  [v4 encodeObject:v7 forKey:@"sig"];

  v8 = [(ASTUploadFilesItemEntry *)self pubKeyDigest];
  [v4 encodeObject:v8 forKey:@"pubKeyDigest"];

  v9 = [(ASTUploadFilesItemEntry *)self status];
  [v4 encodeObject:v9 forKey:@"status"];

  v10 = [(ASTUploadFilesItemEntry *)self size];
  [v4 encodeObject:v10 forKey:@"size"];

  v11 = [(ASTUploadFilesItemEntry *)self uploadUrl];
  [v4 encodeObject:v11 forKey:@"uploadUrl"];
}

@end