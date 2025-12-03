@interface VSAccountManagerResult
- (VSAccountManagerResult)init;
- (VSAccountManagerResult)initWithOperation:(id)operation;
- (void)cancel;
@end

@implementation VSAccountManagerResult

- (VSAccountManagerResult)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSAccountManagerResult)initWithOperation:(id)operation
{
  operationCopy = operation;
  if (!operationCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The operation parameter must not be nil."];
  }

  v9.receiver = self;
  v9.super_class = VSAccountManagerResult;
  v6 = [(VSAccountManagerResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operation, operation);
  }

  return v7;
}

- (void)cancel
{
  operation = [(VSAccountManagerResult *)self operation];
  [operation cancel];
}

@end