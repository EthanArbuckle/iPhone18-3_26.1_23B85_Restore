@interface AppleIDAuthenticationCopyCertificateInfoWithBlock
@end

@implementation AppleIDAuthenticationCopyCertificateInfoWithBlock

void ___AppleIDAuthenticationCopyCertificateInfoWithBlock_block_invoke(uint64_t a1, CFDictionaryRef theDict, int a3)
{
  v3 = theDict;
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (a3)
  {
    v6 = AppleIDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109120;
      v11[1] = a3;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_ERROR, "SFAppleIDClientCopyCertificate failed with error %d\n", v11, 8u);
    }

    v7 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -11, 0);
    (*(v4 + 16))(v4, 0, v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    if (theDict)
    {
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], theDict);
      (*(v4 + 16))(v4, Copy, 0);
      if (Copy)
      {
        CFRelease(Copy);
      }

      goto LABEL_13;
    }

    v9 = AppleIDGetLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_ERROR, "Unexpected empty certificate info\n", v11, 2u);
    }

    v3 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -11, 0);
    (*(v4 + 16))(v4, 0, v3);
  }

  if (v3)
  {
LABEL_13:
    CFRelease(v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end