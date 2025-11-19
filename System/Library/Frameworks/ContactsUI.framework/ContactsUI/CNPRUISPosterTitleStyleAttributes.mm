@interface CNPRUISPosterTitleStyleAttributes
+ (id)attributesForCNConfiguration:(id)a3;
+ (id)attributesFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (CNPRUISPosterTitleStyleAttributes)initWithPosterTitleStyleAttributes:(id)a3;
- (id)titleColor;
- (id)titleFont;
@end

@implementation CNPRUISPosterTitleStyleAttributes

- (id)titleFont
{
  v2 = [(PRUISPosterTitleStyleAttributes *)self->_wrappedPosterTitleStyleAttributes titleFont];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }

  v5 = v4;

  return v5;
}

- (id)titleColor
{
  v2 = [(PRUISPosterTitleStyleAttributes *)self->_wrappedPosterTitleStyleAttributes titleColor];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
  }

  v5 = v4;

  return v5;
}

- (CNPRUISPosterTitleStyleAttributes)initWithPosterTitleStyleAttributes:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNPRUISPosterTitleStyleAttributes;
  v6 = [(CNPRUISPosterTitleStyleAttributes *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedPosterTitleStyleAttributes, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = MEMORY[0x1E69966F0];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __45__CNPRUISPosterTitleStyleAttributes_isEqual___block_invoke;
    v27[3] = &unk_1E74E7460;
    v27[4] = self;
    v28 = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__CNPRUISPosterTitleStyleAttributes_isEqual___block_invoke_2;
    aBlock[3] = &unk_1E74E7460;
    aBlock[4] = self;
    v9 = v28;
    v26 = v9;
    v10 = _Block_copy(aBlock);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __45__CNPRUISPosterTitleStyleAttributes_isEqual___block_invoke_3;
    v23[3] = &unk_1E74E7460;
    v23[4] = self;
    v11 = v9;
    v24 = v11;
    v12 = _Block_copy(v23);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __45__CNPRUISPosterTitleStyleAttributes_isEqual___block_invoke_4;
    v20 = &unk_1E74E7460;
    v21 = self;
    v22 = v11;
    v13 = v11;
    v14 = _Block_copy(&v17);
    v15 = [v8 isObject:self equalToOther:v13 withBlocks:{v27, v10, v12, v14, 0, v17, v18, v19, v20, v21}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __45__CNPRUISPosterTitleStyleAttributes_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) titleColor];
  v3 = [*(a1 + 40) titleColor];
  v4 = [v2 isEqual:v3];

  return v4;
}

uint64_t __45__CNPRUISPosterTitleStyleAttributes_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) titleFont];
  v3 = [*(a1 + 40) titleFont];
  v4 = [v2 isEqual:v3];

  return v4;
}

+ (id)attributesForCNConfiguration:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [CNPRUISPosterConfigurationUtilities titleStyleAttributesForCNConfiguration:a3 error:&v8];
  v4 = v8;
  if (!v3)
  {
    v5 = CNUILogPosters();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v4 localizedDescription];
      *buf = 138412290;
      v10 = v7;
      _os_log_error_impl(&dword_199A75000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch attributes for configuration: %@", buf, 0xCu);
    }
  }

  return v3;
}

+ (id)attributesFromData:(id)a3 error:(id *)a4
{
  v5 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:a3 error:?];
  if (v5)
  {
    v6 = [CNPRUISPosterConfigurationUtilities titleStyleAttributesForCNConfiguration:v5 error:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end