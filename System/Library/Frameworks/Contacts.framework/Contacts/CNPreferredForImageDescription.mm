@interface CNPreferredForImageDescription
- (BOOL)abPropertyID:(int *)a3;
- (id)CNValueForContact:(id)a3;
- (void)ABValueForABPerson:(void *)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
- (void)setCNValue:(id)a3 onContact:(id)a4;
@end

@implementation CNPreferredForImageDescription

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v6 = a4;
  v5 = [a3 decodeBoolForKey:@"_preferredForImage"];
  v6[337] = v5;

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)CNValueForContact:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 isPreferredForImage];

  return [v3 numberWithBool:v4];
}

- (void)setCNValue:(id)a3 onContact:(id)a4
{
  v5 = a4;
  [v5 setPreferredForImage:{objc_msgSend(a3, "BOOLValue")}];
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A178];
  }

  return a3 != 0;
}

- (void)ABValueForABPerson:(void *)a3
{
  v4 = *MEMORY[0x1E695E4C0];
  v5 = ABPersonCopyArrayOfAllLinkedPeople(a3);
  if (CFArrayGetCount(v5) >= 2)
  {
    CFArrayGetValueAtIndex(v5, 0);
    CFArrayGetValueAtIndex(v5, 1);
    v6 = ABPersonCopyPreferredLinkedPersonForImage();
    v7 = ABPersonCopyPreferredLinkedPersonForImage();
    if (CFEqual(v6, v7) && CFEqual(v6, a3))
    {
      v4 = *MEMORY[0x1E695E4D0];
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

@end