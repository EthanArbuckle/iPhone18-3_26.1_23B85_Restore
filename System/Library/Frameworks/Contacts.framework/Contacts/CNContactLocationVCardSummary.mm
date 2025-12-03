@interface CNContactLocationVCardSummary
- (BOOL)isEqual:(id)equal;
- (CNContactLocationVCardSummary)initWithCoder:(id)coder;
- (CNContactLocationVCardSummary)initWithData:(id)data error:(id *)error;
- (CNContactLocationVCardSummary)initWithTitle:(id)title URLString:(id)string;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactLocationVCardSummary

- (CNContactLocationVCardSummary)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v23.receiver = self;
  v23.super_class = CNContactLocationVCardSummary;
  v7 = [(CNContactLocationVCardSummary *)&v23 init];
  if (v7)
  {
    v8 = v7;
    if ([MEMORY[0x1E69E4B20] countOfCardsInData:dataCopy] == 1)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69E4B30]);
      [v9 setContactLimit:1];
      [v9 setMaximumValueLength:200];
      [v9 setPropertiesToFetch:&unk_1F09876A8];
      v22 = 0;
      v10 = [CNContactVCardSerialization contactsWithData:dataCopy options:v9 error:&v22];
      v11 = v22;
      firstObject = [v10 firstObject];

      givenName = [firstObject givenName];
      urlAddresses = [firstObject urlAddresses];
      firstObject2 = [urlAddresses firstObject];
      value = [firstObject2 value];

      if ((*(*MEMORY[0x1E6996568] + 16))())
      {
        v17 = [CNErrorFactory errorWithCode:700 userInfo:0];
        if (error)
        {
          v17 = v17;
          *error = v17;
        }

        v18 = 0;
      }

      else
      {
        v8 = [(CNContactLocationVCardSummary *)v8 initWithTitle:givenName URLString:value];
        v18 = v8;
      }
    }

    else
    {
      v19 = [CNErrorFactory errorWithCode:700 userInfo:0];
      v9 = v19;
      if (error)
      {
        v20 = v19;
        v18 = 0;
        *error = v9;
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

- (CNContactLocationVCardSummary)initWithTitle:(id)title URLString:(id)string
{
  titleCopy = title;
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = CNContactLocationVCardSummary;
  v8 = [(CNContactLocationVCardSummary *)&v15 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [stringCopy copy];
    urlString = v8->_urlString;
    v8->_urlString = v11;

    v13 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  title = [(CNContactLocationVCardSummary *)self title];
  v5 = [v3 appendName:@"descriptiveLabel" object:title];

  urlString = [(CNContactLocationVCardSummary *)self urlString];
  v7 = [v3 appendName:@"urlString" object:urlString];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__CNContactLocationVCardSummary_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __41__CNContactLocationVCardSummary_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  selfCopy = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy}];

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

- (CNContactLocationVCardSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CNContactLocationVCardSummary;
  v5 = [(CNContactLocationVCardSummary *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    v7 = [v6 copy];
    title = v5->_title;
    v5->_title = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_urlString"];
    v10 = [v9 copy];
    urlString = v5->_urlString;
    v5->_urlString = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"_title"];
  [coderCopy encodeObject:self->_urlString forKey:@"_urlString"];
}

@end