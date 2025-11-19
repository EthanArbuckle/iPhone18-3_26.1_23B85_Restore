@interface NSURLProtectionSpace
@end

@implementation NSURLProtectionSpace

uint64_t __60__NSURLProtectionSpace_SafariServicesExtras___sf_identities__block_invoke(uint64_t a1, void *a2)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CFGetTypeID(v3);
  if (v4 == SecIdentityGetTypeID())
  {
    certificateRef = 0;
    v5 = 0;
    if (!SecIdentityCopyCertificate(v3, &certificateRef))
    {
      if (certificateRef)
      {
        result = 0;
        v6 = *MEMORY[0x1E697B258];
        v13[0] = *MEMORY[0x1E697B3D0];
        v13[1] = v6;
        v7 = *(a1 + 32);
        v14[0] = certificateRef;
        v14[1] = v7;
        v13[2] = *MEMORY[0x1E697B328];
        v14[2] = MEMORY[0x1E695E118];
        v8 = SecItemCopyMatching([MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3], &result);
        IsValid = SecCertificateIsValid();
        CFRelease(certificateRef);
        v5 = 0;
        if (!v8)
        {
          if (result)
          {
            CFRelease(result);
            if (IsValid)
            {
              v5 = 1;
            }

            else
            {
              v5 = 0;
              ++*(*(*(a1 + 40) + 8) + 24);
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end