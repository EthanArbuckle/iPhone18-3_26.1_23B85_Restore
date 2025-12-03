@interface CNContactTypeDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isValidValue:(id)value error:(id *)error;
- (id)CNValueForContact:(id)contact;
- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length;
- (void)ABValueFromCNValue:(id)value;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
- (void)setCNValue:(id)value onContact:(id)contact;
@end

@implementation CNContactTypeDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  v5 = [coder decodeIntegerForKey:@"_contactType"];
  contactCopy[44] = v5;

  MEMORY[0x1EEE66BB8](v5, contactCopy);
}

- (id)CNValueForContact:(id)contact
{
  v3 = MEMORY[0x1E696AD98];
  contactType = [contact contactType];

  return [v3 numberWithInteger:contactType];
}

- (void)setCNValue:(id)value onContact:(id)contact
{
  contactCopy = contact;
  [contactCopy setContactType:{objc_msgSend(value, "integerValue")}];
}

- (BOOL)isValidValue:(id)value error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = CNContactTypeDescription;
  if (![(CNPropertyDescription *)&v13 isValidValue:valueCopy error:error])
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  integerValue = [valueCopy integerValue];
  v8 = 1;
  if (valueCopy && integerValue >= 2)
  {
    if (error)
    {
      v15 = @"CNKeyPaths";
      v9 = [(CNPropertyDescription *)self key];
      v14 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      v16[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = [CNErrorFactory errorWithCode:302 userInfo:v11];
    }

    goto LABEL_6;
  }

LABEL_7:

  return v8;
}

- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length
{
  v5 = [CNiOSABConversions numberFromIntegerABBytes:bytes length:length];

  return [(CNContactTypeDescription *)self CNValueFromABValue:v5];
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A460];
  }

  return d != 0;
}

- (void)ABValueFromCNValue:(id)value
{
  integerValue = [value integerValue];
  v4 = MEMORY[0x1E698A450];
  if (integerValue != 1)
  {
    v4 = MEMORY[0x1E698A458];
  }

  return *v4;
}

@end