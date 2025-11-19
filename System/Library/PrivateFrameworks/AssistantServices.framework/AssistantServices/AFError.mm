@interface AFError
+ (id)errorWithCode:(int64_t)a3 description:(id)a4 underlyingError:(id)a5;
+ (id)errorWithCode:(int64_t)a3 description:(id)a4 underlyingErrors:(id)a5;
+ (id)new;
- (AFError)init;
@end

@implementation AFError

+ (id)new
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"AFError.m" lineNumber:57 description:@"AFError is not designed to be instantiated."];

  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "+[AFError new]";
    v10 = 2080;
    v11 = "+[AFError new]";
    _os_log_fault_impl(&dword_1912FE000, v5, OS_LOG_TYPE_FAULT, "%s %s is not available, as AFError is not designed to be instantiated. Returning nil.", &v8, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (id)errorWithCode:(int64_t)a3 description:(id)a4 underlyingErrors:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([v9 count] > 1)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v10 = v12;
    if (v8)
    {
      [v12 setObject:v8 forKey:*MEMORY[0x1E696A578]];
    }

    if (v9)
    {
      v13 = [v9 copy];
      [v10 setObject:v13 forKey:@"SiriUnderlyingErrors"];
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantErrorDomain" code:a3 userInfo:v10];
  }

  else
  {
    v10 = [v9 firstObject];
    v11 = [a1 errorWithCode:a3 description:v8 underlyingError:v10];
  }

  v14 = v11;

  return v14;
}

+ (id)errorWithCode:(int64_t)a3 description:(id)a4 underlyingError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v10 = v9;
  if (v7)
  {
    [v9 setObject:v7 forKey:*MEMORY[0x1E696A578]];
  }

  if (v8)
  {
    [v10 setObject:v8 forKey:*MEMORY[0x1E696AA08]];
  }

  v11 = MEMORY[0x1E696ABC0];
  if ([v10 count])
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 errorWithDomain:@"kAFAssistantErrorDomain" code:a3 userInfo:v12];

  return v13;
}

- (AFError)init
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AFError.m" lineNumber:65 description:@"AFError is not designed to be instantiated."];

  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[AFError init]";
    v10 = 2080;
    v11 = "[AFError init]";
    _os_log_fault_impl(&dword_1912FE000, v5, OS_LOG_TYPE_FAULT, "%s %s is not available, as AFError is not designed to be instantiated. Returning nil.", &v8, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

@end