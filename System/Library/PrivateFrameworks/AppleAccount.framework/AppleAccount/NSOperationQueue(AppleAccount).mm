@interface NSOperationQueue(AppleAccount)
+ (id)aa_operationQueueWithUnderlyingQueue:()AppleAccount;
@end

@implementation NSOperationQueue(AppleAccount)

+ (id)aa_operationQueueWithUnderlyingQueue:()AppleAccount
{
  v5 = a3;
  if (!v5)
  {
    [(NSOperationQueue(AppleAccount) *)a2 aa_operationQueueWithUnderlyingQueue:a1];
  }

  v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v6 setUnderlyingQueue:v5];

  return v6;
}

+ (void)aa_operationQueueWithUnderlyingQueue:()AppleAccount .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSOperationQueue+AppleAccount.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"underlyingQueue"}];
}

@end