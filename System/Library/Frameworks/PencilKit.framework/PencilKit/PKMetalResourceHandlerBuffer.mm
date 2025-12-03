@interface PKMetalResourceHandlerBuffer
- (id)initWithSize:(void *)size options:(void *)options device:(char)device purgeable:;
- (void)addReusableBuffer:(uint64_t)buffer;
- (void)newBufferWithLength:(const void *)length bytes:(unint64_t *)bytes outOffset:(void *)offset outReusableMetalBuffer:;
@end

@implementation PKMetalResourceHandlerBuffer

- (id)initWithSize:(void *)size options:(void *)options device:(char)device purgeable:
{
  optionsCopy = options;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = PKMetalResourceHandlerBuffer;
    v11 = objc_msgSendSuper2(&v18, sel_init);
    self = v11;
    if (v11)
    {
      v11[4] = a2;
      v11[5] = size;
      objc_storeStrong(v11 + 1, options);
      *(self + 48) = device;
      v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
      v13 = self[7];
      self[7] = v12;

      v14 = 1;
      do
      {
        v15 = v14;
        v16 = [[PKMetalBuffer alloc] initWithDevice:self[4] length:0 bytes:self[5] options:?];
        [self[7] addObject:v16];

        v14 = 0;
      }

      while ((v15 & 1) != 0);
    }
  }

  return self;
}

- (void)newBufferWithLength:(const void *)length bytes:(unint64_t *)bytes outOffset:(void *)offset outReusableMetalBuffer:
{
  if (!self)
  {
    return 0;
  }

  v10 = *(self + 32);
  if (v10 >= a2)
  {
    v11 = v10 - *(self + 24);
    if (a2 <= v10 >> 2 || v11 >= a2)
    {
      v13 = *(self + 16);
      if (v13 && v11 >= a2)
      {
        v14 = 0;
        if (!length)
        {
LABEL_27:
          v15 = v13;
          v16 = *(self + 24);
          *(self + 24) = (v16 + ceil(vcvtd_n_f64_u64(a2, 4uLL)) * 16.0);
          goto LABEL_28;
        }

LABEL_24:
        if (v13)
        {
          v22 = v13[3];
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        contents = [v23 contents];

        memcpy((contents + *(self + 24)), length, a2);
        v13 = *(self + 16);
        goto LABEL_27;
      }

      if (*(self + 48) == 1)
      {
        [v13 unlock];
        v14 = *(self + 16);
        if (!v14)
        {
LABEL_18:
          if ([*(self + 56) count])
          {
            lastObject = [*(self + 56) lastObject];
            v19 = *(self + 16);
            *(self + 16) = lastObject;

            [*(self + 56) removeLastObject];
          }

          else
          {
            v20 = [[PKMetalBuffer alloc] initWithDevice:*(self + 32) length:0 bytes:*(self + 40) options:?];
            v21 = *(self + 16);
            *(self + 16) = v20;
          }

          if (*(self + 48) == 1)
          {
            [*(self + 16) lock];
          }

          *(self + 24) = 0;
          v13 = *(self + 16);
          if (!length)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v14 = *(self + 16);
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      v17 = v14;
      goto LABEL_18;
    }
  }

  v15 = [[PKMetalBuffer alloc] initWithDevice:a2 length:length bytes:*(self + 40) options:?];
  v16 = 0;
  v14 = 0;
LABEL_28:
  *bytes = v16;
  if (offset)
  {
    v25 = v14;
    *offset = v14;
  }

  return v15;
}

- (void)addReusableBuffer:(uint64_t)buffer
{
  v3 = a2;
  if (buffer && [*(buffer + 56) count] <= 7)
  {
    [*(buffer + 56) addObject:v3];
  }
}

@end