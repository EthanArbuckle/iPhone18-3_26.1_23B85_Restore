@interface NSError(AXExtensions)
+ (id)ax_errorWithDomain:()AXExtensions code:description:;
+ (id)ax_errorWithDomain:()AXExtensions code:description:arguments:;
+ (id)ax_errorWithDomain:()AXExtensions description:;
- (id)ax_nonRedundantDescription;
@end

@implementation NSError(AXExtensions)

+ (id)ax_errorWithDomain:()AXExtensions description:
{
  v9 = [a1 ax_errorWithDomain:a3 code:0 description:a4 arguments:&a9];

  return v9;
}

+ (id)ax_errorWithDomain:()AXExtensions code:description:
{
  v9 = [a1 ax_errorWithDomain:a3 code:a4 description:a5 arguments:&a9];

  return v9;
}

+ (id)ax_errorWithDomain:()AXExtensions code:description:arguments:
{
  v10 = a3;
  if (a5)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = a5;
    v13 = [[v11 alloc] initWithFormat:v12 arguments:a6];

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E695DF20]);
      a5 = [v14 initWithObjectsAndKeys:{v13, *MEMORY[0x1E696A578], 0}];
    }

    else
    {
      a5 = 0;
    }
  }

  v15 = [a1 errorWithDomain:v10 code:a4 userInfo:a5];

  return v15;
}

- (id)ax_nonRedundantDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 domain];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "code")}];
  v5 = [a1 localizedDescription];
  v6 = [v2 stringWithFormat:@"Domain:%@ Code:%@ Reason:%@", v3, v4, v5];

  return v6;
}

@end