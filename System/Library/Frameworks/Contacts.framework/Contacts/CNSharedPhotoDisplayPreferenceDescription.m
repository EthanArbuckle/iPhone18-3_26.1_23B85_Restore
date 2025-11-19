@interface CNSharedPhotoDisplayPreferenceDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isValidValue:(id)a3 error:(id *)a4;
- (BOOL)setCNValue:(id)a3 onABPerson:(void *)a4 withDependentPropertiesContext:(id)a5 error:(id *)a6;
- (id)CNValueForContact:(id)a3;
- (id)CNValueFromABBytes:(char *)a3 length:(unint64_t)a4;
- (id)CNValueFromABValue:(void *)a3;
- (id)sharedPhotoDisplayPreferenceFromFlags:(id)a3;
- (int64_t)flagsWithFlags:(id)a3 displayPreference:(id)a4;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
- (void)setCNValue:(id)a3 onContact:(id)a4;
@end

@implementation CNSharedPhotoDisplayPreferenceDescription

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v6 = a4;
  v5 = [a3 decodeIntegerForKey:@"_sharedPhotoDisplayPreference"];
  v6[46] = v5;

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)CNValueForContact:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 sharedPhotoDisplayPreference];

  return [v3 numberWithInteger:v4];
}

- (void)setCNValue:(id)a3 onContact:(id)a4
{
  v5 = a4;
  [v5 setSharedPhotoDisplayPreference:{objc_msgSend(a3, "integerValue")}];
}

- (BOOL)isValidValue:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CNSharedPhotoDisplayPreferenceDescription;
  if (![(CNPropertyDescription *)&v13 isValidValue:v6 error:a4])
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v7 = [v6 integerValue];
  v8 = 1;
  if (v6 && v7 >= 4)
  {
    if (a4)
    {
      v15 = @"CNKeyPaths";
      v9 = [(CNPropertyDescription *)self key];
      v14 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      v16[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *a4 = [CNErrorFactory errorWithCode:302 userInfo:v11];
    }

    goto LABEL_6;
  }

LABEL_7:

  return v8;
}

- (id)CNValueFromABBytes:(char *)a3 length:(unint64_t)a4
{
  v5 = [CNiOSABConversions numberFromIntegerABBytes:a3 length:a4];

  return [(CNSharedPhotoDisplayPreferenceDescription *)self CNValueFromABValue:v5];
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A318];
  }

  return a3 != 0;
}

- (BOOL)setCNValue:(id)a3 onABPerson:(void *)a4 withDependentPropertiesContext:(id)a5 error:(id *)a6
{
  v9 = *MEMORY[0x1E698A318];
  v10 = a3;
  v11 = ABRecordCopyValue(a4, v9);
  valuePtr = 0;
  CFNumberGetValue(v11, kCFNumberNSIntegerType, &valuePtr);
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:valuePtr];
  v13 = [(CNSharedPhotoDisplayPreferenceDescription *)self flagsWithFlags:v12 displayPreference:v10];

  v19 = v13;
  v14 = CFNumberCreate(0, kCFNumberNSIntegerType, &v19);
  if (v11)
  {
    CFAutorelease(v11);
  }

  cf = 0;
  v15 = [(CNPropertyDescription *)self setABValue:v14 onABPerson:a4 error:&cf];
  v16 = v15;
  if (a6)
  {
    if (!v15)
    {
      *a6 = [CNErrorFactory errorForiOSABError:cf];
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

- (id)CNValueFromABValue:(void *)a3
{
  if (a3 && (v5 = CFGetTypeID(a3), v5 == CFNumberGetTypeID()))
  {
    valuePtr = 0;
    CFNumberGetValue(a3, kCFNumberNSIntegerType, &valuePtr);
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:valuePtr];
    v7 = [(CNSharedPhotoDisplayPreferenceDescription *)self sharedPhotoDisplayPreferenceFromFlags:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sharedPhotoDisplayPreferenceFromFlags:(id)a3
{
  v3 = [a3 integerValue] >> 6;
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithInteger:v3];
}

- (int64_t)flagsWithFlags:(id)a3 displayPreference:(id)a4
{
  v5 = a3;
  v6 = [a4 integerValue];
  v7 = [v5 integerValue];

  if ((v6 - 1) >= 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v6 - 1) << 6) + 64;
  }

  return v8 | v7 & 0xFFFFFFFFFFFFFF3FLL;
}

@end