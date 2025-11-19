@interface CNContactLocationVCardSummary
- (BOOL)isEqual:(id)a3;
- (CNContactLocationVCardSummary)initWithCoder:(id)a3;
- (CNContactLocationVCardSummary)initWithData:(id)a3 error:(id *)a4;
- (CNContactLocationVCardSummary)initWithTitle:(id)a3 URLString:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactLocationVCardSummary

- (CNContactLocationVCardSummary)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = CNContactLocationVCardSummary;
  v7 = [(CNContactLocationVCardSummary *)&v23 init];
  if (v7)
  {
    v8 = v7;
    if ([MEMORY[0x1E69E4B20] countOfCardsInData:v6] == 1)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69E4B30]);
      [v9 setContactLimit:1];
      [v9 setMaximumValueLength:200];
      [v9 setPropertiesToFetch:&unk_1F09876A8];
      v22 = 0;
      v10 = [CNContactVCardSerialization contactsWithData:v6 options:v9 error:&v22];
      v11 = v22;
      v12 = [v10 firstObject];

      v13 = [v12 givenName];
      v14 = [v12 urlAddresses];
      v15 = [v14 firstObject];
      v16 = [v15 value];

      if ((*(*MEMORY[0x1E6996568] + 16))())
      {
        v17 = [CNErrorFactory errorWithCode:700 userInfo:0];
        if (a4)
        {
          v17 = v17;
          *a4 = v17;
        }

        v18 = 0;
      }

      else
      {
        v8 = [(CNContactLocationVCardSummary *)v8 initWithTitle:v13 URLString:v16];
        v18 = v8;
      }
    }

    else
    {
      v19 = [CNErrorFactory errorWithCode:700 userInfo:0];
      v9 = v19;
      if (a4)
      {
        v20 = v19;
        v18 = 0;
        *a4 = v9;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (CNContactLocationVCardSummary)initWithTitle:(id)a3 URLString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNContactLocationVCardSummary;
  v8 = [(CNContactLocationVCardSummary *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    urlString = v8->_urlString;
    v8->_urlString = v11;

    v13 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNContactLocationVCardSummary *)self title];
  v5 = [v3 appendName:@"descriptiveLabel" object:v4];

  v6 = [(CNContactLocationVCardSummary *)self urlString];
  v7 = [v3 appendName:@"urlString" object:v6];

  v8 = [v3 build];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__CNContactLocationVCardSummary_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __41__CNContactLocationVCardSummary_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

uint64_t __41__CNContactLocationVCardSummary_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) title];
  v4 = [*(a1 + 40) title];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __41__CNContactLocationVCardSummary_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) urlString];
  v4 = [*(a1 + 40) urlString];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CNContactLocationVCardSummary_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__CNContactLocationVCardSummary_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __37__CNContactLocationVCardSummary_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) title];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __37__CNContactLocationVCardSummary_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) urlString];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (CNContactLocationVCardSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNContactLocationVCardSummary;
  v5 = [(CNContactLocationVCardSummary *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    v7 = [v6 copy];
    title = v5->_title;
    v5->_title = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_urlString"];
    v10 = [v9 copy];
    urlString = v5->_urlString;
    v5->_urlString = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"_title"];
  [v5 encodeObject:self->_urlString forKey:@"_urlString"];
}

@end