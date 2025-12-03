@interface CNPreferredForNameDescription
- (BOOL)abPropertyID:(int *)d;
- (id)CNValueForContact:(id)contact;
- (void)ABValueForABPerson:(void *)person;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
- (void)setCNValue:(id)value onContact:(id)contact;
@end

@implementation CNPreferredForNameDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  v5 = [coder decodeBoolForKey:@"_preferredForName"];
  contactCopy[336] = v5;

  MEMORY[0x1EEE66BB8](v5, contactCopy);
}

- (id)CNValueForContact:(id)contact
{
  v3 = MEMORY[0x1E696AD98];
  isPreferredForName = [contact isPreferredForName];

  return [v3 numberWithBool:isPreferredForName];
}

- (void)setCNValue:(id)value onContact:(id)contact
{
  contactCopy = contact;
  [contactCopy setPreferredForName:{objc_msgSend(value, "BOOLValue")}];
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A440];
  }

  return d != 0;
}

- (void)ABValueForABPerson:(void *)person
{
  if (ABRecordGetIntValue())
  {
    return *MEMORY[0x1E695E4D0];
  }

  v4 = *MEMORY[0x1E695E4C0];
  if (ABRecordGetIntValue() == -1)
  {
    return *MEMORY[0x1E695E4D0];
  }

  else
  {
    return v4;
  }
}

@end