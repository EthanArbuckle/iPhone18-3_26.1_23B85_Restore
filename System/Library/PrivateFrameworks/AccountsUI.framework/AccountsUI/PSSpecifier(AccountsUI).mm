@interface PSSpecifier(AccountsUI)
+ (id)_imageForType:()AccountsUI;
+ (id)_internal_iconForDataclass:()AccountsUI;
+ (id)acui_applicationBundleIdentifierForAccountTypeIdentifier:()AccountsUI;
+ (id)acui_applicationBundleIdentifierForDataclass:()AccountsUI;
+ (id)acui_iconForDataclass:()AccountsUI;
+ (id)acui_linkListCellSpecifierForDataclass:()AccountsUI account:target:set:get:detail:;
+ (id)acui_linkListCellSpecifierForDataclass:()AccountsUI target:set:get:detail:;
+ (id)acui_specifierForAppWithBundleID:()AccountsUI target:set:get:;
+ (id)acui_specifierForDataclass:()AccountsUI account:target:set:get:;
+ (id)acui_specifierForDataclass:()AccountsUI target:set:get:;
+ (id)acui_specifierIconForAccountTypeIdentifier:()AccountsUI;
+ (id)acui_typedIconIdentifierForAccountTypeIdentifier:()AccountsUI;
+ (id)acui_typedIconIdentifierForDataclass:()AccountsUI;
+ (id)circularImageFromCGImage:()AccountsUI size:scale:;
+ (id)imageForApplicationBundleIdentifier:()AccountsUI;
- (id)_switchSpinnerTimer;
- (void)acui_setIconForDataclass:()AccountsUI;
@end

@implementation PSSpecifier(AccountsUI)

+ (id)acui_iconForDataclass:()AccountsUI
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = _ACUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_4_0(v8, "+[PSSpecifier(AccountsUI) acui_iconForDataclass:]", 42);
    _os_log_error_impl(&dword_23DC86000, v5, OS_LOG_TYPE_ERROR, "%s (%d) acui_iconForDataclass is deprecated, please reach out to discuss alternatives!", v8, 0x12u);
  }

  objc_storeStrong(&v5, 0);
  v4 = [v7 _internal_iconForDataclass:location[0]];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_internal_iconForDataclass:()AccountsUI
{
  v13 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v11 = [v13 acui_typedIconIdentifierForDataclass:location[0]];
  v10 = [v13 acui_applicationBundleIdentifierForDataclass:location[0]];
  v9 = 0;
  if (v10)
  {
    v3 = [v13 imageForApplicationBundleIdentifier:v10];
    v4 = v9;
    v9 = v3;
    MEMORY[0x277D82BD8](v4);
  }

  else if (v11)
  {
    v5 = [v13 _imageForType:v11];
    v6 = v9;
    v9 = v5;
    MEMORY[0x277D82BD8](v6);
  }

  v8 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v8;
}

+ (id)_imageForType:()AccountsUI
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v10 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B240]];
  v3 = objc_alloc(MEMORY[0x277D1B1A8]);
  v9 = [v3 initWithType:location[0]];
  v8 = [v9 prepareImageForDescriptor:v10];
  v5 = MEMORY[0x277D755B8];
  v6 = [v8 CGImage];
  [v8 scale];
  v7 = [v5 imageWithCGImage:v6 scale:0 orientation:?];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)imageForApplicationBundleIdentifier:()AccountsUI
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v10 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B240]];
  v3 = objc_alloc(MEMORY[0x277D1B1A8]);
  v9 = [v3 initWithBundleIdentifier:location[0]];
  v8 = [v9 prepareImageForDescriptor:v10];
  v5 = MEMORY[0x277D755B8];
  v6 = [v8 CGImage];
  [v8 scale];
  v7 = [v5 imageWithCGImage:v6 scale:0 orientation:?];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)circularImageFromCGImage:()AccountsUI size:scale:
{
  v27 = *MEMORY[0x277D85DE8];
  *&v25 = a4;
  *(&v25 + 1) = a5;
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a6;
  v6 = objc_alloc(MEMORY[0x277D75560]);
  v20 = [v6 initWithSize:v25];
  v19 = [MEMORY[0x277D755B8] imageWithCGImage:v22 scale:0 orientation:v21];
  v9 = v20;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __63__PSSpecifier_AccountsUI__circularImageFromCGImage_size_scale___block_invoke;
  v15 = &unk_278BFA958;
  v17 = v25;
  v16 = MEMORY[0x277D82BE0](v19);
  v18 = [v9 imageWithActions:&v11];
  if (!v18)
  {
    oslog = _ACUILogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_32(v26, "+[PSSpecifier(AccountsUI) circularImageFromCGImage:size:scale:]", 112, "+[PSSpecifier(AccountsUI) circularImageFromCGImage:size:scale:]");
      _os_log_error_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_ERROR, "%s (%d) %s Couldn't create circular image", v26, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v8 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)acui_specifierIconForAccountTypeIdentifier:()AccountsUI
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = &acui_specifierIconForAccountTypeIdentifier__onceToken;
  v6 = 0;
  objc_storeStrong(&v6, &__block_literal_global_4);
  if (*v7 != -1)
  {
    dispatch_once(v7, v6);
  }

  objc_storeStrong(&v6, 0);
  v4 = [acui_specifierIconForAccountTypeIdentifier__accountTypeImageCache objectForKeyedSubscript:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)acui_applicationBundleIdentifierForAccountTypeIdentifier:()AccountsUI
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = &acui_applicationBundleIdentifierForAccountTypeIdentifier__onceToken;
  v6 = 0;
  objc_storeStrong(&v6, &__block_literal_global_38);
  if (*v7 != -1)
  {
    dispatch_once(v7, v6);
  }

  objc_storeStrong(&v6, 0);
  v4 = [acui_applicationBundleIdentifierForAccountTypeIdentifier__accountTypeIdentifierToBundleIdentifiers objectForKeyedSubscript:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)acui_typedIconIdentifierForAccountTypeIdentifier:()AccountsUI
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = &acui_typedIconIdentifierForAccountTypeIdentifier__onceToken;
  v6 = 0;
  objc_storeStrong(&v6, &__block_literal_global_53);
  if (*v7 != -1)
  {
    dispatch_once(v7, v6);
  }

  objc_storeStrong(&v6, 0);
  v4 = [acui_typedIconIdentifierForAccountTypeIdentifier__accountTypeIdentifierToTypedIconIdentifiers objectForKeyedSubscript:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)acui_typedIconIdentifierForDataclass:()AccountsUI
{
  v8[3] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7[0] = *MEMORY[0x277CB8920];
  v8[0] = @"com.apple.graphic-icon.icloud-backup";
  v7[1] = *MEMORY[0x277CB89C0];
  v8[1] = @"com.apple.graphic-icon.passwords";
  v7[2] = *MEMORY[0x277CB8980];
  v8[2] = @"com.apple.graphic-icon.avp-setup";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v4 = [v5 objectForKeyedSubscript:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)acui_applicationBundleIdentifierForDataclass:()AccountsUI
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v12 = &acui_applicationBundleIdentifierForDataclass__onceToken;
  v11 = 0;
  objc_storeStrong(&v11, &__block_literal_global_67);
  if (*v12 != -1)
  {
    dispatch_once(v12, v11);
  }

  objc_storeStrong(&v11, 0);
  if ([location[0] isEqualToString:*MEMORY[0x277CB8A00]])
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];
    MEMORY[0x277D82BD8](v7);
    if (v8)
    {
      v5 = [MEMORY[0x277D75418] currentDevice];
      v6 = [v5 userInterfaceIdiom];
      MEMORY[0x277D82BD8](v5);
      if (v6 == 4)
      {
        v10 = MEMORY[0x277D82BE0](@"com.apple.NanoPhone");
      }

      else
      {
        v10 = MEMORY[0x277D82BE0](@"com.apple.facetime");
      }
    }

    else
    {
      v10 = MEMORY[0x277D82BE0](@"com.apple.mobilephone");
    }
  }

  else
  {
    v10 = [acui_applicationBundleIdentifierForDataclass__dataClassToBundleIdentifiers objectForKeyedSubscript:location[0]];
  }

  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

+ (id)acui_specifierForDataclass:()AccountsUI target:set:get:
{
  v13 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = [v13 acui_specifierForDataclass:location[0] account:0 target:v11 set:a5 get:a6];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v10;
}

+ (id)acui_specifierForDataclass:()AccountsUI account:target:set:get:
{
  obja = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v26 = a1;
  location[1] = a2;
  v18 = location;
  v19 = 0;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v17 = &v24;
  v24 = 0;
  objc_storeStrong(&v24, obja);
  v16 = &v23;
  v23 = 0;
  objc_storeStrong(&v23, v11);
  v22[2] = v12;
  v22[1] = v13;
  v15 = v22;
  v22[0] = [ACUILocalization localizedStringForDataclass:location[0] withSuffix:@"LABEL" forAccount:v24];
  v7 = [v26 preferenceSpecifierNamed:v22[0] target:v23 set:v12 get:v13 detail:0 cell:6 edit:0];
  v14 = &v21;
  v21 = v7;
  [v7 acui_setIconForDataclass:location[0]];
  [v21 setProperty:location[0] forKey:*MEMORY[0x277D3FFB8]];
  [v21 setProperty:location[0] forKey:@"com.apple.accountsui.dataclass"];
  v20 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(v14, v19);
  objc_storeStrong(v15, v19);
  objc_storeStrong(v16, v19);
  objc_storeStrong(v17, v19);
  objc_storeStrong(v18, v19);
  v8 = v20;

  return v8;
}

- (void)acui_setIconForDataclass:()AccountsUI
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = [MEMORY[0x277D3FAD8] acui_typedIconIdentifierForDataclass:location[0]];
  v4 = [MEMORY[0x277D3FAD8] acui_applicationBundleIdentifierForDataclass:location[0]];
  if (v4)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v7 setObject:v4 forKeyedSubscript:*MEMORY[0x277D40008]];
  }

  else if (v5)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  }

  else
  {
    v3 = [MEMORY[0x277D3FAD8] _internal_iconForDataclass:location[0]];
    if (v3)
    {
      [v7 setProperty:v3 forKey:*MEMORY[0x277D3FFC0]];
    }

    objc_storeStrong(&v3, 0);
  }

  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

+ (id)acui_linkListCellSpecifierForDataclass:()AccountsUI target:set:get:detail:
{
  v15 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = [v15 acui_linkListCellSpecifierForDataclass:location[0] account:0 target:v13 set:a5 get:a6 detail:a7];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v12;
}

+ (id)acui_linkListCellSpecifierForDataclass:()AccountsUI account:target:set:get:detail:
{
  obja = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v28 = a1;
  location[1] = a2;
  v20 = location;
  v21 = 0;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v19 = &v26;
  v26 = 0;
  objc_storeStrong(&v26, obja);
  v18 = &v25;
  v25 = 0;
  objc_storeStrong(&v25, v12);
  v24[3] = v13;
  v24[2] = v14;
  v24[1] = v15;
  v17 = v24;
  v24[0] = [ACUILocalization localizedStringForDataclass:location[0] withSuffix:@"LABEL" forAccount:0];
  v8 = [v28 preferenceSpecifierNamed:v24[0] target:v25 set:v13 get:v14 detail:v15 cell:2 edit:0];
  v16 = &v23;
  v23 = v8;
  [v8 acui_setIconForDataclass:location[0]];
  [v23 setProperty:location[0] forKey:*MEMORY[0x277D3FFB8]];
  [v23 setProperty:location[0] forKey:@"com.apple.accountsui.dataclass"];
  v22 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(v16, v21);
  objc_storeStrong(v17, v21);
  objc_storeStrong(v18, v21);
  objc_storeStrong(v19, v21);
  objc_storeStrong(v20, v21);
  v9 = v22;

  return v9;
}

+ (id)acui_specifierForAppWithBundleID:()AccountsUI target:set:get:
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = a5;
  v23 = a6;
  v22 = 0;
  v21 = SBSCopyLocalizedApplicationNameForDisplayIdentifier();
  if ([v21 length])
  {
    v6 = [v27 preferenceSpecifierNamed:v21 target:v25 set:v24 get:v23 detail:0 cell:6 edit:0];
    v7 = v22;
    v22 = v6;
    MEMORY[0x277D82BD8](v7);
    [v22 setProperty:location[0] forKey:*MEMORY[0x277D3FFB8]];
    [v22 setProperty:location[0] forKey:@"com.apple.accountsui.bundleID"];
    v13 = [MEMORY[0x277D759A0] mainScreen];
    [v13 scale];
    v14 = v8;
    MEMORY[0x277D82BD8](v13);
    v20 = v14;
    v19 = 0;
    if ([location[0] isEqualToString:@"com.apple.siri"])
    {
      v9 = PSSiriImage();
    }

    else
    {
      v9 = [MEMORY[0x277D755B8] _applicationIconImageForBundleIdentifier:location[0] format:0 scale:v20];
    }

    v10 = v19;
    v19 = v9;
    MEMORY[0x277D82BD8](v10);
    if (v19)
    {
      [v22 setProperty:v19 forKey:*MEMORY[0x277D3FFC0]];
    }

    objc_storeStrong(&v19, 0);
  }

  else
  {
    oslog = _ACUILogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v28, "+[PSSpecifier(AccountsUI) acui_specifierForAppWithBundleID:target:set:get:]", 345, location[0]);
      _os_log_error_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_ERROR, "%s (%d) SBS did not give us a name for the app with identifier %@!", v28, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v12 = MEMORY[0x277D82BE0](v22);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_switchSpinnerTimer
{
  v26 = a1;
  v25[1] = a2;
  v25[0] = [a1 propertyForKey:*MEMORY[0x277D40148]];
  v9 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v10 = v9;
  v24 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v10);
  MEMORY[0x277D82BD8](v10);
  if (v25[0])
  {
    v3 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v24, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = v24;
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __46__PSSpecifier_AccountsUI___switchSpinnerTimer__block_invoke;
    v22 = &unk_278BFA730;
    v23 = MEMORY[0x277D82BE0](v25[0]);
    dispatch_source_set_event_handler(v6, &v18);
    v7 = v24;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __46__PSSpecifier_AccountsUI___switchSpinnerTimer__block_invoke_2;
    v15 = &unk_278BFA6B0;
    v16 = MEMORY[0x277D82BE0](v25[0]);
    v17 = MEMORY[0x277D82BE0](v26);
    dispatch_source_set_cancel_handler(v7, &v11);
    v8 = [v25[0] accessoryView];
    [v8 setEnabled:0];
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v23, 0);
  }

  v5 = MEMORY[0x277D82BE0](v24);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(v25, 0);

  return v5;
}

@end