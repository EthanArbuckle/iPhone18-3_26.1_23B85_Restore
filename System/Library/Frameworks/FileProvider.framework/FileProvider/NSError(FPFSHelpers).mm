@interface NSError(FPFSHelpers)
+ (id)fp_errorForCollisionWithURL:()FPFSHelpers;
- (id)fp_collidingURL;
@end

@implementation NSError(FPFSHelpers)

+ (id)fp_errorForCollisionWithURL:()FPFSHelpers
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A250];
  v11 = @"FPErrorCollidingURLKey";
  v12[0] = a3;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 errorWithDomain:v4 code:516 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)fp_collidingURL
{
  domain = [self domain];
  if (![domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v4 = 0;
    goto LABEL_5;
  }

  code = [self code];

  if (code == 516)
  {
    domain = [self userInfo];
    v4 = [domain objectForKeyedSubscript:@"FPErrorCollidingURLKey"];
LABEL_5:

    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end