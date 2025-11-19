@interface CNContactFormatterSmartFetcher
- (BOOL)isEqual:(id)a3;
- (CNContactFormatterSmartFetcher)init;
- (CNContactFormatterSmartFetcher)initWithCoder:(id)a3;
- (id)_cn_optionalKeys;
- (id)_cn_requiredKeys;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_cn_executeGetterForRepresentedKeys:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setupNameKeys;
@end

@implementation CNContactFormatterSmartFetcher

- (CNContactFormatterSmartFetcher)init
{
  v6.receiver = self;
  v6.super_class = CNContactFormatterSmartFetcher;
  v2 = [(CNContactFormatterSmartFetcher *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CNContactFormatterSmartFetcher *)v2 setupNameKeys];
    v5 = v3;
  }

  return v3;
}

- (void)setupNameKeys
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    v3 = [MEMORY[0x1E695DF90] dictionary];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__CNContactFormatterSmartFetcher_setupNameKeys__block_invoke;
    aBlock[3] = &unk_1E7416BD0;
    v18 = v3;
    v4 = v3;
    v5 = _Block_copy(aBlock);
    v6 = +[CN requiredPropertiesForNameScriptDetection];
    [v2 addObjectsFromArray:v6];

    v7 = +[CNContactNameOrderImpl givenNameFirstOrder];
    v19[0] = v7;
    v8 = +[CNContactNameOrderImpl familyNameFirstOrder];
    v19[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__CNContactFormatterSmartFetcher_setupNameKeys__block_invoke_2;
    v14[3] = &unk_1E7416C20;
    v15 = v2;
    v16 = v5;
    v10 = v5;
    v11 = v2;
    [v9 _cn_each:v14];

    objc_setProperty_nonatomic_copy(a1, v12, v11, 16);
    objc_setProperty_nonatomic_copy(a1, v13, v4, 24);
  }
}

void __47__CNContactFormatterSmartFetcher_setupNameKeys__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 nameProperties];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__CNContactFormatterSmartFetcher_setupNameKeys__block_invoke_3;
  v4[3] = &unk_1E7416BF8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 _cn_each:v4];
}

void __47__CNContactFormatterSmartFetcher_setupNameKeys__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v6];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count])
    {
      v3 = [v6 objectAtIndexedSubscript:0];
      [*(a1 + 32) addObject:v3];
      if ([v6 count] >= 2)
      {
        v4 = *(a1 + 40);
        v5 = [v6 subarrayWithRange:{1, objc_msgSend(v6, "count") - 1}];
        (*(v4 + 16))(v4, v3, v5);
      }
    }
  }
}

void __50__CNContactFormatterSmartFetcher__cn_requiredKeys__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  [v2 addKey:v3];
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CNContactFormatterSmartFetcher_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__CNContactFormatterSmartFetcher_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

- (id)_cn_requiredKeys
{
  [(CNContactKeyVector *)CNMutableContactKeyVector keyVectorWithKey:@"contactType"];
  objc_claimAutoreleasedReturnValue();
  if (self)
  {
    self = self->_mandatoryNameProperties;
  }

  OUTLINED_FUNCTION_0();
  v8 = 3221225472;
  v9 = __50__CNContactFormatterSmartFetcher__cn_requiredKeys__block_invoke;
  v10 = &unk_1E7413F98;
  v11 = v3;
  v4 = v3;
  [(CNContactFormatterSmartFetcher *)self enumerateObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

uint64_t __38__CNContactFormatterSmartFetcher_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) ignoresNickname];

  return [v1 BOOLHash:v2];
}

- (id)_cn_optionalKeys
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  if (self)
  {
    fallBackNamePropertyByNameKey = self->_fallBackNamePropertyByNameKey;
  }

  else
  {
    fallBackNamePropertyByNameKey = 0;
  }

  v5 = fallBackNamePropertyByNameKey;
  v6 = [(NSDictionary *)v5 allValues];
  OUTLINED_FUNCTION_0();
  v14 = 3221225472;
  v15 = __50__CNContactFormatterSmartFetcher__cn_optionalKeys__block_invoke;
  v16 = &unk_1E7416CC0;
  v7 = v3;

  v17 = v7;
  [v6 _cn_each:v13];

  v20[0] = @"contactType";
  v20[1] = @"emailAddresses";
  v20[2] = @"phoneNumbers";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  [v7 addObjectsFromArray:v8];

  if (![(CNContactFormatterSmartFetcher *)self ignoresNickname])
  {
    v19 = @"nickname";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    [v7 addObjectsFromArray:v9];
  }

  if (![(CNContactFormatterSmartFetcher *)self ignoresOrganization])
  {
    v18 = @"organizationName";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [v7 addObjectsFromArray:v10];
  }

  v11 = [CNContactKeyVector keyVectorWithKeys:v7];

  return v11;
}

uint64_t __38__CNContactFormatterSmartFetcher_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) ignoresOrganization];

  return [v1 BOOLHash:v2];
}

- (CNContactFormatterSmartFetcher)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CNContactFormatterSmartFetcher;
  v5 = [(CNSmartPropertyFetcher *)&v24 initWithCoder:v4];
  if (v5)
  {
    v5->_ignoresNickname = [v4 decodeBoolForKey:@"ignoresNickname"];
    v5->_ignoresOrganization = [v4 decodeBoolForKey:@"ignoresOrganization"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"mandatoryNameProperties"];
    v11 = [v10 copy];
    mandatoryNameProperties = v5->_mandatoryNameProperties;
    v5->_mandatoryNameProperties = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v13 setWithObjects:{v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"fallBackNamePropertyByNameKey"];
    v20 = [v19 copy];
    fallBackNamePropertyByNameKey = v5->_fallBackNamePropertyByNameKey;
    v5->_fallBackNamePropertyByNameKey = v20;

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNContactFormatterSmartFetcher;
  v4 = a3;
  [(CNSmartPropertyFetcher *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_ignoresNickname forKey:{@"ignoresNickname", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_ignoresOrganization forKey:@"ignoresOrganization"];
  [v4 encodeObject:self->_mandatoryNameProperties forKey:@"mandatoryNameProperties"];
  [v4 encodeObject:self->_fallBackNamePropertyByNameKey forKey:@"fallBackNamePropertyByNameKey"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__CNContactFormatterSmartFetcher_isEqual___block_invoke;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __42__CNContactFormatterSmartFetcher_isEqual___block_invoke_2;
  v13 = &unk_1E7412228;
  v14 = self;
  v15 = v4;
  v7 = v4;
  v8 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v7 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, 0, aBlock, v11, v12, v13, v14}];

  return self;
}

void __47__CNContactFormatterSmartFetcher_setupNameKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 key];
  v8 = [v5 objectForKeyedSubscript:v7];

  v9 = [MEMORY[0x1E695DFA0] orderedSet];
  v10 = v9;
  if (v8)
  {
    [v9 unionOrderedSet:v8];
  }

  [v10 addObjectsFromArray:v14];
  v11 = [v10 copy];
  v12 = *(a1 + 32);
  v13 = [v6 key];

  [v12 setObject:v11 forKeyedSubscript:v13];
}

void __70__CNContactFormatterSmartFetcher__cn_executeGetterForRepresentedKeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 key];
  v4 = *MEMORY[0x1E6996568];
  v5 = (*(*(a1 + 40) + 16))();
  LODWORD(v4) = (*(v4 + 16))(v4, v5);

  if (v4)
  {
    __70__CNContactFormatterSmartFetcher__cn_executeGetterForRepresentedKeys___block_invoke_cold_1(a1, v3, &v6, (a1 + 40));
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void __70__CNContactFormatterSmartFetcher__cn_executeGetterForRepresentedKeys___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *MEMORY[0x1E6996568];
  v7 = *(a1 + 32);
  v8 = [a2 key];
  v9 = (*(v7 + 16))(v7, v8);
  LOBYTE(v6) = (*(v6 + 16))(v6, v9);

  if ((v6 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __50__CNContactFormatterSmartFetcher__cn_optionalKeys__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__CNContactFormatterSmartFetcher__cn_optionalKeys__block_invoke_2;
  v3[3] = &unk_1E7416C98;
  v4 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v3];
}

void __50__CNContactFormatterSmartFetcher__cn_optionalKeys__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  [v2 addObject:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = CNContactFormatterSmartFetcher;
  v4 = [(CNSmartPropertyFetcher *)&v9 copyWithZone:a3];
  [v4 setIgnoresNickname:{-[CNContactFormatterSmartFetcher ignoresNickname](self, "ignoresNickname")}];
  [v4 setIgnoresOrganization:{-[CNContactFormatterSmartFetcher ignoresOrganization](self, "ignoresOrganization")}];
  if (self)
  {
    mandatoryNameProperties = self->_mandatoryNameProperties;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  mandatoryNameProperties = 0;
  if (v4)
  {
LABEL_3:
    objc_setProperty_nonatomic_copy(v4, v5, mandatoryNameProperties, 16);
  }

LABEL_4:
  if (!self)
  {
    fallBackNamePropertyByNameKey = 0;
    if (!v4)
    {
      return v4;
    }

    goto LABEL_6;
  }

  fallBackNamePropertyByNameKey = self->_fallBackNamePropertyByNameKey;
  if (v4)
  {
LABEL_6:
    objc_setProperty_nonatomic_copy(v4, v5, fallBackNamePropertyByNameKey, 24);
  }

  return v4;
}

- (void)_cn_executeGetterForRepresentedKeys:(id)a3
{
  v4 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (self)
  {
    mandatoryNameProperties = self->_mandatoryNameProperties;
  }

  else
  {
    mandatoryNameProperties = 0;
  }

  v6 = mandatoryNameProperties;
  OUTLINED_FUNCTION_0();
  v27 = 3221225472;
  v28 = __70__CNContactFormatterSmartFetcher__cn_executeGetterForRepresentedKeys___block_invoke;
  v29 = &unk_1E7416C70;
  v7 = v4;
  v30 = self;
  v31 = v7;
  v32 = &v33;
  [(NSSet *)v6 enumerateObjectsUsingBlock:v26];

  v8 = (*(v7 + 2))(v7, @"contactType");
  v9 = [v8 integerValue];

  v10 = [(CNContactFormatterSmartFetcher *)self ignoresOrganization];
  v11 = v9 != 1 || v10;
  if (v11 & 1) != 0 || ((*(v7 + 2))(v7, @"organizationName"), v12 = objc_claimAutoreleasedReturnValue(), v13 = OUTLINED_FUNCTION_2_8(), v15 = v14(v13, v12), v12, (v15))
  {
    if ((v34[3] & 1) == 0)
    {
      if ([(CNContactFormatterSmartFetcher *)self ignoresNickname]|| ((*(v7 + 2))(v7, @"nickname"), v16 = objc_claimAutoreleasedReturnValue(), v17 = OUTLINED_FUNCTION_2_8(), v19 = v18(v17, v16), v16, v19))
      {
        if (!v11 || [(CNContactFormatterSmartFetcher *)self ignoresOrganization]|| ((*(v7 + 2))(v7, @"organizationName"), v20 = objc_claimAutoreleasedReturnValue(), v21 = OUTLINED_FUNCTION_2_8(), v23 = v22(v21, v20), v20, v23))
        {
          v24 = (*(v7 + 2))(v7, @"emailAddresses");
          if (![v24 count])
          {
            v25 = (*(v7 + 2))(v7, @"phoneNumbers");
          }
        }
      }
    }
  }

  _Block_object_dispose(&v33, 8);
}

void __70__CNContactFormatterSmartFetcher__cn_executeGetterForRepresentedKeys___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 objectForKeyedSubscript:a2];
  *a3 = MEMORY[0x1E69E9820];
  *(a3 + 8) = 3221225472;
  *(a3 + 16) = __70__CNContactFormatterSmartFetcher__cn_executeGetterForRepresentedKeys___block_invoke_2;
  *(a3 + 24) = &unk_1E7416C48;
  *(a3 + 32) = *a4;
  *(a3 + 40) = *(a1 + 48);
  [v9 enumerateObjectsUsingBlock:a3];
}

@end