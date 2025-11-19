@interface SRError
+ (id)authorizationErrorWithStatus:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3 description:(id)a4 recoverySuggestion:(id)a5 underlyingError:(id)a6;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4;
+ (id)invalidInfoPlistErrorWithMissingKey:(id)a3 code:(int64_t)a4;
+ (id)sr_errorWithUnderlying:(id)a3;
@end

@implementation SRError

+ (id)errorWithCode:(int64_t)a3
{
  v5 = sub_100003E9C(a3);
  v6 = sub_100004280(a3);

  return [a1 errorWithCode:a3 description:v5 recoverySuggestion:v6];
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v7 = sub_100003E9C(a3);
  v8 = sub_100004280(a3);

  return [a1 errorWithCode:a3 description:v7 recoverySuggestion:v8 underlyingError:a4];
}

+ (id)errorWithCode:(int64_t)a3 description:(id)a4 recoverySuggestion:(id)a5 underlyingError:(id)a6
{
  v10 = [NSMutableDictionary dictionaryWithCapacity:3];
  v11 = v10;
  if (a4)
  {
    [(NSMutableDictionary *)v10 setObject:a4 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (a5)
  {
    [(NSMutableDictionary *)v11 setObject:a5 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  if (a6)
  {
    [(NSMutableDictionary *)v11 setObject:a6 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v12 = SRErrorDomain;

  return [NSError errorWithDomain:v12 code:a3 userInfo:v11];
}

+ (id)authorizationErrorWithStatus:(int64_t)a3
{
  v5 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SRErrorNoAuthorization", &stru_100011248, 0];
  v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SRErrorNoAuthorizationRecovery", &stru_100011248, 0];
  v7 = [a1 errorWithCode:a3];

  return [a1 errorWithCode:1 description:v5 recoverySuggestion:v6 underlyingError:v7];
}

+ (id)invalidInfoPlistErrorWithMissingKey:(id)a3 code:(int64_t)a4
{
  v6 = [NSString stringWithFormat:@"Your bundle's Info.plist must have an %@ key", a3];

  return [a1 errorWithCode:a4 description:v6 recoverySuggestion:0];
}

+ (id)sr_errorWithUnderlying:(id)a3
{
  if (!a3)
  {
    return a3;
  }

  v4 = [a3 domain];
  if ([v4 isEqualToString:SRErrorDomain])
  {
    return a3;
  }

  if ([objc_msgSend(a3 "domain")])
  {
    if ([a3 code] == 109)
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

  if ([objc_msgSend(a3 "domain")] && objc_msgSend(a3, "code") == 107)
  {
    v6 = 3;
  }

  return [SRError errorWithCode:v6 underlyingError:a3];
}

@end