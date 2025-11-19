@interface SOSCCBailFromCircle
@end

@implementation SOSCCBailFromCircle

uint64_t __SOSCCBailFromCircle_BestEffort_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v3 = *(gSecurityd + 360)) != 0)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    return v3(v5, v4);
  }

  else
  {
    v16 = v1;
    v17 = v2;
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __uint64_t_to_BOOL_error_request_block_invoke;
    v11[3] = &__block_descriptor_40_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v11[4] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __uint64_t_to_BOOL_error_request_block_invoke_2;
    v10[3] = &unk_1E70DEAC0;
    v10[4] = &v12;
    securityd_send_sync_and_do(0x3Cu, v7, v11, v10);
    v9 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
    return v9;
  }
}

@end