@interface NSError(HealthKit)
+ (id)hk_error:()HealthKit class:selector:format:;
+ (id)hk_error:()HealthKit description:;
+ (id)hk_error:()HealthKit description:underlyingError:;
+ (id)hk_error:()HealthKit format:;
+ (id)hk_errorForInvalidArgument:()HealthKit class:selector:;
+ (id)hk_errorForInvalidArgument:()HealthKit class:selector:format:;
+ (id)hk_errorForNilArgument:()HealthKit class:selector:;
+ (uint64_t)hk_assignError:()HealthKit code:description:;
+ (uint64_t)hk_assignError:()HealthKit code:description:underlyingError:;
+ (uint64_t)hk_assignError:()HealthKit code:format:;
+ (uint64_t)hk_assignError:()HealthKit code:userInfo:;
+ (uint64_t)hk_assignError:()HealthKit invalidArgument:class:selector:;
+ (uint64_t)hk_assignError:()HealthKit nilArgument:class:selector:;
+ (uint64_t)hk_invalidProfileError;
- (BOOL)hk_isErrorInDomain:()HealthKit code:;
- (BOOL)hk_isXPCConnectionError;
- (id)hk_errorByAddingEntriesToUserInfo:()HealthKit;
- (id)hk_sanitizedErrorForDomain:()HealthKit;
- (id)hk_underlyingErrorWithDomain:()HealthKit;
- (uint64_t)hk_isAuthorizationDeniedError;
- (uint64_t)hk_isAuthorizationNotDeterminedError;
- (uint64_t)hk_isCocoaFileExistsError;
- (uint64_t)hk_isCocoaNoSuchFileError;
- (uint64_t)hk_isDatabaseAccessibilityError;
- (uint64_t)hk_isHealthKitError;
- (uint64_t)hk_isHealthKitErrorWithCode:()HealthKit;
- (uint64_t)hk_isInternalFailureError;
- (uint64_t)hk_isInvalidArgumentError;
- (uint64_t)hk_isRequiredAuthorizationError;
- (uint64_t)hk_isServiceDeviceNotFoundError;
- (uint64_t)hk_isStreamFailureError;
- (uint64_t)hk_isTimeoutError;
- (uint64_t)hk_isUserCanceledError;
@end

@implementation NSError(HealthKit)

- (uint64_t)hk_isDatabaseAccessibilityError
{
  result = [a1 hk_isHealthKitError];
  if (result)
  {
    v3 = [a1 code];
    return v3 == 6 || v3 == 101;
  }

  return result;
}

- (uint64_t)hk_isHealthKitError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:@"com.apple.healthkit"];

  return v2;
}

+ (id)hk_error:()HealthKit description:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v12 = *MEMORY[0x1E696A578];
    v13[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [a1 errorWithDomain:@"com.apple.healthkit" code:a3 userInfo:v8];
  }

  else
  {
    v9 = [a1 errorWithDomain:@"com.apple.healthkit" code:a3 userInfo:0];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)hk_error:()HealthKit description:underlyingError:
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = v10;
  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  if (v9)
  {
    [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v12 = [a1 errorWithDomain:@"com.apple.healthkit" code:a3 userInfo:v11];

  return v12;
}

+ (id)hk_error:()HealthKit format:
{
  v11 = MEMORY[0x1E696AEC0];
  v12 = a4;
  v13 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  v14 = [a1 hk_error:a3 description:v13];

  return v14;
}

+ (id)hk_error:()HealthKit class:selector:format:
{
  v23[3] = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E696AEC0];
  v13 = a6;
  v14 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

  v15 = MEMORY[0x1E696ABC0];
  v22[0] = @"HKErrorClass";
  v16 = NSStringFromClass(a4);
  v23[0] = v16;
  v22[1] = @"HKErrorSelector";
  v17 = NSStringFromSelector(a5);
  v22[2] = *MEMORY[0x1E696A578];
  v23[1] = v17;
  v23[2] = v14;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v19 = [v15 hk_error:a3 userInfo:v18];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)hk_errorForInvalidArgument:()HealthKit class:selector:
{
  v18[4] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v17[0] = @"HKErrorClass";
  v8 = a3;
  v9 = NSStringFromClass(a4);
  v18[0] = v9;
  v17[1] = @"HKErrorSelector";
  v10 = NSStringFromSelector(a5);
  v18[1] = v10;
  v18[2] = v8;
  v11 = *MEMORY[0x1E696A578];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid argument: %@", v8, @"HKErrorClass", @"HKErrorSelector", @"HKErrorParameter", v11, v9, v10, v8];
  v18[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v14 = [v7 hk_error:3 userInfo:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)hk_errorForInvalidArgument:()HealthKit class:selector:format:
{
  v24[4] = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E696ABC0];
  v23[0] = @"HKErrorClass";
  v13 = a6;
  v14 = a3;
  v15 = NSStringFromClass(a4);
  v24[0] = v15;
  v23[1] = @"HKErrorSelector";
  v16 = NSStringFromSelector(a5);
  v24[1] = v16;
  v24[2] = v14;
  v17 = *MEMORY[0x1E696A578];
  v23[2] = @"HKErrorParameter";
  v23[3] = v17;
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v13 arguments:&a9];

  v24[3] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
  v20 = [v12 hk_error:3 userInfo:v19];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)hk_errorForNilArgument:()HealthKit class:selector:
{
  v17[4] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v16[0] = @"HKErrorClass";
  v8 = a3;
  v9 = NSStringFromClass(a4);
  v17[0] = v9;
  v16[1] = @"HKErrorSelector";
  v10 = NSStringFromSelector(a5);
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Argument %@ must not be nil", v8, @"HKErrorClass", @"HKErrorSelector", @"HKErrorParameter", *MEMORY[0x1E696A578], v9, v10, v8];
  v17[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v13 = [v7 hk_error:3 userInfo:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (uint64_t)hk_invalidProfileError
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = objc_opt_class();

  return [v3 hk_errorForInvalidArgument:@"@" class:v4 selector:a2 format:@"The HKProfileIdentifier associated with this health store is invalid."];
}

+ (uint64_t)hk_assignError:()HealthKit code:description:
{
  v6 = [a1 hk_error:a4 description:a5];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v8 = v6;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError(v6);
    }
  }

  return 1;
}

+ (uint64_t)hk_assignError:()HealthKit code:description:underlyingError:
{
  v7 = [a1 hk_error:a4 description:a5 underlyingError:a6];
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = v7;
      *a3 = v8;
    }

    else
    {
      _HKLogDroppedError(v7);
    }
  }

  return 1;
}

+ (uint64_t)hk_assignError:()HealthKit code:format:
{
  v12 = MEMORY[0x1E696AEC0];
  v13 = a5;
  v14 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

  v15 = [a1 hk_assignError:a3 code:a4 description:v14];
  return v15;
}

+ (uint64_t)hk_assignError:()HealthKit code:userInfo:
{
  v4 = [a1 errorWithDomain:@"com.apple.healthkit" code:? userInfo:?];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v6 = v4;
      *a3 = v5;
    }

    else
    {
      _HKLogDroppedError(v4);
    }
  }

  return 1;
}

+ (uint64_t)hk_assignError:()HealthKit invalidArgument:class:selector:
{
  v7 = [a1 hk_errorForInvalidArgument:a4 class:a5 selector:a6];
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = v7;
      *a3 = v8;
    }

    else
    {
      _HKLogDroppedError(v7);
    }
  }

  return 1;
}

+ (uint64_t)hk_assignError:()HealthKit nilArgument:class:selector:
{
  v7 = [a1 hk_errorForNilArgument:a4 class:a5 selector:a6];
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = v7;
      *a3 = v8;
    }

    else
    {
      _HKLogDroppedError(v7);
    }
  }

  return 1;
}

- (uint64_t)hk_isHealthKitErrorWithCode:()HealthKit
{
  result = [a1 hk_isHealthKitError];
  if (result)
  {
    return [a1 code] == a3;
  }

  return result;
}

- (uint64_t)hk_isServiceDeviceNotFoundError
{
  result = [a1 hk_isHealthKitError];
  if (result)
  {
    return [a1 code] == 313;
  }

  return result;
}

- (uint64_t)hk_isAuthorizationDeniedError
{
  result = [a1 hk_isHealthKitError];
  if (result)
  {
    return [a1 code] == 4;
  }

  return result;
}

- (uint64_t)hk_isAuthorizationNotDeterminedError
{
  result = [a1 hk_isHealthKitError];
  if (result)
  {
    return [a1 code] == 5;
  }

  return result;
}

- (uint64_t)hk_isInvalidArgumentError
{
  result = [a1 hk_isHealthKitError];
  if (result)
  {
    return [a1 code] == 3;
  }

  return result;
}

- (uint64_t)hk_isInternalFailureError
{
  result = [a1 hk_isHealthKitError];
  if (result)
  {
    return [a1 code] == 100;
  }

  return result;
}

- (uint64_t)hk_isRequiredAuthorizationError
{
  result = [a1 hk_isHealthKitError];
  if (result)
  {
    return [a1 code] == 10;
  }

  return result;
}

- (uint64_t)hk_isStreamFailureError
{
  result = [a1 hk_isHealthKitError];
  if (result)
  {
    return [a1 code] == 104;
  }

  return result;
}

- (uint64_t)hk_isTimeoutError
{
  result = [a1 hk_isHealthKitError];
  if (result)
  {
    return [a1 code] == 103;
  }

  return result;
}

- (uint64_t)hk_isUserCanceledError
{
  result = [a1 hk_isHealthKitError];
  if (result)
  {
    return [a1 code] == 7;
  }

  return result;
}

- (uint64_t)hk_isCocoaNoSuchFileError
{
  v2 = [a1 code];
  v3 = [a1 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x1E696A250]];
  if ((v2 & 0xFFFFFFFFFFFFFEFFLL) == 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)hk_isCocoaFileExistsError
{
  v2 = [a1 code];
  v3 = [a1 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x1E696A250]];
  if (v2 == 516)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hk_isXPCConnectionError
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696A250]];

  if (!v3)
  {
    return 0;
  }

  v4 = [a1 code];
  return v4 == 4099 || (v4 & 0xFFFFFFFFFFFFFFFBLL) == 4097;
}

- (BOOL)hk_isErrorInDomain:()HealthKit code:
{
  v6 = a3;
  v7 = [a1 domain];
  v8 = [v7 isEqualToString:v6];

  if (v8)
  {
    v9 = [a1 code] == a4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)hk_underlyingErrorWithDomain:()HealthKit
{
  v4 = a3;
  v5 = a1;
  if (v5)
  {
    v6 = *MEMORY[0x1E696AA08];
    do
    {
      v7 = [v5 domain];
      v8 = [v7 isEqualToString:v4];

      if (v8)
      {
        break;
      }

      v9 = [v5 userInfo];
      v10 = [v9 objectForKeyedSubscript:v6];

      v5 = v10;
    }

    while (v10);
  }

  return v5;
}

- (id)hk_sanitizedErrorForDomain:()HealthKit
{
  v4 = a3;
  v5 = [a1 domain];
  if ([v5 isEqualToString:v4])
  {

LABEL_4:
    v7 = [a1 hk_sanitizedError];
    goto LABEL_5;
  }

  v6 = [a1 hk_underlyingErrorWithDomain:v4];

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = a1;
LABEL_5:
  v8 = v7;

  return v8;
}

- (id)hk_errorByAddingEntriesToUserInfo:()HealthKit
{
  v4 = a3;
  v5 = [a1 userInfo];
  v6 = [v5 hk_dictionaryByAddingEntriesFromDictionary:v4];

  v7 = objc_alloc(MEMORY[0x1E696ABC0]);
  v8 = [a1 domain];
  v9 = [v7 initWithDomain:v8 code:objc_msgSend(a1 userInfo:{"code"), v6}];

  return v9;
}

@end