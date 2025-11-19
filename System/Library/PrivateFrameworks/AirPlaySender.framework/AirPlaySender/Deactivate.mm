@interface Deactivate
@end

@implementation Deactivate

void __carEndpoint_Deactivate_block_invoke(uint64_t a1)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (carEndpoint_isDissociated(*(a1 + 32)))
  {
    *(v16 + 24) = 1;
    v2 = *(a1 + 32);
    v3 = *(v2 + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_Deactivate_block_invoke_2;
    block[3] = &unk_27849F320;
    block[4] = &v19;
    block[5] = v2;
    dispatch_sync(v3, block);
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      Value = CFDictionaryGetValue(v4, *MEMORY[0x277CC0B90]);
    }

    else
    {
      Value = 0;
    }

    carEndpoint_deactivateInternal(*(a1 + 48), 0, Value, v20 + 6);
  }

  if (*(a1 + 56))
  {
    CFRetain(*(a1 + 48));
    v6 = **(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __carEndpoint_Deactivate_block_invoke_3;
    v10[3] = &unk_27849F348;
    v11 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v10[4] = &v19;
    v10[5] = &v15;
    v7 = *(a1 + 72);
    v12 = *(a1 + 64);
    v13 = v7;
    dispatch_async(v6, v10);
  }

  v8 = *(v20 + 6);
  if (v8)
  {
    carEndpoint_postActivationNotification(*(a1 + 48), *MEMORY[0x277CC0D40], v8);
  }

  CFRelease(*(a1 + 48));
  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

void __carEndpoint_Deactivate_block_invoke_3(uint64_t a1)
{
  v2 = a1 + 56;
  v1 = *(a1 + 56);
  if (*(*(*(v2 - 16) + 8) + 24))
  {
    v3 = 4294950573;
  }

  else
  {
    v3 = 0;
  }

  (*(v2 - 8))(v1, *(v2 + 8), *(*(*(v2 - 24) + 8) + 24), v3, *(v2 + 16));
  CFRelease(*v2);
  if (*(*(*(v2 - 16) + 8) + 24))
  {
    if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
LABEL_13:
      __carEndpoint_Deactivate_block_invoke_3_cold_1();
    }
  }

  else if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_13;
  }
}

@end