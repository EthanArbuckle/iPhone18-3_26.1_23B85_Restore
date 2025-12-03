@interface NSURLSessionConfiguration(AppleAccount)
- (void)aa_registerProtocolClass:()AppleAccount;
- (void)aa_unregisterProtocolClass:()AppleAccount;
@end

@implementation NSURLSessionConfiguration(AppleAccount)

- (void)aa_registerProtocolClass:()AppleAccount
{
  if (!a3)
  {
    [(NSURLSessionConfiguration(AppleAccount) *)a2 aa_registerProtocolClass:self];
  }

  protocolClasses = [self protocolClasses];
  v7 = protocolClasses;
  if (protocolClasses)
  {
    [protocolClasses arrayByAddingObject:a3];
  }

  else
  {
    [MEMORY[0x1E695DEC8] arrayWithObject:a3];
  }
  v6 = ;
  [self setProtocolClasses:v6];
}

- (void)aa_unregisterProtocolClass:()AppleAccount
{
  if (!a3)
  {
    [(NSURLSessionConfiguration(AppleAccount) *)a2 aa_unregisterProtocolClass:self];
  }

  protocolClasses = [self protocolClasses];
  v5 = [protocolClasses aaf_arrayByRemovingObject:a3];
  [self setProtocolClasses:v5];
}

- (void)aa_registerProtocolClass:()AppleAccount .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSURLSession+AppleAccount.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"class"}];
}

- (void)aa_unregisterProtocolClass:()AppleAccount .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSURLSession+AppleAccount.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"class"}];
}

@end