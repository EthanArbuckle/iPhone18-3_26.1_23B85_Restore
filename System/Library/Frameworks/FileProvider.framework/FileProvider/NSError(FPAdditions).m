@interface NSError(FPAdditions)
+ (id)_fp_errorWithPOSIXCode:()FPAdditions itemURL:debugDescription:message:;
+ (id)fp_disallowedByManagement:()FPAdditions;
+ (id)fp_errorWithPOSIXCode:()FPAdditions description:;
+ (id)fp_externalDomainRejectedErrorWithUnderlyingError:()FPAdditions;
+ (id)fp_invalidArgumentError:()FPAdditions;
+ (id)fp_translocatedError:()FPAdditions;
+ (void)fp_initLocalizationStrings;
- (BOOL)fp_isCocoaErrorCode:()FPAdditions;
- (BOOL)fp_isFeatureUnsupportedError;
- (BOOL)fp_isNameTooLongError;
- (BOOL)fp_isNotPermittedError;
- (BOOL)fp_isPOSIXErrorCode:()FPAdditions;
- (FPErrorRedactionHelper)fp_prettyDescription:()FPAdditions;
- (id)fp_annotatedErrorWithItem:()FPAdditions variant:;
- (id)fp_annotatedErrorWithItems:()FPAdditions variant:;
- (id)fp_annotatedErrorWithName:()FPAdditions path:variant:;
- (id)fp_annotatedErrorWithOperationItem:()FPAdditions;
- (id)fp_annotatedErrorWithRecoveryAttempter:()FPAdditions fpProviderDomainId:;
- (id)fp_annotatedErrorWithURL:()FPAdditions variant:;
- (id)fp_asWarning;
- (id)fp_genericPreflightError;
- (id)fp_internalErrorForVendorErrorWithCallerDescription:()FPAdditions itemCreationBlock:;
- (id)fp_internalUserInfoValueKey:()FPAdditions;
- (id)fp_recoverableErrorWithBlock:()FPAdditions fpProviderDomainId:operationService:;
- (id)fp_strippedError;
- (id)fp_unwrappedErrorForDomains:()FPAdditions;
- (id)fp_unwrappedInternalError;
- (id)fp_userInfoFPItem;
- (id)fp_userInfoItem;
- (id)fp_userInfoValueForKey:()FPAdditions;
- (uint64_t)fp_isFileProviderError:()FPAdditions;
- (uint64_t)fp_isFileProviderInternalError:()FPAdditions;
- (uint64_t)fp_isGenericPreflightError;
- (uint64_t)fp_isRemoteCrashError;
- (uint64_t)fp_isWarning;
@end

@implementation NSError(FPAdditions)

+ (void)fp_initLocalizationStrings
{
  if (fp_initLocalizationStrings_pred != -1)
  {
    +[NSError(FPAdditions) fp_initLocalizationStrings];
  }
}

+ (id)fp_errorWithPOSIXCode:()FPAdditions description:
{
  v11 = MEMORY[0x1E696AEC0];
  v12 = a4;
  v13 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  v14 = [a1 _fp_errorWithPOSIXCode:a3 itemURL:0 debugDescription:0 message:v13];

  return v14;
}

+ (id)_fp_errorWithPOSIXCode:()FPAdditions itemURL:debugDescription:message:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  [a1 fp_initLocalizationStrings];
  v13 = [MEMORY[0x1E695DF90] dictionary];
  [v13 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A998]];

  [v13 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A278]];
  if (v10)
  {
    [v13 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695E620]];
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:a3 userInfo:v13];

  return v14;
}

+ (id)fp_invalidArgumentError:()FPAdditions
{
  v17[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  [a1 fp_initLocalizationStrings];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v10 arguments:&a9];

  v16 = *MEMORY[0x1E695E620];
  v17[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)fp_disallowedByManagement:()FPAdditions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A798];
  v11 = *MEMORY[0x1E696A578];
  v12[0] = a3;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 errorWithDomain:v4 code:1 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)fp_translocatedError:()FPAdditions
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a1 fp_initLocalizationStrings];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The executable currently located at %@ is translocated and can't be launched."];
  v6 = MEMORY[0x1E696ABC0];
  v21[0] = *MEMORY[0x1E696A578];
  v14 = FPLoc(@"ExecutableTranslocated", v7, v8, v9, v10, v11, v12, v13, v4);
  v15 = *MEMORY[0x1E696A278];
  v22[0] = v14;
  v22[1] = v5;
  v16 = *MEMORY[0x1E696A998];
  v21[1] = v15;
  v21[2] = v16;
  v22[2] = v4;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v18 = [v6 errorWithDomain:@"NSFileProviderErrorDomain" code:-2002 userInfo:v17];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)fp_externalDomainRejectedErrorWithUnderlyingError:()FPAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a1 fp_initLocalizationStrings];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696AA08];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"NSFileProviderInternalErrorDomain" code:23 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (uint64_t)fp_isFileProviderError:()FPAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:@"NSFileProviderErrorDomain"])
  {
    v6 = [a1 code];

    if (v6 == a3)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (uint64_t)fp_isFileProviderInternalError:()FPAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:@"NSFileProviderInternalErrorDomain"])
  {
    v6 = [a1 code];

    if (v6 == a3)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)fp_isCocoaErrorCode:()FPAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)fp_isPOSIXErrorCode:()FPAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fp_strippedError
{
  [MEMORY[0x1E696ABC0] fp_initLocalizationStrings];
  v2 = objc_opt_new();
  v3 = [a1 userInfo];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__NSError_FPAdditions__fp_strippedError__block_invoke;
  v11[3] = &unk_1E793A100;
  v12 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v11];

  v5 = [a1 localizedDescription];
  [v4 setValue:v5 forKey:*MEMORY[0x1E696A578]];

  v6 = [a1 debugDescription];
  [v4 setValue:v6 forKey:*MEMORY[0x1E696A278]];

  v7 = MEMORY[0x1E696ABC0];
  v8 = [a1 domain];
  v9 = [v7 errorWithDomain:v8 code:objc_msgSend(a1 userInfo:{"code"), v4}];

  return v9;
}

- (id)fp_internalErrorForVendorErrorWithCallerDescription:()FPAdditions itemCreationBlock:
{
  v40[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E696ABC0] fp_initLocalizationStrings];
  v8 = [a1 domain];
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(NSError(FPAdditions) *)v6 fp_internalErrorForVendorErrorWithCallerDescription:a1 itemCreationBlock:v9];
  }

  if (([a1 fp_isFileProviderError:-1001] & 1) != 0 || objc_msgSend(a1, "fp_isFileProviderError:", -1006))
  {
    v10 = [a1 fp_userInfoItem];
    v11 = v10;
    if (!v10)
    {
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(NSError(FPAdditions) *)a1 fp_internalErrorForVendorErrorWithCallerDescription:v13 itemCreationBlock:v14, v15, v16, v17, v18, v19];
      }

      v20 = [a1 fp_strippedError];
      goto LABEL_20;
    }

    if (v7)
    {
      v12 = v7[2](v7, v10);
      if ([a1 code] == -1001)
      {
        [MEMORY[0x1E696ABC0] fileProviderErrorForCollisionWithItem:v12];
      }

      else
      {
        [MEMORY[0x1E696ABC0] fileProviderErrorForRejectedDeletionOfItem:v12];
      }
      v20 = ;

LABEL_20:
      goto LABEL_21;
    }
  }

  if ([v8 isEqualToString:@"Swift.CancellationError"])
  {
    v21 = FPUserCancelledError();
LABEL_17:
    v20 = v21;
    goto LABEL_21;
  }

  v22 = +[FPXPCSanitizer permittedErrorDomains];
  v23 = [v22 containsObject:v8];

  if (v23)
  {
    v21 = [a1 fp_strippedError];
    goto LABEL_17;
  }

  __FILEPROVIDER_UNSUPPORTED_ERROR__(v8, [a1 code]);
  v26 = fp_current_or_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [(NSError(FPAdditions) *)a1 fp_internalErrorForVendorErrorWithCallerDescription:v26 itemCreationBlock:v27, v28, v29, v30, v31, v32];
  }

  v33 = MEMORY[0x1E696ABC0];
  v34 = *MEMORY[0x1E696A250];
  v35 = *MEMORY[0x1E696A278];
  v40[0] = @"Provider returned unsupported error";
  v36 = *MEMORY[0x1E696AA08];
  v39[0] = v35;
  v39[1] = v36;
  v37 = [a1 fp_strippedError];
  v40[1] = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v20 = [v33 errorWithDomain:v34 code:4101 userInfo:v38];

LABEL_21:
  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)fp_genericPreflightError
{
  [MEMORY[0x1E696ABC0] fp_initLocalizationStrings];
  v2 = [a1 userInfo];
  v3 = [v2 mutableCopy];

  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSFileProviderErrorIsGenericPreflightError"];
  v4 = MEMORY[0x1E696ABC0];
  v5 = [a1 domain];
  v6 = [v4 errorWithDomain:v5 code:objc_msgSend(a1 userInfo:{"code"), v3}];

  return v6;
}

- (uint64_t)fp_isGenericPreflightError
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"NSFileProviderErrorIsGenericPreflightError"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)fp_asWarning
{
  v14[2] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696ABC0] fp_initLocalizationStrings];
  v2 = [a1 userInfo];
  v3 = [v2 mutableCopy];

  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSFileProviderErrorIsSoftError"];
  v4 = [a1 localizedRecoveryOptions];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = FPLocalizedErrorStringForKey(@"Preflight-Cancel");
    v14[0] = v6;
    v7 = FPLocalizedErrorStringForKey(@"Preflight-Continue");
    v14[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A590]];
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = [a1 domain];
  v11 = [v9 errorWithDomain:v10 code:objc_msgSend(a1 userInfo:{"code"), v3}];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (uint64_t)fp_isWarning
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"NSFileProviderErrorIsSoftError"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)fp_isRemoteCrashError
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696A250]];

  if (!v3)
  {
    return 0;
  }

  if ([a1 code] == 4099 || objc_msgSend(a1, "code") == 4097)
  {
    return 1;
  }

  if ([a1 code] != 4101)
  {
    return 0;
  }

  v5 = [a1 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E696AA08]];

  if (v6)
  {
    v4 = [v6 fp_isRemoteCrashError];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)fp_unwrappedErrorForDomains:()FPAdditions
{
  v4 = a3;
  v5 = [a1 domain];
  if (![v5 isEqualToString:*MEMORY[0x1E696A250]])
  {

    goto LABEL_8;
  }

  v6 = [a1 code];

  if (v6 != 4101)
  {
LABEL_8:
    v11 = a1;
    goto LABEL_9;
  }

  v7 = [a1 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x1E696AA08]];

  if (v8)
  {
    v9 = [v8 domain];
    v10 = [v4 containsObject:v9];

    if (v10)
    {
      a1 = v8;
    }
  }

  v11 = a1;

LABEL_9:

  return v11;
}

- (id)fp_unwrappedInternalError
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = @"NSFileProviderInternalErrorDomain";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v3 = [a1 fp_unwrappedErrorForDomains:v2];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)fp_isFeatureUnsupportedError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v3 = [a1 code] == 3328;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)fp_isNotPermittedError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v3 = [a1 code] == 257;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)fp_isNameTooLongError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v3 = [a1 code] == 63;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fp_annotatedErrorWithItems:()FPAdditions variant:
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E696ABC0] fp_initLocalizationStrings];
  v8 = [a1 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"NSFileProviderErrorNonExistentItemIdentifier"];

  if (v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__NSError_FPAdditions__fp_annotatedErrorWithItems_variant___block_invoke;
    v14[3] = &unk_1E793ED40;
    v15 = v9;
    v10 = [v6 indexOfObjectPassingTest:v14];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [a1 fp_annotatedErrorWithItem:0 variant:v7];
    }

    else
    {
      v12 = [v6 objectAtIndex:v10];
      v11 = [a1 fp_annotatedErrorWithItem:v12 variant:v7];
    }
  }

  else
  {
    v11 = [a1 fp_annotatedErrorWithItem:0 variant:v7];
  }

  return v11;
}

- (id)fp_annotatedErrorWithName:()FPAdditions path:variant:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [MEMORY[0x1E696ABC0] fp_initLocalizationStrings];
  v11 = [a1 domain];
  if ([v11 isEqualToString:@"NSFileProviderErrorDomain"])
  {
    goto LABEL_4;
  }

  v12 = [a1 domain];
  if ([v12 isEqualToString:*MEMORY[0x1E696A250]])
  {

LABEL_4:
LABEL_5:
    v13 = [a1 userInfo];
    v14 = [v13 mutableCopy];

    [v14 setValue:v8 forKey:@"NSFileProviderErrorItemName"];
    [v14 setValue:v10 forKey:@"NSUserStringVariant"];
    [v14 setValue:v9 forKey:*MEMORY[0x1E696A368]];
    v15 = MEMORY[0x1E696ABC0];
    v16 = [a1 domain];
    v17 = [v15 errorWithDomain:v16 code:objc_msgSend(a1 userInfo:{"code"), v14}];

    goto LABEL_6;
  }

  v19 = [a1 domain];
  v20 = [v19 isEqualToString:@"NSFileProviderInternalErrorDomain"];

  if (v20)
  {
    goto LABEL_5;
  }

  v17 = a1;
LABEL_6:

  return v17;
}

- (id)fp_annotatedErrorWithURL:()FPAdditions variant:
{
  v13 = 0;
  v6 = *MEMORY[0x1E695DC10];
  v7 = a4;
  v8 = a3;
  [v8 getPromisedItemResourceValue:&v13 forKey:v6 error:0];
  v9 = v13;
  v10 = [v8 path];

  v11 = [a1 fp_annotatedErrorWithName:v9 path:v10 variant:v7];

  return v11;
}

- (id)fp_annotatedErrorWithItem:()FPAdditions variant:
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 displayName];
  v9 = [v7 filename];

  v10 = [a1 fp_annotatedErrorWithName:v8 path:v9 variant:v6];

  return v10;
}

- (id)fp_annotatedErrorWithRecoveryAttempter:()FPAdditions fpProviderDomainId:
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  [v4 fp_initLocalizationStrings];
  v6 = [a1 userInfo];
  v7 = [v6 mutableCopy];

  [v7 setValue:v5 forKey:*MEMORY[0x1E696A8A8]];
  v8 = MEMORY[0x1E696ABC0];
  v9 = [a1 domain];
  v10 = [v8 errorWithDomain:v9 code:objc_msgSend(a1 userInfo:{"code"), v7}];

  return v10;
}

- (id)fp_recoverableErrorWithBlock:()FPAdditions fpProviderDomainId:operationService:
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [v8 fp_initLocalizationStrings];
  v12 = [[FPBlockRecoveryAttempter alloc] initWithBlock:v11 operationService:v9];

  v13 = [a1 fp_annotatedErrorWithRecoveryAttempter:v12 fpProviderDomainId:v10];

  [(FPBlockRecoveryAttempter *)v12 setExpectedError:v13];

  return v13;
}

- (id)fp_annotatedErrorWithOperationItem:()FPAdditions
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  [v4 fp_initLocalizationStrings];
  v6 = [a1 userInfo];
  v7 = [v6 mutableCopy];

  [v7 setValue:v5 forKey:@"NSFileProviderErrorOperationItemKey"];
  v8 = MEMORY[0x1E696ABC0];
  v9 = [a1 domain];
  v10 = [v8 errorWithDomain:v9 code:objc_msgSend(a1 userInfo:{"code"), v7}];

  return v10;
}

- (id)fp_userInfoValueForKey:()FPAdditions
{
  v58[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 domain];
  v6 = [v5 isEqualToString:@"NSFileProviderErrorDomain"];

  if (!v6)
  {
    v15 = 0;
    goto LABEL_43;
  }

  v7 = [a1 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"NSUserStringVariant"];

  v9 = [a1 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"NSFileProviderErrorItemName"];

  v11 = [a1 fp_userInfoItem];
  v12 = [a1 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"NSFileProviderErrorOperationItemKey"];

  if ([v4 isEqualToString:*MEMORY[0x1E696A578]])
  {
    v14 = &stru_1F1F94B20;
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E696A588]])
  {
    v14 = @"-C";
  }

  else
  {
    if (([v4 isEqualToString:*MEMORY[0x1E696A598]] & 1) == 0)
    {
      if ([v4 isEqualToString:*MEMORY[0x1E696A590]])
      {
        if ([a1 code] == -1001)
        {
          v21 = FPLocalizedErrorStringForKey(@"Copy-Stop");
          v58[0] = v21;
          v22 = FPLocalizedErrorStringForKey(@"Copy-Replace");
          v58[1] = v22;
          v23 = FPLocalizedErrorStringForKey(@"Copy-Keep Both");
          v58[2] = v23;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:3];
        }

        else
        {
          if ([a1 code] == -5007)
          {
            v21 = FPLocalizedErrorStringForKey(@"Disconnect-Cancel");
            v57[0] = v21;
            v22 = FPLocalizedErrorStringForKey(@"Disconnect-Force");
            v57[1] = v22;
            v45 = MEMORY[0x1E695DEC8];
            v46 = v57;
          }

          else
          {
            if (![a1 fp_isGenericPreflightError])
            {
              goto LABEL_58;
            }

            v21 = FPLocalizedErrorStringForKey(@"Preflight-Cancel");
            v56[0] = v21;
            v22 = FPLocalizedErrorStringForKey(@"Preflight-Continue");
            v56[1] = v22;
            v45 = MEMORY[0x1E695DEC8];
            v46 = v56;
          }

          v15 = [v45 arrayWithObjects:v46 count:2];
        }

        goto LABEL_42;
      }

LABEL_58:
      v15 = 0;
      goto LABEL_42;
    }

    v14 = @"-R";
  }

  v16 = [a1 code];
  if (v16 > -1005)
  {
    if (v16 <= -1002)
    {
      if (v16 == -1004)
      {
        v20 = @"ServerUnreachable";
        goto LABEL_40;
      }

      if (v16 == -1003)
      {
        v20 = @"InsufficientQuota";
LABEL_40:
        v32 = 0;
        v33 = v14;
        v34 = v8;
LABEL_41:
        v15 = FPLocalizedStringWithKeyAndVariant(v32, v20, v33, v34, v10, v17, v18, v19, v54);
        goto LABEL_42;
      }

      goto LABEL_25;
    }

    if (v16 != -1001)
    {
      if (v16 == -1000)
      {
        v20 = @"NotAuthenticated";
        goto LABEL_40;
      }

LABEL_25:
      if ([a1 code] == -5007)
      {
        v31 = [a1 recoveryAttempter];

        if (v31)
        {
          v32 = @"Recovery-";
        }

        else
        {
          v32 = 0;
        }

        v20 = @"UnsafeDisconnect";
        v33 = v14;
        v34 = 0;
        goto LABEL_41;
      }

      goto LABEL_58;
    }

    v35 = [a1 recoveryAttempter];

    if (v35)
    {
      v36 = @"Recovery-";
    }

    else
    {
      v36 = 0;
    }

    v37 = [v11 contentModificationDate];
    v38 = [v13 contentModificationDate];
    v39 = v38;
    v40 = @"ItemExists";
    v55 = v13;
    if (v37 && v38)
    {
      v41 = [v37 compare:v38];
      if (v41 == -1)
      {
        v42 = @"Older";
        goto LABEL_49;
      }

      if (v41 == 1)
      {
        v42 = @"Newer";
LABEL_49:
        v40 = [(__CFString *)v42 stringByAppendingString:@"ItemExists"];
      }
    }

    v47 = [v11 filename];
    v51 = v37;
    v52 = v47;
    if (v47)
    {
      v53 = v47;
    }

    else
    {
      v53 = v10;
    }

    v15 = FPLocalizedStringWithKeyAndVariant(v36, v40, v14, v8, v53, v48, v49, v50, v54);

    v13 = v55;
    goto LABEL_42;
  }

  if (v16 != -2011)
  {
    if (v16 == -1006)
    {
      v20 = @"DeletionRejected";
      goto LABEL_40;
    }

    if (v16 == -1005)
    {
      v20 = @"NoSuchItem";
      goto LABEL_40;
    }

    goto LABEL_25;
  }

  v24 = [a1 userInfo];
  v25 = [v24 objectForKeyedSubscript:@"NSFileProviderProviderDisplayName"];

  v15 = FPLocalizedStringWithKeyAndVariantLiteral(v26, v27, v14, v8, v10, v28, v29, v30, v25);

LABEL_42:
LABEL_43:

  v43 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)fp_internalUserInfoValueKey:()FPAdditions
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:@"NSFileProviderInternalErrorDomain"];

  if (v3)
  {
    v4 = [a1 userInfo];
    v5 = [v4 objectForKeyedSubscript:@"NSUserStringVariant"];

    if ([a1 code] == 28)
    {
      v9 = FPLocalizedStringWithKeyAndVariant(0, @"ItemNotReadable", &stru_1F1F94B20, v5, 0, v6, v7, v8, v11);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)fp_userInfoItem
{
  if (([a1 fp_isFileProviderError:-1001] & 1) != 0 || objc_msgSend(a1, "fp_isFileProviderError:", -1006))
  {
    v2 = [a1 userInfo];
    v3 = [v2 objectForKeyedSubscript:@"NSFileProviderErrorItem"];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = [a1 userInfo];
      v5 = [v6 objectForKeyedSubscript:@"NSFileProviderErrorCollidingItem"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fp_userInfoFPItem
{
  v4 = [a1 fp_userInfoItem];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      goto LABEL_6;
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"NSError+FPAdditions.m" lineNumber:846 description:{@"we shouldn't have requested an FPItem from the error, it's doesn't contain the right type"}];
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (FPErrorRedactionHelper)fp_prettyDescription:()FPAdditions
{
  v3 = [[FPErrorRedactionHelper alloc] initWithError:a1 depth:a3];

  return v3;
}

- (void)fp_internalErrorForVendorErrorWithCallerDescription:()FPAdditions itemCreationBlock:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Creating internal error for %@, original error was: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fp_internalErrorForVendorErrorWithCallerDescription:()FPAdditions itemCreationBlock:.cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, a2, a3, "[ERROR] Unsupported error was %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)fp_internalErrorForVendorErrorWithCallerDescription:()FPAdditions itemCreationBlock:.cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, a2, a3, "[ERROR] collision error %{public}@ doesn't indicate colliding item", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end