@interface CNNonGregorianBirthdayDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (BOOL)isValidValue:(id)value error:(id *)error;
- (BOOL)isValue:(id)value preferredToUnifiedValue:(id)unifiedValue;
- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length;
- (id)CNValueFromABValue:(void *)value;
- (void)ABValueFromCNValue:(id)value;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNNonGregorianBirthdayDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  nonGregorianBirthday = [contactCopy nonGregorianBirthday];
  if (!nonGregorianBirthday)
  {
    nonGregorianBirthday2 = [otherCopy nonGregorianBirthday];
    if (!nonGregorianBirthday2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  nonGregorianBirthday3 = [contactCopy nonGregorianBirthday];
  nonGregorianBirthday4 = [otherCopy nonGregorianBirthday];
  v11 = [nonGregorianBirthday3 isEqual:nonGregorianBirthday4];

  if (!nonGregorianBirthday)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_nonGregorianBirthday"];

  v7 = [v9 copy];
  v8 = contactCopy[28];
  contactCopy[28] = v7;
}

- (BOOL)isValue:(id)value preferredToUnifiedValue:(id)unifiedValue
{
  unifiedValueCopy = unifiedValue;
  year = [value year];
  year2 = [unifiedValueCopy year];

  return year != 0x7FFFFFFFFFFFFFFFLL && year2 == 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)isValidValue:(id)value error:(id *)error
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = CNNonGregorianBirthdayDescription;
  v7 = [(CNPropertyDescription *)&v13 isValidValue:valueCopy error:error];
  v8 = v7;
  if (valueCopy && v7)
  {
    v12 = 0;
    v8 = [CN areValidNonGregorianDayComponents:valueCopy error:&v12];
    v9 = v12;
    if (error && !v8)
    {
      v10 = [(CNPropertyDescription *)self key];
      *error = [CNErrorFactory errorByPrependingKeyPath:v10 toKeyPathsInError:v9];
    }
  }

  return v8;
}

- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:bytes length:length encoding:4];
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
      calendar = [v5 calendar];
      [calendar setTimeZone:v31];

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

    lowercaseString = [v11 lowercaseString];

    v15 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:lowercaseString];
    if (v15)
    {
      v13 = v15;
      v11 = lowercaseString;
      goto LABEL_9;
    }
  }

  v33 = 0;
LABEL_24:

  return v33;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A2C0];
  }

  return d != 0;
}

- (void)ABValueFromCNValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    calendar = [valueCopy calendar];
    calendarIdentifier = [calendar calendarIdentifier];

    if (calendarIdentifier)
    {
      v7 = *MEMORY[0x1E698A298];
      calendar2 = [valueCopy calendar];
      calendarIdentifier2 = [calendar2 calendarIdentifier];
      CFDictionarySetValue(Mutable, v7, calendarIdentifier2);
    }

    isLeapMonth = [valueCopy isLeapMonth];
    v11 = MEMORY[0x1E695E4D0];
    if (!isLeapMonth)
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
    v13 = [valueCopy era];
    v12[2](v12, v13, *MEMORY[0x1E698A2A8]);
    year = [valueCopy year];
    v12[2](v12, year, *MEMORY[0x1E698A2C8]);
    month = [valueCopy month];
    v12[2](v12, month, *MEMORY[0x1E698A2B8]);
    v16 = [valueCopy day];
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

- (id)CNValueFromABValue:(void *)value
{
  if (!value)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v5 = CFDictionaryGetValue(value, *MEMORY[0x1E698A298]);
  v6 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v5];
  if (v6)
  {
    v7 = v6;
    lowercaseString = v5;
  }

  else
  {
    lowercaseString = [v5 lowercaseString];

    v10 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:lowercaseString];
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
  [v4 setLeapMonth:{CFDictionaryGetValue(value, *MEMORY[0x1E698A2B0]) == *MEMORY[0x1E695E4D0]}];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__CNNonGregorianBirthdayDescription_iOSAB__CNValueFromABValue___block_invoke;
  aBlock[3] = &__block_descriptor_40_e21_q16__0____CFString__8l;
  aBlock[4] = value;
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