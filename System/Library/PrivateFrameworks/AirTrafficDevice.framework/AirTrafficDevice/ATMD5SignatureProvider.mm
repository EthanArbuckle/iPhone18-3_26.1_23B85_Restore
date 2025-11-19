@interface ATMD5SignatureProvider
- (id)createSignature:(id *)a3 forData:(id)a4;
- (id)verifySignature:(id)a3 forData:(id)a4;
@end

@implementation ATMD5SignatureProvider

- (id)verifySignature:(id)a3 forData:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 length] && objc_msgSend(v5, "length"))
  {
    v7 = malloc_type_malloc(0x10uLL, 0x1A9840CuLL);
    CC_MD5([v6 bytes], objc_msgSend(v6, "length"), v7);
    v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:16 freeWhenDone:1];
    if ([v8 isEqualToData:v5])
    {
      v9 = 0;
    }

    else
    {
      v10 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_ERROR, "failed to verify signature", v12, 2u);
      }

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
    }
  }

  else if ([v6 length] || objc_msgSend(v5, "length"))
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:4 userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)createSignature:(id *)a3 forData:(id)a4
{
  v5 = a4;
  v6 = [v5 length];
  if (v6)
  {
    v7 = malloc_type_malloc(0x10uLL, 0xDF9A226AuLL);
    CC_MD5([v5 bytes], objc_msgSend(v5, "length"), v7);
    v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:16 freeWhenDone:1];
  }

  *a3 = v6;

  return 0;
}

@end