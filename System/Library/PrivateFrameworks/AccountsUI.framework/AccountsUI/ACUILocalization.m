@interface ACUILocalization
+ (id)localizedNameForApplicationBundleID:(id)a3;
+ (id)localizedReferenceToLocalSourceOfDataclass:(id)a3;
+ (id)localizedStringForDataclass:(id)a3 withSuffix:(id)a4 forAccount:(id)a5;
+ (id)localizedTextForDataclasses:(id)a3 usedAtBeginningOfSentence:(BOOL)a4;
+ (id)localizedTextForDataclasses:(id)a3 usedAtBeginningOfSentence:(BOOL)a4 forAccount:(id)a5;
+ (id)localizedTitleForDataclass:(id)a3;
+ (id)localizedTitleForDataclass:(id)a3 forAccount:(id)a4;
+ (id)localizedTitleForLocalSourceOfDataclass:(id)a3 usedAtBeginningOfSentence:(BOOL)a4;
@end

@implementation ACUILocalization

+ (id)localizedTextForDataclasses:(id)a3 usedAtBeginningOfSentence:(BOOL)a4
{
  v8 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [v8 localizedTextForDataclasses:location[0] usedAtBeginningOfSentence:a4 forAccount:0];
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)localizedTextForDataclasses:(id)a3 usedAtBeginningOfSentence:(BOOL)a4 forAccount:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v36 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = a4;
  v33 = 0;
  objc_storeStrong(&v33, a5);
  v32 = [MEMORY[0x277CCAB68] string];
  v31 = MEMORY[0x277D82BE0](location[0]);
  memset(__b, 0, sizeof(__b));
  v26 = MEMORY[0x277D82BE0](v31);
  v27 = [v26 countByEnumeratingWithState:__b objects:v37 count:16];
  if (v27)
  {
    v21 = *__b[2];
    v22 = 0;
    v23 = v27;
    while (1)
    {
      v20 = v22;
      if (*__b[2] != v21)
      {
        objc_enumerationMutation(v26);
      }

      v30 = *(__b[1] + 8 * v22);
      v28 = MEMORY[0x277D82BE0](@"WARNING");
      if ([v32 length])
      {
        v19 = v30;
        v18 = [v31 lastObject];
        MEMORY[0x277D82BD8](v18);
        if (v19 == v18)
        {
          v15 = v32;
          v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v16 = [v17 localizedStringForKey:@"LAST_SEPARATOR" value:&stru_2850054A0 table:@"Localizable"];
          [v15 appendString:?];
          MEMORY[0x277D82BD8](v16);
          MEMORY[0x277D82BD8](v17);
        }

        else
        {
          v12 = v32;
          v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v13 = [v14 localizedStringForKey:@"MIDDLE_SEPARATOR" value:&stru_2850054A0 table:@"Localizable"];
          [v12 appendString:?];
          MEMORY[0x277D82BD8](v13);
          MEMORY[0x277D82BD8](v14);
        }
      }

      else if (v34)
      {
        objc_storeStrong(&v28, @"LABEL");
      }

      v10 = v32;
      v11 = [v36 localizedStringForDataclass:v30 withSuffix:v28 forAccount:?];
      [v10 appendString:?];
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v28, 0);
      ++v22;
      if (v20 + 1 >= v23)
      {
        v22 = 0;
        v23 = [v26 countByEnumeratingWithState:__b objects:v37 count:16];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v26);
  if (![v32 length])
  {
    v7 = v32;
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"DATA" value:&stru_2850054A0 table:@"Localizable"];
    [v7 appendString:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  v6 = MEMORY[0x277D82BE0](v32);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)localizedTitleForDataclass:(id)a3
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [v6 localizedTitleForDataclass:location[0] forAccount:0];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)localizedTitleForDataclass:(id)a3 forAccount:(id)a4
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [v9 localizedStringForDataclass:location[0] withSuffix:@"TITLE" forAccount:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)localizedTitleForLocalSourceOfDataclass:(id)a3 usedAtBeginningOfSentence:(BOOL)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v14 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v13 = [v14 tetheredSyncSourceTypeForDataclass:location[0]];
  if ([v13 isEqualToString:@"OSX"])
  {
    if (v15)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v11 localizedStringForKey:@"FROM_MY_COMPUTER_TYPE_MAC" value:&stru_2850054A0 table:@"Localizable"];
      MEMORY[0x277D82BD8](v11);
    }

    else
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v10 localizedStringForKey:@"FROM_MY_COMPUTER_TYPE_MAC_MID_SENTENCE" value:&stru_2850054A0 table:@"Localizable"];
      MEMORY[0x277D82BD8](v10);
    }
  }

  else if ([v13 isEqualToString:@"Windows"])
  {
    if (v15)
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v9 localizedStringForKey:@"FROM_MY_COMPUTER_TYPE_PC" value:&stru_2850054A0 table:@"Localizable"];
      MEMORY[0x277D82BD8](v9);
    }

    else
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v8 localizedStringForKey:@"FROM_MY_COMPUTER_TYPE_PC_MID_SENTENCE" value:&stru_2850054A0 table:@"Localizable"];
      MEMORY[0x277D82BD8](v8);
    }
  }

  else if (v15)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v7 localizedStringForKey:@"ON_MY_DEVICE_TYPE" value:&stru_2850054A0 table:@"Localizable"];
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v6 localizedStringForKey:@"ON_MY_DEVICE_TYPE_MID_SENTENCE" value:&stru_2850054A0 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  v4 = v17;

  return v4;
}

+ (id)localizedReferenceToLocalSourceOfDataclass:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v8 = [v9 tetheredSyncSourceTypeForDataclass:location[0]];
  if ([v8 isEqualToString:@"OSX"])
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v7 localizedStringForKey:@"SYNCED_WITH_YOUR_COMPUTER_TYPE_MAC_MID_SENTENCE" value:&stru_2850054A0 table:@"Localizable"];
    MEMORY[0x277D82BD8](v7);
  }

  else if ([v8 isEqualToString:@"Windows"])
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v6 localizedStringForKey:@"SYNCED_WITH_YOUR_COMPUTER_TYPE_PC_MID_SENTENCE" value:&stru_2850054A0 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v5 localizedStringForKey:@"ON_YOUR_DEVICE_TYPE_MID_SENTENCE" value:&stru_2850054A0 table:@"Localizable"];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  v3 = v11;

  return v3;
}

+ (id)localizedNameForApplicationBundleID:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = objc_alloc(MEMORY[0x277CC1E70]);
    v6 = [v3 initWithBundleIdentifier:location[0] allowPlaceholder:1 error:?];
    v9 = [v6 localizedName];
    v7 = 1;
    objc_storeStrong(&v6, 0);
  }

  else
  {
    v9 = 0;
    v7 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = v9;

  return v4;
}

+ (id)localizedStringForDataclass:(id)a3 withSuffix:(id)a4 forAccount:(id)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = 0;
  objc_storeStrong(&v36, a5);
  v27 = +[ACUIAccountViewProvidersManager sharedInstance];
  v35 = [(ACUIAccountViewProvidersManager *)v27 localizedStringForDataclass:location[0] withSuffix:v37 forAccount:v36];
  MEMORY[0x277D82BD8](v27);
  if (v35)
  {
    v39 = MEMORY[0x277D82BE0](v35);
    v34 = 1;
  }

  else
  {
    if ([location[0] isEqualToString:*MEMORY[0x277CB9110]])
    {
      objc_storeStrong(location, *MEMORY[0x277CB9108]);
    }

    if ([location[0] isEqualToString:*MEMORY[0x277CB91D8]])
    {
      objc_storeStrong(location, @"com.apple.Dataclass.CloudDrive");
    }

    v33 = 0;
    if ([location[0] isEqualToString:*MEMORY[0x277CB9128]])
    {
      objc_storeStrong(&v33, @"FIND_MY");
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277CB8A00]])
    {
      v23 = [MEMORY[0x277D75418] currentDevice];
      v24 = [v23 userInterfaceIdiom];
      MEMORY[0x277D82BD8](v23);
      if (v24)
      {
        v20 = [MEMORY[0x277D75418] currentDevice];
        v21 = [v20 userInterfaceIdiom];
        MEMORY[0x277D82BD8](v20);
        if (v21 == 4)
        {
          objc_storeStrong(&v33, @"PHONE_AND_FACETIME");
        }

        else
        {
          objc_storeStrong(&v33, @"FACETIME");
        }
      }

      else
      {
        v32 = MEMORY[0x277D82BE0](@"com.apple.facetime");
        v31 = 0;
        v5 = objc_alloc(MEMORY[0x277CC1E70]);
        v29 = v31;
        v22 = [v5 initWithBundleIdentifier:v32 allowPlaceholder:0 error:&v29];
        objc_storeStrong(&v31, v29);
        v30 = v22;
        if (v22)
        {
          objc_storeStrong(&v33, @"PHONE_AND_FACETIME");
        }

        else
        {
          objc_storeStrong(&v33, @"PHONE");
        }

        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v32, 0);
      }
    }

    else
    {
      v28 = [location[0] rangeOfString:@"." options:4];
      v6 = [location[0] substringFromIndex:v28 + 1];
      v7 = v33;
      v33 = v6;
      MEMORY[0x277D82BD8](v7);
      v8 = [v33 uppercaseString];
      v9 = v33;
      v33 = v8;
      MEMORY[0x277D82BD8](v9);
    }

    if ([v37 length])
    {
      v10 = [v33 stringByAppendingFormat:@"_%@", v37];
      v11 = v33;
      v33 = v10;
      MEMORY[0x277D82BD8](v11);
    }

    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v19 localizedStringForKey:v33 value:&stru_2850054A0 table:@"Localizable"];
    v13 = v35;
    v35 = v12;
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v19);
    if ([v35 isEqualToString:v33])
    {
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v18 localizedStringForKey:v33 value:&stru_2850054A0 table:@"Payment_Localizable"];
      v15 = v35;
      v35 = v14;
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v18);
    }

    v39 = MEMORY[0x277D82BE0](v35);
    v34 = 1;
    objc_storeStrong(&v33, 0);
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  v16 = v39;

  return v16;
}

@end