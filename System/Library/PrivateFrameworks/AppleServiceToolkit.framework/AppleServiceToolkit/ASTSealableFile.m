@interface ASTSealableFile
+ (id)sealedFileURL:(id)a3 signature:(id)a4;
- (ASTSealableFile)initWithCoder:(id)a3;
- (ASTSealableFile)initWithFileURL:(id)a3 signature:(id)a4;
- (BOOL)sealWithFileSigner:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASTSealableFile

- (ASTSealableFile)initWithFileURL:(id)a3 signature:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ASTSealableFile;
  v9 = [(ASTSealableFile *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileURL, a3);
    if (v8)
    {
      objc_storeStrong(&v10->_signature, a4);
      v11 = [v8 base64EncodedStringWithOptions:0];
      base64Signature = v10->_base64Signature;
      v10->_base64Signature = v11;

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __45__ASTSealableFile_initWithFileURL_signature___block_invoke;
      v14[3] = &unk_278CBD518;
      v15 = v8;
      [(ASTSealableFile *)v10 sealWithFileSigner:v14 error:0];
    }
  }

  return v10;
}

- (BOOL)sealWithFileSigner:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(ASTSealableFile *)self isSealed])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(ASTSealableFile *)self fileURL];

    if (v8)
    {
      if (v6)
      {
        v9 = [(ASTSealableFile *)self fileURL];
        v10 = v6[2](v6, v9, a4);
        [(ASTSealableFile *)self setSignature:v10];

        v11 = [(ASTSealableFile *)self signature];
        v12 = [v11 base64EncodedStringWithOptions:0];
        [(ASTSealableFile *)self setBase64Signature:v12];
      }

      v7 = 1;
      [(ASTSealableFile *)self setSealed:1];
    }

    else if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-4000 userInfo:0];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)sealedFileURL:(id)a3 signature:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ASTSealableFile alloc] initWithFileURL:v6 signature:v5];

  [(ASTSealableFile *)v7 sealWithFileSigner:0 error:0];

  return v7;
}

- (ASTSealableFile)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTSealableFile *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;

    v5->_sealed = [v4 decodeBoolForKey:@"sealed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(ASTSealableFile *)self fileURL];
  [v5 encodeObject:v4 forKey:@"fileURL"];

  [v5 encodeBool:-[ASTSealableFile isSealed](self forKey:{"isSealed"), @"sealed"}];
}

@end