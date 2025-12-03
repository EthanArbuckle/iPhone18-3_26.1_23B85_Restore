@interface ASTSealableFile
+ (id)sealedFileURL:(id)l signature:(id)signature;
- (ASTSealableFile)initWithCoder:(id)coder;
- (ASTSealableFile)initWithFileURL:(id)l signature:(id)signature;
- (BOOL)sealWithFileSigner:(id)signer error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASTSealableFile

- (ASTSealableFile)initWithFileURL:(id)l signature:(id)signature
{
  lCopy = l;
  signatureCopy = signature;
  v16.receiver = self;
  v16.super_class = ASTSealableFile;
  v9 = [(ASTSealableFile *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileURL, l);
    if (signatureCopy)
    {
      objc_storeStrong(&v10->_signature, signature);
      v11 = [signatureCopy base64EncodedStringWithOptions:0];
      base64Signature = v10->_base64Signature;
      v10->_base64Signature = v11;

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __45__ASTSealableFile_initWithFileURL_signature___block_invoke;
      v14[3] = &unk_278CBD518;
      v15 = signatureCopy;
      [(ASTSealableFile *)v10 sealWithFileSigner:v14 error:0];
    }
  }

  return v10;
}

- (BOOL)sealWithFileSigner:(id)signer error:(id *)error
{
  signerCopy = signer;
  if ([(ASTSealableFile *)self isSealed])
  {
    v7 = 1;
  }

  else
  {
    fileURL = [(ASTSealableFile *)self fileURL];

    if (fileURL)
    {
      if (signerCopy)
      {
        fileURL2 = [(ASTSealableFile *)self fileURL];
        v10 = signerCopy[2](signerCopy, fileURL2, error);
        [(ASTSealableFile *)self setSignature:v10];

        signature = [(ASTSealableFile *)self signature];
        v12 = [signature base64EncodedStringWithOptions:0];
        [(ASTSealableFile *)self setBase64Signature:v12];
      }

      v7 = 1;
      [(ASTSealableFile *)self setSealed:1];
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-4000 userInfo:0];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)sealedFileURL:(id)l signature:(id)signature
{
  signatureCopy = signature;
  lCopy = l;
  v7 = [[ASTSealableFile alloc] initWithFileURL:lCopy signature:signatureCopy];

  [(ASTSealableFile *)v7 sealWithFileSigner:0 error:0];

  return v7;
}

- (ASTSealableFile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASTSealableFile *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;

    v5->_sealed = [coderCopy decodeBoolForKey:@"sealed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fileURL = [(ASTSealableFile *)self fileURL];
  [coderCopy encodeObject:fileURL forKey:@"fileURL"];

  [coderCopy encodeBool:-[ASTSealableFile isSealed](self forKey:{"isSealed"), @"sealed"}];
}

@end