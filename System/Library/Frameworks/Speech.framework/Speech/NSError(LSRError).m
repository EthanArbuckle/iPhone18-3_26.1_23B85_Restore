@interface NSError(LSRError)
+ (id)lsr_errorWithCode:()LSRError description:;
@end

@implementation NSError(LSRError)

+ (id)lsr_errorWithCode:()LSRError description:
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v7 = v6;
  if (v5)
  {
    [v6 setObject:v5 forKey:*MEMORY[0x1E696A578]];
  }

  v8 = MEMORY[0x1E696ABC0];
  if ([v7 count])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 errorWithDomain:@"kLSRErrorDomain" code:a3 userInfo:v9];

  return v10;
}

@end