@interface CNFamilyNameDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNFamilyNameDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 familyName];
  if (!v8)
  {
    v4 = [v7 familyName];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 familyName];
  v10 = [v7 familyName];
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
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_familyName"];

  v7 = [v9 copy];
  v8 = v5[7];
  v5[7] = v7;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A478];
  }

  return a3 != 0;
}

@end