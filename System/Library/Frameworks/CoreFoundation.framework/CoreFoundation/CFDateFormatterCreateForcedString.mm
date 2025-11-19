@interface CFDateFormatterCreateForcedString
@end

@implementation CFDateFormatterCreateForcedString

CFCharacterSetRef ____CFDateFormatterCreateForcedString_block_invoke()
{
  result = CFCharacterSetCreateWithCharactersInString(&__kCFAllocatorSystemDefault, @"hHkK");
  __CFDateFormatterCreateForcedString_hourCharacters = result;
  return result;
}

void ____CFDateFormatterCreateForcedString_block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(*(a1 + 48));
  v4 = Length;
  v5 = 2 * Length;
  if ((2 * Length) < 0x101)
  {
    if (Length < 1)
    {
      v6 = 0;
    }

    else
    {
      MEMORY[0x1EEE9AC00](Length, v3);
      v6 = &v13[-4] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v6, v5);
    }
  }

  else
  {
    v6 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
  }

  if (!CFStringGetCharactersPtr(*(a1 + 48)))
  {
    v15.location = 0;
    v15.length = v4;
    CFStringGetCharacters(*(a1 + 48), v15, v6);
  }

  HIDWORD(v12) = 0;
  v7 = *(a1 + 56);
  *(*(*(a1 + 32) + 8) + 24) = uadatpg_remapPatternWithOptions();
  if (SHIDWORD(v12) <= 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v13, *(*(*(a1 + 32) + 8) + 24));
  }

  else if (HIDWORD(v12) == 15)
  {
    HIDWORD(v12) = 0;
    v8 = malloc_type_calloc(*(*(*(a1 + 32) + 8) + 24) + 1, 2uLL, 0x1000040BDFB0063uLL);
    v9 = *(a1 + 56);
    v10 = *(*(*(a1 + 32) + 8) + 24);
    *(*(*(a1 + 32) + 8) + 24) = uadatpg_remapPatternWithOptions();
    if (SHIDWORD(v12) <= 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v8, *(*(*(a1 + 32) + 8) + 24));
    }

    free(v8);
  }

  if (v5 >= 0x101)
  {
    free(v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end