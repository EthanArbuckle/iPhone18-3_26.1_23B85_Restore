@interface LAKeyStoreKey
@end

@implementation LAKeyStoreKey

void __44___LAKeyStoreKey_exportBytesWithCompletion___block_invoke(uint64_t a1, uint64_t a2, __SecKey *a3, void *a4)
{
  error = 0;
  v6 = a4;
  v7 = SecKeyCopyExternalRepresentation(a3, &error);
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v6[2](v6, error);
}

uint64_t __44___LAKeyStoreKey_exportBytesWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  return (*(v4 + 16))(v4, v5, a2);
}

void __62___LAKeyStoreKey_signData_secKeyAlgorithm_context_completion___block_invoke(void *a1, __SecKey *a2, uint64_t a3, void *a4)
{
  error = 0;
  v6 = a1[6];
  v7 = a1[4];
  v8 = a4;
  v9 = SecKeyCreateSignature(a2, v6, v7, &error);
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v8[2](v8, error);
}

uint64_t __62___LAKeyStoreKey_signData_secKeyAlgorithm_context_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  return (*(v4 + 16))(v4, v5, a2);
}

void __65___LAKeyStoreKey_decryptData_secKeyAlgorithm_context_completion___block_invoke(void *a1, __SecKey *a2, uint64_t a3, void *a4)
{
  error = 0;
  v6 = a1[6];
  v7 = a1[4];
  v8 = a4;
  v9 = SecKeyCreateDecryptedData(a2, v6, v7, &error);
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v8[2](v8, error);
}

uint64_t __65___LAKeyStoreKey_decryptData_secKeyAlgorithm_context_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  return (*(v4 + 16))(v4, v5, a2);
}

void __96___LAKeyStoreKey_exchangeKeysWithPublicKey_secKeyAlgorithm_secKeyParameters_context_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v17 = 0;
  v8 = *(a1 + 32);
  v9 = *MEMORY[0x1E697AD30];
  v18[0] = *MEMORY[0x1E697AD68];
  v18[1] = v9;
  v10 = *MEMORY[0x1E697AD40];
  v19[0] = *MEMORY[0x1E697AD78];
  v19[1] = v10;
  v11 = SecKeyCreateWithData(v8, [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2], &v17);
  if (!v11 || v17)
  {
    if (v17)
    {
      v7[2](v7, v17);
    }

    else
    {
      v15 = [LAAuthorizationError genericErrorWithMessage:@"Cannot perform a key exchange with the given public key."];
      v7[2](v7, v15);
    }
  }

  else
  {
    v12 = SecKeyCopyKeyExchangeResult(v6, *(a1 + 56), v11, *(a1 + 40), &v17);
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v7[2](v7, v17);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __96___LAKeyStoreKey_exchangeKeysWithPublicKey_secKeyAlgorithm_secKeyParameters_context_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  return (*(v4 + 16))(v4, v5, a2);
}

void __57___LAKeyStoreKey_encryptData_secKeyAlgorithm_completion___block_invoke(void *a1, uint64_t a2, __SecKey *a3, void *a4)
{
  error = 0;
  v6 = a1[6];
  v7 = a1[4];
  v8 = a4;
  v9 = SecKeyCreateEncryptedData(a3, v6, v7, &error);
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v8[2](v8, error);
}

uint64_t __57___LAKeyStoreKey_encryptData_secKeyAlgorithm_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  return (*(v4 + 16))(v4, v5, a2);
}

void __66___LAKeyStoreKey_verifyData_signature_secKeyAlgorithm_completion___block_invoke(void *a1, uint64_t a2, __SecKey *a3, void *a4)
{
  error = 0;
  v6 = a1[5];
  v5 = a1[6];
  v7 = a1[4];
  v8 = a4;
  SecKeyVerifySignature(a3, v5, v7, v6, &error);
  v8[2](v8, error);
}

void __68___LAKeyStoreKey__performOperationWithContext_operation_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E697B378];
  v5 = a2;
  SecKeySetParameter();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v6);
}

@end