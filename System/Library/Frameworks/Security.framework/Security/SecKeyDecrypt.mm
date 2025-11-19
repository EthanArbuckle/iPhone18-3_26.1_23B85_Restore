@interface SecKeyDecrypt
@end

@implementation SecKeyDecrypt

const __CFData *__SecKeyDecrypt_block_invoke(uint64_t a1, const __CFData *a2, uint64_t a3, void *a4, void *a5)
{
  DecryptedDataWithParameters = SecKeyCreateDecryptedDataWithParameters(*(a1 + 32), *(a1 + 40), a2, 0, a5);
  v8 = DecryptedDataWithParameters;
  if (DecryptedDataWithParameters)
  {
    if (*(a1 + 40) == @"algid:encrypt:RSA:raw")
    {
      BytePtr = CFDataGetBytePtr(DecryptedDataWithParameters);
      if (!*BytePtr)
      {
        v10 = BytePtr;
        Length = CFDataGetLength(v8);
        a4[1] = Length;
        if (!*v10)
        {
          v12 = (v10 + 1);
          do
          {
            if (Length-- < 1)
            {
              break;
            }

            ++*a4;
            a4[1] = Length;
          }

          while (!*v12++);
        }
      }
    }
  }

  return v8;
}

@end