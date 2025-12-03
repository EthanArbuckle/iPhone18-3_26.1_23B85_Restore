@interface CNPreferredForImageDescription
- (BOOL)abPropertyID:(int *)d;
- (id)CNValueForContact:(id)contact;
- (void)ABValueForABPerson:(void *)person;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
- (void)setCNValue:(id)value onContact:(id)contact;
@end

@implementation CNPreferredForImageDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  v5 = [coder decodeBoolForKey:@"_preferredForImage"];
  contactCopy[337] = v5;

  MEMORY[0x1EEE66BB8](v5, contactCopy);
}

- (id)CNValueForContact:(id)contact
{
  v3 = MEMORY[0x1E696AD98];
  isPreferredForImage = [contact isPreferredForImage];

  return [v3 numberWithBool:isPreferredForImage];
}

- (void)setCNValue:(id)value onContact:(id)contact
{
  contactCopy = contact;
  [contactCopy setPreferredForImage:{objc_msgSend(value, "BOOLValue")}];
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A178];
  }

  return d != 0;
}

- (void)ABValueForABPerson:(void *)person
{
  v4 = *MEMORY[0x1E695E4C0];
  v5 = ABPersonCopyArrayOfAllLinkedPeople(person);
  if (CFArrayGetCount(v5) >= 2)
  {
    CFArrayGetValueAtIndex(v5, 0);
    CFArrayGetValueAtIndex(v5, 1);
    v6 = ABPersonCopyPreferredLinkedPersonForImage();
    v7 = ABPersonCopyPreferredLinkedPersonForImage();
    if (CFEqual(v6, v7) && CFEqual(v6, person))
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