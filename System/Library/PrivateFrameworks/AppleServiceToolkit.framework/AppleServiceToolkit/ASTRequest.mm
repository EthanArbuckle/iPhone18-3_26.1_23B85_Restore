@interface ASTRequest
+ (BOOL)isEstimatedTimeRemainingFeatureEnabled;
+ (id)request;
+ (id)stringFromClientStatus:(int64_t)a3;
- (ASTRequest)init;
- (id)description;
- (id)generatePayload;
- (void)setCurrentTest:(id)a3;
- (void)setData:(id)a3;
- (void)setError:(id)a3;
- (void)setEstimatedTimeRemaining:(id)a3;
- (void)setProgress:(id)a3;
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
  v2 = objc_alloc_init(a1);

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
    v4 = [(ASTRequest *)self currentTest];
    v5 = v4;
    if (!v4)
    {
      v5 = [MEMORY[0x277CBEB68] null];
    }

    v28[1] = v5;
    v27[2] = @"progress";
    v6 = [(ASTRequest *)self progress];
    v7 = v6;
    if (!v6)
    {
      v7 = [MEMORY[0x277CBEB68] null];
    }

    v28[2] = v7;
    v27[3] = @"estimatedTimeRemaining";
    v8 = [(ASTRequest *)self estimatedTimeRemaining:v5];
    v9 = v8;
    if (!v8)
    {
      v9 = [MEMORY[0x277CBEB68] null];
    }

    v28[3] = v9;
    v27[4] = @"data";
    v10 = [(ASTRequest *)self data];
    v11 = v10;
    if (!v10)
    {
      v11 = [MEMORY[0x277CBEB68] null];
    }

    v28[4] = v11;
    v27[5] = @"status";
    v12 = [(ASTRequest *)self error];
    v13 = [v12 dictionary];
    v28[5] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:6];

    if (!v10)
    {
    }

    if (!v8)
    {
    }

    v16 = v23;
    v15 = v24;
    if (!v6)
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
    v4 = [(ASTRequest *)self currentTest];
    v16 = v4;
    if (!v4)
    {
      v16 = [MEMORY[0x277CBEB68] null];
    }

    v26[1] = v16;
    v25[2] = @"progress";
    v6 = [(ASTRequest *)self progress];
    v7 = v6;
    if (!v6)
    {
      v7 = [MEMORY[0x277CBEB68] null];
    }

    v26[2] = v7;
    v25[3] = @"data";
    v17 = [(ASTRequest *)self data];
    v18 = v17;
    if (!v17)
    {
      v18 = [MEMORY[0x277CBEB68] null];
    }

    v26[3] = v18;
    v25[4] = @"status";
    v19 = [(ASTRequest *)self error];
    v20 = [v19 dictionary];
    v26[4] = v20;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

    if (!v17)
    {
    }

    if (!v6)
    {
      goto LABEL_25;
    }
  }

  if (!v4)
  {
  }

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)setError:(id)a3
{
  objc_storeStrong(&self->_error, a3);

  [(ASTSealablePayload *)self setSealed:0];
}

- (void)setData:(id)a3
{
  objc_storeStrong(&self->_data, a3);

  [(ASTSealablePayload *)self setSealed:0];
}

- (void)setCurrentTest:(id)a3
{
  objc_storeStrong(&self->_currentTest, a3);

  [(ASTSealablePayload *)self setSealed:0];
}

- (void)setProgress:(id)a3
{
  objc_storeStrong(&self->_progress, a3);

  [(ASTSealablePayload *)self setSealed:0];
}

- (void)setEstimatedTimeRemaining:(id)a3
{
  objc_storeStrong(&self->_estimatedTimeRemaining, a3);

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
    v7 = [(ASTRequest *)self currentTest];
    v8 = [(ASTRequest *)self progress];
    v9 = v8;
    if (v4)
    {
      v10 = [(ASTRequest *)self estimatedTimeRemaining];
      v3 = [v5 stringWithFormat:@"Client Status: %@, Current Test: %@, Progress: %@, Estimated Time Remaining: %@", v6, v7, v9, v10];
    }

    else
    {
      v3 = [v5 stringWithFormat:@"Client Status: %@, Current Test: %@, Progress: %@", v6, v7, v8];
    }
  }

  return v3;
}

+ (id)stringFromClientStatus:(int64_t)a3
{
  if (a3 > 0xF)
  {
    return &stru_2852CD800;
  }

  else
  {
    return off_278CBD048[a3];
  }
}

@end