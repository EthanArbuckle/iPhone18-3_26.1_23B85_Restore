@interface SRError
+ (id)authorizationErrorWithStatus:(int64_t)status;
+ (id)errorWithCode:(int64_t)code;
+ (id)errorWithCode:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion underlyingError:(id)error;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)invalidInfoPlistErrorWithMissingKey:(id)key code:(int64_t)code;
+ (id)sr_errorWithUnderlying:(id)underlying;
@end

@implementation SRError

+ (id)errorWithCode:(int64_t)code
{
  v5 = sub_100003E9C(code);
  v6 = sub_100004280(code);

  return [self errorWithCode:code description:v5 recoverySuggestion:v6];
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error
{
  v7 = sub_100003E9C(code);
  v8 = sub_100004280(code);

  return [self errorWithCode:code description:v7 recoverySuggestion:v8 underlyingError:error];
}

+ (id)errorWithCode:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion underlyingError:(id)error
{
  v10 = [NSMutableDictionary dictionaryWithCapacity:3];
  v11 = v10;
  if (description)
  {
    [(NSMutableDictionary *)v10 setObject:description forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (suggestion)
  {
    [(NSMutableDictionary *)v11 setObject:suggestion forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  if (error)
  {
    [(NSMutableDictionary *)v11 setObject:error forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v12 = SRErrorDomain;

  return [NSError errorWithDomain:v12 code:code userInfo:v11];
}

+ (id)authorizationErrorWithStatus:(int64_t)status
{
  v5 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SRErrorNoAuthorization", &stru_100011248, 0];
  v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SRErrorNoAuthorizationRecovery", &stru_100011248, 0];
  v7 = [self errorWithCode:status];

  return [self errorWithCode:1 description:v5 recoverySuggestion:v6 underlyingError:v7];
}

+ (id)invalidInfoPlistErrorWithMissingKey:(id)key code:(int64_t)code
{
  v6 = [NSString stringWithFormat:@"Your bundle's Info.plist must have an %@ key", key];

  return [self errorWithCode:code description:v6 recoverySuggestion:0];
}

+ (id)sr_errorWithUnderlying:(id)underlying
{
  if (!underlying)
  {
    return underlying;
  }

  domain = [underlying domain];
  if ([domain isEqualToString:SRErrorDomain])
  {
    return underlying;
  }

  if ([objc_msgSend(underlying "domain")])
  {
    if ([underlying code] == 109)
    {
      v6 = 2;
    }

    else
    {
      v6 = 8194;
    }
  }

  else
  {
    v6 = 8194;
  }

  if ([objc_msgSend(underlying "domain")] && objc_msgSend(underlying, "code") == 107)
  {
    v6 = 3;
  }

  return [SRError errorWithCode:v6 underlyingError:underlying];
}

@end