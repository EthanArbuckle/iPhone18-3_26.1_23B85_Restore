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

  v14 = [self _fp_errorWithPOSIXCode:a3 itemURL:0 debugDescription:0 message:v13];

  return v14;
}

+ (id)_fp_errorWithPOSIXCode:()FPAdditions itemURL:debugDescription:message:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  [self fp_initLocalizationStrings];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A998]];

  [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A278]];
  if (v10)
  {
    [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x1E695E620]];
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:a3 userInfo:dictionary];

  return v14;
}

+ (id)fp_invalidArgumentError:()FPAdditions
{
  v17[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  [self fp_initLocalizationStrings];
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
  [self fp_initLocalizationStrings];
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
  [self fp_initLocalizationStrings];
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
  domain = [self domain];
  if ([domain isEqualToString:@"NSFileProviderErrorDomain"])
  {
    code = [self code];

    if (code == a3)
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
  domain = [self domain];
  if ([domain isEqualToString:@"NSFileProviderInternalErrorDomain"])
  {
    code = [self code];

    if (code == a3)
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
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v6 = [self code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)fp_isPOSIXErrorCode:()FPAdditions
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    v6 = [self code] == a3;
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
  userInfo = [self userInfo];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__NSError_FPAdditions__fp_strippedError__block_invoke;
  v11[3] = &unk_1E793A100;
  v12 = v2;
  v4 = v2;
  [userInfo enumerateKeysAndObjectsUsingBlock:v11];

  localizedDescription = [self localizedDescription];
  [v4 setValue:localizedDescription forKey:*MEMORY[0x1E696A578]];

  v6 = [self debugDescription];
  [v4 setValue:v6 forKey:*MEMORY[0x1E696A278]];

  v7 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v9 = [v7 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v4}];

  return v9;
}

- (id)fp_internalErrorForVendorErrorWithCallerDescription:()FPAdditions itemCreationBlock:
{
  v40[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E696ABC0] fp_initLocalizationStrings];
  domain = [self domain];
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(NSError(FPAdditions) *)v6 fp_internalErrorForVendorErrorWithCallerDescription:self itemCreationBlock:v9];
  }

  if (([self fp_isFileProviderError:-1001] & 1) != 0 || objc_msgSend(self, "fp_isFileProviderError:", -1006))
  {
    fp_userInfoItem = [self fp_userInfoItem];
    v11 = fp_userInfoItem;
    if (!fp_userInfoItem)
    {
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(NSError(FPAdditions) *)self fp_internalErrorForVendorErrorWithCallerDescription:v13 itemCreationBlock:v14, v15, v16, v17, v18, v19];
      }

      fp_strippedError = [self fp_strippedError];
      goto LABEL_20;
    }

    if (v7)
    {
      v12 = v7[2](v7, fp_userInfoItem);
      if ([self code] == -1001)
      {
        [MEMORY[0x1E696ABC0] fileProviderErrorForCollisionWithItem:v12];
      }

      else
      {
        [MEMORY[0x1E696ABC0] fileProviderErrorForRejectedDeletionOfItem:v12];
      }
      fp_strippedError = ;

LABEL_20:
      goto LABEL_21;
    }
  }

  if ([domain isEqualToString:@"Swift.CancellationError"])
  {
    fp_strippedError2 = FPUserCancelledError();
LABEL_17:
    fp_strippedError = fp_strippedError2;
    goto LABEL_21;
  }

  v22 = +[FPXPCSanitizer permittedErrorDomains];
  v23 = [v22 containsObject:domain];

  if (v23)
  {
    fp_strippedError2 = [self fp_strippedError];
    goto LABEL_17;
  }

  __FILEPROVIDER_UNSUPPORTED_ERROR__(domain, [self code]);
  v26 = fp_current_or_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [(NSError(FPAdditions) *)self fp_internalErrorForVendorErrorWithCallerDescription:v26 itemCreationBlock:v27, v28, v29, v30, v31, v32];
  }

  v33 = MEMORY[0x1E696ABC0];
  v34 = *MEMORY[0x1E696A250];
  v35 = *MEMORY[0x1E696A278];
  v40[0] = @"Provider returned unsupported error";
  v36 = *MEMORY[0x1E696AA08];
  v39[0] = v35;
  v39[1] = v36;
  fp_strippedError3 = [self fp_strippedError];
  v40[1] = fp_strippedError3;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  fp_strippedError = [v33 errorWithDomain:v34 code:4101 userInfo:v38];

LABEL_21:
  v24 = *MEMORY[0x1E69E9840];

  return fp_strippedError;
}

- (id)fp_genericPreflightError
{
  [MEMORY[0x1E696ABC0] fp_initLocalizationStrings];
  userInfo = [self userInfo];
  v3 = [userInfo mutableCopy];

  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSFileProviderErrorIsGenericPreflightError"];
  v4 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v6 = [v4 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v3}];

  return v6;
}

- (uint64_t)fp_isGenericPreflightError
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"NSFileProviderErrorIsGenericPreflightError"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)fp_asWarning
{
  v14[2] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696ABC0] fp_initLocalizationStrings];
  userInfo = [self userInfo];
  v3 = [userInfo mutableCopy];

  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSFileProviderErrorIsSoftError"];
  localizedRecoveryOptions = [self localizedRecoveryOptions];
  v5 = [localizedRecoveryOptions count];

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
  domain = [self domain];
  v11 = [v9 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v3}];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (uint64_t)fp_isWarning
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"NSFileProviderErrorIsSoftError"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)fp_isRemoteCrashError
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x1E696A250]];

  if (!v3)
  {
    return 0;
  }

  if ([self code] == 4099 || objc_msgSend(self, "code") == 4097)
  {
    return 1;
  }

  if ([self code] != 4101)
  {
    return 0;
  }

  userInfo = [self userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  if (v6)
  {
    fp_isRemoteCrashError = [v6 fp_isRemoteCrashError];
  }

  else
  {
    fp_isRemoteCrashError = 1;
  }

  return fp_isRemoteCrashError;
}

- (id)fp_unwrappedErrorForDomains:()FPAdditions
{
  v4 = a3;
  domain = [self domain];
  if (![domain isEqualToString:*MEMORY[0x1E696A250]])
  {

    goto LABEL_8;
  }

  code = [self code];

  if (code != 4101)
  {
LABEL_8:
    selfCopy2 = self;
    goto LABEL_9;
  }

  userInfo = [self userInfo];
  v8 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  if (v8)
  {
    domain2 = [v8 domain];
    v10 = [v4 containsObject:domain2];

    if (v10)
    {
      self = v8;
    }
  }

  selfCopy2 = self;

LABEL_9:

  return selfCopy2;
}

- (id)fp_unwrappedInternalError
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = @"NSFileProviderInternalErrorDomain";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v3 = [self fp_unwrappedErrorForDomains:v2];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)fp_isFeatureUnsupportedError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v3 = [self code] == 3328;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)fp_isNotPermittedError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v3 = [self code] == 257;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)fp_isNameTooLongError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    v3 = [self code] == 63;
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
  userInfo = [self userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"NSFileProviderErrorNonExistentItemIdentifier"];

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
      v11 = [self fp_annotatedErrorWithItem:0 variant:v7];
    }

    else
    {
      v12 = [v6 objectAtIndex:v10];
      v11 = [self fp_annotatedErrorWithItem:v12 variant:v7];
    }
  }

  else
  {
    v11 = [self fp_annotatedErrorWithItem:0 variant:v7];
  }

  return v11;
}

- (id)fp_annotatedErrorWithName:()FPAdditions path:variant:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [MEMORY[0x1E696ABC0] fp_initLocalizationStrings];
  domain = [self domain];
  if ([domain isEqualToString:@"NSFileProviderErrorDomain"])
  {
    goto LABEL_4;
  }

  domain2 = [self domain];
  if ([domain2 isEqualToString:*MEMORY[0x1E696A250]])
  {

LABEL_4:
LABEL_5:
    userInfo = [self userInfo];
    v14 = [userInfo mutableCopy];

    [v14 setValue:v8 forKey:@"NSFileProviderErrorItemName"];
    [v14 setValue:v10 forKey:@"NSUserStringVariant"];
    [v14 setValue:v9 forKey:*MEMORY[0x1E696A368]];
    v15 = MEMORY[0x1E696ABC0];
    domain3 = [self domain];
    selfCopy = [v15 errorWithDomain:domain3 code:objc_msgSend(self userInfo:{"code"), v14}];

    goto LABEL_6;
  }

  domain4 = [self domain];
  v20 = [domain4 isEqualToString:@"NSFileProviderInternalErrorDomain"];

  if (v20)
  {
    goto LABEL_5;
  }

  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (id)fp_annotatedErrorWithURL:()FPAdditions variant:
{
  v13 = 0;
  v6 = *MEMORY[0x1E695DC10];
  v7 = a4;
  v8 = a3;
  [v8 getPromisedItemResourceValue:&v13 forKey:v6 error:0];
  v9 = v13;
  path = [v8 path];

  v11 = [self fp_annotatedErrorWithName:v9 path:path variant:v7];

  return v11;
}

- (id)fp_annotatedErrorWithItem:()FPAdditions variant:
{
  v6 = a4;
  v7 = a3;
  displayName = [v7 displayName];
  filename = [v7 filename];

  v10 = [self fp_annotatedErrorWithName:displayName path:filename variant:v6];

  return v10;
}

- (id)fp_annotatedErrorWithRecoveryAttempter:()FPAdditions fpProviderDomainId:
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  [v4 fp_initLocalizationStrings];
  userInfo = [self userInfo];
  v7 = [userInfo mutableCopy];

  [v7 setValue:v5 forKey:*MEMORY[0x1E696A8A8]];
  v8 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v10 = [v8 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v7}];

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

  v13 = [self fp_annotatedErrorWithRecoveryAttempter:v12 fpProviderDomainId:v10];

  [(FPBlockRecoveryAttempter *)v12 setExpectedError:v13];

  return v13;
}

- (id)fp_annotatedErrorWithOperationItem:()FPAdditions
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  [v4 fp_initLocalizationStrings];
  userInfo = [self userInfo];
  v7 = [userInfo mutableCopy];

  [v7 setValue:v5 forKey:@"NSFileProviderErrorOperationItemKey"];
  v8 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v10 = [v8 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v7}];

  return v10;
}

- (id)fp_userInfoValueForKey:()FPAdditions
{
  v58[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  domain = [self domain];
  v6 = [domain isEqualToString:@"NSFileProviderErrorDomain"];

  if (!v6)
  {
    v15 = 0;
    goto LABEL_43;
  }

  userInfo = [self userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"NSUserStringVariant"];

  userInfo2 = [self userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"NSFileProviderErrorItemName"];

  fp_userInfoItem = [self fp_userInfoItem];
  userInfo3 = [self userInfo];
  v13 = [userInfo3 objectForKeyedSubscript:@"NSFileProviderErrorOperationItemKey"];

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
        if ([self code] == -1001)
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
          if ([self code] == -5007)
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
            if (![self fp_isGenericPreflightError])
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

  code = [self code];
  if (code > -1005)
  {
    if (code <= -1002)
    {
      if (code == -1004)
      {
        v20 = @"ServerUnreachable";
        goto LABEL_40;
      }

      if (code == -1003)
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

    if (code != -1001)
    {
      if (code == -1000)
      {
        v20 = @"NotAuthenticated";
        goto LABEL_40;
      }

LABEL_25:
      if ([self code] == -5007)
      {
        recoveryAttempter = [self recoveryAttempter];

        if (recoveryAttempter)
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

    recoveryAttempter2 = [self recoveryAttempter];

    if (recoveryAttempter2)
    {
      v36 = @"Recovery-";
    }

    else
    {
      v36 = 0;
    }

    contentModificationDate = [fp_userInfoItem contentModificationDate];
    contentModificationDate2 = [v13 contentModificationDate];
    v39 = contentModificationDate2;
    v40 = @"ItemExists";
    v55 = v13;
    if (contentModificationDate && contentModificationDate2)
    {
      v41 = [contentModificationDate compare:contentModificationDate2];
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

    filename = [fp_userInfoItem filename];
    v51 = contentModificationDate;
    v52 = filename;
    if (filename)
    {
      v53 = filename;
    }

    else
    {
      v53 = v10;
    }

    v15 = FPLocalizedStringWithKeyAndVariant(v36, v40, v14, v8, v53, v48, v49, v50, v54);

    v13 = v55;
    goto LABEL_42;
  }

  if (code != -2011)
  {
    if (code == -1006)
    {
      v20 = @"DeletionRejected";
      goto LABEL_40;
    }

    if (code == -1005)
    {
      v20 = @"NoSuchItem";
      goto LABEL_40;
    }

    goto LABEL_25;
  }

  userInfo4 = [self userInfo];
  v25 = [userInfo4 objectForKeyedSubscript:@"NSFileProviderProviderDisplayName"];

  v15 = FPLocalizedStringWithKeyAndVariantLiteral(v26, v27, v14, v8, v10, v28, v29, v30, v25);

LABEL_42:
LABEL_43:

  v43 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)fp_internalUserInfoValueKey:()FPAdditions
{
  domain = [self domain];
  v3 = [domain isEqualToString:@"NSFileProviderInternalErrorDomain"];

  if (v3)
  {
    userInfo = [self userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"NSUserStringVariant"];

    if ([self code] == 28)
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
  if (([self fp_isFileProviderError:-1001] & 1) != 0 || objc_msgSend(self, "fp_isFileProviderError:", -1006))
  {
    userInfo = [self userInfo];
    v3 = [userInfo objectForKeyedSubscript:@"NSFileProviderErrorItem"];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      userInfo2 = [self userInfo];
      v5 = [userInfo2 objectForKeyedSubscript:@"NSFileProviderErrorCollidingItem"];
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
  fp_userInfoItem = [self fp_userInfoItem];
  if (fp_userInfoItem)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = fp_userInfoItem;
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSError+FPAdditions.m" lineNumber:846 description:{@"we shouldn't have requested an FPItem from the error, it's doesn't contain the right type"}];
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (FPErrorRedactionHelper)fp_prettyDescription:()FPAdditions
{
  v3 = [[FPErrorRedactionHelper alloc] initWithError:self depth:a3];

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