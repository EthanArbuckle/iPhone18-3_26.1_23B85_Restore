@interface CNNonGregorianBirthdayDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (BOOL)isValidValue:(id)a3 error:(id *)a4;
- (BOOL)isValue:(id)a3 preferredToUnifiedValue:(id)a4;
- (id)CNValueFromABBytes:(char *)a3 length:(unint64_t)a4;
- (id)CNValueFromABValue:(void *)a3;
- (void)ABValueFromCNValue:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNNonGregorianBirthdayDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 nonGregorianBirthday];
  if (!v8)
  {
    v4 = [v7 nonGregorianBirthday];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 nonGregorianBirthday];
  v10 = [v7 nonGregorianBirthday];
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
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_nonGregorianBirthday"];

  v7 = [v9 copy];
  v8 = v5[28];
  v5[28] = v7;
}

- (BOOL)isValue:(id)a3 preferredToUnifiedValue:(id)a4
{
  v5 = a4;
  v6 = [a3 year];
  v7 = [v5 year];

  return v6 != 0x7FFFFFFFFFFFFFFFLL && v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)isValidValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CNNonGregorianBirthdayDescription;
  v7 = [(CNPropertyDescription *)&v13 isValidValue:v6 error:a4];
  v8 = v7;
  if (v6 && v7)
  {
    v12 = 0;
    v8 = [CN areValidNonGregorianDayComponents:v6 error:&v12];
    v9 = v12;
    if (a4 && !v8)
    {
      v10 = [(CNPropertyDescription *)self key];
      *a4 = [CNErrorFactory errorByPrependingKeyPath:v10 toKeyPathsInError:v9];
    }
  }

  return v8;
}

- (id)CNValueFromABBytes:(char *)a3 length:(unint64_t)a4
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a3 length:a4 encoding:4];
  if (!v4)
  {
    v5 = 0;
LABEL_21:
    v5 = v5;
    v33 = v5;
    goto LABEL_24;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v6 = [v4 componentsSeparatedByString:{@", "}];
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v6 objectAtIndexedSubscript:0];
    v10 = [v9 length];

    if (!v10)
    {
LABEL_10:
      v16 = [v6 objectAtIndexedSubscript:1];
      v17 = [v16 length];

      if (v17)
      {
        v18 = [v6 objectAtIndexedSubscript:1];
        [v5 setLeapMonth:{objc_msgSend(v18, "BOOLValue")}];
      }

      v19 = [v6 objectAtIndexedSubscript:2];
      v20 = [v19 length];

      if (v20)
      {
        v21 = [v6 objectAtIndexedSubscript:2];
        [v5 setEra:{objc_msgSend(v21, "integerValue")}];
      }

      v22 = [v6 objectAtIndexedSubscript:3];
      v23 = [v22 length];

      if (v23)
      {
        v24 = [v6 objectAtIndexedSubscript:3];
        [v5 setYear:{objc_msgSend(v24, "integerValue")}];
      }

      v25 = [v6 objectAtIndexedSubscript:4];
      v26 = [v25 length];

      if (v26)
      {
        v27 = [v6 objectAtIndexedSubscript:4];
        [v5 setMonth:{objc_msgSend(v27, "integerValue")}];
      }

      v28 = [v6 objectAtIndexedSubscript:5];
      v29 = [v28 length];

      if (v29)
      {
        v30 = [v6 objectAtIndexedSubscript:5];
        [v5 setDay:{objc_msgSend(v30, "integerValue")}];
      }

      v31 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
      v32 = [v5 calendar];
      [v32 setTimeZone:v31];

      goto LABEL_21;
    }

    v11 = [v6 objectAtIndexedSubscript:0];
    v12 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v11];
    if (v12)
    {
      v13 = v12;
LABEL_9:
      [v5 setCalendar:v13];

      goto LABEL_10;
    }

    v14 = [v11 lowercaseString];

    v15 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v14];
    if (v15)
    {
      v13 = v15;
      v11 = v14;
      goto LABEL_9;
    }
  }

  v33 = 0;
LABEL_24:

  return v33;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A2C0];
  }

  return a3 != 0;
}

- (void)ABValueFromCNValue:(id)a3
{
  v3 = a3;
  if (v3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5 = [v3 calendar];
    v6 = [v5 calendarIdentifier];

    if (v6)
    {
      v7 = *MEMORY[0x1E698A298];
      v8 = [v3 calendar];
      v9 = [v8 calendarIdentifier];
      CFDictionarySetValue(Mutable, v7, v9);
    }

    v10 = [v3 isLeapMonth];
    v11 = MEMORY[0x1E695E4D0];
    if (!v10)
    {
      v11 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x1E698A2B0], *v11);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__CNNonGregorianBirthdayDescription_iOSAB__ABValueFromCNValue___block_invoke;
    aBlock[3] = &__block_descriptor_40_e24_v24__0q8____CFString__16l;
    aBlock[4] = Mutable;
    v12 = _Block_copy(aBlock);
    v13 = [v3 era];
    v12[2](v12, v13, *MEMORY[0x1E698A2A8]);
    v14 = [v3 year];
    v12[2](v12, v14, *MEMORY[0x1E698A2C8]);
    v15 = [v3 month];
    v12[2](v12, v15, *MEMORY[0x1E698A2B8]);
    v16 = [v3 day];
    v12[2](v12, v16, *MEMORY[0x1E698A2A0]);

    if (Mutable)
    {
      Mutable = CFAutorelease(Mutable);
    }
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

void __63__CNNonGregorianBirthdayDescription_iOSAB__ABValueFromCNValue___block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    CFDictionarySetValue(v5, a3, v6);
  }
}

- (id)CNValueFromABValue:(void *)a3
{
  if (!a3)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v5 = CFDictionaryGetValue(a3, *MEMORY[0x1E698A298]);
  v6 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v5];
  if (v6)
  {
    v7 = v6;
    v8 = v5;
  }

  else
  {
    v8 = [v5 lowercaseString];

    v10 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v8];
    if (!v10)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v7 = v10;
  }

  v11 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v7 setTimeZone:v11];

  [v4 setCalendar:v7];
  [v4 setLeapMonth:{CFDictionaryGetValue(a3, *MEMORY[0x1E698A2B0]) == *MEMORY[0x1E695E4D0]}];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__CNNonGregorianBirthdayDescription_iOSAB__CNValueFromABValue___block_invoke;
  aBlock[3] = &__block_descriptor_40_e21_q16__0____CFString__8l;
  aBlock[4] = a3;
  v12 = _Block_copy(aBlock);
  [v4 setEra:{v12[2](v12, *MEMORY[0x1E698A2A8])}];
  [v4 setYear:{v12[2](v12, *MEMORY[0x1E698A2C8])}];
  [v4 setMonth:{v12[2](v12, *MEMORY[0x1E698A2B8])}];
  [v4 setDay:{v12[2](v12, *MEMORY[0x1E698A2A0])}];
  v9 = v4;

LABEL_8:
LABEL_9:

  return v9;
}

uint64_t __63__CNNonGregorianBirthdayDescription_iOSAB__CNValueFromABValue___block_invoke(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (!Value)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [Value integerValue];
}

@end