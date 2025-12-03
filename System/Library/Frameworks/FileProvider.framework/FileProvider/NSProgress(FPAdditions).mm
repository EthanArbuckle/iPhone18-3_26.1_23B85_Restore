@interface NSProgress(FPAdditions)
- (BOOL)fp_isGlobalProgressForDomainAt:()FPAdditions;
- (id)fp_fileOperationKindStrict:()FPAdditions;
- (uint64_t)fp_isAccountedAsCopyProgress;
- (uint64_t)fp_isOfFileOperationKind:()FPAdditions strict:;
- (void)fp_addChildProgress:()FPAdditions withUnitCount:;
- (void)fp_setFileOperationKind:()FPAdditions;
@end

@implementation NSProgress(FPAdditions)

- (id)fp_fileOperationKindStrict:()FPAdditions
{
  if (a3 && ([self kind], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E696A888]), v4, !v5))
  {
    v8 = 0;
  }

  else
  {
    userInfo = [self userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A858]];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(NSProgress(FPAdditions) *)v7 fp_fileOperationKindStrict:v9];
      }

      v8 = 0;
    }

    else
    {
      v8 = v7;
    }
  }

  return v8;
}

- (void)fp_setFileOperationKind:()FPAdditions
{
  v4 = *MEMORY[0x1E696A888];
  v5 = a3;
  [self setKind:v4];
  [self setUserInfoObject:v5 forKey:*MEMORY[0x1E696A858]];
}

- (uint64_t)fp_isOfFileOperationKind:()FPAdditions strict:
{
  v6 = a3;
  v7 = [self fp_fileOperationKindStrict:a4];
  v8 = [v7 isEqualToString:v6];

  return v8;
}

- (void)fp_addChildProgress:()FPAdditions withUnitCount:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  longLongValue = [a4 longLongValue];
  if (!longLongValue)
  {
    longLongValue = [v6 totalUnitCount];
  }

  if (longLongValue <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = longLongValue;
  }

  if ([self totalUnitCount] == -1)
  {
    [self setTotalUnitCount:v8];
    fileTotalCount = [v6 fileTotalCount];
    [self setFileTotalCount:fileTotalCount];

    [self setFileCompletedCount:&unk_1F1FC9AB8];
    [self setCompletedUnitCount:0];
  }

  else
  {
    [self setTotalUnitCount:{objc_msgSend(self, "totalUnitCount") + v8}];
    fileTotalCount2 = [self fileTotalCount];
    unsignedIntegerValue = [fileTotalCount2 unsignedIntegerValue];
    fileTotalCount3 = [v6 fileTotalCount];
    unsignedIntegerValue2 = [fileTotalCount3 unsignedIntegerValue];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue2 + unsignedIntegerValue];
    [self setFileTotalCount:v13];
  }

  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412802;
    v18 = v6;
    v19 = 2112;
    selfCopy = self;
    v21 = 2048;
    v22 = v8;
    _os_log_debug_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Adding child progress %@ to parent %@ with %lld unit counts", &v17, 0x20u);
  }

  [self addChild:v6 withPendingUnitCount:v8];
  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)fp_isGlobalProgressForDomainAt:()FPAdditions
{
  v4 = a3;
  v5 = [self fp_fileOperationKindStrict:1];
  if (!v5)
  {
    goto LABEL_8;
  }

  fileTotalCount = [self fileTotalCount];
  if (!fileTotalCount)
  {
    goto LABEL_8;
  }

  v7 = fileTotalCount;
  fileCompletedCount = [self fileCompletedCount];

  if (!fileCompletedCount || ([v5 isEqualToString:*MEMORY[0x1E696A870]] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E696A848]))
  {
    goto LABEL_8;
  }

  userInfo = [self userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"FPProgressIsCreatedByFileProviderKey"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    fileURL = [self fileURL];
    v13 = [fileURL fp_relationshipToItemAtURL:v4] == 1;
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

  return v13;
}

- (uint64_t)fp_isAccountedAsCopyProgress
{
  if ([self fp_isOfFileOperationKind:*MEMORY[0x1E696A840]] & 1) != 0 || (objc_msgSend(self, "fp_isOfFileOperationKind:", *MEMORY[0x1E696A850]) & 1) != 0 || (objc_msgSend(self, "fp_isOfFileOperationKind:", *MEMORY[0x1E696A838]))
  {
    return 1;
  }

  v3 = *MEMORY[0x1E696A868];

  return [self fp_isOfFileOperationKind:v3];
}

- (void)fp_fileOperationKindStrict:()FPAdditions .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138412290;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] userinfo[NSProgressFileOperationKindKey] is of unexpected class %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end