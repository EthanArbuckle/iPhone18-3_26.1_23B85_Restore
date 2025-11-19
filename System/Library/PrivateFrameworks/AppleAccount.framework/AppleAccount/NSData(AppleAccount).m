@interface NSData(AppleAccount)
- (id)aa_compressedData:()AppleAccount;
- (id)aa_hexString;
@end

@implementation NSData(AppleAccount)

- (id)aa_hexString
{
  v2 = [a1 length];
  v3 = [a1 bytes];
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:2 * v2];
  if (v2 >= 1)
  {
    do
    {
      v5 = *v3++;
      [v4 appendFormat:@"%02X", v5];
      --v2;
    }

    while (v2);
  }

  v6 = [v4 copy];

  return v6;
}

- (id)aa_compressedData:()AppleAccount
{
  v5 = [a1 length];
  if (v5 < 0)
  {
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(NSData(AppleAccount) *)v11 aa_compressedData:v12, v13, v14, v15, v16, v17, v18];
    }

    goto LABEL_9;
  }

  v6 = 2 * v5;
  v7 = malloc_type_malloc(2 * v5, 0xEF6CA7B6uLL);
  if (!v7)
  {
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(NSData(AppleAccount) *)v11 aa_compressedData:v19, v20, v21, v22, v23, v24, v25];
    }

LABEL_9:

    goto LABEL_10;
  }

  v8 = v7;
  v9 = compression_encode_buffer(v7, v6, [a1 bytes], objc_msgSend(a1, "length"), 0, a3);
  if (v9)
  {
    v10 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v8 length:v9 freeWhenDone:1];
    goto LABEL_11;
  }

  v27 = _AALogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [(NSData(AppleAccount) *)v27 aa_compressedData:v28, v29, v30, v31, v32, v33, v34];
  }

  free(v8);
LABEL_10:
  v10 = 0;
LABEL_11:

  return v10;
}

@end