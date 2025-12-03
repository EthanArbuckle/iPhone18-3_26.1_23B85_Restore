@interface AMSLookupDecoder
- (id)resultFromResult:(id)result error:(id *)error;
@end

@implementation AMSLookupDecoder

- (id)resultFromResult:(id)result error:(id *)error
{
  resultCopy = result;
  v5 = [AMSLookupResult alloc];
  object = [resultCopy object];
  v7 = [(AMSLookupResult *)v5 initWithResult:resultCopy dictionary:object];

  response = [resultCopy response];

  if (response)
  {
    [response ams_expirationInterval];
    if (v9 >= 0.0)
    {
      v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:?];
      [(AMSLookupResult *)v7 setExpirationDate:v10];
    }
  }

  return v7;
}

@end