@interface CNIOSLegacyIdentifierDescription
- (id)CNValueForContact:(id)a3;
- (void)ABValueForABPerson:(void *)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
- (void)setCNValue:(id)a3 onContact:(id)a4;
@end

@implementation CNIOSLegacyIdentifierDescription

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v6 = a4;
  v5 = [a3 decodeInt32ForKey:@"_iOSLegacyIdentifier"];
  v6[4] = v5;

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)CNValueForContact:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 iOSLegacyIdentifier];

  return [v3 numberWithInt:v4];
}

- (void)setCNValue:(id)a3 onContact:(id)a4
{
  v5 = a4;
  [v5 setIOSLegacyIdentifier:{objc_msgSend(a3, "intValue")}];
}

- (void)ABValueForABPerson:(void *)a3
{
  valuePtr = ABRecordGetRecordID(a3);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (result)
  {
    return CFAutorelease(result);
  }

  return result;
}

@end