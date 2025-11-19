@interface ASTTestResult
+ (id)resultWithTestId:(id)a3 parameters:(id)a4;
- (ASTTestResult)init;
- (ASTTestResult)initWithCoder:(id)a3;
- (ASTTestResult)initWithTestId:(id)a3 parameters:(id)a4;
- (BOOL)sealWithFileSigner:(id)a3 error:(id *)a4;
- (id)generatePayload;
- (void)encodeWithCoder:(id)a3;
- (void)sealWithPayload:(id)a3 signature:(id)a4;
- (void)sealWithSealableFiles:(id)a3;
- (void)setUploadStatusFromSource:(id)a3 withArray:(id)a4;
@end

@implementation ASTTestResult

- (ASTTestResult)init
{
  v3 = [MEMORY[0x277CBEB68] null];
  v4 = [(ASTTestResult *)self initWithTestId:v3 parameters:MEMORY[0x277CBEC10]];

  return v4;
}

- (ASTTestResult)initWithTestId:(id)a3 parameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = ASTTestResult;
  v9 = [(ASTTestResult *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_testId, a3);
    v11 = [v8 objectForKeyedSubscript:@"predicates"];
    predicates = v10->_predicates;
    v10->_predicates = v11;

    v10->_testDuration = 0.0;
    statusCode = v10->_statusCode;
    v10->_statusCode = &unk_2852D5F58;
  }

  return v10;
}

+ (id)resultWithTestId:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTestId:v7 parameters:v6];

  return v8;
}

- (id)generatePayload
{
  v42[7] = *MEMORY[0x277D85DE8];
  v3 = [(ASTTestResult *)self testId];
  if (v3)
  {
    [(ASTTestResult *)self testId];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v4 = ;

  v5 = [(ASTTestResult *)self statusCode];
  if (v5)
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
  v32 = [MEMORY[0x277CBEAA8] date];
  [v32 timeIntervalSince1970];
  v31 = [v7 numberWithDouble:v8 * 1000.0];
  v38 = v31;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v40 = v30;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v42[0] = v29;
  v41[1] = @"d";
  v9 = [(ASTTestResult *)self predicates];
  if (v9)
  {
    v10 = [(ASTTestResult *)self predicates];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v42[1] = v10;
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
  v16 = [(ASTTestResult *)self data];
  if (v16)
  {
    v17 = [(ASTTestResult *)self data];
  }

  else
  {
    v17 = MEMORY[0x277CBEC10];
  }

  v42[6] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:7];
  v19 = [v18 mutableCopy];

  if (v16)
  {
  }

  if (v9)
  {
  }

  v20 = [(ASTTestResult *)self uploadFiles];
  if (v20)
  {
    v21 = v20;
    v22 = [(ASTTestResult *)self uploadFiles];
    v23 = [v22 isEmpty];

    if ((v23 & 1) == 0)
    {
      v24 = [(ASTTestResult *)self uploadFiles];
      v25 = [v24 generatePayload];
      [v19 setValue:v25 forKey:@"f"];
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

- (BOOL)sealWithFileSigner:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(ASTTestResult *)self files];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        if (v11)
        {
          v11 = [*(*(&v15 + 1) + 8 * i) sealWithFileSigner:v6 error:a4];
        }

        else
        {
          v11 = 0;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)sealWithPayload:(id)a3 signature:(id)a4
{
  v6 = a4;
  [(ASTSealablePayload *)self setPayload:a3];
  [(ASTSealablePayload *)self setSignature:v6];

  v7 = [(ASTSealablePayload *)self signature];

  if (v7)
  {
    v8 = [(ASTSealablePayload *)self signature];
    v9 = [v8 base64EncodedStringWithOptions:0];
    [(ASTSealablePayload *)self setBase64Signature:v9];
  }

  [(ASTSealablePayload *)self setSealed:1];
}

- (void)sealWithSealableFiles:(id)a3
{
  [(ASTTestResult *)self setFiles:a3];

  [(ASTTestResult *)self sealWithFileSigner:0 error:0];
}

- (ASTTestResult)initWithCoder:(id)a3
{
  v24[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTTestResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testId"];
    testId = v5->_testId;
    v5->_testId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusCode"];
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
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"data"];
    data = v5->_data;
    v5->_data = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"files"];
    files = v5->_files;
    v5->_files = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uploadFiles"];
    uploadFiles = v5->_uploadFiles;
    v5->_uploadFiles = v17;

    [v4 decodeDoubleForKey:@"testDuration"];
    v5->_testDuration = v19;
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowCellularSizeThreshold"];
    allowCellularSizeThreshold = v5->_allowCellularSizeThreshold;
    v5->_allowCellularSizeThreshold = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTTestResult *)self testId];
  [v4 encodeObject:v5 forKey:@"testId"];

  v6 = [(ASTTestResult *)self statusCode];
  [v4 encodeObject:v6 forKey:@"statusCode"];

  v7 = [(ASTTestResult *)self data];
  [v4 encodeObject:v7 forKey:@"data"];

  v8 = [(ASTTestResult *)self files];
  [v4 encodeObject:v8 forKey:@"files"];

  v9 = [(ASTTestResult *)self uploadFiles];
  [v4 encodeObject:v9 forKey:@"uploadFiles"];

  [(ASTTestResult *)self testDuration];
  [v4 encodeDouble:@"testDuration" forKey:?];
  v10 = [(ASTTestResult *)self allowCellularSizeThreshold];
  [v4 encodeObject:v10 forKey:@"allowCellularSizeThreshold"];
}

- (void)setUploadStatusFromSource:(id)a3 withArray:(id)a4
{
  if (a4)
  {
    v5 = [ASTUploadFilesResult resultFromSource:a3 andUploadDictionaries:?];
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