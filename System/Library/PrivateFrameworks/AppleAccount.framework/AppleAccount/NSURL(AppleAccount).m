@interface NSURL(AppleAccount)
+ (id)aa_URLWithEndpoint:()AppleAccount;
- (id)aa_endpoint;
@end

@implementation NSURL(AppleAccount)

+ (id)aa_URLWithEndpoint:()AppleAccount
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(NSURL(AppleAccount) *)a2 aa_URLWithEndpoint:a1];
  }

  v6 = MEMORY[0x1E696AEC0];
  v13[0] = @"endpoint";
  v13[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [v6 pathWithComponents:v7];

  v9 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v9 setPath:v8];
  [v9 setScheme:@"x-appleaccount"];
  v10 = [v9 URL];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)aa_endpoint
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v2 = [v1 path];
  v3 = [v2 pathComponents];

  v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_6];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || [v3 count] <= (v4 + 1))
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndexedSubscript:?];
  }

  return v5;
}

+ (void)aa_URLWithEndpoint:()AppleAccount .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSURL+AppleAccount.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"endpoint"}];
}

@end