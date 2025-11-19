@interface UIFont(AuthKitUI)
+ (id)ak_dynamicFontWithStyle:()AuthKitUI traits:;
+ (id)ak_preferredFontForSize:()AuthKitUI weight:;
+ (id)ak_preferredFontForStyle:()AuthKitUI weight:;
@end

@implementation UIFont(AuthKitUI)

+ (id)ak_dynamicFontWithStyle:()AuthKitUI traits:
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v8 = a4;
  v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:location[0] addingSymbolicTraits:a4 options:0];
  v6 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)ak_preferredFontForStyle:()AuthKitUI weight:
{
  v14[1] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v11[1] = *&a4;
  v11[0] = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:location[0]];
  v6 = v11[0];
  v13 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v14[0] = v8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v6 fontDescriptorByAddingAttributes:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v10 size:0.0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)ak_preferredFontForSize:()AuthKitUI weight:
{
  v4 = [MEMORY[0x277D75520] defaultMetrics];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:a1 weight:a2];
  v5 = [v4 scaledFontForFont:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

@end