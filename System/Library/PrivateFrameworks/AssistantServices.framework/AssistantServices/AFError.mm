@interface AFError
+ (id)errorWithCode:(int64_t)code description:(id)description underlyingError:(id)error;
+ (id)errorWithCode:(int64_t)code description:(id)description underlyingErrors:(id)errors;
+ (id)new;
- (AFError)init;
@end

@implementation AFError

+ (id)new
{
  v12 = *MEMORY[0x1E69E9840];
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AFError.m" lineNumber:57 description:@"AFError is not designed to be instantiated."];

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

+ (id)errorWithCode:(int64_t)code description:(id)description underlyingErrors:(id)errors
{
  descriptionCopy = description;
  errorsCopy = errors;
  if ([errorsCopy count] > 1)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    firstObject = v12;
    if (descriptionCopy)
    {
      [v12 setObject:descriptionCopy forKey:*MEMORY[0x1E696A578]];
    }

    if (errorsCopy)
    {
      v13 = [errorsCopy copy];
      [firstObject setObject:v13 forKey:@"SiriUnderlyingErrors"];
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantErrorDomain" code:code userInfo:firstObject];
  }

  else
  {
    firstObject = [errorsCopy firstObject];
    v11 = [self errorWithCode:code description:descriptionCopy underlyingError:firstObject];
  }

  v14 = v11;

  return v14;
}

+ (id)errorWithCode:(int64_t)code description:(id)description underlyingError:(id)error
{
  descriptionCopy = description;
  errorCopy = error;
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v10 = v9;
  if (descriptionCopy)
  {
    [v9 setObject:descriptionCopy forKey:*MEMORY[0x1E696A578]];
  }

  if (errorCopy)
  {
    [v10 setObject:errorCopy forKey:*MEMORY[0x1E696AA08]];
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

  v13 = [v11 errorWithDomain:@"kAFAssistantErrorDomain" code:code userInfo:v12];

  return v13;
}

- (AFError)init
{
  v12 = *MEMORY[0x1E69E9840];
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AFError.m" lineNumber:65 description:@"AFError is not designed to be instantiated."];

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