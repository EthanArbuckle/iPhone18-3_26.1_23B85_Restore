@interface LSServerCleanEphemeralMobileContainersForFirstBoot
@end

@implementation LSServerCleanEphemeralMobileContainersForFirstBoot

void ___LSServerCleanEphemeralMobileContainersForFirstBoot_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = _LSAliasGetPath(**(a1 + 40), *(a3 + 12));
  if (v5)
  {
    v16 = 0;
    v6 = [[FSNode alloc] initWithPath:v5 flags:0 error:&v16];
    v7 = v16;
    if (!v6)
    {
      v8 = _LSDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ___LSServerCleanEphemeralMobileContainersForFirstBoot_block_invoke_cold_1();
      }

      goto LABEL_10;
    }

    v8 = +[FSNode rootVolumeNode];
    if (![(FSNode *)v6 isEqual:v8])
    {
      v9 = +[FSNode systemDataVolumeNode];
      if ([(FSNode *)v6 isEqual:v9])
      {
LABEL_7:

        goto LABEL_10;
      }

      v10 = +[FSNode prebootVolumeNode];
      if ([(FSNode *)v6 isEqual:v10])
      {

        goto LABEL_7;
      }

      v12 = +[FSNode userDataVolumeNode];
      v13 = [(FSNode *)v6 isEqual:v12];

      if (v13)
      {
        goto LABEL_11;
      }

      v14 = _LSDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v5;
        _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "Marking container at %{public}@ for removal", buf, 0xCu);
      }

      v15 = *(a1 + 32);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      [v15 addObject:v8];
    }

LABEL_10:

LABEL_11:
  }

  v11 = *MEMORY[0x1E69E9840];
}

void ___LSServerCleanEphemeralMobileContainersForFirstBoot_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_18162D000, v1, OS_LOG_TYPE_ERROR, "Could not create node for container with path %{public}@: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end