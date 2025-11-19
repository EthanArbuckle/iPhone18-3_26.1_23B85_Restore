@interface NSArray(_FPSpotlightQueryHelpers)
- (id)_fp_filter:()_FPSpotlightQueryHelpers;
- (id)_fp_map:()_FPSpotlightQueryHelpers;
@end

@implementation NSArray(_FPSpotlightQueryHelpers)

- (id)_fp_map:()_FPSpotlightQueryHelpers
{
  v5 = a3;
  if (!v5)
  {
    [(NSArray(_FPSpotlightQueryHelpers) *)a2 _fp_map:a1];
  }

  v6 = [a1 count];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __45__NSArray__FPSpotlightQueryHelpers___fp_map___block_invoke;
    v14 = &unk_1E793DD88;
    v15 = v7;
    v16 = v5;
    v8 = v7;
    [a1 enumerateObjectsUsingBlock:&v11];
    v9 = [v8 copy];
  }

  else
  {
    v9 = objc_opt_new();
  }

  return v9;
}

- (id)_fp_filter:()_FPSpotlightQueryHelpers
{
  v5 = a3;
  if (!v5)
  {
    [(NSArray(_FPSpotlightQueryHelpers) *)a2 _fp_filter:a1];
  }

  if ([a1 count])
  {
    v6 = objc_opt_new();
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __48__NSArray__FPSpotlightQueryHelpers___fp_filter___block_invoke;
    v13 = &unk_1E793BA20;
    v14 = v6;
    v15 = v5;
    v7 = v6;
    [a1 enumerateObjectsUsingBlock:&v10];
    v8 = [v7 copy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (void)_fp_map:()_FPSpotlightQueryHelpers .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPSpotlightQueryHelpers.m" lineNumber:40 description:@"Block cannot be nil."];
}

- (void)_fp_filter:()_FPSpotlightQueryHelpers .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPSpotlightQueryHelpers.m" lineNumber:52 description:@"Block cannot be nil."];
}

@end