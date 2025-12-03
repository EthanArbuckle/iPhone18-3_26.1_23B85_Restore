@interface ASTRequest
+ (BOOL)isEstimatedTimeRemainingFeatureEnabled;
+ (id)request;
+ (id)stringFromClientStatus:(int64_t)status;
- (ASTRequest)init;
- (id)description;
- (id)generatePayload;
- (void)setCurrentTest:(id)test;
- (void)setData:(id)data;
- (void)setError:(id)error;
- (void)setEstimatedTimeRemaining:(id)remaining;
- (void)setProgress:(id)progress;
@end

@implementation ASTRequest

- (ASTRequest)init
{
  v12.receiver = self;
  v12.super_class = ASTRequest;
  v2 = [(ASTRequest *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_clientStatus = 1;
    v4 = objc_alloc_init(ASTErrorStatus);
    error = v3->_error;
    v3->_error = v4;

    data = v3->_data;
    v3->_data = 0;

    currentTest = v3->_currentTest;
    v3->_currentTest = 0;

    progress = v3->_progress;
    v3->_progress = 0;

    estimatedTimeRemaining = v3->_estimatedTimeRemaining;
    v3->_estimatedTimeRemaining = 0;

    completion = v3->_completion;
    v3->_completion = 0;
  }

  return v3;
}

+ (id)request
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (BOOL)isEstimatedTimeRemainingFeatureEnabled
{
  if (isEstimatedTimeRemainingFeatureEnabled_onceToken != -1)
  {
    +[ASTRequest isEstimatedTimeRemainingFeatureEnabled];
  }

  return isEstimatedTimeRemainingFeatureEnabled_isEnabled;
}

void __52__ASTRequest_isEstimatedTimeRemainingFeatureEnabled__block_invoke()
{
  if (+[ASTEnvironment isInternalBuild])
  {
    v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AppleServiceToolkit"];
    isEstimatedTimeRemainingFeatureEnabled_isEnabled = [v0 BOOLForKey:@"EnableEstimatedTimeRemaining"];
  }
}

- (id)generatePayload
{
  v28[6] = *MEMORY[0x277D85DE8];
  if (+[ASTRequest isEstimatedTimeRemainingFeatureEnabled])
  {
    v27[0] = @"clientStatus";
    v3 = [ASTRequest stringFromClientStatus:[(ASTRequest *)self clientStatus]];
    v28[0] = v3;
    v27[1] = @"currentTest";
    currentTest = [(ASTRequest *)self currentTest];
    null = currentTest;
    if (!currentTest)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v28[1] = null;
    v27[2] = @"progress";
    progress = [(ASTRequest *)self progress];
    null2 = progress;
    if (!progress)
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    v28[2] = null2;
    v27[3] = @"estimatedTimeRemaining";
    v8 = [(ASTRequest *)self estimatedTimeRemaining:null];
    null3 = v8;
    if (!v8)
    {
      null3 = [MEMORY[0x277CBEB68] null];
    }

    v28[3] = null3;
    v27[4] = @"data";
    data = [(ASTRequest *)self data];
    null4 = data;
    if (!data)
    {
      null4 = [MEMORY[0x277CBEB68] null];
    }

    v28[4] = null4;
    v27[5] = @"status";
    error = [(ASTRequest *)self error];
    dictionary = [error dictionary];
    v28[5] = dictionary;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:6];

    if (!data)
    {
    }

    if (!v8)
    {
    }

    null5 = v23;
    v15 = v24;
    if (!progress)
    {
LABEL_25:
    }
  }

  else
  {
    v25[0] = @"clientStatus";
    v15 = [ASTRequest stringFromClientStatus:[(ASTRequest *)self clientStatus]];
    v26[0] = v15;
    v25[1] = @"currentTest";
    currentTest = [(ASTRequest *)self currentTest];
    null5 = currentTest;
    if (!currentTest)
    {
      null5 = [MEMORY[0x277CBEB68] null];
    }

    v26[1] = null5;
    v25[2] = @"progress";
    progress = [(ASTRequest *)self progress];
    null2 = progress;
    if (!progress)
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    v26[2] = null2;
    v25[3] = @"data";
    data2 = [(ASTRequest *)self data];
    null6 = data2;
    if (!data2)
    {
      null6 = [MEMORY[0x277CBEB68] null];
    }

    v26[3] = null6;
    v25[4] = @"status";
    error2 = [(ASTRequest *)self error];
    dictionary2 = [error2 dictionary];
    v26[4] = dictionary2;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

    if (!data2)
    {
    }

    if (!progress)
    {
      goto LABEL_25;
    }
  }

  if (!currentTest)
  {
  }

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)setError:(id)error
{
  objc_storeStrong(&self->_error, error);

  [(ASTSealablePayload *)self setSealed:0];
}

- (void)setData:(id)data
{
  objc_storeStrong(&self->_data, data);

  [(ASTSealablePayload *)self setSealed:0];
}

- (void)setCurrentTest:(id)test
{
  objc_storeStrong(&self->_currentTest, test);

  [(ASTSealablePayload *)self setSealed:0];
}

- (void)setProgress:(id)progress
{
  objc_storeStrong(&self->_progress, progress);

  [(ASTSealablePayload *)self setSealed:0];
}

- (void)setEstimatedTimeRemaining:(id)remaining
{
  objc_storeStrong(&self->_estimatedTimeRemaining, remaining);

  [(ASTSealablePayload *)self setSealed:0];
}

- (id)description
{
  if ([(ASTSealablePayload *)self isSealed])
  {
    v12.receiver = self;
    v12.super_class = ASTRequest;
    v3 = [(ASTSealablePayload *)&v12 description];
  }

  else
  {
    v4 = +[ASTRequest isEstimatedTimeRemainingFeatureEnabled];
    v5 = MEMORY[0x277CCACA8];
    v6 = [ASTRequest stringFromClientStatus:[(ASTRequest *)self clientStatus]];
    currentTest = [(ASTRequest *)self currentTest];
    progress = [(ASTRequest *)self progress];
    v9 = progress;
    if (v4)
    {
      estimatedTimeRemaining = [(ASTRequest *)self estimatedTimeRemaining];
      v3 = [v5 stringWithFormat:@"Client Status: %@, Current Test: %@, Progress: %@, Estimated Time Remaining: %@", v6, currentTest, v9, estimatedTimeRemaining];
    }

    else
    {
      v3 = [v5 stringWithFormat:@"Client Status: %@, Current Test: %@, Progress: %@", v6, currentTest, progress];
    }
  }

  return v3;
}

+ (id)stringFromClientStatus:(int64_t)status
{
  if (status > 0xF)
  {
    return &stru_2852CD800;
  }

  else
  {
    return off_278CBD048[status];
  }
}

@end