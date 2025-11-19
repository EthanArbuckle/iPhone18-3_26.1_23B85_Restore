@interface SecItemAddAndNotifyOnSync
@end

@implementation SecItemAddAndNotifyOnSync

BOOL ___SecItemAddAndNotifyOnSync_block_invoke(uint64_t a1, __CFString **a2)
{
  v4 = *(*(a1 + 40) + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___SecItemAddAndNotifyOnSync_block_invoke_2;
  v9[3] = &unk_1E70DED38;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v7 = SecItemAuthDoQuery((v4 + 32), 0, SecItemAdd, a2, v9);

  return v7;
}

uint64_t ___SecItemAddAndNotifyOnSync_block_invoke_2(uint64_t a1, void *a2, const __CFDictionary *a3, uint64_t a4, const __CFDictionary *a5, __CFString **a6)
{
  v10 = a2;
  if (v10)
  {
    (*(*(a1 + 32) + 16))();
    v11 = 0;
  }

  else
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = ___SecItemAddAndNotifyOnSync_block_invoke_3;
    v26[3] = &unk_1E70DECC0;
    v27 = *(a1 + 32);
    v12 = SecuritydXPCProxyObject(0, v26);
    if (v12)
    {
      v13 = [SecuritydXPCCallback alloc];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = ___SecItemAddAndNotifyOnSync_block_invoke_4;
      v24[3] = &unk_1E70DECE8;
      v25 = *(a1 + 32);
      v14 = [(SecuritydXPCCallback *)v13 initWithCallback:v24];
      v15 = dispatch_semaphore_create(0);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = ___SecItemAddAndNotifyOnSync_block_invoke_5;
      v20[3] = &unk_1E70DED10;
      v22 = &v32;
      v23 = &v28;
      v16 = v15;
      v21 = v16;
      [v12 SecItemAddAndNotifyOnSync:a3 syncCallback:v14 complete:v20];
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      v17 = v29[3];
      if (a6)
      {
        *a6 = v17;
      }

      if (v17)
      {
        v11 = 0;
      }

      else
      {
        v11 = SecItemResultProcess(a3, a5, 0, v33[3], *(a1 + 40), a6);
      }

      v18 = v33[3];
      if (v18)
      {
        v33[3] = 0;
        CFRelease(v18);
      }
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
  }

  return v11;
}

void ___SecItemAddAndNotifyOnSync_block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v12;
  if (v12 || (v9 = v7) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v10;
  v11 = v8;
  *(*(*(a1 + 48) + 8) + 24) = v11;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end