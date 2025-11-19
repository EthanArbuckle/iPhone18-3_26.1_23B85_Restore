@interface CFPrefsOversizedPlistDescription
@end

@implementation CFPrefsOversizedPlistDescription

void __79___CFPrefsOversizedPlistDescription__descriptionOfDictionary_withKeyRedaction___block_invoke(uint64_t a1, const __CFString *a2, __CFString *cf)
{
  cfa[1] = *MEMORY[0x1E69E9840];
  cfa[0] = 0;
  v5 = _approximateSizeOfPlistValue(cf, cfa, 0);
  *(*(*(a1 + 32) + 8) + 24) += v5;
  if (cfa[0])
  {
    v6 = v5;
    if (CFArrayGetCount(*(a1 + 40)) > 9)
    {
      v7.length = 10;
    }

    else
    {
      v7.length = CFArrayGetCount(*(a1 + 40));
    }

    v7.location = 0;
    v8 = CFArrayBSearchValues(*(a1 + 40), v7, v6, _compareSizes, 0);
    if (v8 <= 9)
    {
      v9 = v8;
      CFArrayInsertValueAtIndex(*(a1 + 40), v8, v6);
      if (*(a1 + 56) == 1)
      {
        Length = CFStringGetLength(a2);
        v11 = Length;
        v12 = Length - 1;
        if (Length > 1)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(a2, 0);
          v16 = CharacterAtIndex;
          v17 = v11 - 2;
          if (v17)
          {
            v20 = CFStringGetCharacterAtIndex(a2, v12);
            v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%C{%ld}%C", v16, v17, v20);
          }

          else
          {
            v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%C{1}", CharacterAtIndex);
          }
        }

        else
        {
          v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"{%ld}", Length);
        }

        v14 = v13;
      }

      else
      {
        v14 = CFRetain(a2);
      }

      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: %@", v14, cfa[0]);
      CFArrayInsertValueAtIndex(*(a1 + 48), v9, v18);
      CFRelease(v18);
      CFRelease(v14);
    }

    CFRelease(cfa[0]);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __79___CFPrefsOversizedPlistDescription__descriptionOfDictionary_withKeyRedaction___block_invoke_2(uint64_t a1, const __CFString *a2)
{
  CFStringAppend(*(a1 + 32), a2);
  v3 = *(a1 + 32);

  CFStringAppend(v3, @"\n");
}

@end