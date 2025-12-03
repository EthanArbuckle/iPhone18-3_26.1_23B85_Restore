@interface CNContactFlagsDescription
- (BOOL)isEqualIgnoringIdentifiersForContact:(id)contact other:(id)other;
- (id)CNValueForContact:(id)contact;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
- (void)setCNValue:(id)value onContact:(id)contact;
@end

@implementation CNContactFlagsDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  v5 = [coder decodeIntegerForKey:@"_flags"];
  contactCopy[3] = v5;

  MEMORY[0x1EEE66BB8](v5, contactCopy);
}

- (BOOL)isEqualIgnoringIdentifiersForContact:(id)contact other:(id)other
{
  otherCopy = other;
  flags = [contact flags];
  flags2 = [otherCopy flags];

  return flags == flags2;
}

- (id)CNValueForContact:(id)contact
{
  v3 = MEMORY[0x1E696AD98];
  flags = [contact flags];

  return [v3 numberWithUnsignedInteger:flags];
}

- (void)setCNValue:(id)value onContact:(id)contact
{
  valueCopy = value;
  contactCopy = contact;
  objc_opt_class();
  v9 = valueCopy;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  [contactCopy setFlags:{objc_msgSend(v8, "CNContactFlagsValue")}];
}

@end