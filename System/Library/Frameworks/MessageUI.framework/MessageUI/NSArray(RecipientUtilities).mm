@interface NSArray(RecipientUtilities)
- (id)mf_commaSeparatedRecipientListWithWidth:()RecipientUtilities forFont:;
- (id)mf_commaSeparatedRecipientListWithWidth:()RecipientUtilities forFont:usingBlock:;
- (uint64_t)mf_indexOfRecipientWithEmailAddress:()RecipientUtilities;
@end

@implementation NSArray(RecipientUtilities)

- (id)mf_commaSeparatedRecipientListWithWidth:()RecipientUtilities forFont:
{
  v3 = [a1 mf_commaSeparatedRecipientListWithWidth:a3 forFont:&__block_literal_global_30 usingBlock:?];

  return v3;
}

- (id)mf_commaSeparatedRecipientListWithWidth:()RecipientUtilities forFont:usingBlock:
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [a1 count];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__NSArray_RecipientUtilities__mf_commaSeparatedRecipientListWithWidth_forFont_usingBlock___block_invoke;
  v19[3] = &unk_1E8070768;
  v12 = v9;
  v19[4] = a1;
  v20 = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__NSArray_RecipientUtilities__mf_commaSeparatedRecipientListWithWidth_forFont_usingBlock___block_invoke_2;
  v16[3] = &unk_1E806D160;
  v13 = v8;
  v17 = v13;
  v18 = a2;
  v14 = [v10 mf_commaSeparatedRecipientListWithRecipientCount:v11 prefixForRecipientAtIndex:0 stringForRecipientAtIndex:v19 lengthValidationBlock:v16];

  return v14;
}

- (uint64_t)mf_indexOfRecipientWithEmailAddress:()RecipientUtilities
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__NSArray_RecipientUtilities__mf_indexOfRecipientWithEmailAddress___block_invoke;
  v8[3] = &unk_1E8070790;
  v9 = v4;
  v10 = &v11;
  v5 = v4;
  [a1 enumerateObjectsUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

@end