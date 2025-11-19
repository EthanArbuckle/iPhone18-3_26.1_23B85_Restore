@interface CNAbstractActivityAlertDescription
- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4;
- (id)CNMutableValueForABMultivalue;
- (id)CNValueFromABValue:(void *)a3;
- (void)ABValueFromCNValue:(id)a3;
@end

@implementation CNAbstractActivityAlertDescription

- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 sound];
  v8 = [v5 sound];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F094DAB0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F094DAB0;
  }

  v11 = [(__CFString *)v9 localizedCaseInsensitiveCompare:v10];

  v12 = [v6 vibration];
  v13 = [v5 vibration];
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_1F094DAB0;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1F094DAB0;
  }

  v16 = [(__CFString *)v14 localizedCaseInsensitiveCompare:v15];

  v17 = [v6 ignoreMute];
  v18 = [v5 ignoreMute];

  if (v11)
  {
    return 0;
  }

  else
  {
    return (v16 == 0) & (v17 ^ v18 ^ 1);
  }
}

- (id)CNMutableValueForABMultivalue
{
  v2 = objc_opt_new();

  return v2;
}

- (id)CNValueFromABValue:(void *)a3
{
  v4 = CFDictionaryGetValue(a3, @"tone");
  v5 = CFDictionaryGetValue(a3, @"vibration");
  v6 = CFDictionaryGetValue(a3, @"ignoreMute");
  v7 = *MEMORY[0x1E6996568];
  if (*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v4) && (*(v7 + 16))(v7, v5) && ((*(v7 + 16))(v7, v6))
  {
    v8 = 0;
  }

  else
  {
    v8 = -[CNActivityAlert initWithSound:vibration:ignoreMute:]([CNActivityAlert alloc], "initWithSound:vibration:ignoreMute:", v4, v5, [v6 isEqualToString:@"YES"]);
  }

  return v8;
}

- (void)ABValueFromCNValue:(id)a3
{
  v3 = a3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = [v3 sound];
  v6 = [v5 length];

  if (v6)
  {
    CFDictionarySetValue(Mutable, @"tone", [v3 sound]);
  }

  v7 = [v3 vibration];
  v8 = [v7 length];

  if (v8)
  {
    CFDictionarySetValue(Mutable, @"vibration", [v3 vibration]);
  }

  if ([v3 ignoreMute])
  {
    CFDictionarySetValue(Mutable, @"ignoreMute", @"YES");
  }

  if (Mutable)
  {
    Mutable = CFAutorelease(Mutable);
  }

  return Mutable;
}

@end