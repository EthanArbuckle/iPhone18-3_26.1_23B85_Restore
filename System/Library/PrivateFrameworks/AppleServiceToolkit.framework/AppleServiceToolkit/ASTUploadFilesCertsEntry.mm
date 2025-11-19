@interface ASTUploadFilesCertsEntry
- (ASTUploadFilesCertsEntry)initWithCert:(id)a3 andPubKeyDigest:(id)a4 andSigAlgo:(id)a5;
- (ASTUploadFilesCertsEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASTUploadFilesCertsEntry

- (ASTUploadFilesCertsEntry)initWithCert:(id)a3 andPubKeyDigest:(id)a4 andSigAlgo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ASTUploadFilesCertsEntry;
  v12 = [(ASTUploadFilesCertsEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_certString, a3);
    objc_storeStrong(&v13->_pubKeyDigest, a4);
    objc_storeStrong(&v13->_sigAlgo, a5);
  }

  return v13;
}

- (ASTUploadFilesCertsEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTUploadFilesCertsEntry *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"certString"];
    certString = v5->_certString;
    v5->_certString = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pubKeyDigest"];
    pubKeyDigest = v5->_pubKeyDigest;
    v5->_pubKeyDigest = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sigAlgo"];
    sigAlgo = v5->_sigAlgo;
    v5->_sigAlgo = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTUploadFilesCertsEntry *)self certString];
  [v4 encodeObject:v5 forKey:@"certString"];

  v6 = [(ASTUploadFilesCertsEntry *)self pubKeyDigest];
  [v4 encodeObject:v6 forKey:@"pubKeyDigest"];

  v7 = [(ASTUploadFilesCertsEntry *)self sigAlgo];
  [v4 encodeObject:v7 forKey:@"sigAlgo"];
}

@end