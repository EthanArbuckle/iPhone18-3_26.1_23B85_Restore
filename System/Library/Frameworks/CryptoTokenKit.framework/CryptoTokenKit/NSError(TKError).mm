@interface NSError(TKError)
+ (id)errorWithCode:()TKError debugDescription:;
@end

@implementation NSError(TKError)

+ (id)errorWithCode:()TKError debugDescription:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E696A278];
  v13[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [self _errorWithCode:a3 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end