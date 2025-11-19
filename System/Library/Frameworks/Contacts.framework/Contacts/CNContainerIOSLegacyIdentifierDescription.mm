@interface CNContainerIOSLegacyIdentifierDescription
- (id)CNValueForContainer:(id)a3;
- (void)ABValueForABSource:(void *)a3;
- (void)setCNValue:(id)a3 onContainer:(id)a4;
@end

@implementation CNContainerIOSLegacyIdentifierDescription

- (id)CNValueForContainer:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 iOSLegacyIdentifier];

  return [v3 numberWithInt:v4];
}

- (void)setCNValue:(id)a3 onContainer:(id)a4
{
  v5 = a4;
  [v5 setIOSLegacyIdentifier:{objc_msgSend(a3, "intValue")}];
}

- (void)ABValueForABSource:(void *)a3
{
  valuePtr = ABRecordGetRecordID(a3);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (result)
  {
    return CFAutorelease(result);
  }

  return result;
}

@end