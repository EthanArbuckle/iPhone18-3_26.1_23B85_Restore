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
  v5 = descriptionFromErrorCode(code);
  v6 = recoverySuggestionFromErrorCode(code);

  return [self errorWithCode:code description:v5 recoverySuggestion:v6];
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error
{
  v7 = descriptionFromErrorCode(code);
  v8 = recoverySuggestionFromErrorCode(code);

  return [self errorWithCode:code description:v7 recoverySuggestion:v8 underlyingError:error];
}

+ (id)errorWithCode:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion underlyingError:(id)error
{
  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v11 = v10;
  if (description)
  {
    [v10 setObject:description forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  if (suggestion)
  {
    [v11 setObject:suggestion forKeyedSubscript:*MEMORY[0x1E696A598]];
  }

  if (error)
  {
    [v11 setObject:error forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = SRErrorDomain;

  return [v12 errorWithDomain:v13 code:code userInfo:v11];
}

+ (id)authorizationErrorWithStatus:(int64_t)status
{
  v5 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SRErrorNoAuthorization", &stru_1F48BB5C0, 0}];
  v6 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SRErrorNoAuthorizationRecovery", &stru_1F48BB5C0, 0}];
  v7 = [self errorWithCode:status];

  return [self errorWithCode:1 description:v5 recoverySuggestion:v6 underlyingError:v7];
}

+ (id)invalidInfoPlistErrorWithMissingKey:(id)key code:(int64_t)code
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Your bundle's Info.plist must have an %@ key", key];

  return [self errorWithCode:code description:v6 recoverySuggestion:0];
}

@end