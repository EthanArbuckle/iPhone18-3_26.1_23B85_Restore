@interface CNiOSABConstantsMapping
+ (id)ABToCNContactShortNameFormatConstantsMapping;
+ (id)ABToCNContactSortOrderConstantsMapping;
+ (id)ABToCNContainerTypeConstantsMapping;
+ (id)ABToCNLabelConstantsMapping;
+ (id)ABToCNPersonAddressConstantsMapping;
+ (id)ABToCNPersonInstantMessageConstantsMapping;
+ (id)ABToCNPersonKindConstantsMapping;
+ (id)ABToCNPersonSocialProfileConstantsMapping;
+ (id)ABtoCNContactDisplayNameOrderConstantsMapping;
+ (id)CNToABCompositeNameFormatConstantsMapping;
+ (id)CNToABLabelConstantsMapping;
+ (id)CNToABPersonAddressConstantsMapping;
+ (id)CNToABPersonInstantMessageConstantsMapping;
+ (id)CNToABPersonKindConstantsMapping;
+ (id)CNToABPersonShortNameFormatConstantsMapping;
+ (id)CNToABPersonSocialProfileConstantsMapping;
+ (id)CNToABPersonSortOrderingConstantsMapping;
+ (id)CNToABSourceTypeConstantsMapping;
- (CNiOSABConstantsMapping)initWithMapping:(id)a3;
- (id)invertedMapping;
- (id)mappedConstant:(id)a3;
@end

@implementation CNiOSABConstantsMapping

+ (id)CNToABPersonSortOrderingConstantsMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CNiOSABConstantsMapping_CNToABPersonSortOrderingConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABPersonSortOrderingConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABPersonSortOrderingConstantsMapping_onceToken, block);
  }

  v2 = CNToABPersonSortOrderingConstantsMapping_s_mapping;

  return v2;
}

+ (id)ABToCNContactSortOrderConstantsMapping
{
  if (ABToCNContactSortOrderConstantsMapping_onceToken != -1)
  {
    +[CNiOSABConstantsMapping ABToCNContactSortOrderConstantsMapping];
  }

  v3 = ABToCNContactSortOrderConstantsMapping_s_mapping;

  return v3;
}

uint64_t __65__CNiOSABConstantsMapping_ABToCNContactSortOrderConstantsMapping__block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = [CNiOSABConstantsMapping alloc];
  v5[0] = &unk_1F0987360;
  v5[1] = &unk_1F0987378;
  v6[0] = &unk_1F0987390;
  v6[1] = &unk_1F09873A8;
  v5[2] = &unk_1F09873C0;
  v6[2] = &unk_1F09873D8;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v2 = [(CNiOSABConstantsMapping *)v0 initWithMapping:v1];
  v3 = ABToCNContactSortOrderConstantsMapping_s_mapping;
  ABToCNContactSortOrderConstantsMapping_s_mapping = v2;

  return [ABToCNContactSortOrderConstantsMapping_s_mapping setDefaultConstant:&unk_1F0987348];
}

uint64_t __67__CNiOSABConstantsMapping_CNToABPersonSortOrderingConstantsMapping__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ABToCNContactSortOrderConstantsMapping];
  v2 = [v1 invertedMapping];
  v3 = CNToABPersonSortOrderingConstantsMapping_s_mapping;
  CNToABPersonSortOrderingConstantsMapping_s_mapping = v2;

  v4 = CNToABPersonSortOrderingConstantsMapping_s_mapping;

  return [v4 setDefaultConstant:&unk_1F0987378];
}

- (id)invertedMapping
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CNiOSABConstantsMapping *)self mapping];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(CNiOSABConstantsMapping *)self mapping];
        v11 = [v10 objectForKeyedSubscript:v9];

        [v3 setObject:v9 forKeyedSubscript:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [objc_alloc(objc_opt_class()) initWithMapping:v3];

  return v12;
}

+ (id)ABtoCNContactDisplayNameOrderConstantsMapping
{
  if (ABtoCNContactDisplayNameOrderConstantsMapping_onceToken != -1)
  {
    +[CNiOSABConstantsMapping ABtoCNContactDisplayNameOrderConstantsMapping];
  }

  v3 = ABtoCNContactDisplayNameOrderConstantsMapping_s_mapping;

  return v3;
}

uint64_t __72__CNiOSABConstantsMapping_ABtoCNContactDisplayNameOrderConstantsMapping__block_invoke()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = [CNiOSABConstantsMapping alloc];
  v5[0] = &unk_1F0987360;
  v5[1] = &unk_1F0987378;
  v6[0] = &unk_1F0987348;
  v6[1] = &unk_1F0987390;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v2 = [(CNiOSABConstantsMapping *)v0 initWithMapping:v1];
  v3 = ABtoCNContactDisplayNameOrderConstantsMapping_s_mapping;
  ABtoCNContactDisplayNameOrderConstantsMapping_s_mapping = v2;

  return [ABtoCNContactDisplayNameOrderConstantsMapping_s_mapping setDefaultConstant:&unk_1F0987330];
}

+ (id)ABToCNPersonInstantMessageConstantsMapping
{
  if (ABToCNPersonInstantMessageConstantsMapping_onceToken != -1)
  {
    +[CNiOSABConstantsMapping ABToCNPersonInstantMessageConstantsMapping];
  }

  v3 = ABToCNPersonInstantMessageConstantsMapping_s_mapping;

  return v3;
}

void __69__CNiOSABConstantsMapping_ABToCNPersonInstantMessageConstantsMapping__block_invoke()
{
  v11[12] = *MEMORY[0x1E69E9840];
  v0 = [CNiOSABConstantsMapping alloc];
  v1 = *MEMORY[0x1E698A430];
  v10[0] = *MEMORY[0x1E698A400];
  v10[1] = v1;
  v11[0] = @"service";
  v11[1] = @"username";
  v2 = *MEMORY[0x1E698A3F8];
  v10[2] = *MEMORY[0x1E698A420];
  v10[3] = v2;
  v11[2] = @"Yahoo";
  v11[3] = @"Jabber";
  v3 = *MEMORY[0x1E698A3F0];
  v10[4] = *MEMORY[0x1E698A408];
  v10[5] = v3;
  v11[4] = @"MSN";
  v11[5] = @"ICQ";
  v4 = *MEMORY[0x1E698A410];
  v10[6] = *MEMORY[0x1E698A3D0];
  v10[7] = v4;
  v11[6] = @"AIM";
  v11[7] = @"QQ";
  v5 = *MEMORY[0x1E698A418];
  v10[8] = *MEMORY[0x1E698A3E8];
  v10[9] = v5;
  v11[8] = @"GoogleTalk";
  v11[9] = @"Skype";
  v6 = *MEMORY[0x1E698A3E0];
  v10[10] = *MEMORY[0x1E698A3D8];
  v10[11] = v6;
  v11[10] = @"Facebook";
  v11[11] = @"GaduGadu";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:12];
  v8 = [(CNiOSABConstantsMapping *)v0 initWithMapping:v7];
  v9 = ABToCNPersonInstantMessageConstantsMapping_s_mapping;
  ABToCNPersonInstantMessageConstantsMapping_s_mapping = v8;
}

+ (id)ABToCNPersonKindConstantsMapping
{
  if (ABToCNPersonKindConstantsMapping_onceToken != -1)
  {
    +[CNiOSABConstantsMapping ABToCNPersonKindConstantsMapping];
  }

  v3 = ABToCNPersonKindConstantsMapping_s_mapping;

  return v3;
}

uint64_t __59__CNiOSABConstantsMapping_ABToCNPersonKindConstantsMapping__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = [CNiOSABConstantsMapping alloc];
  v1 = *MEMORY[0x1E698A450];
  v6[0] = *MEMORY[0x1E698A458];
  v6[1] = v1;
  v7[0] = &unk_1F0987330;
  v7[1] = &unk_1F0987348;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v3 = [(CNiOSABConstantsMapping *)v0 initWithMapping:v2];
  v4 = ABToCNPersonKindConstantsMapping_s_mapping;
  ABToCNPersonKindConstantsMapping_s_mapping = v3;

  return [ABToCNPersonKindConstantsMapping_s_mapping setDefaultConstant:&unk_1F0987330];
}

+ (id)CNToABPersonKindConstantsMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CNiOSABConstantsMapping_CNToABPersonKindConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABPersonKindConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABPersonKindConstantsMapping_onceToken, block);
  }

  v2 = CNToABPersonKindConstantsMapping_s_mapping;

  return v2;
}

uint64_t __59__CNiOSABConstantsMapping_CNToABPersonKindConstantsMapping__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ABToCNPersonKindConstantsMapping];
  v2 = [v1 invertedMapping];
  v3 = CNToABPersonKindConstantsMapping_s_mapping;
  CNToABPersonKindConstantsMapping_s_mapping = v2;

  v4 = CNToABPersonKindConstantsMapping_s_mapping;
  v5 = *MEMORY[0x1E698A458];

  return [v4 setDefaultConstant:v5];
}

+ (id)CNToABCompositeNameFormatConstantsMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CNiOSABConstantsMapping_CNToABCompositeNameFormatConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABCompositeNameFormatConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABCompositeNameFormatConstantsMapping_onceToken, block);
  }

  v2 = CNToABCompositeNameFormatConstantsMapping_s_mapping;

  return v2;
}

uint64_t __68__CNiOSABConstantsMapping_CNToABCompositeNameFormatConstantsMapping__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ABtoCNContactDisplayNameOrderConstantsMapping];
  v2 = [v1 invertedMapping];
  v3 = CNToABCompositeNameFormatConstantsMapping_s_mapping;
  CNToABCompositeNameFormatConstantsMapping_s_mapping = v2;

  v4 = CNToABCompositeNameFormatConstantsMapping_s_mapping;

  return [v4 setDefaultConstant:&unk_1F0987378];
}

+ (id)ABToCNPersonAddressConstantsMapping
{
  if (ABToCNPersonAddressConstantsMapping_onceToken != -1)
  {
    +[CNiOSABConstantsMapping ABToCNPersonAddressConstantsMapping];
  }

  v3 = ABToCNPersonAddressConstantsMapping_s_mapping;

  return v3;
}

void __62__CNiOSABConstantsMapping_ABToCNPersonAddressConstantsMapping__block_invoke()
{
  v9[8] = *MEMORY[0x1E69E9840];
  v0 = [CNiOSABConstantsMapping alloc];
  v1 = *MEMORY[0x1E698A280];
  v8[0] = *MEMORY[0x1E698A270];
  v8[1] = v1;
  v9[0] = @"street";
  v9[1] = @"subLocality";
  v2 = *MEMORY[0x1E698A278];
  v8[2] = *MEMORY[0x1E698A248];
  v8[3] = v2;
  v9[2] = @"city";
  v9[3] = @"subAdministrativeArea";
  v3 = *MEMORY[0x1E698A288];
  v8[4] = *MEMORY[0x1E698A268];
  v8[5] = v3;
  v9[4] = @"state";
  v9[5] = @"postalCode";
  v4 = *MEMORY[0x1E698A250];
  v8[6] = *MEMORY[0x1E698A258];
  v8[7] = v4;
  v9[6] = @"country";
  v9[7] = @"ISOCountryCode";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:8];
  v6 = [(CNiOSABConstantsMapping *)v0 initWithMapping:v5];
  v7 = ABToCNPersonAddressConstantsMapping_s_mapping;
  ABToCNPersonAddressConstantsMapping_s_mapping = v6;
}

+ (id)CNToABPersonAddressConstantsMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CNiOSABConstantsMapping_CNToABPersonAddressConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABPersonAddressConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABPersonAddressConstantsMapping_onceToken, block);
  }

  v2 = CNToABPersonAddressConstantsMapping_s_mapping;

  return v2;
}

void __62__CNiOSABConstantsMapping_CNToABPersonAddressConstantsMapping__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) ABToCNPersonAddressConstantsMapping];
  v1 = [v3 invertedMapping];
  v2 = CNToABPersonAddressConstantsMapping_s_mapping;
  CNToABPersonAddressConstantsMapping_s_mapping = v1;
}

+ (id)CNToABPersonInstantMessageConstantsMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CNiOSABConstantsMapping_CNToABPersonInstantMessageConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABPersonInstantMessageConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABPersonInstantMessageConstantsMapping_onceToken, block);
  }

  v2 = CNToABPersonInstantMessageConstantsMapping_s_mapping;

  return v2;
}

void __69__CNiOSABConstantsMapping_CNToABPersonInstantMessageConstantsMapping__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) ABToCNPersonInstantMessageConstantsMapping];
  v1 = [v3 invertedMapping];
  v2 = CNToABPersonInstantMessageConstantsMapping_s_mapping;
  CNToABPersonInstantMessageConstantsMapping_s_mapping = v1;
}

+ (id)ABToCNPersonSocialProfileConstantsMapping
{
  if (ABToCNPersonSocialProfileConstantsMapping_onceToken != -1)
  {
    +[CNiOSABConstantsMapping ABToCNPersonSocialProfileConstantsMapping];
  }

  v3 = ABToCNPersonSocialProfileConstantsMapping_s_mapping;

  return v3;
}

void __68__CNiOSABConstantsMapping_ABToCNPersonSocialProfileConstantsMapping__block_invoke()
{
  v10[11] = *MEMORY[0x1E69E9840];
  v0 = [CNiOSABConstantsMapping alloc];
  v1 = *MEMORY[0x1E698A608];
  v9[0] = *MEMORY[0x1E698A5F8];
  v9[1] = v1;
  v10[0] = @"urlString";
  v10[1] = @"username";
  v2 = *MEMORY[0x1E698A5D0];
  v9[2] = *MEMORY[0x1E698A600];
  v9[3] = v2;
  v10[2] = @"userIdentifier";
  v10[3] = @"service";
  v3 = *MEMORY[0x1E698A5E8];
  v9[4] = *MEMORY[0x1E698A5F0];
  v9[5] = v3;
  v10[4] = @"Twitter";
  v10[5] = @"SinaWeibo";
  v4 = *MEMORY[0x1E698A5B8];
  v9[6] = *MEMORY[0x1E698A5C8];
  v9[7] = v4;
  v10[6] = @"Game Center";
  v10[7] = @"Facebook";
  v5 = *MEMORY[0x1E698A5D8];
  v9[8] = *MEMORY[0x1E698A5E0];
  v9[9] = v5;
  v10[8] = @"MySpace";
  v10[9] = @"LinkedIn";
  v9[10] = *MEMORY[0x1E698A5C0];
  v10[10] = @"Flickr";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:11];
  v7 = [(CNiOSABConstantsMapping *)v0 initWithMapping:v6];
  v8 = ABToCNPersonSocialProfileConstantsMapping_s_mapping;
  ABToCNPersonSocialProfileConstantsMapping_s_mapping = v7;
}

+ (id)CNToABPersonSocialProfileConstantsMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CNiOSABConstantsMapping_CNToABPersonSocialProfileConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABPersonSocialProfileConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABPersonSocialProfileConstantsMapping_onceToken, block);
  }

  v2 = CNToABPersonSocialProfileConstantsMapping_s_mapping;

  return v2;
}

void __68__CNiOSABConstantsMapping_CNToABPersonSocialProfileConstantsMapping__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) ABToCNPersonSocialProfileConstantsMapping];
  v1 = [v3 invertedMapping];
  v2 = CNToABPersonSocialProfileConstantsMapping_s_mapping;
  CNToABPersonSocialProfileConstantsMapping_s_mapping = v1;
}

+ (id)ABToCNLabelConstantsMapping
{
  if (ABToCNLabelConstantsMapping_onceToken != -1)
  {
    +[CNiOSABConstantsMapping ABToCNLabelConstantsMapping];
  }

  v3 = ABToCNLabelConstantsMapping_s_mapping;

  return v3;
}

void __54__CNiOSABConstantsMapping_ABToCNLabelConstantsMapping__block_invoke()
{
  v20[31] = *MEMORY[0x1E69E9840];
  v0 = [CNiOSABConstantsMapping alloc];
  v1 = *MEMORY[0x1E698A238];
  v19[0] = *MEMORY[0x1E698A6E8];
  v19[1] = v1;
  v20[0] = @"_$!<Work>!$_";
  v20[1] = @"_$!<Home>!$_";
  v2 = *MEMORY[0x1E698A240];
  v19[2] = *MEMORY[0x1E698A668];
  v19[3] = v2;
  v20[2] = @"_$!<School>!$_";
  v20[3] = @"_$!<Other>!$_";
  v3 = *MEMORY[0x1E698A520];
  v19[4] = *MEMORY[0x1E698A2D0];
  v19[5] = v3;
  v20[4] = @"_$!<Anniversary>!$_";
  v20[5] = @"iPhone";
  v4 = *MEMORY[0x1E698A528];
  v19[6] = *MEMORY[0x1E698A4F8];
  v19[7] = v4;
  v20[6] = @"Apple Watch";
  v20[7] = @"_$!<Main>!$_";
  v5 = *MEMORY[0x1E698A558];
  v19[8] = *MEMORY[0x1E698A518];
  v19[9] = v5;
  v20[8] = @"_$!<HomeFAX>!$_";
  v20[9] = @"_$!<WorkFAX>!$_";
  v6 = *MEMORY[0x1E698A540];
  v19[10] = *MEMORY[0x1E698A538];
  v19[11] = v6;
  v20[10] = @"_$!<OtherFAX>!$_";
  v20[11] = @"_$!<Pager>!$_";
  v7 = *MEMORY[0x1E698A500];
  v19[12] = *MEMORY[0x1E698A530];
  v19[13] = v7;
  v20[12] = @"_$!<Mobile>!$_";
  v20[13] = @"_$!<AssistantPhone>!$_";
  v8 = *MEMORY[0x1E698A550];
  v19[14] = *MEMORY[0x1E698A508];
  v19[15] = v8;
  v20[14] = @"_$!<Car>!$_";
  v20[15] = @"_$!<Radio>!$_";
  v9 = *MEMORY[0x1E698A398];
  v19[16] = *MEMORY[0x1E698A510];
  v19[17] = v9;
  v20[16] = @"_$!<CompanyMain>!$_";
  v20[17] = @"_$!<HomePage>!$_";
  v10 = *MEMORY[0x1E698A4C0];
  v19[18] = *MEMORY[0x1E698A368];
  v19[19] = v10;
  v20[18] = @"_$!<Father>!$_";
  v20[19] = @"_$!<Mother>!$_";
  v11 = *MEMORY[0x1E698A2E8];
  v19[20] = *MEMORY[0x1E698A4E8];
  v19[21] = v11;
  v20[20] = @"_$!<Parent>!$_";
  v20[21] = @"_$!<Brother>!$_";
  v12 = *MEMORY[0x1E698A610];
  v19[22] = *MEMORY[0x1E698A5A0];
  v19[23] = v12;
  v20[22] = @"_$!<Sister>!$_";
  v20[23] = @"_$!<Son>!$_";
  v13 = *MEMORY[0x1E698A2F0];
  v19[24] = *MEMORY[0x1E698A308];
  v19[25] = v13;
  v20[24] = @"_$!<Daughter>!$_";
  v20[25] = @"_$!<Child>!$_";
  v14 = *MEMORY[0x1E698A620];
  v19[26] = *MEMORY[0x1E698A390];
  v19[27] = v14;
  v20[26] = @"_$!<Friend>!$_";
  v20[27] = @"_$!<Spouse>!$_";
  v15 = *MEMORY[0x1E698A2D8];
  v19[28] = *MEMORY[0x1E698A4F0];
  v19[29] = v15;
  v20[28] = @"_$!<Partner>!$_";
  v20[29] = @"_$!<Assistant>!$_";
  v19[30] = *MEMORY[0x1E698A490];
  v20[30] = @"_$!<Manager>!$_";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:31];
  v17 = [(CNiOSABConstantsMapping *)v0 initWithMapping:v16];
  v18 = ABToCNLabelConstantsMapping_s_mapping;
  ABToCNLabelConstantsMapping_s_mapping = v17;
}

+ (id)CNToABLabelConstantsMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CNiOSABConstantsMapping_CNToABLabelConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABLabelConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABLabelConstantsMapping_onceToken, block);
  }

  v2 = CNToABLabelConstantsMapping_s_mapping;

  return v2;
}

void __54__CNiOSABConstantsMapping_CNToABLabelConstantsMapping__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) ABToCNLabelConstantsMapping];
  v1 = [v3 invertedMapping];
  v2 = CNToABLabelConstantsMapping_s_mapping;
  CNToABLabelConstantsMapping_s_mapping = v1;
}

+ (id)ABToCNContainerTypeConstantsMapping
{
  if (ABToCNContainerTypeConstantsMapping_onceToken != -1)
  {
    +[CNiOSABConstantsMapping ABToCNContainerTypeConstantsMapping];
  }

  v3 = ABToCNContainerTypeConstantsMapping_s_mapping;

  return v3;
}

uint64_t __62__CNiOSABConstantsMapping_ABToCNContainerTypeConstantsMapping__block_invoke()
{
  v6[7] = *MEMORY[0x1E69E9840];
  v0 = [CNiOSABConstantsMapping alloc];
  v5[0] = &unk_1F0987360;
  v5[1] = &unk_1F0987378;
  v6[0] = &unk_1F0987348;
  v6[1] = &unk_1F0987390;
  v5[2] = &unk_1F09873F0;
  v5[3] = &unk_1F0987420;
  v6[2] = &unk_1F0987408;
  v6[3] = &unk_1F09873A8;
  v5[4] = &unk_1F0987438;
  v5[5] = &unk_1F0987450;
  v6[4] = &unk_1F09873D8;
  v6[5] = &unk_1F0987468;
  v5[6] = &unk_1F0987480;
  v6[6] = &unk_1F0987498;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v2 = [(CNiOSABConstantsMapping *)v0 initWithMapping:v1];
  v3 = ABToCNContainerTypeConstantsMapping_s_mapping;
  ABToCNContainerTypeConstantsMapping_s_mapping = v2;

  return [ABToCNContainerTypeConstantsMapping_s_mapping setDefaultConstant:&unk_1F0987348];
}

+ (id)CNToABSourceTypeConstantsMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CNiOSABConstantsMapping_CNToABSourceTypeConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABSourceTypeConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABSourceTypeConstantsMapping_onceToken, block);
  }

  v2 = CNToABSourceTypeConstantsMapping_s_mapping;

  return v2;
}

void __59__CNiOSABConstantsMapping_CNToABSourceTypeConstantsMapping__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ABToCNContainerTypeConstantsMapping];
  v2 = [v1 invertedMapping];
  v3 = CNToABSourceTypeConstantsMapping_s_mapping;
  CNToABSourceTypeConstantsMapping_s_mapping = v2;

  v4 = CNToABSourceTypeConstantsMapping_s_mapping;
  v5 = [MEMORY[0x1E695DFB0] null];
  [v4 setDefaultConstant:v5];
}

+ (id)ABToCNContactShortNameFormatConstantsMapping
{
  if (ABToCNContactShortNameFormatConstantsMapping_onceToken != -1)
  {
    +[CNiOSABConstantsMapping ABToCNContactShortNameFormatConstantsMapping];
  }

  v3 = ABToCNContactShortNameFormatConstantsMapping_s_mapping;

  return v3;
}

void __71__CNiOSABConstantsMapping_ABToCNContactShortNameFormatConstantsMapping__block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = [CNiOSABConstantsMapping alloc];
  v4[0] = &unk_1F0987360;
  v4[1] = &unk_1F0987378;
  v5[0] = &unk_1F0987330;
  v5[1] = &unk_1F0987348;
  v4[2] = &unk_1F09874B0;
  v4[3] = &unk_1F09874C8;
  v5[2] = &unk_1F0987390;
  v5[3] = &unk_1F09873A8;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v2 = [(CNiOSABConstantsMapping *)v0 initWithMapping:v1];
  v3 = ABToCNContactShortNameFormatConstantsMapping_s_mapping;
  ABToCNContactShortNameFormatConstantsMapping_s_mapping = v2;
}

+ (id)CNToABPersonShortNameFormatConstantsMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CNiOSABConstantsMapping_CNToABPersonShortNameFormatConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABPersonShortNameFormatConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABPersonShortNameFormatConstantsMapping_onceToken, block);
  }

  v2 = CNToABPersonShortNameFormatConstantsMapping_s_mapping;

  return v2;
}

void __70__CNiOSABConstantsMapping_CNToABPersonShortNameFormatConstantsMapping__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ABToCNContactShortNameFormatConstantsMapping];
  v2 = [v1 invertedMapping];
  v3 = CNToABPersonShortNameFormatConstantsMapping_s_mapping;
  CNToABPersonShortNameFormatConstantsMapping_s_mapping = v2;

  v4 = CNToABPersonShortNameFormatConstantsMapping_s_mapping;
  v5 = [MEMORY[0x1E695DFB0] null];
  [v4 setDefaultConstant:v5];
}

- (CNiOSABConstantsMapping)initWithMapping:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNiOSABConstantsMapping;
  v5 = [(CNiOSABConstantsMapping *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    mapping = v5->_mapping;
    v5->_mapping = v6;
  }

  return v5;
}

- (id)mappedConstant:(id)a3
{
  v4 = a3;
  v5 = [(CNiOSABConstantsMapping *)self mapping];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(CNiOSABConstantsMapping *)self defaultConstant];

    if (v8)
    {
      v7 = [(CNiOSABConstantsMapping *)self defaultConstant];
    }

    else
    {
      v7 = v4;
    }
  }

  v9 = v7;

  return v9;
}

@end