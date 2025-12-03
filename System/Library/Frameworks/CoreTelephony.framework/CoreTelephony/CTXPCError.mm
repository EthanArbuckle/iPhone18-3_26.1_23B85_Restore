@interface CTXPCError
+ (id)errorForCode:(int)code errorString:(id)string;
@end

@implementation CTXPCError

+ (id)errorForCode:(int)code errorString:(id)string
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  codeCopy = code;
  v12 = *MEMORY[0x1E696A578];
  v13[0] = string;
  v6 = MEMORY[0x1E695DF20];
  stringCopy = string;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v4 errorWithDomain:@"CTError" code:codeCopy userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end