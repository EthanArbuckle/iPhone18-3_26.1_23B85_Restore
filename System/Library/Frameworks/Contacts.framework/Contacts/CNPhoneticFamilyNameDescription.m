@interface CNPhoneticFamilyNameDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNPhoneticFamilyNameDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 phoneticFamilyName];
  if (!v8)
  {
    v4 = [v7 phoneticFamilyName];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 phoneticFamilyName];
  v10 = [v7 phoneticFamilyName];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_phoneticFamilyName"];

  v7 = [v9 copy];
  v8 = v5[13];
  v5[13] = v7;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A468];
  }

  return a3 != 0;
}

@end