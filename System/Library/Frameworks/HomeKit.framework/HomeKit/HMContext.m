@interface HMContext
@end

@implementation HMContext

void __70___HMContext_Convenience__sendMessage_target_payload_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70___HMContext_Convenience__sendMessage_target_payload_responseHandler___block_invoke_2;
  block[3] = &unk_1E754E0F8;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __70___HMContext_Convenience__sendMessage_target_payload_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70___HMContext_Convenience__sendMessage_target_payload_responseHandler___block_invoke_4;
    v5[3] = &unk_1E754E458;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

@end