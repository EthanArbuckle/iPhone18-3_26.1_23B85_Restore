@interface CNNonGregorianBirthdayDescription(ABSExtentions)
- (BOOL)absPropertyID:()ABSExtentions;
- (__CFDictionary)ABSValueFromCNValue:()ABSExtentions;
- (id)CNValueFromABSValue:()ABSExtentions;
- (id)convertABSValue:()ABSExtentions toCNValue:error:;
@end

@implementation CNNonGregorianBirthdayDescription(ABSExtentions)

- (BOOL)absPropertyID:()ABSExtentions
{
  if (a3)
  {
    *a3 = 49;
  }

  return a3 != 0;
}

- (id)convertABSValue:()ABSExtentions toCNValue:error:
{
  if (ABValidateAlternateBirthday(a3))
  {
    v11.receiver = self;
    v11.super_class = &off_2849B0EF8;
    return objc_msgSendSuper2(&v11, sel_convertABSValue_toCNValue_error_, a3, a4, a5);
  }

  else if (a5)
  {
    v10 = CFErrorCreate(*MEMORY[0x277CBECE8], @"ABAddressBookErrorDomain", 0, 0);
    result = 0;
    *a5 = v10;
  }

  else
  {
    return 0;
  }

  return result;
}

- (__CFDictionary)ABSValueFromCNValue:()ABSExtentions
{
  v3 = a3;
  if (v3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    calendar = [v3 calendar];
    calendarIdentifier = [calendar calendarIdentifier];

    if (calendarIdentifier)
    {
      calendar2 = [v3 calendar];
      calendarIdentifier2 = [calendar2 calendarIdentifier];
      CFDictionarySetValue(Mutable, @"calendarIdentifier", calendarIdentifier2);
    }

    isLeapMonth = [v3 isLeapMonth];
    v10 = MEMORY[0x277CBED28];
    if (!isLeapMonth)
    {
      v10 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"isLeapMonth", *v10);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__CNNonGregorianBirthdayDescription_ABSExtentions__ABSValueFromCNValue___block_invoke;
    v13[3] = &__block_descriptor_40_e24_v24__0q8____CFString__16l;
    v13[4] = Mutable;
    v11 = MEMORY[0x2383B6390](v13);
    (v11)[2](v11, [v3 era], @"era");
    (v11)[2](v11, [v3 year], @"year");
    (v11)[2](v11, [v3 month], @"month");
    (v11)[2](v11, [v3 day], @"day");

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

- (id)CNValueFromABSValue:()ABSExtentions
{
  if (!a3)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v5 = CFDictionaryGetValue(a3, @"calendarIdentifier");
  v6 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v5];
  if (v6)
  {
    lowercaseString = v5;
LABEL_6:
    [v4 setCalendar:v6];
    [v4 setLeapMonth:{CFDictionaryGetValue(a3, @"isLeapMonth"}];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__CNNonGregorianBirthdayDescription_ABSExtentions__CNValueFromABSValue___block_invoke;
    v11[3] = &__block_descriptor_40_e21_q16__0____CFString__8l;
    v11[4] = a3;
    v9 = MEMORY[0x2383B6390](v11);
    [v4 setEra:{(v9)[2](v9, @"era"}];
    [v4 setYear:{(v9)[2](v9, @"year"}];
    [v4 setMonth:{(v9)[2](v9, @"month"}];
    [v4 setDay:{(v9)[2](v9, @"day"}];
    v8 = v4;

    goto LABEL_7;
  }

  lowercaseString = [v5 lowercaseString];

  v8 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:lowercaseString];
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:

LABEL_8:

  return v8;
}

@end