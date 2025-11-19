@interface CNTextAlertDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)applyABMultivalueValueBytes:(char *)a3 length:(unint64_t)a4 identifier:(id)a5 legacyIdentifier:(int)a6 label:(id)a7 toCNMultivalueRepresentation:(id)a8;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (BOOL)setABValue:(void *)a3 onABPerson:(void *)a4 error:(__CFError *)a5;
- (void)ABValueForABPerson:(void *)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNTextAlertDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 textAlert];
  if (!v8)
  {
    v4 = [v7 textAlert];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 textAlert];
  v10 = [v7 textAlert];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_textAlert"];

  v7 = [v9 copy];
  v8 = v5[64];
  v5[64] = v7;
}

- (BOOL)applyABMultivalueValueBytes:(char *)a3 length:(unint64_t)a4 identifier:(id)a5 legacyIdentifier:(int)a6 label:(id)a7 toCNMultivalueRepresentation:(id)a8
{
  v13 = a5;
  v14 = a7;
  v15 = a8;
  switch(a6)
  {
    case -2:
      v16 = [CNiOSABConversions stringFromABBytes:a3 length:a4];
      [v15 setSound:v16];
      break;
    case -5:
      v16 = [CNiOSABConversions stringFromABBytes:a3 length:a4];
      [v15 setIgnoreMute:{objc_msgSend(v16, "isEqualToString:", @"YES"}];
      break;
    case -102:
      v16 = [CNiOSABConversions stringFromABBytes:a3 length:a4];
      [v15 setVibration:v16];
      break;
    default:
      v17 = 0;
      goto LABEL_9;
  }

  v17 = 1;
LABEL_9:

  return v17;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A618];
  }

  return a3 != 0;
}

- (BOOL)setABValue:(void *)a3 onABPerson:(void *)a4 error:(__CFError *)a5
{
  CFDictionaryGetValue(a3, @"tone");
  CFDictionaryGetValue(a3, @"vibration");
  CFDictionaryGetValue(a3, @"ignoreMute");
  ABPersonSetSoundIdentifierForMultiValueIdentifier();
  ABPersonSetSoundIdentifierForMultiValueIdentifier();
  ABPersonSetSoundIdentifierForMultiValueIdentifier();
  return 1;
}

- (void)ABValueForABPerson:(void *)a3
{
  v4 = MEMORY[0x19A8B4480](a3, 4294967294);
  if (v4)
  {
    v5 = CFAutorelease(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x19A8B4480](a3, 4294967194);
  if (v6)
  {
    v7 = CFAutorelease(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x19A8B4480](a3, 4294967291);
  if (v8)
  {
    v9 = CFAutorelease(v8);
  }

  else
  {
    v9 = 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v5 && CFStringGetLength(v5) >= 1)
  {
    CFDictionarySetValue(Mutable, @"tone", v5);
  }

  if (v7 && CFStringGetLength(v7) >= 1)
  {
    CFDictionarySetValue(Mutable, @"vibration", v7);
  }

  if (v9 && CFStringGetLength(v9) >= 1)
  {
    CFDictionarySetValue(Mutable, @"ignoreMute", v9);
  }

  if (!Mutable)
  {
    return 0;
  }

  return CFAutorelease(Mutable);
}

@end