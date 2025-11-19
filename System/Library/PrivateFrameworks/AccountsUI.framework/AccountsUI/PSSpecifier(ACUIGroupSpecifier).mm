@interface PSSpecifier(ACUIGroupSpecifier)
+ (id)groupSpecifierWithFooterLinkButton:()ACUIGroupSpecifier;
+ (id)groupSpecifierWithFooterText:()ACUIGroupSpecifier linkButton:;
+ (id)groupSpecifierWithFooterText:()ACUIGroupSpecifier linkButtons:;
+ (id)groupSpecifierWithHeader:()ACUIGroupSpecifier footer:;
+ (id)groupSpecifierWithHeader:()ACUIGroupSpecifier footer:linkButtons:;
@end

@implementation PSSpecifier(ACUIGroupSpecifier)

+ (id)groupSpecifierWithFooterLinkButton:()ACUIGroupSpecifier
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v9 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v6 = v9;
  v3 = objc_opt_class();
  v7 = NSStringFromClass(v3);
  v4 = *MEMORY[0x277D3FF48];
  [v6 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v7);
  [v9 setProperty:location[0] forKey:@"ACUILinkButtonHolder"];
  v8 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v8;
}

+ (id)groupSpecifierWithFooterText:()ACUIGroupSpecifier linkButton:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v7 = v12;
  v6 = location[0];
  v13[0] = v10;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v9 = [v7 groupSpecifierWithHeader:0 footer:v6 linkButtons:?];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)groupSpecifierWithFooterText:()ACUIGroupSpecifier linkButtons:
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [v9 groupSpecifierWithHeader:0 footer:location[0] linkButtons:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)groupSpecifierWithHeader:()ACUIGroupSpecifier footer:
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [v9 groupSpecifierWithHeader:location[0] footer:v7 linkButtons:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)groupSpecifierWithHeader:()ACUIGroupSpecifier footer:linkButtons:
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  if (location[0])
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:location[0]];
  }

  else
  {
    v5 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  }

  v6 = v14;
  v14 = v5;
  MEMORY[0x277D82BD8](v6);
  v7 = objc_opt_class();
  v11 = NSStringFromClass(v7);
  v8 = *MEMORY[0x277D3FF48];
  [v14 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v11);
  [v14 setProperty:v16 forKey:@"ACUIFooterText"];
  if (v15)
  {
    [v14 setProperty:v15 forKey:@"ACUILinkButtonArray"];
  }

  v10 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v10;
}

@end