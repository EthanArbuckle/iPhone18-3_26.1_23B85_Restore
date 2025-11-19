@interface CTXPCError
+ (id)errorForCode:(int)a3 errorString:(id)a4;
@end

@implementation CTXPCError

+ (id)errorForCode:(int)a3 errorString:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v12 = *MEMORY[0x1E696A578];
  v13[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v4 errorWithDomain:@"CTError" code:v5 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end