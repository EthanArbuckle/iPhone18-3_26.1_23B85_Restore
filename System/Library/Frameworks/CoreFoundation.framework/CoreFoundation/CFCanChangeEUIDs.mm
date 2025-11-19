@interface CFCanChangeEUIDs
@end

@implementation CFCanChangeEUIDs

uint64_t ___CFCanChangeEUIDs_block_invoke()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = geteuid();
  v1 = getuid();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  *v8 = 0xE00000001;
  v9 = 1;
  v10 = getpid();
  v7 = 648;
  result = sysctl(v8, 4u, v11, &v7, 0, 0);
  v3 = result != 0;
  v4 = HIDWORD(v12);
  if (result)
  {
    v4 = -1;
  }

  if (v4 != v0)
  {
    v3 = 1;
  }

  if (v1)
  {
    v5 = v1 == v0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v3 = 1;
  }

  _CFCanChangeEUIDs_canChangeEUIDs = v3;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end