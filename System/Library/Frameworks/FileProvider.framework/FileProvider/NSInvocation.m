@interface NSInvocation
@end

@implementation NSInvocation

id __46__NSInvocation_FPExtensions__fp_sanitizeError__block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[FPXPCSanitizer permittedErrorDomains];
  v4 = [v2 domain];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v6 = v2;
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v12 = *MEMORY[0x1E696AA08];
    v13[0] = v2;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = [v7 errorWithDomain:v8 code:4101 userInfo:v9];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

@end