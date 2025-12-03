@interface _NSBPlistMappedString
+ (id)createStringWithOffset:(int64_t)offset intoMappingData:(id)data;
+ (void)initialize;
- (CFIndex)getBPlistPtr:(CFIndex *)ptr bplistSize:(void *)size stringPtr:(_BYTE *)stringPtr isUTF16BE:;
- (const)_fastCStringContents:(BOOL)contents;
- (uint64_t)isUTF16BE;
- (unint64_t)fastestEncoding;
- (unint64_t)length;
- (unint64_t)smallestEncoding;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation _NSBPlistMappedString

- (unint64_t)length
{
  if (self)
  {
    if (self & 0x8000000000000000) == 0 || (enableTaggedPointerBPlistMappedStrings)
    {
      payload = self->payload;
    }

    else
    {
      v2 = *MEMORY[0x1E69E5910];
      if ((~self & 0xC000000000000007) == 0)
      {
        v2 = 0;
      }

      v3 = v2 ^ self;
      v4 = 0xFFFFFFFFFFFFFFFLL;
      if ((~v3 & 7) == 0)
      {
        v4 = 0xFFFFFFFFFFFFFLL;
      }

      payload = v4 & (v3 >> 3);
    }
  }

  else
  {
    payload = 0;
  }

  return (payload >> 1) & 0x1FFF;
}

+ (void)initialize
{
  if (_NSBPlistMappedString == self)
  {
    if (*MEMORY[0x1E69E5908] && dyld_program_sdk_at_least())
    {

      _objc_registerTaggedPointerClass();
    }

    else
    {
      enableTaggedPointerBPlistMappedStrings = 1;
    }
  }
}

- (unint64_t)fastestEncoding
{
  if ([(_NSBPlistMappedString *)self isUTF16BE])
  {
    return 2415919360;
  }

  else
  {
    return 1;
  }
}

- (uint64_t)isUTF16BE
{
  if (result)
  {
    if (result & 0x8000000000000000) == 0 || (enableTaggedPointerBPlistMappedStrings)
    {
      v4 = *(result + 8);
    }

    else
    {
      v1 = *MEMORY[0x1E69E5910];
      if ((~result & 0xC000000000000007) == 0)
      {
        v1 = 0;
      }

      v2 = v1 ^ result;
      v3 = 0xFFFFFFFFFFFFFFFLL;
      if ((~v2 & 7) == 0)
      {
        v3 = 0xFFFFFFFFFFFFFLL;
      }

      v4 = v3 & (v2 >> 3);
    }

    return v4 & 1;
  }

  return result;
}

+ (id)createStringWithOffset:(int64_t)offset intoMappingData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != _NSBPlistMappedData)
  {
    return 0;
  }

  mappingIndex = [data mappingIndex];
  result = 0;
  if (offset <= 0xFFFFFFF && mappingIndex != -1 && mappingIndex <= 1023)
  {
    v8 = *([data bytes] + offset) & 0xF0;
    [data bytes];
    [data _bplistObjectsRangeEnd];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v13 = MEMORY[0x1E69E9820];
    if (v8 == 96)
    {
      v14 = ___getStringLength_block_invoke_2;
      v15 = &unk_1E69F3D88;
      v9 = __CFBinaryPlistParseUnicode16String();
    }

    else
    {
      v14 = ___getStringLength_block_invoke;
      v15 = &unk_1E69F3D60;
      v9 = __CFBinaryPlistParseASCIIString();
    }

    if ((v9 & 1) == 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Plist data is corrupt!" userInfo:{0, v13, 3221225472, v14, v15, &v16, v16}]);
    }

    v10 = v17[3];
    _Block_object_dispose(&v16, 8);
    if (v10 >> 13)
    {
      return 0;
    }

    if (v8 == 96)
    {
      v11 = ((offset << 24) | (mappingIndex << 14) | (2 * v10)) + 1;
    }

    else
    {
      v11 = (offset << 24) | (mappingIndex << 14) | (2 * v10);
    }

    if (enableTaggedPointerBPlistMappedStrings)
    {
      result = objc_alloc_init(_NSBPlistMappedString);
      if (result)
      {
        *(result + 1) = v11;
      }
    }

    else
    {
      result = ((8 * (v11 & 0xFFFFFFFFFFFFFLL)) | 0x8700000000000007);
      v12 = *MEMORY[0x1E69E5910] ^ result;
      if ((~v12 & 0xC000000000000007) != 0)
      {
        return (v12 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v12 & 7)));
      }
    }
  }

  return result;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  [(_NSBPlistMappedString *)self getCharacters:&v4 range:index, 1];
  return v4;
}

- (CFIndex)getBPlistPtr:(CFIndex *)ptr bplistSize:(void *)size stringPtr:(_BYTE *)stringPtr isUTF16BE:
{
  if (result)
  {
    if (result & 0x8000000000000000) == 0 || (enableTaggedPointerBPlistMappedStrings)
    {
      v11 = *(result + 8);
    }

    else
    {
      v8 = *MEMORY[0x1E69E5910];
      if ((~result & 0xC000000000000007) == 0)
      {
        v8 = 0;
      }

      v9 = v8 ^ result;
      v10 = 0xFFFFFFFFFFFFFFFLL;
      if ((~v9 & 7) == 0)
      {
        v10 = 0xFFFFFFFFFFFFFLL;
      }

      v11 = v10 & (v9 >> 3);
    }

    *stringPtr = v11 & 1;
    MappedStringsFile = _CFBundleGetMappedStringsFile();
    if (!MappedStringsFile)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid tagged pointer reference" userInfo:0]);
    }

    v13 = MappedStringsFile;
    *a2 = CFDataGetBytePtr(MappedStringsFile);
    result = CFDataGetLength(v13);
    *ptr = result;
    *size = &(*a2)[(v11 >> 24) & 0xFFFFFFF];
  }

  return result;
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  [(_NSBPlistMappedString *)self getBPlistPtr:&v19 bplistSize:&v18 stringPtr:&v21 isUTF16BE:?];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7 = v21;
  if (v21)
  {
    v8 = __CFBinaryPlistParseUnicode16String();
  }

  else
  {
    v8 = __CFBinaryPlistParseASCIIString();
  }

  if ((v8 & 1) == 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Plist data is corrupt!" userInfo:0];
    goto LABEL_8;
  }

  if (*(v11 + 24) == 1)
  {
    v23.location = location;
    v23.length = length;
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Out of range. Requested range: %@, reported length: %ld, encoded length: %ld, isUTF16BE: %d", NSStringFromRange(v23), v15[3], -[_NSBPlistMappedString length](self, "length"), v7), 0}];
LABEL_8:
    objc_exception_throw(v9);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

- (const)_fastCStringContents:(BOOL)contents
{
  v3 = 0;
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (!contents)
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    [(_NSBPlistMappedString *)self getBPlistPtr:&v7 bplistSize:&v6 stringPtr:&v9 isUTF16BE:?];
    if ((v9 & 1) == 0)
    {
      v5 = MEMORY[0x1E69E9820];
      if ((__CFBinaryPlistParseASCIIString() & 1) == 0)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Plist data is corrupt!" userInfo:{0, v5, 3221225472, __46___NSBPlistMappedString__fastCStringContents___block_invoke, &unk_1E69F3D60, &v10}]);
      }
    }

    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  return v3;
}

- (unint64_t)smallestEncoding
{
  if ([(_NSBPlistMappedString *)self isUTF16BE])
  {
    return 2415919360;
  }

  else
  {
    return 1;
  }
}

@end