@interface CNContainerIOSLegacyIdentifierDescription
- (id)CNValueForContainer:(id)container;
- (void)ABValueForABSource:(void *)source;
- (void)setCNValue:(id)value onContainer:(id)container;
@end

@implementation CNContainerIOSLegacyIdentifierDescription

- (id)CNValueForContainer:(id)container
{
  v3 = MEMORY[0x1E696AD98];
  iOSLegacyIdentifier = [container iOSLegacyIdentifier];

  return [v3 numberWithInt:iOSLegacyIdentifier];
}

- (void)setCNValue:(id)value onContainer:(id)container
{
  containerCopy = container;
  [containerCopy setIOSLegacyIdentifier:{objc_msgSend(value, "intValue")}];
}

- (void)ABValueForABSource:(void *)source
{
  valuePtr = ABRecordGetRecordID(source);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (result)
  {
    return CFAutorelease(result);
  }

  return result;
}

@end