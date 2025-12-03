@interface VSFileReadOperation
- (VSFileReadOperation)init;
- (void)executionDidBegin;
@end

@implementation VSFileReadOperation

- (VSFileReadOperation)init
{
  v6.receiver = self;
  v6.super_class = VSFileReadOperation;
  v2 = [(VSFileReadOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSOptional);
    v4 = v2->_result;
    v2->_result = v3;
  }

  return v2;
}

- (void)executionDidBegin
{
  v3 = objc_alloc(MEMORY[0x277CBEA90]);
  source = [(VSFileReadOperation *)self source];
  v10 = 0;
  v5 = [v3 initWithContentsOfURL:source options:0 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = [VSFailable failableWithObject:v5];
  }

  else
  {
    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The readErrorOrNil parameter must not be nil."];
    }

    v7 = [VSFailable failableWithError:v6];
  }

  v8 = v7;
  v9 = [VSOptional optionalWithObject:v7];
  [(VSFileReadOperation *)self setResult:v9];

  [(VSAsyncOperation *)self finishExecutionIfPossible];
}

@end