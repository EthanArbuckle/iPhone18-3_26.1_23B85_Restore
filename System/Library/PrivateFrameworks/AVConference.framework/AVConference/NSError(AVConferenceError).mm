@interface NSError(AVConferenceError)
+ (uint64_t)AVConferenceServiceError:()AVConferenceError detailCode:description:;
+ (uint64_t)AVConferenceServiceError:()AVConferenceError detailedCode:returnCode:filePath:description:reason:;
@end

@implementation NSError(AVConferenceError)

+ (uint64_t)AVConferenceServiceError:()AVConferenceError detailedCode:returnCode:filePath:description:reason:
{
  v13 = MEMORY[0x1E695DF90];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v16 = [v13 dictionaryWithObjectsAndKeys:{v14, @"NSErrorUserInfoDetailedError", v15, @"NSErrorUserInfoReturnCode", a7, *MEMORY[0x1E696A578], a8, *MEMORY[0x1E696A588], 0}];
  if (VRTraceIsInternalOSInstalled())
  {
    if (a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = @"...";
    }

    [v16 setObject:v17 forKeyedSubscript:*MEMORY[0x1E696A368]];
  }

  v18 = MEMORY[0x1E696ABC0];

  return [v18 errorWithDomain:@"GKVoiceChatServiceErrorDomain" code:a3 userInfo:v16];
}

+ (uint64_t)AVConferenceServiceError:()AVConferenceError detailCode:description:
{
  v11[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v10[0] = @"NSErrorUserInfoDetailedError";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v10[1] = *MEMORY[0x1E696A588];
  v11[0] = v8;
  v11[1] = a5;
  return [v7 errorWithDomain:@"GKVoiceChatServiceErrorDomain" code:a3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, v10, 2)}];
}

@end