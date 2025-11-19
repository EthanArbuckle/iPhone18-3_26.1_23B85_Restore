@interface SRError
+ (id)authorizationErrorWithStatus:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3 description:(id)a4 recoverySuggestion:(id)a5 underlyingError:(id)a6;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4;
+ (id)invalidInfoPlistErrorWithMissingKey:(id)a3 code:(int64_t)a4;
@end

@implementation SRError

+ (id)errorWithCode:(int64_t)a3
{
  v5 = descriptionFromErrorCode(a3);
  v6 = recoverySuggestionFromErrorCode(a3);

  return [a1 errorWithCode:a3 description:v5 recoverySuggestion:v6];
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v7 = descriptionFromErrorCode(a3);
  v8 = recoverySuggestionFromErrorCode(a3);

  return [a1 errorWithCode:a3 description:v7 recoverySuggestion:v8 underlyingError:a4];
}

+ (id)errorWithCode:(int64_t)a3 description:(id)a4 recoverySuggestion:(id)a5 underlyingError:(id)a6
{
  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v11 = v10;
  if (a4)
  {
    [v10 setObject:a4 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  if (a5)
  {
    [v11 setObject:a5 forKeyedSubscript:*MEMORY[0x1E696A598]];
  }

  if (a6)
  {
    [v11 setObject:a6 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = SRErrorDomain;

  return [v12 errorWithDomain:v13 code:a3 userInfo:v11];
}

+ (id)authorizationErrorWithStatus:(int64_t)a3
{
  v5 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SRErrorNoAuthorization", &stru_1F48BB5C0, 0}];
  v6 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SRErrorNoAuthorizationRecovery", &stru_1F48BB5C0, 0}];
  v7 = [a1 errorWithCode:a3];

  return [a1 errorWithCode:1 description:v5 recoverySuggestion:v6 underlyingError:v7];
}

+ (id)invalidInfoPlistErrorWithMissingKey:(id)a3 code:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Your bundle's Info.plist must have an %@ key", a3];

  return [a1 errorWithCode:a4 description:v6 recoverySuggestion:0];
}

@end