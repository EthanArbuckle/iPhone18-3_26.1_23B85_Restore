@interface ASTUploadFilesCertsEntry
- (ASTUploadFilesCertsEntry)initWithCert:(id)cert andPubKeyDigest:(id)digest andSigAlgo:(id)algo;
- (ASTUploadFilesCertsEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASTUploadFilesCertsEntry

- (ASTUploadFilesCertsEntry)initWithCert:(id)cert andPubKeyDigest:(id)digest andSigAlgo:(id)algo
{
  certCopy = cert;
  digestCopy = digest;
  algoCopy = algo;
  v15.receiver = self;
  v15.super_class = ASTUploadFilesCertsEntry;
  v12 = [(ASTUploadFilesCertsEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_certString, cert);
    objc_storeStrong(&v13->_pubKeyDigest, digest);
    objc_storeStrong(&v13->_sigAlgo, algo);
  }

  return v13;
}

- (ASTUploadFilesCertsEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASTUploadFilesCertsEntry *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"certString"];
    certString = v5->_certString;
    v5->_certString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pubKeyDigest"];
    pubKeyDigest = v5->_pubKeyDigest;
    v5->_pubKeyDigest = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sigAlgo"];
    sigAlgo = v5->_sigAlgo;
    v5->_sigAlgo = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  certString = [(ASTUploadFilesCertsEntry *)self certString];
  [coderCopy encodeObject:certString forKey:@"certString"];

  pubKeyDigest = [(ASTUploadFilesCertsEntry *)self pubKeyDigest];
  [coderCopy encodeObject:pubKeyDigest forKey:@"pubKeyDigest"];

  sigAlgo = [(ASTUploadFilesCertsEntry *)self sigAlgo];
  [coderCopy encodeObject:sigAlgo forKey:@"sigAlgo"];
}

@end