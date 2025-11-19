@interface UIFont(AppStoreComponents)
+ (id)asc_fontDerivedFromTextStyle:()AppStoreComponents byApplyingFontWeight:;
+ (id)asc_fontDerivedFromTextStyle:()AppStoreComponents byApplyingFontWeight:compatibleWithTraitCollection:;
+ (id)asc_preferredFontForTextStyle:()AppStoreComponents withTraits:;
+ (id)asc_preferredFontForTextStyle:()AppStoreComponents withTraits:compatibleWithTraitCollection:;
@end

@implementation UIFont(AppStoreComponents)

+ (id)asc_fontDerivedFromTextStyle:()AppStoreComponents byApplyingFontWeight:compatibleWithTraitCollection:
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:? compatibleWithTraitCollection:?];
  v5 = objc_alloc(MEMORY[0x277D74310]);
  v18[0] = *MEMORY[0x277D74350];
  v6 = MEMORY[0x277CCABB0];
  [v4 pointSize];
  v7 = [v6 numberWithDouble:?];
  v19[0] = v7;
  v18[1] = *MEMORY[0x277D74380];
  v8 = *MEMORY[0x277D743D8];
  v17[0] = *MEMORY[0x277D743C8];
  v9 = *MEMORY[0x277D74430];
  v16[0] = v8;
  v16[1] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v17[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v13 = [v5 initWithFontAttributes:v12];

  v14 = [a1 fontWithDescriptor:v13 size:0.0];

  return v14;
}

+ (id)asc_fontDerivedFromTextStyle:()AppStoreComponents byApplyingFontWeight:
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:?];
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v6 = [v4 fontAttributes];
  v7 = [v5 initWithDictionary:v6];

  v8 = *MEMORY[0x277D743C8];
  v9 = *MEMORY[0x277D74430];
  v15[0] = *MEMORY[0x277D743D8];
  v15[1] = v9;
  v16[0] = v8;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x277D74380]];

  v12 = [objc_alloc(MEMORY[0x277D74310]) initWithFontAttributes:v7];
  v13 = [a1 fontWithDescriptor:v12 size:0.0];

  return v13;
}

+ (id)asc_preferredFontForTextStyle:()AppStoreComponents withTraits:compatibleWithTraitCollection:
{
  v8 = a3;
  v9 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:a5];
  v10 = [v9 fontDescriptorWithSymbolicTraits:a4];
  if (v10)
  {
    v11 = a1;
    v12 = v10;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[UIFont(AppStoreComponents) asc_preferredFontForTextStyle:withTraits:compatibleWithTraitCollection:];
    }

    v11 = a1;
    v12 = v9;
  }

  v13 = [v11 fontWithDescriptor:v12 size:0.0];

  return v13;
}

+ (id)asc_preferredFontForTextStyle:()AppStoreComponents withTraits:
{
  v6 = a3;
  v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v6];
  v8 = [v7 fontDescriptorWithSymbolicTraits:a4];
  if (v8)
  {
    v9 = a1;
    v10 = v8;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[UIFont(AppStoreComponents) asc_preferredFontForTextStyle:withTraits:compatibleWithTraitCollection:];
    }

    v9 = a1;
    v10 = v7;
  }

  v11 = [v9 fontWithDescriptor:v10 size:0.0];

  return v11;
}

+ (void)asc_preferredFontForTextStyle:()AppStoreComponents withTraits:compatibleWithTraitCollection:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not apply symbolic traits %d to %@", v0, 0x12u);
}

@end