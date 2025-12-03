@interface CNAddressingGrammarsEncryptedDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (id)equivalentLabelSets;
- (id)standardLabels;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNAddressingGrammarsEncryptedDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  addressingGrammarsEncrypted = [contactCopy addressingGrammarsEncrypted];
  if (!addressingGrammarsEncrypted)
  {
    addressingGrammarsEncrypted2 = [otherCopy addressingGrammarsEncrypted];
    if (!addressingGrammarsEncrypted2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  addressingGrammarsEncrypted3 = [contactCopy addressingGrammarsEncrypted];
  addressingGrammarsEncrypted4 = [otherCopy addressingGrammarsEncrypted];
  v11 = [addressingGrammarsEncrypted3 isEqual:addressingGrammarsEncrypted4];

  if (!addressingGrammarsEncrypted)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  v15 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  contactCopy = contact;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:&v12 count:3];
  for (i = 16; i != -8; i -= 8)
  {
  }

  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:{@"_addressingGrammarsEncrypted", v12, v13}];
  v10 = [v9 copy];
  v11 = contactCopy[19];
  contactCopy[19] = v10;
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

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A290];
  }

  return d != 0;
}

@end