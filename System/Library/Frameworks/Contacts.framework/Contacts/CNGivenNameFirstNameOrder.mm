@interface CNGivenNameFirstNameOrder
- (id)nameProperties;
- (id)phoneticNameProperties;
- (id)sortingNameProperties;
@end

@implementation CNGivenNameFirstNameOrder

- (id)nameProperties
{
  if (nameProperties_cn_once_token_2 != -1)
  {
    [CNGivenNameFirstNameOrder nameProperties];
  }

  v3 = nameProperties_cn_once_object_2;

  return v3;
}

void __43__CNGivenNameFirstNameOrder_nameProperties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v7 = +[CN namePrefixDescription];
  v1 = +[CN givenNameDescription];
  v2 = +[CN middleNameDescription];
  v3 = +[CN familyNameDescription];
  v4 = +[CN nameSuffixDescription];
  v5 = [v0 initWithObjects:{v7, v1, v2, v3, v4, 0}];
  v6 = nameProperties_cn_once_object_2;
  nameProperties_cn_once_object_2 = v5;
}

- (id)phoneticNameProperties
{
  if (phoneticNameProperties_cn_once_token_3 != -1)
  {
    [CNGivenNameFirstNameOrder phoneticNameProperties];
  }

  v3 = phoneticNameProperties_cn_once_object_3;

  return v3;
}

void __51__CNGivenNameFirstNameOrder_phoneticNameProperties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5 = +[CN phoneticGivenNameDescription];
  v1 = +[CN phoneticMiddleNameDescription];
  v2 = +[CN phoneticFamilyNameDescription];
  v3 = [v0 initWithObjects:{v5, v1, v2, 0}];
  v4 = phoneticNameProperties_cn_once_object_3;
  phoneticNameProperties_cn_once_object_3 = v3;
}

- (id)sortingNameProperties
{
  if (sortingNameProperties_cn_once_token_4 != -1)
  {
    [CNGivenNameFirstNameOrder sortingNameProperties];
  }

  v3 = sortingNameProperties_cn_once_object_4;

  return v3;
}

void __50__CNGivenNameFirstNameOrder_sortingNameProperties__block_invoke()
{
  v16[2] = *MEMORY[0x1E69E9840];
  v12 = objc_alloc(MEMORY[0x1E695DEC8]);
  v13 = +[CN phoneticGivenNameDescription];
  v16[0] = v13;
  v0 = +[CN givenNameDescription];
  v16[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v2 = +[CN phoneticFamilyNameDescription];
  v15[0] = v2;
  v3 = +[CN familyNameDescription];
  v15[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v5 = +[CN phoneticMiddleNameDescription];
  v14[0] = v5;
  v6 = +[CN middleNameDescription];
  v14[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = +[CN nameSuffixDescription];
  v9 = +[CN namePrefixDescription];
  v10 = [v12 initWithObjects:{v1, v4, v7, v8, v9, 0}];
  v11 = sortingNameProperties_cn_once_object_4;
  sortingNameProperties_cn_once_object_4 = v10;
}

@end