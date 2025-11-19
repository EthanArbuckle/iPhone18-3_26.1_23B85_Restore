@interface ASTConnectionTestResultBinary
- (ASTConnectionTestResultBinary)initWithSealableFile:(id)a3 fileSequence:(id)a4 totalFiles:(id)a5 testId:(id)a6 dataId:(id)a7;
- (NSURL)fileSteamLocationURL;
- (id)endpoint;
@end

@implementation ASTConnectionTestResultBinary

- (ASTConnectionTestResultBinary)initWithSealableFile:(id)a3 fileSequence:(id)a4 totalFiles:(id)a5 testId:(id)a6 dataId:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v46.receiver = self;
  v46.super_class = ASTConnectionTestResultBinary;
  v18 = [(ASTMaterializedConnection *)&v46 init];
  v19 = v18;
  if (v18)
  {
    v42 = v17;
    v43 = v16;
    objc_storeStrong(&v18->_testId, a6);
    objc_storeStrong(&v19->_sealableFile, a3);
    objc_storeStrong(&v19->_dataId, a7);
    v40 = v13;
    v20 = [v13 fileURL];
    v45 = 0;
    v21 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v20 error:&v45];
    v41 = v45;
    v22 = [ASTEncodingUtilities MD5ForFileHandle:v21];
    [v21 closeFile];
    v23 = [MEMORY[0x277CCAA00] defaultManager];
    v24 = [v20 path];
    [v23 attributesOfItemAtPath:v24 error:0];
    v25 = v15;
    v27 = v26 = v14;
    v28 = [v27 fileSize];

    v29 = [(ASTMaterializedConnection *)v19 request];
    v44 = v26;
    v30 = v26;
    v15 = v25;
    v31 = v22;
    [v29 setValue:v30 forHTTPHeaderField:@"AST-file-sequence"];

    v32 = [(ASTMaterializedConnection *)v19 request];
    [v32 setValue:v15 forHTTPHeaderField:@"AST-total-files"];

    v33 = [(ASTMaterializedConnection *)v19 request];
    [v33 setValue:v22 forHTTPHeaderField:@"AST-file-MD5"];

    v34 = [(ASTMaterializedConnection *)v19 request];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v28];
    [v34 setValue:v35 forHTTPHeaderField:@"AST-file-size"];

    if (!+[ASTConnectionUtilities useChunkedTransferEncoding])
    {
      v36 = [(ASTMaterializedConnection *)v19 request];
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v28];
      [v36 setValue:v37 forHTTPHeaderField:@"Content-Length"];
    }

    v13 = v40;
    v38 = [v40 base64Signature];
    [(ASTMaterializedConnection *)v19 setSignature:v38];

    v16 = v43;
    v14 = v44;
    v17 = v42;
  }

  return v19;
}

- (NSURL)fileSteamLocationURL
{
  v2 = [(ASTConnectionTestResultBinary *)self sealableFile];
  v3 = [v2 fileURL];

  return v3;
}

- (id)endpoint
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ASTConnectionTestResultBinary *)self testId];
  v5 = [(ASTConnectionTestResultBinary *)self dataId];
  v6 = [v3 stringWithFormat:@"results/%@/data/%@", v4, v5];

  return v6;
}

@end