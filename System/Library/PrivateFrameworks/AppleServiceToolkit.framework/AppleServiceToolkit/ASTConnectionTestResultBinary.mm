@interface ASTConnectionTestResultBinary
- (ASTConnectionTestResultBinary)initWithSealableFile:(id)file fileSequence:(id)sequence totalFiles:(id)files testId:(id)id dataId:(id)dataId;
- (NSURL)fileSteamLocationURL;
- (id)endpoint;
@end

@implementation ASTConnectionTestResultBinary

- (ASTConnectionTestResultBinary)initWithSealableFile:(id)file fileSequence:(id)sequence totalFiles:(id)files testId:(id)id dataId:(id)dataId
{
  fileCopy = file;
  sequenceCopy = sequence;
  filesCopy = files;
  idCopy = id;
  dataIdCopy = dataId;
  v46.receiver = self;
  v46.super_class = ASTConnectionTestResultBinary;
  v18 = [(ASTMaterializedConnection *)&v46 init];
  v19 = v18;
  if (v18)
  {
    v42 = dataIdCopy;
    v43 = idCopy;
    objc_storeStrong(&v18->_testId, id);
    objc_storeStrong(&v19->_sealableFile, file);
    objc_storeStrong(&v19->_dataId, dataId);
    v40 = fileCopy;
    fileURL = [fileCopy fileURL];
    v45 = 0;
    v21 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:fileURL error:&v45];
    v41 = v45;
    v22 = [ASTEncodingUtilities MD5ForFileHandle:v21];
    [v21 closeFile];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [fileURL path];
    [defaultManager attributesOfItemAtPath:path error:0];
    v25 = filesCopy;
    v27 = v26 = sequenceCopy;
    fileSize = [v27 fileSize];

    request = [(ASTMaterializedConnection *)v19 request];
    v44 = v26;
    v30 = v26;
    filesCopy = v25;
    v31 = v22;
    [request setValue:v30 forHTTPHeaderField:@"AST-file-sequence"];

    request2 = [(ASTMaterializedConnection *)v19 request];
    [request2 setValue:filesCopy forHTTPHeaderField:@"AST-total-files"];

    request3 = [(ASTMaterializedConnection *)v19 request];
    [request3 setValue:v22 forHTTPHeaderField:@"AST-file-MD5"];

    request4 = [(ASTMaterializedConnection *)v19 request];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", fileSize];
    [request4 setValue:v35 forHTTPHeaderField:@"AST-file-size"];

    if (!+[ASTConnectionUtilities useChunkedTransferEncoding])
    {
      request5 = [(ASTMaterializedConnection *)v19 request];
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", fileSize];
      [request5 setValue:v37 forHTTPHeaderField:@"Content-Length"];
    }

    fileCopy = v40;
    base64Signature = [v40 base64Signature];
    [(ASTMaterializedConnection *)v19 setSignature:base64Signature];

    idCopy = v43;
    sequenceCopy = v44;
    dataIdCopy = v42;
  }

  return v19;
}

- (NSURL)fileSteamLocationURL
{
  sealableFile = [(ASTConnectionTestResultBinary *)self sealableFile];
  fileURL = [sealableFile fileURL];

  return fileURL;
}

- (id)endpoint
{
  v3 = MEMORY[0x277CCACA8];
  testId = [(ASTConnectionTestResultBinary *)self testId];
  dataId = [(ASTConnectionTestResultBinary *)self dataId];
  v6 = [v3 stringWithFormat:@"results/%@/data/%@", testId, dataId];

  return v6;
}

@end