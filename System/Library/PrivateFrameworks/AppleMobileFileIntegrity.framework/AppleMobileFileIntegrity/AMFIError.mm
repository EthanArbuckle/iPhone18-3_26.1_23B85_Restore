@interface AMFIError
- (AMFIError)initWithAMFIErrorCode:(int64_t)a3 withURL:(id)a4;
- (AMFIError)initWithMISError:(int)a3 withURL:(id)a4;
@end

@implementation AMFIError

- (AMFIError)initWithAMFIErrorCode:(int64_t)a3 withURL:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA760]];
  }

  v9 = errorStringForAMFIErrorCode(a3);
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v10 = [(AMFIError *)self initWithDomain:@"AppleMobileFileIntegrityError" code:a3 userInfo:v8];
  return v10;
}

- (AMFIError)initWithMISError:(int)a3 withURL:(id)a4
{
  v6 = a4;
  v7 = [(AMFIError *)self initWithAMFIErrorCode:errorCodeForMISError(a3) withURL:v6];

  return v7;
}

@end