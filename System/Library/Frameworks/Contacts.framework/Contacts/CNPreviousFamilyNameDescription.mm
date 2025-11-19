@interface CNPreviousFamilyNameDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNPreviousFamilyNameDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 previousFamilyName];
  if (!v8)
  {
    v4 = [v7 previousFamilyName];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 previousFamilyName];
  v10 = [v7 previousFamilyName];
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
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_previousFamilyName"];

  v7 = [v9 copy];
  v8 = v5[9];
  v5[9] = v7;
}

- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_1F094DAB0;
  }

  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = &stru_1F094DAB0;
  }

  return [(__CFString *)v4 localizedCaseInsensitiveCompare:v5]== 0;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A588];
  }

  return a3 != 0;
}

@end