@interface AppleIDAuthenticationCopyAppleIDsWithBlock
@end

@implementation AppleIDAuthenticationCopyAppleIDsWithBlock

void ___AppleIDAuthenticationCopyAppleIDsWithBlock_block_invoke(uint64_t a1, const void *a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (a3)
  {
    v6 = AppleIDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a3;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_ERROR, "SFAppleIDClientCopyMyAppleID failed with error %d\n", v12, 8u);
    }

    v7 = *MEMORY[0x1E695E480];
  }

  else
  {
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v8 = Mutable;
      if (a2)
      {
        CFArrayAppendValue(Mutable, a2);
      }

      (*(v4 + 16))(v4, v8, 0);
LABEL_13:
      CFRelease(v8);
      if (!a2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v7 = v10;
  }

  v8 = CFErrorCreate(v7, @"CSIdentityErrorDomain", -11, 0);
  (*(v4 + 16))(v4, 0, v8);
  if (v8)
  {
    goto LABEL_13;
  }

  if (a2)
  {
LABEL_7:
    CFRelease(a2);
  }

LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
}

@end