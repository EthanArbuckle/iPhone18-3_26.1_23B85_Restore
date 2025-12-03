@interface CNCallAlertDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)applyABMultivalueValueBytes:(char *)bytes length:(unint64_t)length identifier:(id)identifier legacyIdentifier:(int)legacyIdentifier label:(id)label toCNMultivalueRepresentation:(id)representation;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (BOOL)setABValue:(void *)value onABPerson:(void *)person error:(__CFError *)error;
- (void)ABValueForABPerson:(void *)person;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNCallAlertDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  callAlert = [contactCopy callAlert];
  if (!callAlert)
  {
    callAlert2 = [otherCopy callAlert];
    if (!callAlert2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  callAlert3 = [contactCopy callAlert];
  callAlert4 = [otherCopy callAlert];
  v11 = [callAlert3 isEqual:callAlert4];

  if (!callAlert)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  coderCopy = coder;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_callAlert"];

  v7 = [v9 copy];
  v8 = contactCopy[63];
  contactCopy[63] = v7;
}

- (BOOL)applyABMultivalueValueBytes:(char *)bytes length:(unint64_t)length identifier:(id)identifier legacyIdentifier:(int)legacyIdentifier label:(id)label toCNMultivalueRepresentation:(id)representation
{
  identifierCopy = identifier;
  labelCopy = label;
  representationCopy = representation;
  switch(legacyIdentifier)
  {
    case -1:
      v16 = [CNiOSABConversions stringFromABBytes:bytes length:length];
      [representationCopy setSound:v16];
      break;
    case -4:
      v16 = [CNiOSABConversions stringFromABBytes:bytes length:length];
      [representationCopy setIgnoreMute:{objc_msgSend(v16, "isEqualToString:", @"YES"}];
      break;
    case -101:
      v16 = [CNiOSABConversions stringFromABBytes:bytes length:length];
      [representationCopy setVibration:v16];
      break;
    default:
      v17 = 0;
      goto LABEL_9;
  }

  v17 = 1;
LABEL_9:

  return v17;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A618];
  }

  return d != 0;
}

- (BOOL)setABValue:(void *)value onABPerson:(void *)person error:(__CFError *)error
{
  CFDictionaryGetValue(value, @"tone");
  CFDictionaryGetValue(value, @"vibration");
  CFDictionaryGetValue(value, @"ignoreMute");
  ABPersonSetSoundIdentifierForMultiValueIdentifier();
  ABPersonSetSoundIdentifierForMultiValueIdentifier();
  ABPersonSetSoundIdentifierForMultiValueIdentifier();
  return 1;
}

- (void)ABValueForABPerson:(void *)person
{
  v4 = MEMORY[0x19A8B4480](person, 0xFFFFFFFFLL);
  if (v4)
  {
    v5 = CFAutorelease(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x19A8B4480](person, 4294967195);
  if (v6)
  {
    v7 = CFAutorelease(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x19A8B4480](person, 4294967292);
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