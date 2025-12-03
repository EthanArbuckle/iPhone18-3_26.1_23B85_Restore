@interface CNIOSLegacyIdentifierDescription
- (id)CNValueForContact:(id)contact;
- (void)ABValueForABPerson:(void *)person;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
- (void)setCNValue:(id)value onContact:(id)contact;
@end

@implementation CNIOSLegacyIdentifierDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  v5 = [coder decodeInt32ForKey:@"_iOSLegacyIdentifier"];
  contactCopy[4] = v5;

  MEMORY[0x1EEE66BB8](v5, contactCopy);
}

- (id)CNValueForContact:(id)contact
{
  v3 = MEMORY[0x1E696AD98];
  iOSLegacyIdentifier = [contact iOSLegacyIdentifier];

  return [v3 numberWithInt:iOSLegacyIdentifier];
}

- (void)setCNValue:(id)value onContact:(id)contact
{
  contactCopy = contact;
  [contactCopy setIOSLegacyIdentifier:{objc_msgSend(value, "intValue")}];
}

- (void)ABValueForABPerson:(void *)person
{
  valuePtr = ABRecordGetRecordID(person);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (result)
  {
    return CFAutorelease(result);
  }

  return result;
}

@end