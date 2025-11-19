@interface LAKeyStoreBackendFake
@end

@implementation LAKeyStoreBackendFake

id __51___LAKeyStoreBackendFake_createKeyWithQuery_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mutableCopy];
  v2 = *MEMORY[0x1E697B2D0];
  v3 = [v1 objectForKeyedSubscript:*MEMORY[0x1E697B2D0]];
  v4 = [v3 mutableCopy];

  [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E697AD18]];
  v5 = [MEMORY[0x1E69AD210] allowAllACL];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E697ABC8]];

  [v1 setObject:v4 forKeyedSubscript:v2];

  return v1;
}

id __51___LAKeyStoreBackendFake_createKeyWithQuery_error___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  }

  v5 = v4;

  [v5 addObject:a1[6]];

  return v5;
}

id __63___LAKeyStoreBackendFake_createGenericPasswordWithQuery_error___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  }

  v5 = v4;

  [v5 addObject:a1[6]];

  return v5;
}

@end