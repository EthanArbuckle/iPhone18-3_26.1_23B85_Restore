@interface PSSpecifier
@end

@implementation PSSpecifier

void __63__PSSpecifier_AccountsUI__circularImageFromCGImage_size_scale___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = a1;
  v9 = [location[0] CGContext];
  v7 = 0u;
  v8 = 0u;
  v7 = *MEMORY[0x277CBF348];
  v8 = *(a1 + 40);
  v6 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v7, v8}];
  c = v9;
  v3 = v6;
  v2 = v6;
  CGContextAddPath(c, [v3 CGPath]);
  CGContextClip(v9);
  [*(a1 + 32) drawInRect:{v7, v8}];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

uint64_t __70__PSSpecifier_AccountsUI__acui_specifierIconForAccountTypeIdentifier___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = acui_specifierIconForAccountTypeIdentifier__accountTypeImageCache;
  acui_specifierIconForAccountTypeIdentifier__accountTypeImageCache = v0;
  MEMORY[0x277D82BD8](v1);
  v6 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 imageNamed:@"Exchange_small" inBundle:?];
  v2 = *MEMORY[0x277CB8C00];
  [acui_specifierIconForAccountTypeIdentifier__accountTypeImageCache setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = MEMORY[0x277D755B8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 imageNamed:@"Gmail_small" inBundle:?];
  v3 = *MEMORY[0x277CB8C40];
  [acui_specifierIconForAccountTypeIdentifier__accountTypeImageCache setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v12 = MEMORY[0x277D755B8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 imageNamed:@"Yahoo_small" inBundle:?];
  v4 = *MEMORY[0x277CB8D38];
  [acui_specifierIconForAccountTypeIdentifier__accountTypeImageCache setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v13);
  return MEMORY[0x277D82BD8](v14);
}

uint64_t __84__PSSpecifier_AccountsUI__acui_applicationBundleIdentifierForAccountTypeIdentifier___block_invoke()
{
  v4[7] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CB8BC8];
  v4[0] = @"com.apple.mobilecal";
  v3[1] = *MEMORY[0x277CB8BD8];
  v4[1] = @"com.apple.MobileAddressBook";
  v3[2] = *MEMORY[0x277CB8C98];
  v4[2] = @"com.apple.MobileAddressBook";
  v3[3] = *MEMORY[0x277CB8CF8];
  v4[3] = @"com.apple.mobilemail";
  v3[4] = *MEMORY[0x277CB8C60];
  v4[4] = @"com.apple.mobilemail";
  v3[5] = *MEMORY[0x277CB8C68];
  v4[5] = @"com.apple.mobilemail";
  v3[6] = *MEMORY[0x277CB8D58];
  v4[6] = @"com.apple.MobileStore";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = acui_applicationBundleIdentifierForAccountTypeIdentifier__accountTypeIdentifierToBundleIdentifiers;
  acui_applicationBundleIdentifierForAccountTypeIdentifier__accountTypeIdentifierToBundleIdentifiers = v0;
  result = MEMORY[0x277D82BD8](v1);
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __76__PSSpecifier_AccountsUI__acui_typedIconIdentifierForAccountTypeIdentifier___block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CB8BA0];
  v4[0] = @"com.apple.application-icon.icloud";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = acui_typedIconIdentifierForAccountTypeIdentifier__accountTypeIdentifierToTypedIconIdentifiers;
  acui_typedIconIdentifierForAccountTypeIdentifier__accountTypeIdentifierToTypedIconIdentifiers = v0;
  result = MEMORY[0x277D82BD8](v1);
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __72__PSSpecifier_AccountsUI__acui_applicationBundleIdentifierForDataclass___block_invoke()
{
  v7[19] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277CB8928];
  v7[0] = @"com.apple.mobilesafari";
  v6[1] = *MEMORY[0x277CB8958];
  v7[1] = @"com.apple.mobilecal";
  v6[2] = *MEMORY[0x277CB8968];
  v7[2] = @"com.apple.MobileAddressBook";
  v6[3] = *MEMORY[0x277CB89A0];
  v7[3] = @"com.apple.Health";
  v6[4] = *MEMORY[0x277CB89A8];
  v7[4] = @"com.apple.Home";
  v6[5] = *MEMORY[0x277CB89C8];
  v7[5] = @"com.apple.mobilemail";
  v6[6] = *MEMORY[0x277CB89D0];
  v7[6] = @"com.apple.mobileslideshow";
  v6[7] = *MEMORY[0x277CB89D8];
  v7[7] = @"com.apple.MobileSMS";
  v6[8] = *MEMORY[0x277CB89F0];
  v7[8] = @"com.apple.news";
  v6[9] = *MEMORY[0x277CB89F8];
  v7[9] = @"com.apple.mobilenotes";
  v6[10] = *MEMORY[0x277CB8A18];
  v7[10] = @"com.apple.reminders";
  v6[11] = *MEMORY[0x277CB8A40];
  v5 = [MEMORY[0x277D75418] currentDevice];
  v0 = [v5 userInterfaceIdiom];
  v1 = @"com.apple.Passbook";
  if (v0)
  {
    v1 = @"com.apple.PassbookStub";
  }

  v7[11] = v1;
  v6[12] = *MEMORY[0x277CB8A48];
  v7[12] = @"com.apple.siri";
  v6[13] = *MEMORY[0x277CB8A58];
  v7[13] = @"com.apple.DocumentsApp";
  v6[14] = *MEMORY[0x277CB8990];
  v7[14] = @"com.apple.Fitness";
  v6[15] = *MEMORY[0x277CB8998];
  v7[15] = @"com.apple.freeform";
  v6[16] = *MEMORY[0x277CB8A50];
  v7[16] = @"com.apple.stocks";
  v6[17] = *MEMORY[0x277CB89E0];
  v7[17] = @"com.apple.journal";
  v6[18] = *MEMORY[0x277CB89B0];
  v7[18] = @"com.apple.GenerativePlaygroundApp";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:19];
  v3 = acui_applicationBundleIdentifierForDataclass__dataClassToBundleIdentifiers;
  acui_applicationBundleIdentifierForDataclass__dataClassToBundleIdentifiers = v2;
  MEMORY[0x277D82BD8](v3);
  result = MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];
  return result;
}

void __46__PSSpecifier_AccountsUI___switchSpinnerTimer__block_invoke(id *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v2[0] startAnimating];
  [a1[4] setAccessoryView:v2[0]];
  objc_storeStrong(v2, 0);
}

uint64_t __46__PSSpecifier_AccountsUI___switchSpinnerTimer__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) propertyForKey:*MEMORY[0x277D3FEB0]];
  [*(a1 + 32) setAccessoryView:?];
  MEMORY[0x277D82BD8](v2);
  v4 = [*(a1 + 32) accessoryView];
  [v4 setEnabled:1];
  return MEMORY[0x277D82BD8](v4);
}

@end