@interface NSData(AAAFoundation)
+ (__CFData)aaf_fromImageRef:()AAAFoundation;
- (CFTypeRef)aaf_toImageRef;
- (id)aaf_toCompressedData:()AAAFoundation;
- (id)aaf_toHexString;
@end

@implementation NSData(AAAFoundation)

- (id)aaf_toHexString
{
  v2 = [self length];
  bytes = [self bytes];
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:2 * v2];
  if (v2 >= 1)
  {
    do
    {
      v5 = *bytes++;
      [v4 appendFormat:@"%02X", v5];
      --v2;
    }

    while (v2);
  }

  v6 = [v4 copy];

  return v6;
}

+ (__CFData)aaf_fromImageRef:()AAAFoundation
{
  Mutable = CFDataCreateMutable(0, 0);
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v6 = CGImageDestinationCreateWithData(Mutable, identifier, 1uLL, 0);

  if (v6)
  {
    CGImageDestinationAddImage(v6, a3, 0);
    CGImageDestinationFinalize(v6);
    CFRelease(v6);
  }

  if ([(__CFData *)Mutable length])
  {
    v7 = Mutable;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CFTypeRef)aaf_toImageRef
{
  v1 = CGImageSourceCreateWithData(self, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, 0, 0);
  CFRelease(v2);
  if (!ImageAtIndex)
  {
    return 0;
  }

  return CFAutorelease(ImageAtIndex);
}

- (id)aaf_toCompressedData:()AAAFoundation
{
  v5 = [self length];
  if (v5 < 0)
  {
    v11 = _AAFLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(NSData(AAAFoundation) *)v11 aaf_toCompressedData:v12, v13, v14, v15, v16, v17, v18];
    }

    goto LABEL_9;
  }

  v6 = 2 * v5;
  v7 = malloc_type_malloc(2 * v5, 0xF9BF7085uLL);
  if (!v7)
  {
    v11 = _AAFLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(NSData(AAAFoundation) *)v11 aaf_toCompressedData:v19, v20, v21, v22, v23, v24, v25];
    }

LABEL_9:

    goto LABEL_10;
  }

  v8 = v7;
  v9 = compression_encode_buffer(v7, v6, [self bytes], objc_msgSend(self, "length"), 0, a3);
  if (v9)
  {
    v10 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v8 length:v9 freeWhenDone:1];
    goto LABEL_11;
  }

  v27 = _AAFLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [(NSData(AAAFoundation) *)v27 aaf_toCompressedData:v28, v29, v30, v31, v32, v33, v34];
  }

  free(v8);
LABEL_10:
  v10 = 0;
LABEL_11:

  return v10;
}

@end