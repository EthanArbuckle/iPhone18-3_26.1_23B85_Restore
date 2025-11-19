@interface PKMetalResourceHandlerBuffer
- (id)initWithSize:(void *)a3 options:(void *)a4 device:(char)a5 purgeable:;
- (void)addReusableBuffer:(uint64_t)a1;
- (void)newBufferWithLength:(const void *)a3 bytes:(unint64_t *)a4 outOffset:(void *)a5 outReusableMetalBuffer:;
@end

@implementation PKMetalResourceHandlerBuffer

- (id)initWithSize:(void *)a3 options:(void *)a4 device:(char)a5 purgeable:
{
  v10 = a4;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = PKMetalResourceHandlerBuffer;
    v11 = objc_msgSendSuper2(&v18, sel_init);
    a1 = v11;
    if (v11)
    {
      v11[4] = a2;
      v11[5] = a3;
      objc_storeStrong(v11 + 1, a4);
      *(a1 + 48) = a5;
      v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
      v13 = a1[7];
      a1[7] = v12;

      v14 = 1;
      do
      {
        v15 = v14;
        v16 = [[PKMetalBuffer alloc] initWithDevice:a1[4] length:0 bytes:a1[5] options:?];
        [a1[7] addObject:v16];

        v14 = 0;
      }

      while ((v15 & 1) != 0);
    }
  }

  return a1;
}

- (void)newBufferWithLength:(const void *)a3 bytes:(unint64_t *)a4 outOffset:(void *)a5 outReusableMetalBuffer:
{
  if (!a1)
  {
    return 0;
  }

  v10 = *(a1 + 32);
  if (v10 >= a2)
  {
    v11 = v10 - *(a1 + 24);
    if (a2 <= v10 >> 2 || v11 >= a2)
    {
      v13 = *(a1 + 16);
      if (v13 && v11 >= a2)
      {
        v14 = 0;
        if (!a3)
        {
LABEL_27:
          v15 = v13;
          v16 = *(a1 + 24);
          *(a1 + 24) = (v16 + ceil(vcvtd_n_f64_u64(a2, 4uLL)) * 16.0);
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
        v24 = [v23 contents];

        memcpy((v24 + *(a1 + 24)), a3, a2);
        v13 = *(a1 + 16);
        goto LABEL_27;
      }

      if (*(a1 + 48) == 1)
      {
        [v13 unlock];
        v14 = *(a1 + 16);
        if (!v14)
        {
LABEL_18:
          if ([*(a1 + 56) count])
          {
            v18 = [*(a1 + 56) lastObject];
            v19 = *(a1 + 16);
            *(a1 + 16) = v18;

            [*(a1 + 56) removeLastObject];
          }

          else
          {
            v20 = [[PKMetalBuffer alloc] initWithDevice:*(a1 + 32) length:0 bytes:*(a1 + 40) options:?];
            v21 = *(a1 + 16);
            *(a1 + 16) = v20;
          }

          if (*(a1 + 48) == 1)
          {
            [*(a1 + 16) lock];
          }

          *(a1 + 24) = 0;
          v13 = *(a1 + 16);
          if (!a3)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v14 = *(a1 + 16);
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      v17 = v14;
      goto LABEL_18;
    }
  }

  v15 = [[PKMetalBuffer alloc] initWithDevice:a2 length:a3 bytes:*(a1 + 40) options:?];
  v16 = 0;
  v14 = 0;
LABEL_28:
  *a4 = v16;
  if (a5)
  {
    v25 = v14;
    *a5 = v14;
  }

  return v15;
}

- (void)addReusableBuffer:(uint64_t)a1
{
  v3 = a2;
  if (a1 && [*(a1 + 56) count] <= 7)
  {
    [*(a1 + 56) addObject:v3];
  }
}

@end