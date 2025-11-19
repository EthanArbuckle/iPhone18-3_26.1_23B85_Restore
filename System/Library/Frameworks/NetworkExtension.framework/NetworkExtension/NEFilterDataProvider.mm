@interface NEFilterDataProvider
- (void)applySettings:(NEFilterSettings *)settings completionHandler:(void *)completionHandler;
- (void)resumeFlow:(NEFilterFlow *)flow withVerdict:(NEFilterVerdict *)verdict;
- (void)updateFlow:(NEFilterSocketFlow *)flow usingVerdict:(NEFilterDataVerdict *)verdict forDirection:(NETrafficDirection)direction;
@end

@implementation NEFilterDataProvider

- (void)updateFlow:(NEFilterSocketFlow *)flow usingVerdict:(NEFilterDataVerdict *)verdict forDirection:(NETrafficDirection)direction
{
  v8 = verdict;
  v9 = flow;
  v10 = [(NEProvider *)self context];
  [v10 updateFlow:v9 withVerdict:v8 forDirection:direction];
}

- (void)resumeFlow:(NEFilterFlow *)flow withVerdict:(NEFilterVerdict *)verdict
{
  v6 = verdict;
  v7 = flow;
  v8 = [(NEProvider *)self context];
  [v8 resumeFlow:v7 withVerdict:v6];
}

- (void)applySettings:(NEFilterSettings *)settings completionHandler:(void *)completionHandler
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = settings;
  v7 = completionHandler;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(NEFilterSettings *)v6 checkValidityAndCollectErrors:v8])
    {
      v9 = [(NEProvider *)self context];
      [v9 applySettings:v6 completionHandler:v7];
    }

    else
    {
      if ([v8 count])
      {
        v16 = *MEMORY[0x1E696A578];
        v13 = [v8 componentsJoinedByString:@"\n"];
        v17 = v13;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      }

      else
      {
        v9 = 0;
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEFilterErrorDomain" code:1 userInfo:v9];
      v7[2](v7, v14);
    }
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A578];
    v11 = NEResourcesCopyLocalizedNSString(@"FILTER_SETTINGS_NOT_A_SETTINGS_OBJECT", @"FILTER_SETTINGS_NOT_A_SETTINGS_OBJECT");
    v19[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = [v10 initWithDomain:@"NEFilterErrorDomain" code:1 userInfo:v12];

    v7[2](v7, v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end