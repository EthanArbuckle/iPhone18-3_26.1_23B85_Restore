@interface CNPreferredForNameDescription
- (BOOL)abPropertyID:(int *)a3;
- (id)CNValueForContact:(id)a3;
- (void)ABValueForABPerson:(void *)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
- (void)setCNValue:(id)a3 onContact:(id)a4;
@end

@implementation CNPreferredForNameDescription

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v6 = a4;
  v5 = [a3 decodeBoolForKey:@"_preferredForName"];
  v6[336] = v5;

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)CNValueForContact:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 isPreferredForName];

  return [v3 numberWithBool:v4];
}

- (void)setCNValue:(id)a3 onContact:(id)a4
{
  v5 = a4;
  [v5 setPreferredForName:{objc_msgSend(a3, "BOOLValue")}];
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A440];
  }

  return a3 != 0;
}

- (void)ABValueForABPerson:(void *)a3
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