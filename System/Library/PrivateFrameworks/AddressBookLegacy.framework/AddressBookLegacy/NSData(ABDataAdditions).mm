@interface NSData(ABDataAdditions)
- (BOOL)abIsUTF16EntourageVCard;
- (char)abDecodedUTF7;
- (id)abStringAtRange:()ABDataAdditions inEncoding:;
- (uint64_t)abEncodeVCardBase64DataWithInitialLength:()ABDataAdditions;
- (void)abDecodeVCardBase64;
@end

@implementation NSData(ABDataAdditions)

- (id)abStringAtRange:()ABDataAdditions inEncoding:
{
  v6 = [a1 subdataWithRange:?];
  if (a5 == 4000100)
  {

    return [v6 abDecodedUTF7];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:a5];

    return v8;
  }
}

- (BOOL)abIsUTF16EntourageVCard
{
  v2 = [a1 length];
  if (v2 >= 0x16)
  {
    v3 = 22;
  }

  else
  {
    v3 = v2;
  }

  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v8 = 0;
    do
    {
      [a1 getBytes:&v8 range:{v4, 1}];
      if (!v8)
      {
        ++v5;
      }

      v4 += 2;
    }

    while (v4 < v3);
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6 / vcvtd_n_f64_u64(v3, 1uLL) > 0.8;
}

- (uint64_t)abEncodeVCardBase64DataWithInitialLength:()ABDataAdditions
{
  v5 = 4 * [a1 length] / 3uLL;
  v6 = NSZoneMalloc(0, 0x10uLL);
  if (v5 <= 1)
  {
    LODWORD(v5) = 1;
  }

  *v6 = NSZoneMalloc(0, v5);
  v6[2] = 0;
  v6[3] = v5;
  v7 = [a1 bytes];
  v8 = [a1 length];
  if (v8 >= 1)
  {
    v9 = v8;
    v10 = 0;
    v11 = v8;
    do
    {
      if (v10 % 3 == 2)
      {
        a3 = appendToBufferWithLineFolding(v6, Encode64Table[((*v7 | (*(v7 - 1) << 8)) >> 6) & 0x3F], a3);
        v12 = *v7 & 0x3F;
      }

      else if (v10 % 3 == 1)
      {
        v12 = ((*v7 | (*(v7 - 1) << 8)) >> 4) & 0x3F;
      }

      else
      {
        v12 = *v7 >> 2;
      }

      a3 = appendToBufferWithLineFolding(v6, Encode64Table[v12], a3);
      ++v10;
      ++v7;
      --v11;
    }

    while (v11);
    if (v9 % 3 == 2)
    {
      v15 = Encode64Table[4 * (*(v7 - 1) & 0xF)];
      v14 = v6;
      v13 = a3;
      goto LABEL_15;
    }

    if (v9 % 3 == 1)
    {
      v13 = appendToBufferWithLineFolding(v6, Encode64Table[16 * (*(v7 - 1) & 3)], a3);
      v14 = v6;
      v15 = 61;
LABEL_15:
      v16 = appendToBufferWithLineFolding(v14, v15, v13);
      appendToBufferWithLineFolding(v6, 61, v16);
    }
  }

  v17 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*v6 length:v6[2]];
  NSZoneFree(0, v6);
  return v17;
}

- (char)abDecodedUTF7
{
  v2 = [a1 length];
  if (v2)
  {
    v14 = 0;
    v3 = [a1 bytes];
    v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v2];
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v8 = *v3++;
      v7 = v8;
      v15 = v8;
      if (v6)
      {
        v10 = (v7 - 48) >= 0xA && (v7 - 64) >= 0x1Bu && (v7 - 97) >= 0x1Au;
        if (v10 && ((v7 - 43) & 0xFB) != 0)
        {
          v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
          v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v11 options:0];

          if (v12)
          {
            [v4 appendData:v12];

            v5 = 0;
          }

          LOWORD(v7) = v15;
          if (v15 != 45)
          {
LABEL_20:
            v14 = v7;
            [v4 appendBytes:&v14 length:2];
          }

          v6 = 0;
          goto LABEL_22;
        }

        v6 = 1;
        [v5 appendBytes:&v15 length:1];
      }

      else
      {
        if (v7 != 43)
        {
          goto LABEL_20;
        }

        v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
        v6 = 1;
      }

LABEL_22:
      if (!--v2)
      {
        v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:10];

        return v2;
      }
    }
  }

  return v2;
}

- (void)abDecodeVCardBase64
{
  v2 = [MEMORY[0x1E695DF88] dataWithCapacity:{(3 * objc_msgSend(a1, "length")) >> 2}];
  v3 = [a1 bytes];
  v4 = [a1 length];
  if (v4 < 1)
  {
    return v2;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v3 + v4;
  v9 = v3 + 1;
  do
  {
    v10 = Decode64Table[*(v9 - 1) & 0x7F];
    if ((v10 - 252) >= 3)
    {
      if (v10 == 251)
      {
        v7 <<= 6;
        ++v5;
        v12 = ++v6 < 3;
        goto LABEL_13;
      }

      if (v10 == 255 || v6 != 0)
      {
        return v2;
      }

      v6 = 0;
      v7 = v10 + (v7 << 6);
      ++v5;
    }

    v12 = 1;
LABEL_13:
    if (v5 == 4 && v12)
    {
      v15 = BYTE2(v7);
      LOBYTE(v12) = 1;
      [v2 appendBytes:&v15 length:1];
      if (v6 > 1)
      {
        v7 = 0;
        v5 = 0;
      }

      else
      {
        v16 = BYTE1(v7);
        LOBYTE(v12) = 1;
        [v2 appendBytes:&v16 length:1];
        if (v6)
        {
          v7 = 0;
          v5 = 0;
          v6 = 1;
        }

        else
        {
          v17 = v7;
          LOBYTE(v12) = 1;
          [v2 appendBytes:&v17 length:1];
          v7 = 0;
          v5 = 0;
        }
      }
    }

    if (v9 >= v8)
    {
      break;
    }

    ++v9;
  }

  while (v12);
  if (v5 != 0 && v12)
  {
    if (v5 == 3)
    {
      v19 = v7 >> 10;
      [v2 appendBytes:&v19 length:1];
      v20 = v7 >> 2;
      v13 = &v20;
LABEL_27:
      [v2 appendBytes:v13 length:1];
    }

    else if (v5 == 2)
    {
      v18 = v7 >> 4;
      v13 = &v18;
      goto LABEL_27;
    }
  }

  return v2;
}

@end