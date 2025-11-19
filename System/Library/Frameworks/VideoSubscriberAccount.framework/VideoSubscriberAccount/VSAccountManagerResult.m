@interface VSAccountManagerResult
- (VSAccountManagerResult)init;
- (VSAccountManagerResult)initWithOperation:(id)a3;
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

- (VSAccountManagerResult)initWithOperation:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The operation parameter must not be nil."];
  }

  v9.receiver = self;
  v9.super_class = VSAccountManagerResult;
  v6 = [(VSAccountManagerResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operation, a3);
  }

  return v7;
}

- (void)cancel
{
  v2 = [(VSAccountManagerResult *)self operation];
  [v2 cancel];
}

@end