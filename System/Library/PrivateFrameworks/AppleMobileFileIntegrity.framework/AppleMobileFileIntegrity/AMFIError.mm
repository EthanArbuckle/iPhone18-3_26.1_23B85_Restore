@interface AMFIError
- (AMFIError)initWithAMFIErrorCode:(int64_t)code withURL:(id)l;
- (AMFIError)initWithMISError:(int)error withURL:(id)l;
@end

@implementation AMFIError

- (AMFIError)initWithAMFIErrorCode:(int64_t)code withURL:(id)l
{
  lCopy = l;
  v7 = objc_opt_new();
  v8 = v7;
  if (lCopy)
  {
    [v7 setObject:lCopy forKeyedSubscript:*MEMORY[0x277CCA760]];
  }

  v9 = errorStringForAMFIErrorCode(code);
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v10 = [(AMFIError *)self initWithDomain:@"AppleMobileFileIntegrityError" code:code userInfo:v8];
  return v10;
}

- (AMFIError)initWithMISError:(int)error withURL:(id)l
{
  lCopy = l;
  v7 = [(AMFIError *)self initWithAMFIErrorCode:errorCodeForMISError(error) withURL:lCopy];

  return v7;
}

@end