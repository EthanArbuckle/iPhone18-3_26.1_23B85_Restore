@interface LSDatabaseDisplayHeader
@end

@implementation LSDatabaseDisplayHeader

void ___LSDatabaseDisplayHeader_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a3 + 12))
  {
    if (___LSDatabaseDisplayHeader_block_invoke_cold_1())
    {
      v6 = *(a1 + 40);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___LSDatabaseDisplayHeader_block_invoke_2;
      v7[3] = &unk_1E6A1B718;
      v10 = a2;
      v8 = v6;
      v9 = a3;
      [v8 withWarningColors:v7];
    }
  }
}

void ___LSDatabaseDisplayHeader_block_invoke_3(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_21_0(a1);
  if (v4)
  {
    v5 = v4[5];
  }

  v6 = *(v3 + 32);
  OUTLINED_FUNCTION_0_9();
  v8 = *(v7 + 1584);
  v9 = *v1;
  if (!CSStoreGetUnit())
  {
    v10 = *(v3 + 40);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___LSDatabaseDisplayHeader_block_invoke_4;
    v22[3] = &unk_1E6A1B718;
    v25 = v2;
    v23 = v10;
    v24 = v1;
    [v23 withWarningColors:v22];
  }

  v11 = *(v3 + 32);
  if (v11)
  {
    v12 = v11[5];
  }

  v13 = *(v3 + 32);
  OUTLINED_FUNCTION_0_9();
  v15 = *(v14 + 1580);
  v16 = v1[1];
  if (!CSStoreGetUnit())
  {
    v17 = *(v3 + 40);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___LSDatabaseDisplayHeader_block_invoke_5;
    v18[3] = &unk_1E6A1B718;
    v21 = v2;
    v19 = v17;
    v20 = v1;
    [v19 withWarningColors:v18];
  }
}

void ___LSDatabaseDisplayHeader_block_invoke_6(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_21_0(a1);
  if (v4)
  {
    v5 = v4[5];
  }

  v6 = *(v3 + 32);
  OUTLINED_FUNCTION_0_9();
  v8 = *(v7 + 4);
  v9 = *(v1 + 16);
  if (!CSStoreGetUnit())
  {
    v10 = *(v3 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___LSDatabaseDisplayHeader_block_invoke_7;
    v11[3] = &unk_1E6A1B718;
    v14 = v2;
    v12 = v10;
    v13 = v1;
    [v12 withWarningColors:v11];
  }
}

BOOL ___LSDatabaseDisplayHeader_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = v3[5];
  }

  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_0_9();
  v7 = *(v6 + 1584);
  v8 = *v0;
  return CSStoreGetUnit() == 0;
}

@end