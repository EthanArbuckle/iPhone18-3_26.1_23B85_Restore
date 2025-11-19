@interface NSData(NSData)
+ (__objc2_class)allocWithZone:()NSData;
+ (id)_alloc;
+ (id)data;
+ (id)dataWithBytes:()NSData length:;
+ (id)dataWithBytesNoCopy:()NSData length:;
+ (id)dataWithBytesNoCopy:()NSData length:freeWhenDone:;
+ (id)dataWithContentsOfFile:()NSData;
+ (id)dataWithContentsOfFile:()NSData options:error:;
+ (id)dataWithContentsOfMappedFile:()NSData;
+ (id)dataWithContentsOfURL:()NSData;
+ (id)dataWithContentsOfURL:()NSData options:error:;
+ (id)dataWithContentsOfURL:()NSData options:maxLength:error:;
+ (id)dataWithData:()NSData;
+ (uint64_t)_newZeroingDataWithBytes:()NSData length:;
+ (uint64_t)_newZeroingDataWithBytesNoCopy:()NSData length:deallocator:;
- (NSString)_base64EncodingAsString:()NSData withOptions:;
- (dispatch_data_t)replacementObjectForCoder:()NSData;
- (id)_asciiDescription;
- (id)debugDescription;
- (id)description;
- (id)initWithCoder:()NSData;
- (id)subdataWithRange:()NSData;
- (uint64_t)_decodeBase64EncodedCharacterBuffer:()NSData length:options:buffer:bufferLength:state:;
- (uint64_t)_initWithBase64EncodedObject:()NSData options:;
- (uint64_t)_isCompact;
- (uint64_t)base64EncodedDataWithOptions:()NSData;
- (uint64_t)base64EncodedStringWithOptions:()NSData;
- (uint64_t)base64Encoding;
- (uint64_t)copyWithZone:()NSData;
- (uint64_t)encodeWithCoder:()NSData;
- (uint64_t)enumerateByteRangesUsingBlock:()NSData;
- (uint64_t)hash;
- (uint64_t)initWithBase64EncodedData:()NSData options:;
- (uint64_t)initWithBase64EncodedString:()NSData options:;
- (uint64_t)initWithBase64Encoding:()NSData;
- (uint64_t)initWithBytes:()NSData length:copy:freeWhenDone:bytesAreVM:;
- (uint64_t)initWithContentsOfFile:()NSData;
- (uint64_t)initWithContentsOfFile:()NSData options:maxLength:error:;
- (uint64_t)initWithContentsOfMappedFile:()NSData;
- (uint64_t)initWithContentsOfURL:()NSData;
- (uint64_t)initWithContentsOfURL:()NSData options:maxLength:error:;
- (uint64_t)initWithData:()NSData;
- (uint64_t)isEqual:()NSData;
- (uint64_t)isEqualToData:()NSData;
- (uint64_t)mutableCopyWithZone:()NSData;
- (uint64_t)rangeOfData:()NSData options:range:;
- (uint64_t)writeToFile:()NSData atomically:;
- (uint64_t)writeToFile:()NSData atomically:error:;
- (uint64_t)writeToFile:()NSData options:error:;
- (uint64_t)writeToURL:()NSData atomically:;
- (uint64_t)writeToURL:()NSData options:error:;
- (void)bytes;
- (void)getBytes:()NSData;
- (void)getBytes:()NSData length:;
- (void)getBytes:()NSData range:;
- (void)length;
@end

@implementation NSData(NSData)

+ (id)_alloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___NSData_0;
  return objc_msgSendSuper2(&v2, sel_allocWithZone_, 0);
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    v2 = [a1 length];
    v3 = [a1 bytes];
    v4 = [objc_allocWithZone(NSMutableString) initWithCapacity:512];
    [v4 appendFormat:@"{length = %lu, bytes = 0x", v2];
    if (v2 < 0x19)
    {
      for (; v2; --v2)
      {
        v8 = *v3++;
        v7 = v8;
        v9 = (v8 >> 4) | 0x30;
        v10 = (v8 >> 4) + 87;
        if (v8 < 0xA0)
        {
          LOBYTE(v10) = v9;
        }

        bytes[0] = v10;
        v11 = v7 & 0xF;
        v12 = v7 & 0xF | 0x30;
        v13 = (v7 & 0xF) + 87;
        if (v11 < 0xA)
        {
          v13 = v12;
        }

        bytes[1] = v13;
        v14 = CFStringCreateWithBytes(0, bytes, 2, 0x600u, 0);
        [v4 appendString:v14];
        CFRelease(v14);
      }
    }

    else
    {
      v5 = -4;
      do
      {
        v5 += 4;
        append4Bytes(v4, &v3[v5]);
      }

      while (v5 < 0xC);
      [v4 appendString:@"... "];
      v6 = v2 - 8;
      do
      {
        append4Bytes(v4, &v3[v6]);
        v6 += 4;
      }

      while (v6 < v2);
    }

    [v4 appendString:@"}"];
    return v4;
  }

  else
  {

    return [a1 debugDescription];
  }
}

- (uint64_t)hash
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v1, *MEMORY[0x1E695E0D0]);
  }

  [a1 length];
  [a1 bytes];

  return CFHashBytes();
}

+ (id)data
{
  v1 = [objc_allocWithZone(a1) initWithBytes:0 length:0];

  return v1;
}

- (id)debugDescription
{
  v26 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v1, *MEMORY[0x1E695E0D0]);
  }

  v3 = [a1 length];
  v4 = [a1 bytes];
  v5 = v3 << (v3 >= 0);
  v6 = v3 >> 2;
  v7 = __CFADD__(v5, v3 >> 2);
  if (v3 < 0 || v7)
  {
    v6 = 0;
  }

  v8 = v6 + v5;
  v9 = v8 > 0xFFFFFFFFFFFFFFEFLL;
  v10 = v8 + 16;
  if (v3 < 0 || v7 || v9)
  {
    v11 = -1;
  }

  else
  {
    v11 = v10;
  }

  v12 = [objc_allocWithZone(NSMutableString) initWithCapacity:v11];
  [v12 replaceCharactersInRange:objc_msgSend(v12 withString:{"length"), 0, @"<"}];
  if (v3 < 5)
  {
    v13 = 2;
    if (v3)
    {
LABEL_17:
      v15 = v13 - 2;
      v13 += 2 * v3;
      while (1)
      {
        v15 += 2;
        if (v15 > v11 - 2)
        {
          break;
        }

        --v3;
        v17 = *v4++;
        v16 = v17;
        v18 = (v17 >> 4) | 0x30;
        v19 = (v17 >> 4) + 87;
        if (v17 < 0xA0)
        {
          LOBYTE(v19) = v18;
        }

        bytes[0] = v19;
        v20 = v16 & 0xF;
        v21 = v16 & 0xF | 0x30;
        v22 = (v16 & 0xF) + 87;
        if (v20 < 0xA)
        {
          v22 = v21;
        }

        bytes[1] = v22;
        v23 = CFStringCreateWithBytes(0, bytes, 2, 0x600u, 0);
        [v12 appendString:v23];
        CFRelease(v23);
        if (!v3)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      if (v13 < v11)
      {
        [v12 replaceCharactersInRange:objc_msgSend(v12 withString:{"length"), 0, @">"}];
      }
    }

    return v12;
  }

  else
  {
    v13 = 9 * ((v3 - 5) >> 2) + 11;
    v14 = -7;
    while (1)
    {
      v14 += 9;
      if (v14 > v11 - 9)
      {
        break;
      }

      v3 -= 4;
      append4Bytes(v12, v4);
      v4 += 4;
      if (v3 <= 4)
      {
        goto LABEL_17;
      }
    }

    return v12;
  }
}

- (void)length
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v2, *MEMORY[0x1E695E0D0]);
  }

  v5 = NSClassFromString(@"NSData");
  NSRequestConcreteImplementation(a1, a2, v5);
}

- (void)bytes
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v2, *MEMORY[0x1E695E0D0]);
  }

  v5 = NSClassFromString(@"NSData");
  NSRequestConcreteImplementation(a1, a2, v5);
}

- (id)_asciiDescription
{
  v2 = [a1 length];
  v3 = objc_opt_new();
  v4 = [a1 bytes];
  if (v2)
  {
    v5 = v4;
    v6 = 0;
    v7 = 69;
    do
    {
      v9 = *v5++;
      LODWORD(v8) = v9;
      if ((v9 - 127) >= 0xFFFFFFA1)
      {
        v8 = v8;
      }

      else
      {
        v8 = 32;
      }

      [v3 appendFormat:@"%c", v8];
      if (!(v7 + 70 * (v6 / 0x46)))
      {
        [v3 appendString:@"\n"];
      }

      ++v6;
      --v7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

- (uint64_t)isEqual:()NSData
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v3, *MEMORY[0x1E695E0D0]);
  }

  if (a3 == a1)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  result = _NSIsNSData();
  if (result)
  {

    return [a1 isEqualToData:a3];
  }

  return result;
}

- (uint64_t)copyWithZone:()NSData
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v1, *MEMORY[0x1E695E0D0]);
  }

  v3 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v4 = [a1 bytes];
  v5 = [a1 length];

  return [v3 initWithBytes:v4 length:v5 copy:1 freeWhenDone:0 bytesAreVM:0];
}

- (uint64_t)mutableCopyWithZone:()NSData
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v1, *MEMORY[0x1E695E0D0]);
  }

  v3 = [a1 length];
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v3];
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__NSData_NSData__mutableCopyWithZone___block_invoke;
    v7[3] = &unk_1E69F2A48;
    v7[4] = v4;
    [a1 enumerateByteRangesUsingBlock:v7];
  }

  return v5;
}

- (uint64_t)encodeWithCoder:()NSData
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v3, *MEMORY[0x1E695E0D0]);
  }

  if ([a3 allowsKeyedCoding])
  {
    if (object_getClass(a3) == NSKeyedArchiver)
    {

      return [a3 _encodePropertyList:a1 forKey:@"NS.data"];
    }

    else
    {
      v6 = [a1 bytes];
      v7 = [a1 length];

      return [a3 encodeBytes:v6 length:v7 forKey:@"NS.bytes"];
    }
  }

  else
  {

    return [a3 encodeDataObject:a1];
  }
}

- (id)initWithCoder:()NSData
{
  v14[5] = *MEMORY[0x1E69E9840];
  if ([a3 allowsKeyedCoding])
  {
    if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 containsValueForKey:@"NS.xpcdata"])
    {
      v5 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9E70] forKey:@"NS.xpcdata"];
      if (v5)
      {
        v6 = v5;
        xpc_retain(v5);
        bytes_ptr = xpc_data_get_bytes_ptr(v6);
        length = xpc_data_get_length(v6);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __32__NSData_NSData__initWithCoder___block_invoke;
        v14[3] = &unk_1E69F2A70;
        v14[4] = v6;
        return [a1 initWithBytes:bytes_ptr length:length copy:0 deallocator:v14];
      }

      goto LABEL_16;
    }

    if (object_getClass(a3) == NSKeyedUnarchiver || [a3 containsValueForKey:@"NS.data"])
    {
      v11 = [a3 _decodePropertyListForKey:@"NS.data"];
      if (!_NSIsNSData())
      {
        [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"Decoded object is not a data"}];
LABEL_16:

        return 0;
      }

      return [a1 initWithData:v11];
    }

    else
    {
      v13 = 0;
      v12 = [a3 decodeBytesForKey:@"NS.bytes" returnedLength:&v13];
      if ([a3 decodeBoolForKey:@"NS.zeroing"])
      {

        return [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:v12 length:v13];
      }

      else
      {
        return [a1 initWithBytes:v12 length:v13];
      }
    }
  }

  else
  {

    v10 = [a3 decodeDataObject];

    return v10;
  }
}

- (dispatch_data_t)replacementObjectForCoder:()NSData
{
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![a1 _canReplaceWithDispatchDataForXPCCoder])
  {
    return a1;
  }

  v2 = [a1 length];
  v3 = NSAllocateMemoryPages(v2);
  [a1 getBytes:v3 length:v2];
  v4 = dispatch_data_create(v3, v2, 0, *MEMORY[0x1E69E9660]);

  return v4;
}

- (void)getBytes:()NSData
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v3, *MEMORY[0x1E695E0D0]);
  }

  v6 = [a1 bytes];
  v7 = [a1 length];
  if (v7 < 0x80000)
  {
LABEL_7:
    if (!v7)
    {
      return;
    }

    goto LABEL_8;
  }

  v8 = MEMORY[0x1E69E9AC8];
  if (((*MEMORY[0x1E69E9AC8] - 1) & (v6 | a3)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v9 = v7 & -*v8;
      NSCopyMemoryPages(v6, a3, v9);
      v6 += v9;
      a3 += v9;
      v7 -= v9;
      goto LABEL_7;
    }
  }

LABEL_8:

  memmove(a3, v6, v7);
}

- (void)getBytes:()NSData length:
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v4, *MEMORY[0x1E695E0D0]);
  }

  v8 = [a1 length];
  if (v8 < a4)
  {
    a4 = v8;
  }

  v9 = [a1 bytes];
  v10 = v9;
  if (a4 < 0x80000)
  {
LABEL_9:
    if (!a4)
    {
      return;
    }

    goto LABEL_10;
  }

  v11 = MEMORY[0x1E69E9AC8];
  if (((*MEMORY[0x1E69E9AC8] - 1) & (v9 | a3)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v12 = a4 & -*v11;
      NSCopyMemoryPages(v10, a3, v12);
      v10 += v12;
      a3 += v12;
      a4 -= v12;
      goto LABEL_9;
    }
  }

LABEL_10:

  memmove(a3, v10, a4);
}

- (uint64_t)enumerateByteRangesUsingBlock:()NSData
{
  v8 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v3, *MEMORY[0x1E695E0D0]);
  }

  v7 = 0;
  return (*(a3 + 16))(a3, [a1 bytes], 0, objc_msgSend(a1, "length"), &v7);
}

- (void)getBytes:()NSData range:
{
  v6 = a5;
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v5, *MEMORY[0x1E695E0D0]);
    if (!v6)
    {
      return;
    }
  }

  else if (!a5)
  {
    return;
  }

  v11 = [a1 length];
  if (!_CFExecutableLinkedOnOrAfter())
  {
    if (v11 > a4)
    {
      if (v6 >= v11 - a4)
      {
        v6 = v11 - a4;
      }

      goto LABEL_10;
    }

    v20 = a4;
    v21 = v11;
    v19 = _NSMethodExceptionProem(a1, a2);
    v13 = @"%@: location %lu exceeds data length %lu";
LABEL_22:
    v18 = [NSString stringWithFormat:v13, v19, v20, v21];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v18 userInfo:0]);
  }

  if (__CFADD__(v6, a4))
  {
    v17 = _NSMethodExceptionProem(a1, a2);
    v24.location = a4;
    v24.length = v6;
    v19 = v17;
    v20 = NSStringFromRange(v24);
    v13 = @"%@: range %@ causes integer overflow";
    goto LABEL_22;
  }

  if (a4 + v6 > v11)
  {
    v12 = _NSMethodExceptionProem(a1, a2);
    v23.location = a4;
    v23.length = v6;
    v20 = NSStringFromRange(v23);
    v21 = v11;
    v19 = v12;
    v13 = @"%@: range %@ exceeds data length %lu";
    goto LABEL_22;
  }

LABEL_10:
  v14 = [a1 bytes] + a4;
  if (v6 < 0x80000)
  {
    goto LABEL_14;
  }

  v15 = MEMORY[0x1E69E9AC8];
  if (((*MEMORY[0x1E69E9AC8] - 1) & (v14 | a3)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v16 = v6 & -*v15;
      NSCopyMemoryPages(v14, a3, v16);
      v14 += v16;
      a3 += v16;
      v6 -= v16;
LABEL_14:
      if (!v6)
      {
        return;
      }
    }
  }

  memmove(a3, v14, v6);
}

- (uint64_t)_isCompact
{
  v10 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v1, *MEMORY[0x1E695E0D0]);
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__NSData_NSData___isCompact__block_invoke;
  v5[3] = &unk_1E69F2A98;
  v5[4] = a1;
  v5[5] = &v6;
  [a1 enumerateByteRangesUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (uint64_t)isEqualToData:()NSData
{
  v5 = a1;
  v26 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v3, *MEMORY[0x1E695E0D0]);
    if (!a3)
    {
      goto LABEL_24;
    }
  }

  else if (!a3)
  {
    goto LABEL_24;
  }

  if (a3 == v5)
  {
    v7 = 1;
    return v7 & 1;
  }

  v6 = [v5 length];
  if (v6 != [a3 length])
  {
LABEL_24:
    v7 = 0;
    return v7 & 1;
  }

  v7 = 1;
  if (v6)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    if ([v5 _isCompact])
    {
      v8 = [v5 bytes];
    }

    else
    {
      v8 = 0;
    }

    if ([a3 _isCompact])
    {
      v9 = [a3 bytes];
      v10 = v9;
      v11 = v8 != 0;
      v12 = v9 != 0;
      if (v8 && v9)
      {
        v7 = memcmp(v8, v9, v6) == 0;
        *(v23 + 24) = v7;
LABEL_22:
        _Block_object_dispose(&v22, 8);
        return v7 & 1;
      }
    }

    else
    {
      v12 = 0;
      v10 = 0;
      v11 = v8 != 0;
    }

    if (v11 || v12)
    {
      v20[1] = MEMORY[0x1E69E9820];
      v20[2] = 3221225472;
      v20[3] = __32__NSData_NSData__isEqualToData___block_invoke;
      v20[4] = &unk_1E69F2AC0;
      if (v11)
      {
        v5 = a3;
      }

      v21[1] = v8;
      v21[2] = v10;
      v13 = v21;
    }

    else
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __32__NSData_NSData__isEqualToData___block_invoke_2;
      v18 = &unk_1E69F2A98;
      v19 = a3;
      v13 = v20;
    }

    *v13 = &v22;
    [v5 enumerateByteRangesUsingBlock:{v15, v16, v17, v18, v19}];
    v7 = *(v23 + 24);
    goto LABEL_22;
  }

  return v7 & 1;
}

- (id)subdataWithRange:()NSData
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v4, *MEMORY[0x1E695E0D0]);
  }

  v9 = [a1 length];
  if (a4)
  {
    if (__CFADD__(a4, a3))
    {
      v15 = _NSMethodExceptionProem(a1, a2);
      v21.location = a3;
      v21.length = a4;
      v16 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v15, NSStringFromRange(v21), v19];
    }

    else
    {
      if (a3 + a4 <= v9)
      {
        if (a3 || a4 != v9)
        {
          if (a4 >= 0x40 && (objc_opt_class() != NSConcreteData || [a1 _copyWillRetain]) && (objc_opt_class() == NSConcreteData || (v13 = objc_opt_class(), v13 == objc_opt_class()) || (v14 = objc_opt_class(), v14 == objc_opt_class()) || a4 >> 15))
          {
            v10 = [objc_allocWithZone(NSSubrangeData) initWithData:a1 range:{a3, a4}];
          }

          else
          {
            v10 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:objc_msgSend(a1 length:{"bytes") + a3, a4}];
          }
        }

        else
        {
          v10 = [a1 copyWithZone:0];
        }

        return v10;
      }

      v17 = v9;
      v18 = _NSMethodExceptionProem(a1, a2);
      v22.location = a3;
      v22.length = a4;
      v16 = [NSString stringWithFormat:@"%@: range %@ exceeds data length %lu", v18, NSStringFromRange(v22), v17];
    }

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v16 userInfo:0]);
  }

  v11 = MEMORY[0x1E695DEF0];

  return [v11 data];
}

- (uint64_t)writeToFile:()NSData options:error:
{
  if (!*MEMORY[0x1E695E100])
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_12:
    v13 = [NSString stringWithFormat:@"%@: nil file argument", _NSMethodExceptionProem(a1, a2)];
    goto LABEL_14;
  }

  (*MEMORY[0x1E695E100])(a1, v5, *MEMORY[0x1E695E0D0]);
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((~a4 & 3) == 0)
  {
    v13 = [NSString stringWithFormat:@"%@: NSDataWritingWithoutOverwriting is not supported with NSDataWritingAtomic", _NSMethodExceptionProem(a1, a2)];
LABEL_14:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
  }

  if (_NSIsNSURL())
  {

    return [(objc_class *)a1 writeToURL:a3 options:a4 error:a5];
  }

  else
  {
    v12 = MEMORY[0x1E695DEF0];

    return [v12 _writeDataToPath:a3 data:a1 options:a4 reportProgress:1 error:a5];
  }
}

- (uint64_t)writeToURL:()NSData options:error:
{
  if (!*MEMORY[0x1E695E100])
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_16:
    v14 = [NSString stringWithFormat:@"%@: nil URL argument", _NSMethodExceptionProem(a1, a2)];
    goto LABEL_18;
  }

  (*MEMORY[0x1E695E100])(a1, v5, *MEMORY[0x1E695E0D0]);
  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((~a4 & 3) == 0)
  {
    v14 = [NSString stringWithFormat:@"%@: NSDataWritingWithoutOverwriting is not supported with NSDataWritingAtomic", _NSMethodExceptionProem(a1, a2)];
LABEL_18:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0]);
  }

  if (![a3 isFileURL])
  {
    if (a5)
    {
      v13 = 518;
LABEL_13:
      *a5 = _NSErrorWithFilePath(v13, a3);
    }

    return 0;
  }

  v11 = [a3 _securePath];
  if (!v11)
  {
    if (a5)
    {
      v13 = 4;
      goto LABEL_13;
    }

    return 0;
  }

  return [(objc_class *)a1 writeToFile:v11 options:a4 error:a5];
}

- (uint64_t)writeToFile:()NSData atomically:error:
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v5, *MEMORY[0x1E695E0D0]);
  }

  return [a1 writeToFile:a3 options:a4 error:a5];
}

- (uint64_t)writeToFile:()NSData atomically:
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v4, *MEMORY[0x1E695E0D0]);
  }

  if (_NSIsNSURL())
  {

    return [a1 writeToURL:a3 atomically:a4];
  }

  else
  {
    v9 = MEMORY[0x1E695DEF0];

    return [v9 _writeDataToPath:a3 data:a1 options:a4 reportProgress:1 error:0];
  }
}

- (uint64_t)writeToURL:()NSData atomically:
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v4, *MEMORY[0x1E695E0D0]);
  }

  if (![a3 isFileURL])
  {
    return 0;
  }

  v8 = [a3 _securePath];
  if (!v8)
  {
    return 0;
  }

  return [a1 writeToFile:v8 atomically:a4];
}

+ (__objc2_class)allocWithZone:()NSData
{
  if (MEMORY[0x1E695DEF0] == a1)
  {
    return &___placeholderData;
  }

  else
  {
    return NSAllocateObject(a1, 0, a3);
  }
}

+ (id)dataWithBytes:()NSData length:
{
  v4 = [objc_allocWithZone(a1) initWithBytes:a3 length:a4];

  return v4;
}

+ (id)dataWithBytesNoCopy:()NSData length:
{
  v4 = [objc_allocWithZone(a1) initWithBytesNoCopy:a3 length:a4];

  return v4;
}

+ (id)dataWithBytesNoCopy:()NSData length:freeWhenDone:
{
  v5 = [objc_allocWithZone(a1) initWithBytesNoCopy:a3 length:a4 freeWhenDone:a5];

  return v5;
}

+ (id)dataWithContentsOfFile:()NSData
{
  v3 = [objc_allocWithZone(a1) initWithContentsOfFile:a3];

  return v3;
}

+ (id)dataWithContentsOfURL:()NSData
{
  v3 = [objc_allocWithZone(a1) initWithContentsOfURL:a3];

  return v3;
}

+ (id)dataWithContentsOfMappedFile:()NSData
{
  v3 = [objc_allocWithZone(a1) initWithContentsOfMappedFile:a3];

  return v3;
}

+ (id)dataWithContentsOfFile:()NSData options:error:
{
  v5 = [objc_allocWithZone(a1) initWithContentsOfFile:a3 options:a4 error:a5];

  return v5;
}

+ (id)dataWithContentsOfURL:()NSData options:error:
{
  v5 = [objc_allocWithZone(a1) initWithContentsOfURL:a3 options:a4 error:a5];

  return v5;
}

+ (id)dataWithContentsOfURL:()NSData options:maxLength:error:
{
  v6 = [objc_allocWithZone(a1) initWithContentsOfURL:a3 options:a4 maxLength:a5 error:a6];

  return v6;
}

+ (id)dataWithData:()NSData
{
  if (!a3)
  {
    goto LABEL_4;
  }

  v5 = MEMORY[0x1E695DF88];
  if (MEMORY[0x1E695DEF0] == a1 && _CFExecutableLinkedOnOrAfter())
  {
    v6 = [a3 copyWithZone:0];
    goto LABEL_8;
  }

  if (v5 != a1)
  {
LABEL_4:
    v6 = [objc_allocWithZone(a1) initWithBytes:objc_msgSend(a3 length:{"bytes"), objc_msgSend(a3, "length")}];
    goto LABEL_8;
  }

  v6 = [a3 mutableCopyWithZone:0];
LABEL_8:

  return v6;
}

- (uint64_t)initWithBytes:()NSData length:copy:freeWhenDone:bytesAreVM:
{
  v22 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v13 = 0;
  v14 = *MEMORY[0x1E69E5910];
  if ((~a3 & 0xC000000000000007) == 0)
  {
    LOBYTE(v14) = 0;
  }

  v15 = (v14 ^ a3) & 7;
  while (v15 != *(MEMORY[0x1E69E5900] + v13))
  {
    if (++v13 == 7)
    {
      goto LABEL_10;
    }
  }

  if (!v13 && (dyld_program_sdk_at_least() & 1) == 0 && (v19 = [a3 UTF8String], memset(&v21, 0, sizeof(v21)), v19) && (v20 = v19, dladdr(v19, &v21)))
  {
    if (initWithBytes_length_copy_freeWhenDone_bytesAreVM__warnOnce != -1)
    {
      dispatch_once(&initWithBytes_length_copy_freeWhenDone_bytesAreVM__warnOnce, &__block_literal_global_77);
    }

    return [a1 initWithBytes:v20 length:a4 copy:a5 freeWhenDone:0 bytesAreVM:{0, *&v21.dli_fname, *&v21.dli_sname}];
  }

  else
  {
LABEL_10:
    v16 = &__block_literal_global_6;
    if (a7)
    {
      v16 = &__block_literal_global_2;
    }

    if (a6)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    return [a1 initWithBytes:a3 length:a4 copy:a5 deallocator:{v17, *&v21.dli_fname, *&v21.dli_sname}];
  }
}

- (uint64_t)initWithContentsOfFile:()NSData
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = pathifiedNSURL(a3, 0);
  if (v5 && (v9 = 0, v10[0] = 0, v8 = 0, LOBYTE(v7) = 1, ([MEMORY[0x1E695DEF0] _readBytesFromPath:v5 maxLength:0x7FFFFFFFFFFFFFFFLL bytes:v10 length:&v9 didMap:&v8 options:0 reportProgress:v7 error:0] & 1) != 0))
  {
    if (v8)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:a1 lineNumber:@"NSData.m" description:940, @"Data should not have been mapped"];
    }

    return [a1 initWithBytes:v10[0] length:v9 copy:0 freeWhenDone:1 bytesAreVM:0];
  }

  else
  {

    return 0;
  }
}

- (uint64_t)initWithContentsOfFile:()NSData options:maxLength:error:
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v16 = [NSString stringWithFormat:@"%@: nil file argument", _NSMethodExceptionProem(a1, a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0]);
  }

  v19 = 0;
  v20[0] = 0;
  v18 = 0;
  v10 = pathifiedNSURL(a3, a6);
  if (v10 && ((v11 = v10, a5 >= 0x7FFFFFFFFFFFFFFFLL) ? (v12 = 0x7FFFFFFFFFFFFFFFLL) : (v12 = a5), LOBYTE(v17) = 1, ([MEMORY[0x1E695DEF0] _readBytesFromPath:v10 maxLength:v12 bytes:v20 length:&v19 didMap:&v18 options:a4 reportProgress:v17 error:a6] & 1) != 0))
  {
    if (v18)
    {
      v13 = &__block_literal_global_4;
    }

    else
    {
      v13 = &__block_literal_global_6;
    }

    result = [(objc_class *)a1 initWithBytes:v20[0] length:v19 copy:0 deallocator:v13];
    if (a6)
    {
      if (!result)
      {
        v15 = _NSErrorWithFilePath(256, v11);
        result = 0;
        *a6 = v15;
      }
    }
  }

  else
  {

    return 0;
  }

  return result;
}

- (uint64_t)initWithContentsOfURL:()NSData options:maxLength:error:
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v17 = [NSString stringWithFormat:@"%@: nil URL argument", _NSMethodExceptionProem(a1, a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0]);
  }

  if (![a3 isFileURL])
  {
    v13 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:a3 cachePolicy:1 timeoutInterval:60.0];
    v18[0] = 0;
    v14 = [MEMORY[0x1E695AC40] sendSynchronousRequest:v13 returningResponse:v18 error:0];

    if (v18[0] && v14)
    {
      objc_opt_self();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x1E695AC08] isErrorStatusCode:{objc_msgSend(v18[0], "statusCode")}])
      {
LABEL_11:

        v15 = 0;
        if (!a6)
        {
          return v15;
        }

LABEL_15:
        if (!v15)
        {
          v16 = _NSErrorWithFilePath(256, a3);
LABEL_19:
          *a6 = v16;
        }

        return v15;
      }
    }

    else if (!v14)
    {
      goto LABEL_11;
    }

    v15 = [(objc_class *)a1 initWithData:v14];
    if (!a6)
    {
      return v15;
    }

    goto LABEL_15;
  }

  v11 = [a3 _securePath];
  if (!v11)
  {

    if (!a6)
    {
      return 0;
    }

    v16 = _NSErrorWithFilePath(4, a3);
    v15 = 0;
    goto LABEL_19;
  }

  return [(objc_class *)a1 initWithContentsOfFile:v11 options:a4 maxLength:a5 error:a6];
}

- (uint64_t)initWithContentsOfURL:()NSData
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (![a3 isFileURL])
  {
    if (!a3)
    {
      return 0;
    }

    v7 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:a3 cachePolicy:1 timeoutInterval:60.0];
    v9[0] = 0;
    v8 = [MEMORY[0x1E695AC40] sendSynchronousRequest:v7 returningResponse:v9 error:0];

    if (v9[0] && v8)
    {
      objc_opt_self();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x1E695AC08] isErrorStatusCode:{objc_msgSend(v9[0], "statusCode")}])
      {
        goto LABEL_11;
      }
    }

    else if (!v8)
    {
      goto LABEL_11;
    }

    return [a1 initWithData:v8];
  }

  v5 = [a3 _securePath];
  if (!v5)
  {
LABEL_11:

    return 0;
  }

  return [a1 initWithContentsOfFile:v5];
}

- (uint64_t)initWithContentsOfMappedFile:()NSData
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9[0] = 0;
  v7 = 0;
  LOBYTE(v6) = 1;
  if ([MEMORY[0x1E695DEF0] _readBytesFromPath:a3 maxLength:0x7FFFFFFFFFFFFFFFLL bytes:v9 length:&v8 didMap:&v7 options:8 reportProgress:v6 error:0])
  {
    if (v7)
    {
      v4 = &__block_literal_global_4;
    }

    else
    {
      v4 = &__block_literal_global_6;
    }

    return [a1 initWithBytes:v9[0] length:v8 copy:0 deallocator:v4];
  }

  else
  {

    return 0;
  }
}

- (uint64_t)initWithData:()NSData
{
  v5 = [a3 length];
  if (v5)
  {
    v6 = v5;
    v7 = [a3 bytes];
    v8 = a1;
    v9 = v6;
    v10 = 1;
  }

  else
  {
    v8 = a1;
    v7 = 0;
    v9 = 0;
    v10 = 0;
  }

  return [v8 initWithBytes:v7 length:v9 copy:v10 freeWhenDone:0 bytesAreVM:0];
}

+ (uint64_t)_newZeroingDataWithBytes:()NSData length:
{
  v6 = [_NSClrDat alloc];

  return [(NSConcreteData *)v6 initWithBytes:a3 length:a4 copy:1 deallocator:0];
}

+ (uint64_t)_newZeroingDataWithBytesNoCopy:()NSData length:deallocator:
{
  v8 = [_NSClrDat alloc];

  return [(NSConcreteData *)v8 initWithBytes:a3 length:a4 copy:0 deallocator:a5];
}

- (uint64_t)rangeOfData:()NSData options:range:
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (!*MEMORY[0x1E695E100])
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_16:
    v21 = [NSString stringWithFormat:@"%@: nil data argument", _NSMethodExceptionProem(a1, a2)];
    v22 = MEMORY[0x1E695DF30];
    v23 = MEMORY[0x1E695D940];
    goto LABEL_22;
  }

  (*MEMORY[0x1E695E100])(a1, v6, *MEMORY[0x1E695E0D0]);
  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v13 = [(objc_class *)a1 length];
  if (__CFADD__(a6, a5))
  {
    v24 = _NSMethodExceptionProem(a1, a2);
    v30.location = a5;
    v30.length = a6;
    v25 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v24, NSStringFromRange(v30)];
LABEL_21:
    v21 = v25;
    v22 = MEMORY[0x1E695DF30];
    v23 = MEMORY[0x1E695DA20];
LABEL_22:
    objc_exception_throw([v22 exceptionWithName:*v23 reason:v21 userInfo:0]);
  }

  if (a5 + a6 > v13)
  {
    v26 = v13;
    v27 = _NSMethodExceptionProem(a1, a2);
    v28 = v27;
    if (a6)
    {
      v31.location = a5;
      v31.length = a6;
      v25 = [NSString stringWithFormat:@"%@: range %@ exceeds data length %lu", v28, NSStringFromRange(v31), v26];
    }

    else
    {
      v25 = [NSString stringWithFormat:@"%@: location %lu exceeds data length %lu", v27, a5, v26];
    }

    goto LABEL_21;
  }

  v14 = [(objc_class *)a1 _isCompact];
  if (v14)
  {
    result = _CFDataFindBytes();
    if (result == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    v17 = v29 - v16;
    v18 = v29 - v16;
    if (a6 >= 0x101)
    {
      v18 = malloc_type_malloc(a6, 0x100004077774924uLL);
    }

    [(objc_class *)a1 getBytes:v18 range:a5, a6];
    v19 = [(NSData *)[NSConcreteData alloc] initWithBytesNoCopy:v18 length:a6 freeWhenDone:v18 != v17];
    v20 = [(NSData *)v19 rangeOfData:a3 options:a4 range:0, a6];

    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v20 + a5;
    }
  }

  return result;
}

- (uint64_t)_decodeBase64EncodedCharacterBuffer:()NSData length:options:buffer:bufferLength:state:
{
  if (a8)
  {
    v9 = *(a8 + 1);
    v8 = *(a8 + 2);
    v10 = *(a8 + 3);
    v11 = *(a8 + 8);
    v12 = a8[1];
    v13 = *a8;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v8 = 0;
    v9 = 0;
    v12 = 0;
    v13 = 0;
  }

  v14 = 0;
  v15 = a4 == 0;
  if (!a4 || (v12 & 1) != 0)
  {
    goto LABEL_42;
  }

  v14 = 0;
  v16 = a4 - 1;
  v17 = 2;
  while (1)
  {
    v18 = *(a3 + v14);
    if (v18 < 0 || (v19 = _decodeCharacter_DataDecodeTable[v18], v19 < 0))
    {
      if ((a5 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_14;
    }

    if (v18 == 61)
    {
      if ((a5 & 0x10000000) != 0 && !v8)
      {
        goto LABEL_14;
      }

      ++v10;
    }

    else if ((a5 & 1) == 0 && v10)
    {
LABEL_54:
      v26 = 0;
      goto LABEL_55;
    }

    v11 = v19 + (v11 << 6);
    if (++v8 == 4)
    {
      break;
    }

LABEL_14:
    ++v14;
    ++v17;
    if (v14 == a4)
    {
      v12 = 0;
      v15 = 1;
      v14 = a4;
LABEL_42:
      v26 = !v15 | v12;
      if (v13)
      {
LABEL_55:
        v20 = 1;
        v25 = v9;
        goto LABEL_56;
      }

      v25 = v9;
      goto LABEL_44;
    }
  }

  v20 = 1;
  if (a7 < 3 || a7 - 3 < v9 || v10 == 3)
  {
    v26 = 0;
    v25 = v9;
    v8 = 4;
    goto LABEL_56;
  }

  v21 = v14 == v16;
  if (v14 == v16 || !v10)
  {
LABEL_32:
    v25 = v9 + 1;
    *(a6 + v9) = BYTE2(v11);
    if (v21 && v10 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v22 = v14 + 1;
  if (v22 >= a4)
  {
LABEL_31:
    v21 = 1;
    goto LABEL_32;
  }

  v23 = v17;
  while (1)
  {
    v24 = *(a3 + v22);
    if (v24 != 61 && ((a5 & 1) == 0 || (v24 & 0x80) == 0 && (_decodeCharacter_DataDecodeTable[v24] & 0x80000000) == 0))
    {
      break;
    }

    v22 = v23++;
    if (v22 >= a4)
    {
      goto LABEL_31;
    }
  }

  v21 = 0;
  v25 = v9 + 1;
  *(a6 + v9) = BYTE2(v11);
LABEL_36:
  *(a6 + v25) = BYTE1(v11);
  v25 = v9 + 2;
  if (!v21)
  {
LABEL_38:
    *(a6 + v25++) = v11;
    goto LABEL_39;
  }

LABEL_37:
  if (!v10)
  {
    goto LABEL_38;
  }

LABEL_39:
  v8 = 0;
  if ((a5 & 1) != 0 || !v10)
  {
    v9 = v25;
    v10 = 0;
    goto LABEL_14;
  }

  v8 = 0;
  v26 = 1;
  v20 = 1;
  if ((v13 & 1) == 0)
  {
LABEL_44:
    v27 = a4 - v14;
    if (a4 <= v14)
    {
LABEL_53:
      v20 = 0;
      goto LABEL_56;
    }

    v28 = (a3 + v14);
    while (1)
    {
      v30 = *v28++;
      v29 = v30;
      if (a5)
      {
        if ((v29 & 0x80) != 0)
        {
          goto LABEL_52;
        }

        v31 = _decodeCharacter_DataDecodeTable[v29] < 0;
      }

      else
      {
        v31 = 0;
      }

      if (v29 != 61 && !v31)
      {
        v20 = 1;
        break;
      }

LABEL_52:
      if (!--v27)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_56:
  if (a8)
  {
    *a8 = v20;
    a8[1] = v26 & 1;
    *(a8 + 1) = v25;
    *(a8 + 2) = v8;
    *(a8 + 3) = v10;
    *(a8 + 8) = v11;
  }

  return v20 ^ 1u;
}

- (uint64_t)_initWithBase64EncodedObject:()NSData options:
{
  v30 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v7 = [a3 length];
  if (v7)
  {
    v8 = v7;
    v9 = 3 * (v7 >> 2);
    v10 = malloc_default_zone();
    v11 = malloc_type_zone_malloc(v10, v9, 0xCEBFB2E4uLL);
    if (!v11)
    {
      v28 = [NSString stringWithFormat:@"%@: unable to allocate memory for length (%lu)", _NSMethodExceptionProem(a1, a2), v9];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:v28 userInfo:0]);
    }

    v12 = v11;
    v32 = 0;
    v33 = &v32;
    v34 = 0x4810000000;
    v35 = &unk_181543D8B;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    v13 = _NSIsNSString();
    if (v13)
    {
      v14 = 0;
      do
      {
        if (v8 == v14)
        {
          break;
        }

        v15 = v8 - v14 >= 0x400 ? 1024 : v8 - v14;
        MEMORY[0x1EEE9AC00](v13);
        v17 = &v29 - v16;
        v19 = MEMORY[0x1EEE9AC00](v18);
        v21 = &v29 - v20;
        [a3 getCharacters:v17 range:{v14, v15, v19}];
        v22 = 0;
        v23 = v15 <= 1 ? 1 : v15;
        do
        {
          v24 = *&v17[2 * v22];
          if (v24 >= 0x80)
          {
            LOBYTE(v24) = 0;
          }

          v21[v22++] = v24;
        }

        while (v23 != v22);
        v13 = [(objc_class *)a1 _decodeBase64EncodedCharacterBuffer:v21 length:v15 options:v30 buffer:v12 bufferLength:v9 state:v33 + 4];
        v14 += v15;
      }

      while ((v13 & 1) != 0);
    }

    else
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __55__NSData_NSData___initWithBase64EncodedObject_options___block_invoke;
      v31[3] = &unk_1E69F2B10;
      v31[6] = v30;
      v31[7] = v12;
      v31[8] = v9;
      v31[4] = a1;
      v31[5] = &v32;
      [a3 enumerateByteRangesUsingBlock:v31];
    }

    v26 = v33;
    if ((v33[4] & 1) != 0 || v33[6])
    {
      if (![objc_opt_class() _base64DecodingAlwaysSucceedsForOptions:v30])
      {

        free(v12);
        v27 = 0;
        goto LABEL_27;
      }

      v26 = v33;
    }

    v27 = [(objc_class *)a1 initWithBytes:v12 length:v26[5] copy:0 freeWhenDone:1 bytesAreVM:0];
LABEL_27:
    _Block_object_dispose(&v32, 8);
    return v27;
  }

  return [(objc_class *)a1 initWithBytes:0 length:0];
}

- (NSString)_base64EncodingAsString:()NSData withOptions:
{
  v43 = *MEMORY[0x1E69E9840];
  if ([a1 length])
  {
    v8 = [a1 length];
    v9 = 4 * (v8 / 3) + 4 * (v8 != 3 * (v8 / 3));
    if (v9 < v8)
    {
LABEL_17:
      v14 = [NSString stringWithFormat:@"%@: data is too large to encode", _NSMethodExceptionProem(a1, a2)];
      v15 = MEMORY[0x1E695DF30];
      v16 = MEMORY[0x1E695DA20];
      goto LABEL_33;
    }

    if ((a4 & 3) == 1)
    {
      v10 = 64;
    }

    else
    {
      if ((a4 & 3) != 2)
      {
        v10 = 0;
        v12 = a4 & 0x30;
        goto LABEL_19;
      }

      v10 = 76;
    }

    if ((a4 & 0x30) != 0)
    {
      v12 = a4 & 0x30;
    }

    else
    {
      v12 = 48;
    }

    v13 = (v12 >> 4) & 1;
    if (v12 > 0x1F)
    {
      ++v13;
    }

    v9 += ((__PAIR128__(v9 / v10, v9 % v10) - 1) >> 64) * v13;
    if (v9 < v8)
    {
      goto LABEL_17;
    }

LABEL_19:
    v17 = malloc_type_malloc(v9, 0x100004077774924uLL);
    if (!v17)
    {
      v14 = [NSString stringWithFormat:@"%@: unable to allocate memory for length (%lu)", _NSMethodExceptionProem(a1, a2), v9];
      v15 = MEMORY[0x1E695DF30];
      v16 = MEMORY[0x1E695DA18];
LABEL_33:
      objc_exception_throw([v15 exceptionWithName:*v16 reason:v14 userInfo:0]);
    }

    v18 = v17;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = v10;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __54__NSData_NSData___base64EncodingAsString_withOptions___block_invoke;
    v29[3] = &unk_1E69F2B38;
    v29[4] = &v39;
    v29[5] = v30;
    v29[8] = v10;
    v29[9] = v12;
    v29[10] = v17;
    v29[6] = &v35;
    v29[7] = &v31;
    [a1 enumerateByteRangesUsingBlock:v29];
    v19 = v40[3] % 3uLL;
    if (v19 == 1)
    {
      v22 = _base64EncodingAsString_withOptions__DataEncodeTable[16 * (v32[3] & 3)];
      v21 = v36 + 3;
      v23 = v36[3];
      v36[3] = v23 + 1;
      v18[v23] = v22;
      v20 = 61;
    }

    else
    {
      if (v19 != 2)
      {
LABEL_25:
        if (a3)
        {
          v26 = [[NSString alloc] initWithBytesNoCopy:v18 length:v9 encoding:1 freeWhenDone:1];
        }

        else
        {
          v26 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v18 length:v9 copy:0 freeWhenDone:1 bytesAreVM:0];
        }

        v27 = v26;
        _Block_object_dispose(v30, 8);
        _Block_object_dispose(&v31, 8);
        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&v39, 8);
        return v27;
      }

      v20 = _base64EncodingAsString_withOptions__DataEncodeTable[4 * (v32[3] & 0xF)];
      v21 = v36 + 3;
    }

    v24 = (*v21)++;
    v18[v24] = v20;
    v25 = (*v21)++;
    v18[v25] = 61;
    goto LABEL_25;
  }

  if (a3)
  {

    return +[NSString string];
  }

  else
  {
    v28 = MEMORY[0x1E695DEF0];

    return [v28 data];
  }
}

- (uint64_t)initWithBase64EncodedString:()NSData options:
{
  if (!a3)
  {
    v6 = [NSString stringWithFormat:@"%@: nil string argument", _NSMethodExceptionProem(a1, a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0]);
  }

  return [objc_class _initWithBase64EncodedObject:a1 options:"_initWithBase64EncodedObject:options:"];
}

- (uint64_t)base64EncodedStringWithOptions:()NSData
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v3, *MEMORY[0x1E695E0D0]);
  }

  return [a1 _base64EncodingAsString:1 withOptions:a3];
}

- (uint64_t)initWithBase64EncodedData:()NSData options:
{
  if (!a3)
  {
    v6 = [NSString stringWithFormat:@"%@: nil data argument", _NSMethodExceptionProem(a1, a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0]);
  }

  return [objc_class _initWithBase64EncodedObject:a1 options:"_initWithBase64EncodedObject:options:"];
}

- (uint64_t)base64EncodedDataWithOptions:()NSData
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v3, *MEMORY[0x1E695E0D0]);
  }

  return [a1 _base64EncodingAsString:0 withOptions:a3];
}

- (uint64_t)initWithBase64Encoding:()NSData
{
  if (!a3)
  {
    v6 = [NSString stringWithFormat:@"%@: nil string argument", _NSMethodExceptionProem(a1, a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0]);
  }

  return [objc_class _initWithBase64EncodedObject:a1 options:"_initWithBase64EncodedObject:options:"];
}

- (uint64_t)base64Encoding
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(a1, v1, *MEMORY[0x1E695E0D0]);
  }

  return [a1 _base64EncodingAsString:1 withOptions:0];
}

@end