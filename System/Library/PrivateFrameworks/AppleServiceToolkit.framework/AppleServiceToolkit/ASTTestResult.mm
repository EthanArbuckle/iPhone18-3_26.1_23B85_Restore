@interface ASTTestResult
+ (id)resultWithTestId:(id)id parameters:(id)parameters;
- (ASTTestResult)init;
- (ASTTestResult)initWithCoder:(id)coder;
- (ASTTestResult)initWithTestId:(id)id parameters:(id)parameters;
- (BOOL)sealWithFileSigner:(id)signer error:(id *)error;
- (id)generatePayload;
- (void)encodeWithCoder:(id)coder;
- (void)sealWithPayload:(id)payload signature:(id)signature;
- (void)sealWithSealableFiles:(id)files;
- (void)setUploadStatusFromSource:(id)source withArray:(id)array;
@end

@implementation ASTTestResult

- (ASTTestResult)init
{
  null = [MEMORY[0x277CBEB68] null];
  v4 = [(ASTTestResult *)self initWithTestId:null parameters:MEMORY[0x277CBEC10]];

  return v4;
}

- (ASTTestResult)initWithTestId:(id)id parameters:(id)parameters
{
  idCopy = id;
  parametersCopy = parameters;
  v15.receiver = self;
  v15.super_class = ASTTestResult;
  v9 = [(ASTTestResult *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_testId, id);
    v11 = [parametersCopy objectForKeyedSubscript:@"predicates"];
    predicates = v10->_predicates;
    v10->_predicates = v11;

    v10->_testDuration = 0.0;
    statusCode = v10->_statusCode;
    v10->_statusCode = &unk_2852D5F58;
  }

  return v10;
}

+ (id)resultWithTestId:(id)id parameters:(id)parameters
{
  parametersCopy = parameters;
  idCopy = id;
  v8 = [[self alloc] initWithTestId:idCopy parameters:parametersCopy];

  return v8;
}

- (id)generatePayload
{
  v42[7] = *MEMORY[0x277D85DE8];
  testId = [(ASTTestResult *)self testId];
  if (testId)
  {
    [(ASTTestResult *)self testId];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v4 = ;

  statusCode = [(ASTTestResult *)self statusCode];
  if (statusCode)
  {
    [(ASTTestResult *)self statusCode];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v6 = ;

  v41[0] = @"_id";
  v39 = @"sd";
  v37 = @"$date";
  v7 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v31 = [v7 numberWithDouble:v8 * 1000.0];
  v38 = v31;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v40 = v30;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v42[0] = v29;
  v41[1] = @"d";
  predicates = [(ASTTestResult *)self predicates];
  if (predicates)
  {
    predicates2 = [(ASTTestResult *)self predicates];
  }

  else
  {
    predicates2 = MEMORY[0x277CBEC10];
  }

  v42[1] = predicates2;
  v42[2] = v4;
  v34 = v4;
  v41[2] = @"k";
  v41[3] = @"e";
  v11 = MEMORY[0x277CCABB0];
  v12 = +[ASTEnvironment currentEnvironment];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "environmentType")}];
  v42[3] = v13;
  v41[4] = @"t";
  v14 = MEMORY[0x277CCABB0];
  [(ASTTestResult *)self testDuration];
  v15 = [v14 numberWithDouble:?];
  v42[4] = v15;
  v42[5] = v6;
  v33 = v6;
  v41[5] = @"s";
  v41[6] = @"data";
  data = [(ASTTestResult *)self data];
  if (data)
  {
    data2 = [(ASTTestResult *)self data];
  }

  else
  {
    data2 = MEMORY[0x277CBEC10];
  }

  v42[6] = data2;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:7];
  v19 = [v18 mutableCopy];

  if (data)
  {
  }

  if (predicates)
  {
  }

  uploadFiles = [(ASTTestResult *)self uploadFiles];
  if (uploadFiles)
  {
    v21 = uploadFiles;
    uploadFiles2 = [(ASTTestResult *)self uploadFiles];
    isEmpty = [uploadFiles2 isEmpty];

    if ((isEmpty & 1) == 0)
    {
      uploadFiles3 = [(ASTTestResult *)self uploadFiles];
      generatePayload = [uploadFiles3 generatePayload];
      [v19 setValue:generatePayload forKey:@"f"];
    }
  }

  v35[0] = @"results";
  v35[1] = @"test";
  v36[0] = v19;
  v36[1] = v34;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (BOOL)sealWithFileSigner:(id)signer error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  signerCopy = signer;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  files = [(ASTTestResult *)self files];
  v8 = [files countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(files);
        }

        if (v11)
        {
          v11 = [*(*(&v15 + 1) + 8 * i) sealWithFileSigner:signerCopy error:error];
        }

        else
        {
          v11 = 0;
        }
      }

      v9 = [files countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  [(ASTSealablePayload *)self setSealed:1];
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)sealWithPayload:(id)payload signature:(id)signature
{
  signatureCopy = signature;
  [(ASTSealablePayload *)self setPayload:payload];
  [(ASTSealablePayload *)self setSignature:signatureCopy];

  signature = [(ASTSealablePayload *)self signature];

  if (signature)
  {
    signature2 = [(ASTSealablePayload *)self signature];
    v9 = [signature2 base64EncodedStringWithOptions:0];
    [(ASTSealablePayload *)self setBase64Signature:v9];
  }

  [(ASTSealablePayload *)self setSealed:1];
}

- (void)sealWithSealableFiles:(id)files
{
  [(ASTTestResult *)self setFiles:files];

  [(ASTTestResult *)self sealWithFileSigner:0 error:0];
}

- (ASTTestResult)initWithCoder:(id)coder
{
  v24[6] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(ASTTestResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testId"];
    testId = v5->_testId;
    v5->_testId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusCode"];
    statusCode = v5->_statusCode;
    v5->_statusCode = v8;

    v10 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v24[3] = objc_opt_class();
    v24[4] = objc_opt_class();
    v24[5] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:6];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"data"];
    data = v5->_data;
    v5->_data = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"files"];
    files = v5->_files;
    v5->_files = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uploadFiles"];
    uploadFiles = v5->_uploadFiles;
    v5->_uploadFiles = v17;

    [coderCopy decodeDoubleForKey:@"testDuration"];
    v5->_testDuration = v19;
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowCellularSizeThreshold"];
    allowCellularSizeThreshold = v5->_allowCellularSizeThreshold;
    v5->_allowCellularSizeThreshold = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  testId = [(ASTTestResult *)self testId];
  [coderCopy encodeObject:testId forKey:@"testId"];

  statusCode = [(ASTTestResult *)self statusCode];
  [coderCopy encodeObject:statusCode forKey:@"statusCode"];

  data = [(ASTTestResult *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  files = [(ASTTestResult *)self files];
  [coderCopy encodeObject:files forKey:@"files"];

  uploadFiles = [(ASTTestResult *)self uploadFiles];
  [coderCopy encodeObject:uploadFiles forKey:@"uploadFiles"];

  [(ASTTestResult *)self testDuration];
  [coderCopy encodeDouble:@"testDuration" forKey:?];
  allowCellularSizeThreshold = [(ASTTestResult *)self allowCellularSizeThreshold];
  [coderCopy encodeObject:allowCellularSizeThreshold forKey:@"allowCellularSizeThreshold"];
}

- (void)setUploadStatusFromSource:(id)source withArray:(id)array
{
  if (array)
  {
    v5 = [ASTUploadFilesResult resultFromSource:source andUploadDictionaries:?];
    uploadFiles = self->_uploadFiles;
    self->_uploadFiles = v5;

    MEMORY[0x2821F96F8]();
  }

  else
  {
    v7 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ASTTestResult setUploadStatusFromSource:v7 withArray:?];
    }
  }
}

@end