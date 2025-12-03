@interface ATMD5SignatureProvider
- (id)createSignature:(id *)signature forData:(id)data;
- (id)verifySignature:(id)signature forData:(id)data;
@end

@implementation ATMD5SignatureProvider

- (id)verifySignature:(id)signature forData:(id)data
{
  signatureCopy = signature;
  dataCopy = data;
  if ([dataCopy length] && objc_msgSend(signatureCopy, "length"))
  {
    v7 = malloc_type_malloc(0x10uLL, 0x1A9840CuLL);
    CC_MD5([dataCopy bytes], objc_msgSend(dataCopy, "length"), v7);
    v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:16 freeWhenDone:1];
    if ([v8 isEqualToData:signatureCopy])
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

  else if ([dataCopy length] || objc_msgSend(signatureCopy, "length"))
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:4 userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)createSignature:(id *)signature forData:(id)data
{
  dataCopy = data;
  v6 = [dataCopy length];
  if (v6)
  {
    v7 = malloc_type_malloc(0x10uLL, 0xDF9A226AuLL);
    CC_MD5([dataCopy bytes], objc_msgSend(dataCopy, "length"), v7);
    v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:16 freeWhenDone:1];
  }

  *signature = v6;

  return 0;
}

@end