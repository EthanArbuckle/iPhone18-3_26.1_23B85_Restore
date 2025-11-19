@interface CNAddressingGrammarsEncryptedDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (id)equivalentLabelSets;
- (id)standardLabels;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNAddressingGrammarsEncryptedDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 addressingGrammarsEncrypted];
  if (!v8)
  {
    v4 = [v7 addressingGrammarsEncrypted];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 addressingGrammarsEncrypted];
  v10 = [v7 addressingGrammarsEncrypted];
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

  v9 = [v5 decodeObjectOfClasses:v7 forKey:{@"_addressingGrammarsEncrypted", v12, v13}];
  v10 = [v9 copy];
  v11 = v6[19];
  v6[19] = v10;
}

- (id)equivalentLabelSets
{
  if (equivalentLabelSets_cn_once_token_0 != -1)
  {
    [CNAddressingGrammarsEncryptedDescription equivalentLabelSets];
  }

  v3 = equivalentLabelSets_cn_once_object_0;

  return v3;
}

void __63__CNAddressingGrammarsEncryptedDescription_equivalentLabelSets__block_invoke()
{
  v0 = equivalentLabelSets_cn_once_object_0;
  equivalentLabelSets_cn_once_object_0 = MEMORY[0x1E695E0F0];
}

- (id)standardLabels
{
  if (standardLabels_cn_once_token_1 != -1)
  {
    [CNAddressingGrammarsEncryptedDescription standardLabels];
  }

  v3 = standardLabels_cn_once_object_1;

  return v3;
}

void __58__CNAddressingGrammarsEncryptedDescription_standardLabels__block_invoke()
{
  v0 = standardLabels_cn_once_object_1;
  standardLabels_cn_once_object_1 = MEMORY[0x1E695E0F0];
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A290];
  }

  return a3 != 0;
}

@end