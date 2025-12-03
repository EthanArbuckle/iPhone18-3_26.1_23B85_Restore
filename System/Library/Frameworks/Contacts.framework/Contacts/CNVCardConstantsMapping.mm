@interface CNVCardConstantsMapping
+ (id)CNToVCardInstantMessageConstantsMapping;
+ (id)CNToVCardSocialProfileConstantsMapping;
+ (id)vCardToCNInstantMessageConstantsMapping;
+ (id)vCardToCNSocialProfileConstantsMapping;
- (CNVCardConstantsMapping)initWithMapping:(id)mapping;
- (id)invertedMapping;
- (id)mappedConstant:(id)constant;
@end

@implementation CNVCardConstantsMapping

+ (id)CNToVCardInstantMessageConstantsMapping
{
  if (CNToVCardInstantMessageConstantsMapping_onceToken != -1)
  {
    +[CNVCardConstantsMapping CNToVCardInstantMessageConstantsMapping];
  }

  v3 = CNToVCardInstantMessageConstantsMapping_s_mapping;

  return v3;
}

void __66__CNVCardConstantsMapping_CNToVCardInstantMessageConstantsMapping__block_invoke()
{
  v14[10] = *MEMORY[0x1E69E9840];
  v0 = [CNVCardConstantsMapping alloc];
  v1 = *MEMORY[0x1E69E48E0];
  v13[0] = @"AIM";
  v13[1] = @"Facebook";
  v2 = *MEMORY[0x1E69E48E8];
  v14[0] = v1;
  v14[1] = v2;
  v3 = *MEMORY[0x1E69E48F0];
  v13[2] = @"GaduGadu";
  v13[3] = @"GoogleTalk";
  v4 = *MEMORY[0x1E69E48F8];
  v14[2] = v3;
  v14[3] = v4;
  v5 = *MEMORY[0x1E69E4900];
  v13[4] = @"ICQ";
  v13[5] = @"Jabber";
  v6 = *MEMORY[0x1E69E4908];
  v14[4] = v5;
  v14[5] = v6;
  v7 = *MEMORY[0x1E69E4910];
  v13[6] = @"MSN";
  v13[7] = @"QQ";
  v8 = *MEMORY[0x1E69E4918];
  v14[6] = v7;
  v14[7] = v8;
  v13[8] = @"Skype";
  v13[9] = @"Yahoo";
  v9 = *MEMORY[0x1E69E4928];
  v14[8] = *MEMORY[0x1E69E4920];
  v14[9] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:10];
  v11 = [(CNVCardConstantsMapping *)v0 initWithMapping:v10];
  v12 = CNToVCardInstantMessageConstantsMapping_s_mapping;
  CNToVCardInstantMessageConstantsMapping_s_mapping = v11;
}

+ (id)vCardToCNInstantMessageConstantsMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CNVCardConstantsMapping_vCardToCNInstantMessageConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (vCardToCNInstantMessageConstantsMapping_onceToken != -1)
  {
    dispatch_once(&vCardToCNInstantMessageConstantsMapping_onceToken, block);
  }

  v2 = vCardToCNInstantMessageConstantsMapping_s_mapping;

  return v2;
}

void __66__CNVCardConstantsMapping_vCardToCNInstantMessageConstantsMapping__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) CNToVCardInstantMessageConstantsMapping];
  v1 = [v3 invertedMapping];
  v2 = vCardToCNInstantMessageConstantsMapping_s_mapping;
  vCardToCNInstantMessageConstantsMapping_s_mapping = v1;
}

+ (id)CNToVCardSocialProfileConstantsMapping
{
  if (CNToVCardSocialProfileConstantsMapping_onceToken != -1)
  {
    +[CNVCardConstantsMapping CNToVCardSocialProfileConstantsMapping];
  }

  v3 = CNToVCardSocialProfileConstantsMapping_s_mapping;

  return v3;
}

void __65__CNVCardConstantsMapping_CNToVCardSocialProfileConstantsMapping__block_invoke()
{
  v11[7] = *MEMORY[0x1E69E9840];
  v0 = [CNVCardConstantsMapping alloc];
  v1 = *MEMORY[0x1E69E4AE8];
  v10[0] = @"Facebook";
  v10[1] = @"Flickr";
  v2 = *MEMORY[0x1E69E4AF0];
  v11[0] = v1;
  v11[1] = v2;
  v3 = *MEMORY[0x1E69E4AF8];
  v10[2] = @"LinkedIn";
  v10[3] = @"MySpace";
  v4 = *MEMORY[0x1E69E4B00];
  v11[2] = v3;
  v11[3] = v4;
  v5 = *MEMORY[0x1E69E4B08];
  v10[4] = @"SinaWeibo";
  v10[5] = @"TencentWeibo";
  v6 = *MEMORY[0x1E69E4908];
  v11[4] = v5;
  v11[5] = v6;
  v10[6] = @"Twitter";
  v11[6] = *MEMORY[0x1E69E4B10];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:7];
  v8 = [(CNVCardConstantsMapping *)v0 initWithMapping:v7];
  v9 = CNToVCardSocialProfileConstantsMapping_s_mapping;
  CNToVCardSocialProfileConstantsMapping_s_mapping = v8;
}

+ (id)vCardToCNSocialProfileConstantsMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CNVCardConstantsMapping_vCardToCNSocialProfileConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (vCardToCNSocialProfileConstantsMapping_onceToken != -1)
  {
    dispatch_once(&vCardToCNSocialProfileConstantsMapping_onceToken, block);
  }

  v2 = vCardToCNSocialProfileConstantsMapping_s_mapping;

  return v2;
}

void __65__CNVCardConstantsMapping_vCardToCNSocialProfileConstantsMapping__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) CNToVCardSocialProfileConstantsMapping];
  v1 = [v3 invertedMapping];
  v2 = vCardToCNSocialProfileConstantsMapping_s_mapping;
  vCardToCNSocialProfileConstantsMapping_s_mapping = v1;
}

- (CNVCardConstantsMapping)initWithMapping:(id)mapping
{
  mappingCopy = mapping;
  v9.receiver = self;
  v9.super_class = CNVCardConstantsMapping;
  v5 = [(CNVCardConstantsMapping *)&v9 init];
  if (v5)
  {
    v6 = [mappingCopy copy];
    mapping = v5->_mapping;
    v5->_mapping = v6;
  }

  return v5;
}

- (id)invertedMapping
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  mapping = [(CNVCardConstantsMapping *)self mapping];
  v5 = [mapping countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(mapping);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        mapping2 = [(CNVCardConstantsMapping *)self mapping];
        v11 = [mapping2 objectForKeyedSubscript:v9];

        [dictionary setObject:v9 forKeyedSubscript:v11];
      }

      v6 = [mapping countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [objc_alloc(objc_opt_class()) initWithMapping:dictionary];

  return v12;
}

- (id)mappedConstant:(id)constant
{
  constantCopy = constant;
  mapping = [(CNVCardConstantsMapping *)self mapping];
  v6 = [mapping objectForKeyedSubscript:constantCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = constantCopy;
  }

  v8 = v7;

  return v8;
}

@end