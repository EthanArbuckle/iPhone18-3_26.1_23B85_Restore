@interface CNContactFlagsDescription
- (BOOL)isEqualIgnoringIdentifiersForContact:(id)a3 other:(id)a4;
- (id)CNValueForContact:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
- (void)setCNValue:(id)a3 onContact:(id)a4;
@end

@implementation CNContactFlagsDescription

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v6 = a4;
  v5 = [a3 decodeIntegerForKey:@"_flags"];
  v6[3] = v5;

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)isEqualIgnoringIdentifiersForContact:(id)a3 other:(id)a4
{
  v5 = a4;
  v6 = [a3 flags];
  v7 = [v5 flags];

  return v6 == v7;
}

- (id)CNValueForContact:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 flags];

  return [v3 numberWithUnsignedInteger:v4];
}

- (void)setCNValue:(id)a3 onContact:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v9 = v5;
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

  [v6 setFlags:{objc_msgSend(v8, "CNContactFlagsValue")}];
}

@end