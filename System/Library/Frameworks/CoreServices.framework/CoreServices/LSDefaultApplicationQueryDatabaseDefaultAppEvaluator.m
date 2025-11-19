@interface LSDefaultApplicationQueryDatabaseDefaultAppEvaluator
- (id)URLOfDefaultAppForCategory:(unint64_t)a3;
@end

@implementation LSDefaultApplicationQueryDatabaseDefaultAppEvaluator

- (id)URLOfDefaultAppForCategory:(unint64_t)a3
{
  v3 = LSGetDefaultAppCategoryInfoForCategory(a3);
  v4 = [LSClaimBinding alloc];
  v6 = *(v3 + 1);
  v5 = (v3 + 8);
  v12 = 0;
  v7 = [(LSClaimBinding *)v4 initWithTypeIdentifier:v6 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [(LSClaimBinding *)v7 bundleRecord];
    v10 = [v9 URL];
  }

  else
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [LSDefaultApplicationQueryDatabaseDefaultAppEvaluator URLOfDefaultAppForCategory:v5];
    }

    v10 = 0;
  }

  return v10;
}

- (void)URLOfDefaultAppForCategory:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v2, v3, "No best app for %@: %@");
  v4 = *MEMORY[0x1E69E9840];
}

@end