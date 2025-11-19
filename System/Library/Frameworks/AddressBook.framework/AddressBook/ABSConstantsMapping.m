@interface ABSConstantsMapping
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
+ (id)CNToABPersonSocialProfileConstantsMapping;
+ (id)CNToABPersonSortOrderingConstantsMapping;
+ (id)CNToABSourceTypeConstantsMapping;
- (ABSConstantsMapping)initWithMapping:(id)a3;
- (id)invertedMapping;
- (id)mappedConstant:(id)a3;
@end

@implementation ABSConstantsMapping

+ (id)ABToCNPersonKindConstantsMapping
{
  if (ABToCNPersonKindConstantsMapping_onceToken != -1)
  {
    +[ABSConstantsMapping ABToCNPersonKindConstantsMapping];
  }

  v3 = ABToCNPersonKindConstantsMapping_s_mapping;

  return v3;
}

uint64_t __55__ABSConstantsMapping_ABToCNPersonKindConstantsMapping__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = [ABSConstantsMapping alloc];
  v5[0] = kABPersonKindPerson;
  v5[1] = kABPersonKindOrganization;
  v6[0] = &unk_2849AB390;
  v6[1] = &unk_2849AB3A8;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v2 = [(ABSConstantsMapping *)v0 initWithMapping:v1];
  v3 = ABToCNPersonKindConstantsMapping_s_mapping;
  ABToCNPersonKindConstantsMapping_s_mapping = v2;

  return [ABToCNPersonKindConstantsMapping_s_mapping setDefaultConstant:&unk_2849AB390];
}

+ (id)CNToABPersonKindConstantsMapping
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ABSConstantsMapping_CNToABPersonKindConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABPersonKindConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABPersonKindConstantsMapping_onceToken, block);
  }

  v2 = CNToABPersonKindConstantsMapping_s_mapping;

  return v2;
}

uint64_t __55__ABSConstantsMapping_CNToABPersonKindConstantsMapping__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ABToCNPersonKindConstantsMapping];
  v2 = [v1 invertedMapping];
  v3 = CNToABPersonKindConstantsMapping_s_mapping;
  CNToABPersonKindConstantsMapping_s_mapping = v2;

  v4 = CNToABPersonKindConstantsMapping_s_mapping;

  return [v4 setDefaultConstant:kABPersonKindPerson];
}

+ (id)ABtoCNContactDisplayNameOrderConstantsMapping
{
  if (ABtoCNContactDisplayNameOrderConstantsMapping_onceToken != -1)
  {
    +[ABSConstantsMapping ABtoCNContactDisplayNameOrderConstantsMapping];
  }

  v3 = ABtoCNContactDisplayNameOrderConstantsMapping_s_mapping;

  return v3;
}

uint64_t __68__ABSConstantsMapping_ABtoCNContactDisplayNameOrderConstantsMapping__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = [ABSConstantsMapping alloc];
  v5[0] = &unk_2849AB3C0;
  v5[1] = &unk_2849AB3D8;
  v6[0] = &unk_2849AB3A8;
  v6[1] = &unk_2849AB3F0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v2 = [(ABSConstantsMapping *)v0 initWithMapping:v1];
  v3 = ABtoCNContactDisplayNameOrderConstantsMapping_s_mapping;
  ABtoCNContactDisplayNameOrderConstantsMapping_s_mapping = v2;

  return [ABtoCNContactDisplayNameOrderConstantsMapping_s_mapping setDefaultConstant:&unk_2849AB390];
}

+ (id)CNToABCompositeNameFormatConstantsMapping
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ABSConstantsMapping_CNToABCompositeNameFormatConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABCompositeNameFormatConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABCompositeNameFormatConstantsMapping_onceToken, block);
  }

  v2 = CNToABCompositeNameFormatConstantsMapping_s_mapping;

  return v2;
}

uint64_t __64__ABSConstantsMapping_CNToABCompositeNameFormatConstantsMapping__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ABtoCNContactDisplayNameOrderConstantsMapping];
  v2 = [v1 invertedMapping];
  v3 = CNToABCompositeNameFormatConstantsMapping_s_mapping;
  CNToABCompositeNameFormatConstantsMapping_s_mapping = v2;

  v4 = CNToABCompositeNameFormatConstantsMapping_s_mapping;

  return [v4 setDefaultConstant:&unk_2849AB3D8];
}

+ (id)ABToCNContactSortOrderConstantsMapping
{
  if (ABToCNContactSortOrderConstantsMapping_onceToken != -1)
  {
    +[ABSConstantsMapping ABToCNContactSortOrderConstantsMapping];
  }

  v3 = ABToCNContactSortOrderConstantsMapping_s_mapping;

  return v3;
}

uint64_t __61__ABSConstantsMapping_ABToCNContactSortOrderConstantsMapping__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = [ABSConstantsMapping alloc];
  v5[0] = &unk_2849AB3C0;
  v5[1] = &unk_2849AB3D8;
  v6[0] = &unk_2849AB3F0;
  v6[1] = &unk_2849AB408;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v2 = [(ABSConstantsMapping *)v0 initWithMapping:v1];
  v3 = ABToCNContactSortOrderConstantsMapping_s_mapping;
  ABToCNContactSortOrderConstantsMapping_s_mapping = v2;

  return [ABToCNContactSortOrderConstantsMapping_s_mapping setDefaultConstant:&unk_2849AB3A8];
}

+ (id)CNToABPersonSortOrderingConstantsMapping
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ABSConstantsMapping_CNToABPersonSortOrderingConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABPersonSortOrderingConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABPersonSortOrderingConstantsMapping_onceToken, block);
  }

  v2 = CNToABPersonSortOrderingConstantsMapping_s_mapping;

  return v2;
}

uint64_t __63__ABSConstantsMapping_CNToABPersonSortOrderingConstantsMapping__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ABToCNContactSortOrderConstantsMapping];
  v2 = [v1 invertedMapping];
  v3 = CNToABPersonSortOrderingConstantsMapping_s_mapping;
  CNToABPersonSortOrderingConstantsMapping_s_mapping = v2;

  v4 = CNToABPersonSortOrderingConstantsMapping_s_mapping;

  return [v4 setDefaultConstant:&unk_2849AB3D8];
}

+ (id)ABToCNPersonAddressConstantsMapping
{
  if (ABToCNPersonAddressConstantsMapping_onceToken != -1)
  {
    +[ABSConstantsMapping ABToCNPersonAddressConstantsMapping];
  }

  v3 = ABToCNPersonAddressConstantsMapping_s_mapping;

  return v3;
}

void __58__ABSConstantsMapping_ABToCNPersonAddressConstantsMapping__block_invoke()
{
  v10[6] = *MEMORY[0x277D85DE8];
  v0 = [ABSConstantsMapping alloc];
  v1 = *MEMORY[0x277CBD980];
  v9[0] = @"Street";
  v9[1] = @"City";
  v2 = *MEMORY[0x277CBD948];
  v10[0] = v1;
  v10[1] = v2;
  v3 = *MEMORY[0x277CBD978];
  v9[2] = @"State";
  v9[3] = @"ZIP";
  v4 = *MEMORY[0x277CBD968];
  v10[2] = v3;
  v10[3] = v4;
  v9[4] = @"Country";
  v9[5] = @"CountryCode";
  v5 = *MEMORY[0x277CBD958];
  v10[4] = *MEMORY[0x277CBD950];
  v10[5] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v7 = [(ABSConstantsMapping *)v0 initWithMapping:v6];
  v8 = ABToCNPersonAddressConstantsMapping_s_mapping;
  ABToCNPersonAddressConstantsMapping_s_mapping = v7;
}

+ (id)CNToABPersonAddressConstantsMapping
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ABSConstantsMapping_CNToABPersonAddressConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABPersonAddressConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABPersonAddressConstantsMapping_onceToken, block);
  }

  v2 = CNToABPersonAddressConstantsMapping_s_mapping;

  return v2;
}

void __58__ABSConstantsMapping_CNToABPersonAddressConstantsMapping__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) ABToCNPersonAddressConstantsMapping];
  v1 = [v3 invertedMapping];
  v2 = CNToABPersonAddressConstantsMapping_s_mapping;
  CNToABPersonAddressConstantsMapping_s_mapping = v1;
}

+ (id)ABToCNPersonInstantMessageConstantsMapping
{
  if (ABToCNPersonInstantMessageConstantsMapping_onceToken != -1)
  {
    +[ABSConstantsMapping ABToCNPersonInstantMessageConstantsMapping];
  }

  v3 = ABToCNPersonInstantMessageConstantsMapping_s_mapping;

  return v3;
}

void __65__ABSConstantsMapping_ABToCNPersonInstantMessageConstantsMapping__block_invoke()
{
  v16[12] = *MEMORY[0x277D85DE8];
  v0 = [ABSConstantsMapping alloc];
  v1 = *MEMORY[0x277CBD1E8];
  v15[0] = @"service";
  v15[1] = @"username";
  v2 = *MEMORY[0x277CBD1F0];
  v16[0] = v1;
  v16[1] = v2;
  v3 = *MEMORY[0x277CBD240];
  v15[2] = @"Yahoo";
  v15[3] = @"Jabber";
  v4 = *MEMORY[0x277CBD220];
  v16[2] = v3;
  v16[3] = v4;
  v5 = *MEMORY[0x277CBD228];
  v15[4] = @"MSN";
  v15[5] = @"ICQ";
  v6 = *MEMORY[0x277CBD218];
  v16[4] = v5;
  v16[5] = v6;
  v7 = *MEMORY[0x277CBD1F8];
  v15[6] = @"AIM";
  v15[7] = @"QQ";
  v8 = *MEMORY[0x277CBD230];
  v16[6] = v7;
  v16[7] = v8;
  v9 = *MEMORY[0x277CBD210];
  v15[8] = @"GoogleTalk";
  v15[9] = @"Skype";
  v10 = *MEMORY[0x277CBD238];
  v16[8] = v9;
  v16[9] = v10;
  v15[10] = @"Facebook";
  v15[11] = @"GaduGadu";
  v11 = *MEMORY[0x277CBD208];
  v16[10] = *MEMORY[0x277CBD200];
  v16[11] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:12];
  v13 = [(ABSConstantsMapping *)v0 initWithMapping:v12];
  v14 = ABToCNPersonInstantMessageConstantsMapping_s_mapping;
  ABToCNPersonInstantMessageConstantsMapping_s_mapping = v13;
}

+ (id)CNToABPersonInstantMessageConstantsMapping
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ABSConstantsMapping_CNToABPersonInstantMessageConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABPersonInstantMessageConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABPersonInstantMessageConstantsMapping_onceToken, block);
  }

  v2 = CNToABPersonInstantMessageConstantsMapping_s_mapping;

  return v2;
}

void __65__ABSConstantsMapping_CNToABPersonInstantMessageConstantsMapping__block_invoke(uint64_t a1)
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
    +[ABSConstantsMapping ABToCNPersonSocialProfileConstantsMapping];
  }

  v3 = ABToCNPersonSocialProfileConstantsMapping_s_mapping;

  return v3;
}

void __64__ABSConstantsMapping_ABToCNPersonSocialProfileConstantsMapping__block_invoke()
{
  v15[11] = *MEMORY[0x277D85DE8];
  v0 = [ABSConstantsMapping alloc];
  v1 = *MEMORY[0x277CBD9E8];
  v14[0] = @"url";
  v14[1] = @"username";
  v2 = *MEMORY[0x277CBD9F8];
  v15[0] = v1;
  v15[1] = v2;
  v3 = *MEMORY[0x277CBD9F0];
  v14[2] = @"identifier";
  v14[3] = @"service";
  v4 = *MEMORY[0x277CBD9B0];
  v15[2] = v3;
  v15[3] = v4;
  v5 = *MEMORY[0x277CFBDA0];
  v14[4] = @"twitter";
  v14[5] = @"sinaweibo";
  v6 = *MEMORY[0x277CFBD98];
  v15[4] = v5;
  v15[5] = v6;
  v7 = *MEMORY[0x277CBD9A8];
  v14[6] = @"gamecenter";
  v14[7] = @"facebook";
  v8 = *MEMORY[0x277CFBD78];
  v15[6] = v7;
  v15[7] = v8;
  v9 = *MEMORY[0x277CFBD90];
  v14[8] = @"myspace";
  v14[9] = @"linkedin";
  v10 = *MEMORY[0x277CFBD88];
  v15[8] = v9;
  v15[9] = v10;
  v14[10] = @"flickr";
  v15[10] = *MEMORY[0x277CFBD80];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:11];
  v12 = [(ABSConstantsMapping *)v0 initWithMapping:v11];
  v13 = ABToCNPersonSocialProfileConstantsMapping_s_mapping;
  ABToCNPersonSocialProfileConstantsMapping_s_mapping = v12;
}

+ (id)CNToABPersonSocialProfileConstantsMapping
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ABSConstantsMapping_CNToABPersonSocialProfileConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABPersonSocialProfileConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABPersonSocialProfileConstantsMapping_onceToken, block);
  }

  v2 = CNToABPersonSocialProfileConstantsMapping_s_mapping;

  return v2;
}

void __64__ABSConstantsMapping_CNToABPersonSocialProfileConstantsMapping__block_invoke(uint64_t a1)
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
    +[ABSConstantsMapping ABToCNLabelConstantsMapping];
  }

  v3 = ABToCNLabelConstantsMapping_s_mapping;

  return v3;
}

void __50__ABSConstantsMapping_ABToCNLabelConstantsMapping__block_invoke()
{
  v27[23] = *MEMORY[0x277D85DE8];
  v0 = [ABSConstantsMapping alloc];
  v1 = *MEMORY[0x277CBD940];
  v26[0] = @"_$!<Work>!$_";
  v26[1] = @"_$!<Home>!$_";
  v2 = *MEMORY[0x277CBD8E0];
  v27[0] = v1;
  v27[1] = v2;
  v3 = *MEMORY[0x277CBD8E8];
  v26[2] = @"_$!<Other>!$_";
  v26[3] = @"_$!<Anniversary>!$_";
  v4 = *MEMORY[0x277CBD8D0];
  v27[2] = v3;
  v27[3] = v4;
  v5 = *MEMORY[0x277CBD928];
  v26[4] = @"iPhone";
  v26[5] = @"_$!<Main>!$_";
  v6 = *MEMORY[0x277CBD900];
  v27[4] = v5;
  v27[5] = v6;
  v7 = *MEMORY[0x277CBD8F8];
  v26[6] = @"_$!<HomeFAX>!$_";
  v26[7] = @"_$!<WorkFAX>!$_";
  v8 = *MEMORY[0x277CBD920];
  v27[6] = v7;
  v27[7] = v8;
  v9 = *MEMORY[0x277CBD910];
  v26[8] = @"_$!<OtherFAX>!$_";
  v26[9] = @"_$!<Pager>!$_";
  v10 = *MEMORY[0x277CBD918];
  v27[8] = v9;
  v27[9] = v10;
  v11 = *MEMORY[0x277CBD908];
  v26[10] = @"_$!<Mobile>!$_";
  v26[11] = @"_$!<HomePage>!$_";
  v12 = *MEMORY[0x277CBD938];
  v27[10] = v11;
  v27[11] = v12;
  v13 = *MEMORY[0x277CBD4A8];
  v26[12] = @"_$!<Father>!$_";
  v26[13] = @"_$!<Mother>!$_";
  v14 = *MEMORY[0x277CBD5F0];
  v27[12] = v13;
  v27[13] = v14;
  v15 = *MEMORY[0x277CBD678];
  v26[14] = @"_$!<Parent>!$_";
  v26[15] = @"_$!<Brother>!$_";
  v16 = *MEMORY[0x277CBD2C8];
  v27[14] = v15;
  v27[15] = v16;
  v17 = *MEMORY[0x277CBD6F0];
  v26[16] = @"_$!<Sister>!$_";
  v26[17] = @"_$!<Child>!$_";
  v18 = *MEMORY[0x277CBD318];
  v27[16] = v17;
  v27[17] = v18;
  v19 = *MEMORY[0x277CBD4E8];
  v26[18] = @"_$!<Friend>!$_";
  v26[19] = @"_$!<Spouse>!$_";
  v20 = *MEMORY[0x277CBD760];
  v27[18] = v19;
  v27[19] = v20;
  v21 = *MEMORY[0x277CBD6D0];
  v26[20] = @"_$!<Partner>!$_";
  v26[21] = @"_$!<Assistant>!$_";
  v22 = *MEMORY[0x277CBD248];
  v27[20] = v21;
  v27[21] = v22;
  v26[22] = @"_$!<Manager>!$_";
  v27[22] = *MEMORY[0x277CBD5E8];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:23];
  v24 = [(ABSConstantsMapping *)v0 initWithMapping:v23];
  v25 = ABToCNLabelConstantsMapping_s_mapping;
  ABToCNLabelConstantsMapping_s_mapping = v24;
}

+ (id)CNToABLabelConstantsMapping
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ABSConstantsMapping_CNToABLabelConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABLabelConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABLabelConstantsMapping_onceToken, block);
  }

  v2 = CNToABLabelConstantsMapping_s_mapping;

  return v2;
}

void __50__ABSConstantsMapping_CNToABLabelConstantsMapping__block_invoke(uint64_t a1)
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
    +[ABSConstantsMapping ABToCNContainerTypeConstantsMapping];
  }

  v3 = ABToCNContainerTypeConstantsMapping_s_mapping;

  return v3;
}

uint64_t __58__ABSConstantsMapping_ABToCNContainerTypeConstantsMapping__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = [ABSConstantsMapping alloc];
  v5[0] = &unk_2849AB3C0;
  v5[1] = &unk_2849AB3D8;
  v6[0] = &unk_2849AB3A8;
  v6[1] = &unk_2849AB3F0;
  v5[2] = &unk_2849AB420;
  v6[2] = &unk_2849AB408;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v2 = [(ABSConstantsMapping *)v0 initWithMapping:v1];
  v3 = ABToCNContainerTypeConstantsMapping_s_mapping;
  ABToCNContainerTypeConstantsMapping_s_mapping = v2;

  return [ABToCNContainerTypeConstantsMapping_s_mapping setDefaultConstant:&unk_2849AB3A8];
}

+ (id)CNToABSourceTypeConstantsMapping
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ABSConstantsMapping_CNToABSourceTypeConstantsMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (CNToABSourceTypeConstantsMapping_onceToken != -1)
  {
    dispatch_once(&CNToABSourceTypeConstantsMapping_onceToken, block);
  }

  v2 = CNToABSourceTypeConstantsMapping_s_mapping;

  return v2;
}

void __55__ABSConstantsMapping_CNToABSourceTypeConstantsMapping__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ABToCNContainerTypeConstantsMapping];
  v2 = [v1 invertedMapping];
  v3 = CNToABSourceTypeConstantsMapping_s_mapping;
  CNToABSourceTypeConstantsMapping_s_mapping = v2;

  v4 = CNToABSourceTypeConstantsMapping_s_mapping;
  v5 = [MEMORY[0x277CBEB68] null];
  [v4 setDefaultConstant:v5];
}

- (ABSConstantsMapping)initWithMapping:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ABSConstantsMapping;
  v5 = [(ABSConstantsMapping *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    mapping = v5->_mapping;
    v5->_mapping = v6;
  }

  return v5;
}

- (id)invertedMapping
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(ABSConstantsMapping *)self mapping];
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
        v10 = [(ABSConstantsMapping *)self mapping];
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

- (id)mappedConstant:(id)a3
{
  v4 = a3;
  v5 = [(ABSConstantsMapping *)self mapping];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(ABSConstantsMapping *)self defaultConstant];

    if (v8)
    {
      v7 = [(ABSConstantsMapping *)self defaultConstant];
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