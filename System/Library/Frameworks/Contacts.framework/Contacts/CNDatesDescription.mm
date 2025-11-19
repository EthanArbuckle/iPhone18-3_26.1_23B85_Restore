@interface CNDatesDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (BOOL)isValue:(id)a3 preferredToUnifiedValue:(id)a4;
- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)a3 length:(unint64_t)a4;
- (id)standardLabels;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNDatesDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dates];
  if (!v8)
  {
    v4 = [v7 dates];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 dates];
  v10 = [v7 dates];
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
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:&v12 count:3];
  for (i = 16; i != -8; i -= 8)
  {
  }

  v9 = [v5 decodeObjectOfClasses:v7 forKey:{@"_dates", v12, v13}];
  v10 = [v9 copy];
  v11 = v6[51];
  v6[51] = v10;
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

- (id)standardLabels
{
  if (standardLabels_cn_once_token_6 != -1)
  {
    [CNDatesDescription standardLabels];
  }

  v3 = standardLabels_cn_once_object_6;

  return v3;
}

uint64_t __36__CNDatesDescription_standardLabels__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"_$!<Anniversary>!$_", @"_$!<Other>!$_", 0}];
  v1 = standardLabels_cn_once_object_6;
  standardLabels_cn_once_object_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)a3 length:(unint64_t)a4
{
  if (a4 == 8)
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*a3];
    v6 = [(CNDatesDescription *)self CNLabeledValueValueFromABMultiValueValue:v5];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Date parameter was unexpectedly large during contact buffer decode."];
    v6 = 0;
  }

  return v6;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A300];
  }

  return a3 != 0;
}

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3
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