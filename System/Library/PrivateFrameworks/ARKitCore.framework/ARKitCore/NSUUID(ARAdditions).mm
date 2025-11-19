@interface NSUUID(ARAdditions)
+ (id)ar_NSUUIDSetWithCFArrayRef:()ARAdditions;
+ (id)ar_NSUUIDsWithCFArrayRef:()ARAdditions;
+ (id)ar_UUIDWithCFUUIDRef:()ARAdditions;
+ (id)ar_UUIDWithCVPixelBuffer:()ARAdditions;
+ (id)ar_UUIDWithData:()ARAdditions;
+ (id)ar_UUIDWithIntegerValue:()ARAdditions;
+ (id)ar_zeroUUID;
- (CFUUIDRef)ar_createCFUUIDRef;
- (id)ar_tinyUUIDString;
- (uint64_t)ar_integerValue;
@end

@implementation NSUUID(ARAdditions)

+ (id)ar_UUIDWithCVPixelBuffer:()ARAdditions
{
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:BaseAddress length:CVPixelBufferGetHeight(pixelBuffer) * BytesPerRow freeWhenDone:0];
  v7 = [objc_opt_class() ar_UUIDWithData:v6];
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

  return v7;
}

+ (id)ar_UUIDWithData:()ARAdditions
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];

  CC_SHA1(v4, v5, md);
  v8 = *md;
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v8];

  return v6;
}

+ (id)ar_zeroUUID
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v2[1] = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v2];

  return v0;
}

+ (id)ar_UUIDWithIntegerValue:()ARAdditions
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a3;
  v5[1] = ~a3;
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v5];

  return v3;
}

+ (id)ar_UUIDWithCFUUIDRef:()ARAdditions
{
  v5 = CFUUIDGetUUIDBytes(uuid);
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v5];

  return v3;
}

- (uint64_t)ar_integerValue
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v2[1] = 0;
  [a1 getUUIDBytes:v2];
  return v2[0];
}

- (CFUUIDRef)ar_createCFUUIDRef
{
  v3 = *MEMORY[0x1E69E9840];
  *&v2.byte0 = 0;
  *&v2.byte8 = 0;
  [a1 getUUIDBytes:&v2];
  return CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v2);
}

- (id)ar_tinyUUIDString
{
  v1 = [a1 UUIDString];
  v2 = [v1 substringWithRange:{0, 8}];

  return v2;
}

+ (id)ar_NSUUIDsWithCFArrayRef:()ARAdditions
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        v7 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:{CFArrayGetValueAtIndex(theArray, i)}];
        [v5 addObject:v7];
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DEC8] array];
  }

  return v5;
}

+ (id)ar_NSUUIDSetWithCFArrayRef:()ARAdditions
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:Count];
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        v7 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:{CFArrayGetValueAtIndex(theArray, i)}];
        [v5 addObject:v7];
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  return v5;
}

@end