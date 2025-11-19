@interface CNContactTypeDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isValidValue:(id)a3 error:(id *)a4;
- (id)CNValueForContact:(id)a3;
- (id)CNValueFromABBytes:(char *)a3 length:(unint64_t)a4;
- (void)ABValueFromCNValue:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
- (void)setCNValue:(id)a3 onContact:(id)a4;
@end

@implementation CNContactTypeDescription

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v6 = a4;
  v5 = [a3 decodeIntegerForKey:@"_contactType"];
  v6[44] = v5;

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)CNValueForContact:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 contactType];

  return [v3 numberWithInteger:v4];
}

- (void)setCNValue:(id)a3 onContact:(id)a4
{
  v5 = a4;
  [v5 setContactType:{objc_msgSend(a3, "integerValue")}];
}

- (BOOL)isValidValue:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CNContactTypeDescription;
  if (![(CNPropertyDescription *)&v13 isValidValue:v6 error:a4])
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v7 = [v6 integerValue];
  v8 = 1;
  if (v6 && v7 >= 2)
  {
    if (a4)
    {
      v15 = @"CNKeyPaths";
      v9 = [(CNPropertyDescription *)self key];
      v14 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      v16[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *a4 = [CNErrorFactory errorWithCode:302 userInfo:v11];
    }

    goto LABEL_6;
  }

LABEL_7:

  return v8;
}

- (id)CNValueFromABBytes:(char *)a3 length:(unint64_t)a4
{
  v5 = [CNiOSABConversions numberFromIntegerABBytes:a3 length:a4];

  return [(CNContactTypeDescription *)self CNValueFromABValue:v5];
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A460];
  }

  return a3 != 0;
}

- (void)ABValueFromCNValue:(id)a3
{
  v3 = [a3 integerValue];
  v4 = MEMORY[0x1E698A450];
  if (v3 != 1)
  {
    v4 = MEMORY[0x1E698A458];
  }

  return *v4;
}

@end