@interface VSBackgroundTask
- (BOOL)begin;
- (VSBackgroundTask)init;
- (VSBackgroundTaskDelegate)delegate;
- (void)begin;
- (void)end;
@end

@implementation VSBackgroundTask

- (VSBackgroundTask)init
{
  v6.receiver = self;
  v6.super_class = VSBackgroundTask;
  v2 = [(VSBackgroundTask *)&v6 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_284DD5B48;
  }

  return v3;
}

- (BOOL)begin
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D47008] currentProcess];
  v4 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
  v5 = objc_alloc(MEMORY[0x277D46DB8]);
  v6 = [(VSBackgroundTask *)self name];
  v14[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v8 = [v5 initWithExplanation:v6 target:v3 attributes:v7];

  v13 = 0;
  LOBYTE(v7) = [v8 acquireWithError:&v13];
  v9 = v13;
  if ((v7 & 1) == 0)
  {
    v10 = VSErrorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(VSBackgroundTask *)v9 begin];
    }

    v11 = [(VSBackgroundTask *)self delegate];
    [v11 backgroundTaskExpired:self];
  }

  [(VSBackgroundTask *)self setAssertion:v8];

  return 1;
}

- (void)end
{
  v3 = [(VSBackgroundTask *)self assertion];
  [v3 invalidate];

  [(VSBackgroundTask *)self setAssertion:0];
}

- (VSBackgroundTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)begin
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Failed to acquire assertion: %@", &v2, 0xCu);
}

@end