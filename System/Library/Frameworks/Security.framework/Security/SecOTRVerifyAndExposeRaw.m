@interface SecOTRVerifyAndExposeRaw
@end

@implementation SecOTRVerifyAndExposeRaw

void __SecOTRVerifyAndExposeRaw_locked_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = SecOTRPublicIdentityCopyFromPrivate(*MEMORY[0x1E695E480], *(*(a1 + 32) + 24), 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __SecOTRVerifyAndExposeRaw_locked_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_71_12781;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = a2;
  SecOTRPIPerformWithSerializationString(v4, v5);
  if (v4)
  {
    CFRelease(v4);
  }
}

void __SecOTRVerifyAndExposeRaw_locked_block_invoke_2(void *a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecOTRVerifyAndExposeRaw_locked_block_invoke_3;
  v4[3] = &__block_descriptor_tmp_70_12782;
  v2 = *(a1[4] + 32);
  v5 = *(a1 + 2);
  v3 = a1[7];
  v6 = a1[6];
  v7 = a2;
  v8 = v3;
  SecOTRPIPerformWithSerializationString(v2, v4);
}

void __SecOTRVerifyAndExposeRaw_locked_block_invoke_3(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("OTR");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = v5[10];
    v8 = v5[11];
    v9 = v5[13];
    v10 = v5[14];
    v17 = 134219522;
    v18 = v5;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "session[%p] failed to decrypt, session: %@, mk: %@, mpk: %@, tpk: %@, tk: %@, chose tktu: %@", &v17, 0x48u);
  }

  v11 = secLogObjForScope("OTR");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[4];
    v13 = a1[6];
    v14 = a1[7];
    v15 = a1[8];
    v17 = 134219010;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = a2;
    v25 = 2112;
    v26 = v15;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "session[%p] failed to decrypt, mktu: %@, mpi: %@, tpi: %@, m: %@", &v17, 0x34u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end