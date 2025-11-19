@interface CNUrlAddressesDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)canUnifyValue:(id)a3 withValue:(id)a4;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (id)standardLabels;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNUrlAddressesDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 urlAddresses];
  if (!v8)
  {
    v4 = [v7 urlAddresses];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 urlAddresses];
  v10 = [v7 urlAddresses];
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

  v9 = [v5 decodeObjectOfClasses:v7 forKey:{@"_urlAddresses", v12, v13}];
  v10 = [v9 copy];
  v11 = v6[50];
  v6[50] = v10;
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

- (id)standardLabels
{
  if (standardLabels_cn_once_token_5 != -1)
  {
    [CNUrlAddressesDescription standardLabels];
  }

  v3 = standardLabels_cn_once_object_5;

  return v3;
}

uint64_t __43__CNUrlAddressesDescription_standardLabels__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"_$!<HomePage>!$_", @"_$!<Home>!$_", @"_$!<Work>!$_", @"_$!<School>!$_", @"_$!<Other>!$_", 0}];
  v1 = standardLabels_cn_once_object_5;
  standardLabels_cn_once_object_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A630];
  }

  return a3 != 0;
}

@end