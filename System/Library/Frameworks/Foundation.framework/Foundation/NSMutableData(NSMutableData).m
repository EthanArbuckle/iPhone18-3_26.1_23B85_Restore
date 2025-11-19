@interface NSMutableData(NSMutableData)
+ (id)allocWithZone:()NSMutableData;
+ (id)dataWithCapacity:()NSMutableData;
+ (id)dataWithLength:()NSMutableData;
+ (uint64_t)_newZeroingDataWithBytes:()NSMutableData length:;
- (uint64_t)increaseLengthBy:()NSMutableData;
- (uint64_t)setData:()NSMutableData;
- (void)appendBytes:()NSMutableData length:;
- (void)appendData:()NSMutableData;
- (void)initWithLength:()NSMutableData;
- (void)mutableBytes;
- (void)replaceBytesInRange:()NSMutableData withBytes:;
- (void)replaceBytesInRange:()NSMutableData withBytes:length:;
- (void)resetBytesInRange:()NSMutableData;
- (void)setLength:()NSMutableData;
@end

@implementation NSMutableData(NSMutableData)

- (void)mutableBytes
{
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(a1, v2, *MEMORY[0x1E695E0D0]);
  }

  v5 = NSClassFromString(@"NSMutableData");
  NSRequestConcreteImplementation(a1, a2, v5);
}

- (void)setLength:()NSMutableData
{
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(a1, v2, *MEMORY[0x1E695E0D0]);
  }

  v5 = NSClassFromString(@"NSMutableData");

  NSRequestConcreteImplementation(a1, a2, v5);
}

- (void)replaceBytesInRange:()NSMutableData withBytes:length:
{
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(a1, v6, *MEMORY[0x1E695E0D0]);
  }

  v13 = [a1 length];
  if (__CFADD__(a4, a3))
  {
    v25 = _NSMethodExceptionProem(a1, a2);
    v37.location = a3;
    v37.length = a4;
    v26 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v25, NSStringFromRange(v37), v33];
    goto LABEL_37;
  }

  v14 = v13;
  v15 = v13 - (a3 + a4);
  if (v13 < a3 + a4)
  {
    v27 = _NSMethodExceptionProem(a1, a2);
    v28 = v27;
    if (a4)
    {
      v39.location = a3;
      v39.length = a4;
      v32 = NSStringFromRange(v39);
      v34 = v14;
      v31 = v28;
      v29 = @"%@: range %@ exceeds data length %lu";
    }

    else
    {
      v32 = a3;
      v34 = v14;
      v31 = v27;
      v29 = @"%@: location %lu exceeds data length %lu";
    }

    v26 = [NSString stringWithFormat:v29, v31, v32, v34];
LABEL_37:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v26 userInfo:0]);
  }

  if (__CFADD__(a6, v13 - a4))
  {
    v30 = _NSMethodExceptionProem(a1, a2);
    v38.location = v14 - a4;
    v38.length = a6;
    v26 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v30, NSStringFromRange(v38), v33];
    goto LABEL_37;
  }

  v16 = v13 - a4 + a6;
  v17 = [a1 mutableBytes];
  v18 = v17;
  v19 = a5;
  if (a5)
  {
    v19 = a5;
    if (v17)
    {
      v19 = a5;
      if (v17 + v14 > a5)
      {
        v19 = a5;
        if (v17 < a5 + a6)
        {
          v20 = malloc_type_malloc(a6, 0xD0ADD31FuLL);
          v19 = v20;
          v21 = a5;
          v22 = a6;
          if (a6 >= 0x80000)
          {
            v22 = a6;
            v21 = a5;
            if (((*MEMORY[0x1E69E9AC8] - 1) & (v20 | a5)) != 0 || (malloc_default_zone(), v23 = malloc_zone_claimed_address(), v20 = v19, v22 = a6, v21 = a5, v23))
            {
LABEL_15:
              memmove(v20, v21, v22);
              goto LABEL_16;
            }

            v35 = -*MEMORY[0x1E69E9AC8] & a6;
            NSCopyMemoryPages(a5, v19, v35);
            v21 = (a5 + v35);
            v20 = &v19[v35];
            v22 = a6 - v35;
          }

          if (!v22)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:
  if (v16 > v14)
  {
    [a1 setLength:v16];
    v18 = [a1 mutableBytes];
  }

  if (v16 != v14)
  {
    memmove((v18 + a3 + a6), (v18 + a3 + a4), v15);
  }

  if (a6)
  {
    v24 = (v18 + a3);
    if (v19)
    {
      memmove(v24, v19, a6);
    }

    else
    {
      bzero(v24, a6);
    }
  }

  if (v19 != a5)
  {
    free(v19);
  }

  if (v16 < v14)
  {

    [a1 setLength:v16];
  }
}

- (void)appendBytes:()NSMutableData length:
{
  v5 = a4;
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(a1, v4, *MEMORY[0x1E695E0D0]);
    if (!v5)
    {
      return;
    }
  }

  else if (!a4)
  {
    return;
  }

  v9 = [a1 length];
  if (__CFADD__(v5, v9))
  {
    v22 = _NSMethodExceptionProem(a1, a2);
    v25.location = v9;
    v25.length = v5;
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: range %@ causes integer overflow", v22, NSStringFromRange(v25)), 0}];
    objc_exception_throw(v23);
  }

  v10 = [a1 mutableBytes];
  v11 = a3;
  if (v10)
  {
    v11 = a3;
    if (v10 + v9 > a3)
    {
      v11 = a3;
      if (v10 < a3 + v5)
      {
        v12 = malloc_type_malloc(v5, 0xFA9650C7uLL);
        v11 = v12;
        v13 = v5;
        v14 = a3;
        if (v5 < 0x80000)
        {
          goto LABEL_12;
        }

        v15 = MEMORY[0x1E69E9AC8];
        v13 = v5;
        v14 = a3;
        if (((*MEMORY[0x1E69E9AC8] - 1) & (v12 | a3)) != 0)
        {
          goto LABEL_12;
        }

        malloc_default_zone();
        v16 = malloc_zone_claimed_address();
        v12 = v11;
        v13 = v5;
        v14 = a3;
        if (v16)
        {
          goto LABEL_12;
        }

        v17 = -*v15 & v5;
        NSCopyMemoryPages(a3, v11, v17);
        v13 = v5 - v17;
        if (v5 != v17)
        {
          v14 = (a3 + v17);
          v12 = v11 + v17;
LABEL_12:
          memmove(v12, v14, v13);
        }
      }
    }
  }

  [a1 setLength:v9 + v5];
  v18 = [a1 mutableBytes] + v9;
  if (v5 < 0x80000 || (v19 = MEMORY[0x1E69E9AC8], ((*MEMORY[0x1E69E9AC8] - 1) & (v18 | v11)) != 0) || (malloc_default_zone(), malloc_zone_claimed_address()))
  {
    v20 = v11;
LABEL_17:
    memmove(v18, v20, v5);
    goto LABEL_18;
  }

  v21 = -*v19 & v5;
  NSCopyMemoryPages(v11, v18, v21);
  v5 -= v21;
  if (v5)
  {
    v20 = (v11 + v21);
    v18 += v21;
    goto LABEL_17;
  }

LABEL_18:
  if (v11 != a3)
  {

    free(v11);
  }
}

- (void)appendData:()NSMutableData
{
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(a1, v3, *MEMORY[0x1E695E0D0]);
  }

  v7 = [a3 length];
  if (v7)
  {
    v8 = v7;
    v9 = [a3 bytes];
    v10 = [a1 length];
    v11 = [a3 length];
    if (__CFADD__(v11, v10))
    {
      v24 = v11;
      v25 = _NSMethodExceptionProem(a1, a2);
      v28.location = v10;
      v28.length = v24;
      v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: range %@ causes integer overflow", v25, NSStringFromRange(v28)), 0}];
      objc_exception_throw(v26);
    }

    v12 = [a1 mutableBytes];
    if (v12 && v9 < v12 + v10 && v12 < v9 + v8)
    {
      v13 = malloc_type_malloc(v8, 0x9216C5BBuLL);
      v14 = v13;
      if (v8 < 0x80000 || (v15 = MEMORY[0x1E69E9AC8], ((*MEMORY[0x1E69E9AC8] - 1) & (v13 | v9)) != 0) || (malloc_default_zone(), malloc_zone_claimed_address()))
      {
        v16 = v14;
        v17 = v8;
        v18 = v9;
      }

      else
      {
        v23 = v8 & -*v15;
        NSCopyMemoryPages(v9, v14, v23);
        v17 = v8 - v23;
        if (v8 == v23)
        {
          goto LABEL_14;
        }

        v18 = (v9 + v23);
        v16 = (v14 + v23);
      }

      memmove(v16, v18, v17);
    }

    else
    {
      v14 = v9;
    }

LABEL_14:
    [a1 setLength:v10 + v8];
    v19 = [a1 mutableBytes] + v10;
    if (v8 < 0x80000 || (v20 = MEMORY[0x1E69E9AC8], ((*MEMORY[0x1E69E9AC8] - 1) & (v19 | v14)) != 0) || (malloc_default_zone(), malloc_zone_claimed_address()))
    {
      v21 = v14;
    }

    else
    {
      v22 = v8 & -*v20;
      NSCopyMemoryPages(v14, v19, v22);
      v8 -= v22;
      if (!v8)
      {
LABEL_19:
        if (v14 != v9)
        {

          free(v14);
        }

        return;
      }

      v21 = (v14 + v22);
      v19 += v22;
    }

    memmove(v19, v21, v8);
    goto LABEL_19;
  }
}

- (uint64_t)increaseLengthBy:()NSMutableData
{
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(a1, v3, *MEMORY[0x1E695E0D0]);
  }

  if (a3 >= 0x8000000000000001)
  {
    v9 = [NSString stringWithFormat:@"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(a1, a2), "extra length", a3, 0x8000000000000000];
    v10 = MEMORY[0x1E695DF30];
    v11 = MEMORY[0x1E695D940];
    goto LABEL_10;
  }

  v7 = [(objc_class *)a1 length];
  if (__CFADD__(a3, v7))
  {
    v12 = v7;
    v13 = _NSMethodExceptionProem(a1, a2);
    v15.location = v12;
    v15.length = a3;
    v9 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v13, NSStringFromRange(v15)];
    v10 = MEMORY[0x1E695DF30];
    v11 = MEMORY[0x1E695DA20];
LABEL_10:
    objc_exception_throw([v10 exceptionWithName:*v11 reason:v9 userInfo:0]);
  }

  return [(objc_class *)a1 setLength:v7 + a3];
}

- (void)replaceBytesInRange:()NSMutableData withBytes:
{
  v7 = a4;
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(a1, v5, *MEMORY[0x1E695E0D0]);
    if (!v7)
    {
      return;
    }
  }

  else if (!a4)
  {
    return;
  }

  v11 = [a1 length];
  v12 = v11;
  if (a3 > v11)
  {
    v25 = [NSString stringWithFormat:@"%@: location %lu exceeds data length %lu", _NSMethodExceptionProem(a1, a2), a3, v11];
    goto LABEL_31;
  }

  if (__CFADD__(v7, a3))
  {
    v26 = _NSMethodExceptionProem(a1, a2);
    v29.location = a3;
    v29.length = v7;
    v25 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v26, NSStringFromRange(v29), v27];
LABEL_31:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v25 userInfo:0]);
  }

  v13 = a5;
  if (v11 < a3 + v7)
  {
    v14 = [a1 mutableBytes];
    v13 = a5;
    if (!v14)
    {
      goto LABEL_15;
    }

    v13 = a5;
    if (v14 + v12 <= a5)
    {
      goto LABEL_15;
    }

    v13 = a5;
    if (v14 >= a5 + v7)
    {
      goto LABEL_15;
    }

    v15 = malloc_type_malloc(v7, 0x2643AE1BuLL);
    v13 = v15;
    v16 = v7;
    v17 = a5;
    if (v7 >= 0x80000)
    {
      v18 = MEMORY[0x1E69E9AC8];
      v16 = v7;
      v17 = a5;
      if (((*MEMORY[0x1E69E9AC8] - 1) & (v15 | a5)) == 0)
      {
        malloc_default_zone();
        v19 = malloc_zone_claimed_address();
        v15 = v13;
        v16 = v7;
        v17 = a5;
        if (!v19)
        {
          v20 = v7 & -*v18;
          NSCopyMemoryPages(a5, v13, v20);
          v16 = v7 - v20;
          if (v7 == v20)
          {
LABEL_15:
            [a1 setLength:a3 + v7];
            goto LABEL_16;
          }

          v17 = (a5 + v20);
          v15 = &v13[v20];
        }
      }
    }

    memmove(v15, v17, v16);
    goto LABEL_15;
  }

LABEL_16:
  v21 = [a1 mutableBytes] + a3;
  if (v7 < 0x80000 || (v22 = MEMORY[0x1E69E9AC8], ((*MEMORY[0x1E69E9AC8] - 1) & (v21 | a5)) != 0) || (malloc_default_zone(), malloc_zone_claimed_address()))
  {
    v23 = a5;
LABEL_20:
    memmove(v21, v23, v7);
    goto LABEL_21;
  }

  v24 = v7 & -*v22;
  NSCopyMemoryPages(a5, v21, v24);
  v7 -= v24;
  if (v7)
  {
    v23 = (a5 + v24);
    v21 += v24;
    goto LABEL_20;
  }

LABEL_21:
  if (v13 != a5)
  {

    free(v13);
  }
}

- (void)resetBytesInRange:()NSMutableData
{
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(a1, v4, *MEMORY[0x1E695E0D0]);
    if (!a4)
    {
      return;
    }
  }

  else if (!a4)
  {
    return;
  }

  v9 = [a1 length];
  if (a3 > v9)
  {
    v11 = [NSString stringWithFormat:@"%@: location %lu exceeds data length %lu", _NSMethodExceptionProem(a1, a2), a3, v9];
    goto LABEL_14;
  }

  if (__CFADD__(a4, a3))
  {
    v12 = _NSMethodExceptionProem(a1, a2);
    v15.location = a3;
    v15.length = a4;
    v11 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v12, NSStringFromRange(v15), v13];
LABEL_14:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v11 userInfo:0]);
  }

  if (v9 < a3 + a4)
  {
    [a1 setLength:?];
  }

  v10 = ([a1 mutableBytes] + a3);

  bzero(v10, a4);
}

- (uint64_t)setData:()NSMutableData
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(a1, v3, *MEMORY[0x1E695E0D0]);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__NSMutableData_NSMutableData__setData___block_invoke;
  v7[3] = &unk_1E69F2A48;
  v7[4] = a1;
  [a3 enumerateByteRangesUsingBlock:v7];
  return [a1 setLength:{objc_msgSend(a3, "length")}];
}

+ (id)allocWithZone:()NSMutableData
{
  if (objc_opt_self() == a1)
  {

    return +[(NSData *)NSConcreteMutableData];
  }

  else
  {

    return NSAllocateObject(a1, 0, a3);
  }
}

+ (id)dataWithCapacity:()NSMutableData
{
  v3 = [objc_allocWithZone(a1) initWithCapacity:a3];

  return v3;
}

+ (id)dataWithLength:()NSMutableData
{
  v3 = [objc_allocWithZone(a1) initWithLength:a3];

  return v3;
}

- (void)initWithLength:()NSMutableData
{
  v4 = [a1 initWithCapacity:?];
  [v4 setLength:a3];
  return v4;
}

+ (uint64_t)_newZeroingDataWithBytes:()NSMutableData length:
{
  v6 = [_NSClrDatM alloc];

  return [(NSConcreteMutableData *)v6 initWithBytes:a3 length:a4 copy:1 deallocator:0];
}

@end