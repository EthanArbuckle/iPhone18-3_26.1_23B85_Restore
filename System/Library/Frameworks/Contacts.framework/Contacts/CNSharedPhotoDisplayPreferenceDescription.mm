@interface CNSharedPhotoDisplayPreferenceDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isValidValue:(id)value error:(id *)error;
- (BOOL)setCNValue:(id)value onABPerson:(void *)person withDependentPropertiesContext:(id)context error:(id *)error;
- (id)CNValueForContact:(id)contact;
- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length;
- (id)CNValueFromABValue:(void *)value;
- (id)sharedPhotoDisplayPreferenceFromFlags:(id)flags;
- (int64_t)flagsWithFlags:(id)flags displayPreference:(id)preference;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
- (void)setCNValue:(id)value onContact:(id)contact;
@end

@implementation CNSharedPhotoDisplayPreferenceDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  v5 = [coder decodeIntegerForKey:@"_sharedPhotoDisplayPreference"];
  contactCopy[46] = v5;

  MEMORY[0x1EEE66BB8](v5, contactCopy);
}

- (id)CNValueForContact:(id)contact
{
  v3 = MEMORY[0x1E696AD98];
  sharedPhotoDisplayPreference = [contact sharedPhotoDisplayPreference];

  return [v3 numberWithInteger:sharedPhotoDisplayPreference];
}

- (void)setCNValue:(id)value onContact:(id)contact
{
  contactCopy = contact;
  [contactCopy setSharedPhotoDisplayPreference:{objc_msgSend(value, "integerValue")}];
}

- (BOOL)isValidValue:(id)value error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = CNSharedPhotoDisplayPreferenceDescription;
  if (![(CNPropertyDescription *)&v13 isValidValue:valueCopy error:error])
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  integerValue = [valueCopy integerValue];
  v8 = 1;
  if (valueCopy && integerValue >= 4)
  {
    if (error)
    {
      v15 = @"CNKeyPaths";
      v9 = [(CNPropertyDescription *)self key];
      v14 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      v16[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = [CNErrorFactory errorWithCode:302 userInfo:v11];
    }

    goto LABEL_6;
  }

LABEL_7:

  return v8;
}

- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length
{
  v5 = [CNiOSABConversions numberFromIntegerABBytes:bytes length:length];

  return [(CNSharedPhotoDisplayPreferenceDescription *)self CNValueFromABValue:v5];
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A318];
  }

  return d != 0;
}

- (BOOL)setCNValue:(id)value onABPerson:(void *)person withDependentPropertiesContext:(id)context error:(id *)error
{
  v9 = *MEMORY[0x1E698A318];
  valueCopy = value;
  v11 = ABRecordCopyValue(person, v9);
  valuePtr = 0;
  CFNumberGetValue(v11, kCFNumberNSIntegerType, &valuePtr);
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:valuePtr];
  v13 = [(CNSharedPhotoDisplayPreferenceDescription *)self flagsWithFlags:v12 displayPreference:valueCopy];

  v19 = v13;
  v14 = CFNumberCreate(0, kCFNumberNSIntegerType, &v19);
  if (v11)
  {
    CFAutorelease(v11);
  }

  cf = 0;
  v15 = [(CNPropertyDescription *)self setABValue:v14 onABPerson:person error:&cf];
  v16 = v15;
  if (error)
  {
    if (!v15)
    {
      *error = [CNErrorFactory errorForiOSABError:cf];
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  if (v14)
  {
    CFAutorelease(v14);
  }

  return v16;
}

- (id)CNValueFromABValue:(void *)value
{
  if (value && (v5 = CFGetTypeID(value), v5 == CFNumberGetTypeID()))
  {
    valuePtr = 0;
    CFNumberGetValue(value, kCFNumberNSIntegerType, &valuePtr);
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:valuePtr];
    v7 = [(CNSharedPhotoDisplayPreferenceDescription *)self sharedPhotoDisplayPreferenceFromFlags:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sharedPhotoDisplayPreferenceFromFlags:(id)flags
{
  v3 = [flags integerValue] >> 6;
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithInteger:v3];
}

- (int64_t)flagsWithFlags:(id)flags displayPreference:(id)preference
{
  flagsCopy = flags;
  integerValue = [preference integerValue];
  integerValue2 = [flagsCopy integerValue];

  if ((integerValue - 1) >= 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((integerValue - 1) << 6) + 64;
  }

  return v8 | integerValue2 & 0xFFFFFFFFFFFFFF3FLL;
}

@end