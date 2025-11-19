@interface LSDisplayNameConstructor
@end

@implementation LSDisplayNameConstructor

void __123___LSDisplayNameConstructor_ConstructForAnyFile__displayNameConstructorsWithContextIfNeeded_bundle_bundleClass_node_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v5 length])
  {
    v6 = [v10 isEqual:@"LSDefaultLocalizedValue"];
    if (*(a1 + 32) && *(a1 + 80) == 1)
    {
      v7 = *(a1 + 56);
      v8 = [objc_opt_class() concatenateBaseName:v5 andExtension:*(a1 + 32)];

      v5 = v8;
    }

    v9 = [objc_alloc(*(a1 + 56)) initWithContextIfNeeded:*(a1 + 64) node:*(a1 + 48) isDirectory:*(a1 + 81) bundleClass:*(a1 + 72) desiredDisplayName:v5 treatAsFSName:v6];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];
  }
}

void __83___LSDisplayNameConstructor_Private__initContentBitsWithDisplayName_treatAsFSName___block_invoke(uint64_t a1, CFStringInlineBuffer *buffer, uint64_t a3)
{
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    v8 = 64;
    v9 = MEMORY[0x1E69E9830];
    while (1)
    {
      v10 = v7 >= 4 ? 4 : v7;
      if ((v7 & 0x8000000000000000) == 0)
      {
        length = buffer->rangeToBuffer.length;
        if (length > v7)
        {
          break;
        }
      }

      if ((*(v9 + 62) & 4) == 0)
      {
        v14 = 0;
LABEL_22:
        v17 = _LSDNCGetForbiddenCharacters(0);
        if (_LSDNCCharacterSetContainsCharacterFromInlineBuffer(v17, v14, buffer, v7))
        {
          *(*(a1 + 32) + 32) |= 0x40u;
        }
      }

LABEL_25:
      ++v7;
      --v6;
      ++v8;
      if (a3 == v7)
      {
        return;
      }
    }

    directUniCharBuffer = buffer->directUniCharBuffer;
    if (directUniCharBuffer)
    {
      v13 = &directUniCharBuffer[buffer->rangeToBuffer.location];
    }

    else
    {
      directCStringBuffer = buffer->directCStringBuffer;
      if (directCStringBuffer)
      {
        v14 = directCStringBuffer[buffer->rangeToBuffer.location + v7];
LABEL_15:
        if (v14 <= 0x7Fu)
        {
          if ((*(v9 + 4 * v14 + 60) & 0x40000) != 0)
          {
            if (v14 == 58 && *(a1 + 40) == 1)
            {
              *(*(a1 + 32) + 32) |= 0x10u;
            }

            goto LABEL_25;
          }
        }

        else
        {
          *(*(a1 + 32) + 32) |= 8u;
          if (_LSDNCGetBiDiControlCharacters(void)::once != -1)
          {
            __83___LSDisplayNameConstructor_Private__initContentBitsWithDisplayName_treatAsFSName___block_invoke_cold_1();
          }

          v16 = _LSDNCGetBiDiControlCharacters(void)::result;
          if (_LSDNCCharacterSetContainsCharacterFromInlineBuffer(v16, v14, buffer, v7))
          {
            *(*(a1 + 32) + 32) |= 0x20u;
          }
        }

        goto LABEL_22;
      }

      if (buffer->bufferedRangeEnd <= v7 || (bufferedRangeStart = buffer->bufferedRangeStart, bufferedRangeStart > v7))
      {
        v19 = -v10;
        v20 = v10 + v6;
        v21 = v8 - v10;
        v22 = v7 + v19;
        v23 = v22 + 64;
        if (v22 + 64 >= length)
        {
          v23 = buffer->rangeToBuffer.length;
        }

        buffer->bufferedRangeStart = v22;
        buffer->bufferedRangeEnd = v23;
        if (length >= v21)
        {
          length = v21;
        }

        v24.location = v22 + buffer->rangeToBuffer.location;
        v24.length = length + v20;
        CFStringGetCharacters(buffer->theString, v24, buffer->buffer);
        bufferedRangeStart = buffer->bufferedRangeStart;
      }

      v13 = &buffer->buffer[-bufferedRangeStart];
    }

    v14 = v13[v7];
    goto LABEL_15;
  }
}

void __62___LSDisplayNameConstructor_Private__cleanSecondaryExtension___block_invoke(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v21 = *MEMORY[0x1E69E9840];
  v1 = objc_alloc_init(MEMORY[0x1E696AD48]);
  [v1 addCharactersInRange:{0, 1}];
  v2 = 0x1E696A000uLL;
  v3 = [MEMORY[0x1E696AB08] controlCharacterSet];
  [v1 formUnionWithCharacterSet:v3];

  v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  [v1 formUnionWithCharacterSet:v4];

  v5 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  [v1 formUnionWithCharacterSet:v5];

  v6 = v1;
  if (uset_openPattern())
  {
    Mutable = CFCharacterSetCreateMutable(0);
    if (Mutable)
    {
      ItemCount = uset_getItemCount();
      v9 = *MEMORY[0x1E695E4A8];
      if (ItemCount >= 1)
      {
        v10 = 0;
        contentsDeallocator = *MEMORY[0x1E695E498];
        do
        {
          Item = uset_getItem();
          if (Item <= 0)
          {
            v22.location = 0;
            v22.length = 1;
            CFCharacterSetAddCharactersInRange(Mutable, v22);
          }

          else
          {
            v12 = CFStringCreateWithCharactersNoCopy(v9, v20, Item, contentsDeallocator);
            CFCharacterSetAddCharactersInString(Mutable, v12);
            CFRelease(v12);
          }

          ++v10;
        }

        while (ItemCount != v10);
      }

      Copy = CFCharacterSetCreateCopy(v9, Mutable);
      v2 = 0x1E696A000;
      v14 = Copy;
      CFRelease(Mutable);
    }

    else
    {
      v14 = 0;
    }

    [v6 formUnionWithCharacterSet:v14];
    uset_close();
  }

  v15 = [*(v2 + 2824) illegalCharacterSet];
  [v6 formUnionWithCharacterSet:v15];

  v16 = [v6 copy];
  v17 = [_LSDisplayNameConstructor(Private) cleanSecondaryExtension:]::nonExtensionCharacters;
  [_LSDisplayNameConstructor(Private) cleanSecondaryExtension:]::nonExtensionCharacters = v16;

  v18 = *MEMORY[0x1E69E9840];
}

void __62___LSDisplayNameConstructor_Private__cleanSecondaryExtension___block_invoke_2(uint64_t a1, CFStringInlineBuffer *a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AD60] stringWithCapacity:?];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 64;
    do
    {
      if (v10 >= 4)
      {
        v12 = 4;
      }

      else
      {
        v12 = v10;
      }

      if (v10 < 0 || (v13 = a2->rangeToBuffer.length, v13 <= v10))
      {
        v16 = 0;
      }

      else
      {
        directUniCharBuffer = a2->directUniCharBuffer;
        if (directUniCharBuffer)
        {
          v15 = &directUniCharBuffer[a2->rangeToBuffer.location];
        }

        else
        {
          directCStringBuffer = a2->directCStringBuffer;
          if (directCStringBuffer)
          {
            v16 = directCStringBuffer[a2->rangeToBuffer.location + v10];
            goto LABEL_12;
          }

          if (a2->bufferedRangeEnd <= v10 || (bufferedRangeStart = a2->bufferedRangeStart, bufferedRangeStart > v10))
          {
            v19 = -v12;
            v20 = v12 + v9;
            v21 = v11 - v12;
            v22 = v10 + v19;
            length = v22 + 64;
            if (v22 + 64 >= v13)
            {
              length = a2->rangeToBuffer.length;
            }

            a2->bufferedRangeStart = v22;
            a2->bufferedRangeEnd = length;
            if (v13 >= v21)
            {
              v13 = v21;
            }

            v25.location = v22 + a2->rangeToBuffer.location;
            v25.length = v13 + v20;
            CFStringGetCharacters(a2->theString, v25, a2->buffer);
            bufferedRangeStart = a2->bufferedRangeStart;
          }

          v15 = &a2->buffer[-bufferedRangeStart];
        }

        v16 = v15[v10];
      }

LABEL_12:
      v24 = v16;
      if ((_LSDNCCharacterSetContainsCharacterFromInlineBuffer([_LSDisplayNameConstructor(Private) cleanSecondaryExtension:]::nonExtensionCharacters, v16, a2, v10) & 1) == 0)
      {
        [*(*(*(a1 + 32) + 8) + 40) appendCharacters:&v24 length:1];
      }

      ++v10;
      --v9;
      ++v11;
    }

    while (a3 != v10);
  }
}

uint64_t __55___LSDisplayNameConstructor_RTL__isStringNaturallyRTL___block_invoke(uint64_t a1)
{
  result = ubidi_getBaseDirection();
  *(*(*(a1 + 32) + 8) + 24) = result == 1;
  return result;
}

@end