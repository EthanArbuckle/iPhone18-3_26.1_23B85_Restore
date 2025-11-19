@interface NSProgress(LSInstallProgressAdditions)
+ (id)childProgressForBundleID:()LSInstallProgressAdditions andPhase:;
+ (id)publishingKeyForApp:()LSInstallProgressAdditions withPhase:;
- (id)_LSDescription;
- (uint64_t)installPhase;
- (uint64_t)installPhaseString;
- (uint64_t)installState;
- (uint64_t)ls_expectedFinalInstallPhase;
- (void)initWithParent:()LSInstallProgressAdditions bundleID:andPhase:;
- (void)ls_setExpectedFinalInstallPhase:()LSInstallProgressAdditions;
- (void)setInstallPhase:()LSInstallProgressAdditions;
- (void)setInstallState:()LSInstallProgressAdditions;
@end

@implementation NSProgress(LSInstallProgressAdditions)

- (void)initWithParent:()LSInstallProgressAdditions bundleID:andPhase:
{
  v19[5] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E696A7F8];
  v19[0] = a4;
  v18[0] = v7;
  v18[1] = @"installPhase";
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = [v8 numberWithUnsignedInteger:a5];
  v19[1] = v10;
  v18[2] = @"installState";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  v19[2] = v11;
  v19[3] = v9;
  v18[3] = @"bundleID";
  v18[4] = @"expectedFinalInstallPhase";
  v19[4] = &unk_1EEF8EFD8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];

  v13 = [a1 initWithParent:0 userInfo:v12];
  v14 = v13;
  if (v13)
  {
    [v13 setTotalUnitCount:100];
    [v14 setCompletedUnitCount:0];
    if (a5 <= 4 && ((1 << a5) & 0x19) != 0)
    {
      v15 = 1;
      [v14 setPausable:1];
      [v14 setCancellable:1];
    }

    else
    {
      [v14 setPausable:0];
      [v14 setCancellable:0];
      v15 = a5 == 1;
    }

    [v14 setPrioritizable:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)childProgressForBundleID:()LSInstallProgressAdditions andPhase:
{
  v6 = [a1 publishingKeyForApp:? withPhase:?];
  v7 = [[a1 alloc] initWithParent:0 bundleID:v6 andPhase:a4];

  return v7;
}

+ (id)publishingKeyForApp:()LSInstallProgressAdditions withPhase:
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 NSStringFromLSInstallPhase:a4];
  v8 = [v5 stringWithFormat:@"%@.%@", v6, v7];

  return v8;
}

- (void)setInstallState:()LSInstallProgressAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [a1 setUserInfoObject:v2 forKey:@"installState"];
}

- (uint64_t)installState
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"installState"];

  v3 = [v2 unsignedIntegerValue];
  return v3;
}

- (void)setInstallPhase:()LSInstallProgressAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [a1 setUserInfoObject:v2 forKey:@"installPhase"];
}

- (uint64_t)installPhase
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"installPhase"];

  v3 = [v2 unsignedIntegerValue];
  return v3;
}

- (uint64_t)installPhaseString
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 installPhase];

  return [v1 NSStringFromLSInstallPhase:v2];
}

- (uint64_t)ls_expectedFinalInstallPhase
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"expectedFinalInstallPhase"];

  if (v2)
  {
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)ls_setExpectedFinalInstallPhase:()LSInstallProgressAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [a1 setUserInfoObject:v2 forKey:@"expectedFinalInstallPhase"];
}

- (id)_LSDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"bundleID"];
  v5 = [MEMORY[0x1E696AEC0] NSStringFromLSInstallPhase:{objc_msgSend(a1, "installPhase")}];
  v6 = [MEMORY[0x1E696AEC0] NSStringFromLSInstallState:{objc_msgSend(a1, "installState")}];
  v7 = [MEMORY[0x1E696AEC0] NSStringFromLSInstallPhase:{objc_msgSend(a1, "ls_expectedFinalInstallPhase")}];
  [a1 fractionCompleted];
  v9 = [v2 stringWithFormat:@"<NSProgress: %@ phase=%@ state=%@; finalPhase=%@; fractionCompleted=%f>", v4, v5, v6, v7, v8];;

  return v9;
}

@end