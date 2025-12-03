@interface SRError
+ (id)authorizationErrorWithStatus:(int64_t)status;
+ (id)errorWithCode:(int64_t)code;
+ (id)errorWithCode:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion underlyingError:(id)error;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)invalidInfoPlistErrorWithMissingKey:(id)key code:(int64_t)code;
@end

@implementation SRError

+ (id)errorWithCode:(int64_t)code
{
  v5 = sub_100001434(code);
  v6 = sub_100001818(code);

  return [self errorWithCode:code description:v5 recoverySuggestion:v6];
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error
{
  v7 = sub_100001434(code);
  v8 = sub_100001818(code);

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

  return [NSError errorWithDomain:@"SRErrorDomain" code:code userInfo:v11];
}

+ (id)authorizationErrorWithStatus:(int64_t)status
{
  v5 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SRErrorNoAuthorization", &stru_1000041B0, 0];
  v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SRErrorNoAuthorizationRecovery", &stru_1000041B0, 0];
  v7 = [self errorWithCode:status];

  return [self errorWithCode:1 description:v5 recoverySuggestion:v6 underlyingError:v7];
}

+ (id)invalidInfoPlistErrorWithMissingKey:(id)key code:(int64_t)code
{
  v6 = [NSString stringWithFormat:@"Your bundle's Info.plist must have an %@ key", key];

  return [self errorWithCode:code description:v6 recoverySuggestion:0];
}

@end