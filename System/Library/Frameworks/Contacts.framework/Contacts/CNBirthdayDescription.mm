@interface CNBirthdayDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (BOOL)isValidValue:(id)a3 error:(id *)a4;
- (BOOL)isValue:(id)a3 preferredToUnifiedValue:(id)a4;
- (id)CNValueFromABBytes:(char *)a3 length:(unint64_t)a4;
- (void)ABValueFromCNValue:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNBirthdayDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 birthday];
  if (!v8)
  {
    v4 = [v7 birthday];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 birthday];
  v10 = [v7 birthday];
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
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_birthday"];

  v7 = [v9 copy];
  v8 = v5[27];
  v5[27] = v7;
}

- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 day];
  v9 = [v7 day];
  v22 = [v6 month];
  v10 = [v7 month];
  v11 = [v6 calendar];
  if (!v11)
  {
    v4 = [v7 calendar];
    if (!v4)
    {
      v14 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v12 = [v6 calendar];
  v13 = [v7 calendar];
  v14 = [v12 isEqual:v13];

  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_7:

  v15 = [v6 year];
  v16 = [v7 year];
  v17 = [v6 year];
  v18 = [v7 year];
  v19 = 0;
  if (v8 == v9 && v22 == v10)
  {
    v20 = (v15 == 0x7FFFFFFFFFFFFFFFLL) ^ (v16 == 0x7FFFFFFFFFFFFFFFLL);
    if (v17 == v18)
    {
      v20 = 1;
    }

    v19 = v14 & v20;
  }

  return v19;
}

- (BOOL)isValue:(id)a3 preferredToUnifiedValue:(id)a4
{
  v5 = a4;
  v6 = [a3 year];
  v7 = [v5 year];

  return v6 != 0x7FFFFFFFFFFFFFFFLL && v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)isValidValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CNBirthdayDescription;
  v7 = [(CNPropertyDescription *)&v13 isValidValue:v6 error:a4];
  v8 = v7;
  if (v6 && v7)
  {
    v12 = 0;
    v8 = [CN areValidGregorianDayComponents:v6 error:&v12];
    v9 = v12;
    if (a4 && !v8)
    {
      v10 = [(CNPropertyDescription *)self key];
      *a4 = [CNErrorFactory errorByPrependingKeyPath:v10 toKeyPathsInError:v9];
    }
  }

  return v8;
}

- (id)CNValueFromABBytes:(char *)a3 length:(unint64_t)a4
{
  v5 = [CNiOSABConversions dateFromABBytes:a3 length:a4];

  return [(CNBirthdayDescription *)self CNValueFromABValue:v5];
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A2E0];
  }

  return a3 != 0;
}

- (void)ABValueFromCNValue:(id)a3
{
  v3 = [MEMORY[0x1E6996698] dateFromDayComponents:a3];
  v4 = v3;
  if (v3 && (v5 = CFRetain(v3)) != 0)
  {
    v6 = CFAutorelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end