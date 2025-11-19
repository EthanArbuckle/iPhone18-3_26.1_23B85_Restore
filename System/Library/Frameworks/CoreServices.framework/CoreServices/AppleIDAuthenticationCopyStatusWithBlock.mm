@interface AppleIDAuthenticationCopyStatusWithBlock
@end

@implementation AppleIDAuthenticationCopyStatusWithBlock

void ___AppleIDAuthenticationCopyStatusWithBlock_block_invoke(uint64_t a1, const __CFDictionary *a2, int a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    ___AppleIDAuthenticationCopyStatusWithBlock_block_invoke_cold_1(a3, &v18);
    v15 = v18;
LABEL_25:
    (*(v4 + 16))(v4, 0, 0, v15);
    Mutable = 0;
    goto LABEL_16;
  }

  v5 = *MEMORY[0x1E695E480];
  if (!a2)
  {
    v15 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -11, 0);
    goto LABEL_25;
  }

  v6 = MEMORY[0x1E695E9D8];
  v7 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = CFDictionaryCreateMutable(v5, 0, v6, v7);
  v10 = v9;
  if (Mutable)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = getkSFAppleIDClientAccountInfoAppleIDCFKey();
    if (v12)
    {
      Value = CFDictionaryGetValue(a2, v12);
      TypeID = CFStringGetTypeID();
      if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
      {
        CFDictionaryAddValue(v10, Value, a2);
        CFDictionaryAddValue(Mutable, @"AccountStatuses", v10);
        v15 = 0;
        v16 = 1;
        v17 = Mutable;
LABEL_14:
        (*(v4 + 16))(v4, v16, v17, v15);
LABEL_15:
        CFRelease(v10);
        goto LABEL_16;
      }
    }

    else
    {
      CFStringGetTypeID();
    }

    v15 = CFErrorCreate(v5, @"CSIdentityErrorDomain", -11, 0);
    v17 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v15 = CFErrorCreate(v5, @"CSIdentityErrorDomain", -11, 0);
  (*(v4 + 16))(v4, 0, 0, v15);
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v15)
  {
    CFRelease(v15);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (a2)
  {
    CFRelease(a2);
  }
}

CFErrorRef ___AppleIDAuthenticationCopyStatusWithBlock_block_invoke_cold_1(int a1, CFErrorRef *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = AppleIDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = a1;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_ERROR, "SFAppleIDClientCopyAccountInfo failed with error %d\n", v7, 8u);
  }

  result = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -11, 0);
  *a2 = result;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end