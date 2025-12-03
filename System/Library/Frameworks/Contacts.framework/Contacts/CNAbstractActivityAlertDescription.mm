@interface CNAbstractActivityAlertDescription
- (BOOL)canUnifyValue:(id)value withValue:(id)withValue;
- (id)CNMutableValueForABMultivalue;
- (id)CNValueFromABValue:(void *)value;
- (void)ABValueFromCNValue:(id)value;
@end

@implementation CNAbstractActivityAlertDescription

- (BOOL)canUnifyValue:(id)value withValue:(id)withValue
{
  withValueCopy = withValue;
  valueCopy = value;
  sound = [valueCopy sound];
  sound2 = [withValueCopy sound];
  if (sound)
  {
    v9 = sound;
  }

  else
  {
    v9 = &stru_1F094DAB0;
  }

  if (sound2)
  {
    v10 = sound2;
  }

  else
  {
    v10 = &stru_1F094DAB0;
  }

  v11 = [(__CFString *)v9 localizedCaseInsensitiveCompare:v10];

  vibration = [valueCopy vibration];
  vibration2 = [withValueCopy vibration];
  if (vibration)
  {
    v14 = vibration;
  }

  else
  {
    v14 = &stru_1F094DAB0;
  }

  if (vibration2)
  {
    v15 = vibration2;
  }

  else
  {
    v15 = &stru_1F094DAB0;
  }

  v16 = [(__CFString *)v14 localizedCaseInsensitiveCompare:v15];

  ignoreMute = [valueCopy ignoreMute];
  ignoreMute2 = [withValueCopy ignoreMute];

  if (v11)
  {
    return 0;
  }

  else
  {
    return (v16 == 0) & (ignoreMute ^ ignoreMute2 ^ 1);
  }
}

- (id)CNMutableValueForABMultivalue
{
  v2 = objc_opt_new();

  return v2;
}

- (id)CNValueFromABValue:(void *)value
{
  v4 = CFDictionaryGetValue(value, @"tone");
  v5 = CFDictionaryGetValue(value, @"vibration");
  v6 = CFDictionaryGetValue(value, @"ignoreMute");
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

- (void)ABValueFromCNValue:(id)value
{
  valueCopy = value;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  sound = [valueCopy sound];
  v6 = [sound length];

  if (v6)
  {
    CFDictionarySetValue(Mutable, @"tone", [valueCopy sound]);
  }

  vibration = [valueCopy vibration];
  v8 = [vibration length];

  if (v8)
  {
    CFDictionarySetValue(Mutable, @"vibration", [valueCopy vibration]);
  }

  if ([valueCopy ignoreMute])
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