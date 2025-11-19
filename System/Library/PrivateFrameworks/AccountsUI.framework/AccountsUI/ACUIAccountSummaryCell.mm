@interface ACUIAccountSummaryCell
+ (id)_enabledDataclassesTextForAccount:(id)a3;
+ (id)_nameForAccountSpecifier:(id)a3 withStyle:(int64_t)a4;
+ (id)_numberFormatter;
+ (id)_valueForCellSpecifier:(id)a3;
+ (id)specifierWithStyle:(int64_t)a3 account:(id)a4 detailControllerClass:(Class)a5 presentationStyle:(int64_t)a6;
+ (id)specifierWithStyle:(int64_t)a3 account:(id)a4 target:(id)a5 controllerLoadAction:(SEL)a6;
+ (id)specifierWithStyle:(int64_t)a3 account:(id)a4 valueText:(id)a5 detailControllerClass:(Class)a6 presentationStyle:(int64_t)a7;
+ (void)_configureSpecifier:(id)a3 forAccount:(id)a4 withStyle:(int64_t)a5 valueText:(id)a6;
@end

@implementation ACUIAccountSummaryCell

+ (id)specifierWithStyle:(int64_t)a3 account:(id)a4 target:(id)a5 controllerLoadAction:(SEL)a6
{
  obj = a5;
  v10 = a6;
  v24 = a1;
  v23 = a2;
  v22 = a3;
  p_location = &location;
  v15 = 0;
  location = 0;
  objc_storeStrong(&location, a4);
  v13 = &v20;
  v20 = 0;
  objc_storeStrong(&v20, obj);
  v19 = v10;
  v12 = &v18;
  v18 = [v24 _nameForAccountSpecifier:location withStyle:v22];
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v18 target:v20 set:0 get:0 detail:0 cell:2 edit:0];
  v11 = &v17;
  v17 = v6;
  [v6 setControllerLoadAction:v19];
  [v24 _configureSpecifier:v17 forAccount:location withStyle:v22 valueText:v15];
  v16 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(v11, v15);
  objc_storeStrong(v12, v15);
  objc_storeStrong(v13, v15);
  objc_storeStrong(p_location, v15);
  v7 = v16;

  return v7;
}

+ (id)specifierWithStyle:(int64_t)a3 account:(id)a4 detailControllerClass:(Class)a5 presentationStyle:(int64_t)a6
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v9 = [v13 specifierWithStyle:v11 account:location valueText:0 detailControllerClass:a5 presentationStyle:a6];
  objc_storeStrong(&location, 0);

  return v9;
}

+ (id)specifierWithStyle:(int64_t)a3 account:(id)a4 valueText:(id)a5 detailControllerClass:(Class)a6 presentationStyle:(int64_t)a7
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v24 = 0;
  objc_storeStrong(&v24, a5);
  v23 = a6;
  v22 = a7;
  v21 = 0;
  v20 = [v28 _nameForAccountSpecifier:location withStyle:v26];
  if (a6)
  {
    if (v22)
    {
      v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v20 target:0 set:0 get:0 detail:v23 cell:2 edit:0];
      v13 = v21;
      v21 = v12;
      MEMORY[0x277D82BD8](v13);
    }

    else
    {
      v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v20 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
      v10 = v21;
      v21 = v9;
      MEMORY[0x277D82BD8](v10);
      v16 = NSStringFromClass(v23);
      v11 = *MEMORY[0x277D400B8];
      [v21 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](v16);
    }
  }

  else
  {
    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v20 target:0 set:0 get:0 detail:0 cell:3 edit:0];
    v8 = v21;
    v21 = v7;
    MEMORY[0x277D82BD8](v8);
    [v21 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  [v28 _configureSpecifier:v21 forAccount:location withStyle:v26 valueText:v24];
  v15 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);

  return v15;
}

+ (id)_nameForAccountSpecifier:(id)a3 withStyle:(int64_t)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  v12 = 0;
  if (a4 == 1 || v13 == 2)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v10 localizedStringForKey:@"ACCOUNT_SETTINGS" value:&stru_2850054A0 table:@"Localizable"];
    v5 = v12;
    v12 = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    v6 = [location[0] accountPropertyForKey:@"ACUIAccountSimpleDisplayName"];
    v7 = v12;
    v12 = v6;
    MEMORY[0x277D82BD8](v7);
    if (!v12)
    {
      v12 = [location[0] accountPropertyForKey:@"fullname"];
      MEMORY[0x277D82BD8](0);
    }

    if (!v12)
    {
      v12 = [location[0] accountDescription];
      MEMORY[0x277D82BD8](0);
    }
  }

  if (!v12)
  {
    objc_storeStrong(&v12, @"?");
  }

  v9 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v9;
}

+ (void)_configureSpecifier:(id)a3 forAccount:(id)a4 withStyle:(int64_t)a5 valueText:(id)a6
{
  v32[1] = *MEMORY[0x277D85DE8];
  v30 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = a5;
  v26 = 0;
  objc_storeStrong(&v26, a6);
  v25 = [v28 identifier];
  if (v27 == 1 || v27 == 2)
  {
    objc_storeWeak((location[0] + *MEMORY[0x277D3FCB8]), v30);
    *(location[0] + *MEMORY[0x277D3FCA8]) = sel__valueForCellSpecifier_;
    objc_storeStrong(&v25, @"ACCOUNT_INFO");
  }

  [location[0] setProperty:v28 forKey:@"account"];
  v20 = location[0];
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:v27];
  [v20 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v21);
  if (v26)
  {
    [location[0] setProperty:v26 forKey:@"ACUIAccountSummaryValue"];
  }

  v18 = location[0];
  v19 = objc_opt_self();
  v6 = *MEMORY[0x277D3FE58];
  [v18 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v19);
  if (v27 == 3)
  {
    v16 = [v28 accountType];
    v15 = [v16 supportedDataclasses];
    v17 = [v15 count];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    if (v17)
    {
      v11 = location[0];
      v12 = [ACUIAccountSummaryCell _enabledDataclassesTextForAccount:v28];
      v8 = *MEMORY[0x277D40160];
      [v11 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](v12);
    }

    else
    {
      v13 = location[0];
      v14 = [v28 username];
      v7 = *MEMORY[0x277D40160];
      [v13 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](v14);
    }
  }

  [location[0] setProperty:v25 forKey:*MEMORY[0x277D3FFB8]];
  v9 = location[0];
  v31 = @"account";
  v32[0] = v28;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [v9 setUserInfo:?];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)_valueForCellSpecifier:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] propertyForKey:@"ACUIAccountSummaryValue"];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)_enabledDataclassesTextForAccount:(id)a3
{
  v60[18] = *MEMORY[0x277D85DE8];
  v53 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v51 = MEMORY[0x277D82BE0](&stru_2850054A0);
  v50 = [location[0] enabledDataclasses];
  if ([v50 count])
  {
    v49 = [MEMORY[0x277CBEB18] array];
    v60[0] = *MEMORY[0x277CB8A58];
    v60[1] = *MEMORY[0x277CB89C8];
    v60[2] = *MEMORY[0x277CB8968];
    v60[3] = *MEMORY[0x277CB8958];
    v60[4] = *MEMORY[0x277CB8928];
    v60[5] = *MEMORY[0x277CB8A18];
    v60[6] = *MEMORY[0x277CB89D8];
    v60[7] = *MEMORY[0x277CB89F8];
    v60[8] = *MEMORY[0x277CB89F0];
    v60[9] = *MEMORY[0x277CB89A0];
    v60[10] = *MEMORY[0x277CB89D0];
    v60[11] = *MEMORY[0x277CB8A38];
    v60[12] = *MEMORY[0x277CB8A40];
    v60[13] = *MEMORY[0x277CB8970];
    v60[14] = *MEMORY[0x277CB8988];
    v60[15] = *MEMORY[0x277CB8920];
    v60[16] = *MEMORY[0x277CB89E8];
    v60[17] = *MEMORY[0x277CB8A50];
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:18];
    v47 = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v48);
    v34 = [obj countByEnumeratingWithState:__b objects:v59 count:16];
    if (v34)
    {
      v30 = *__b[2];
      v31 = 0;
      v32 = v34;
      while (1)
      {
        v29 = v31;
        if (*__b[2] != v30)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(__b[1] + 8 * v31);
        v44 = MEMORY[0x277D82BE0](v46);
        v43 = 0;
        if ([v50 containsObject:v46])
        {
          if ([v46 isEqualToString:*MEMORY[0x277CB89F0]])
          {
            v42 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.news" fetchingPlaceholder:0 error:0];
            v40 = 0;
            LOBYTE(v28) = 0;
            if (v42)
            {
              v41 = [v42 applicationState];
              v40 = 1;
              v28 = [v41 isRestricted] ^ 1;
            }

            v43 = v28 & 1;
            if (v40)
            {
              MEMORY[0x277D82BD8](v41);
            }

            objc_storeStrong(&v42, 0);
          }

          else if ([v46 isEqualToString:*MEMORY[0x277CB89D0]] & 1) != 0 || (objc_msgSend(v46, "isEqualToString:", *MEMORY[0x277CB8A38]))
          {
            if ((v47 & 1) == 0)
            {
              v47 = 1;
              v43 = 1;
              objc_storeStrong(&v44, *MEMORY[0x277CB89D0]);
            }
          }

          else if ([v46 isEqualToString:*MEMORY[0x277CB8988]])
          {
            v25 = [MEMORY[0x277D75418] currentDevice];
            v26 = [v25 userInterfaceIdiom];
            MEMORY[0x277D82BD8](v25);
            v54 = v26;
            v27 = 1;
            if (v26 != 1)
            {
              v27 = v54 == 5;
            }

            if (!v27)
            {
              v43 = 1;
            }
          }

          else if ([v46 isEqualToString:*MEMORY[0x277CB8970]])
          {
            v23 = [location[0] accountType];
            v22 = [v23 supportedDataclasses];
            v24 = [v22 count];
            MEMORY[0x277D82BD8](v22);
            MEMORY[0x277D82BD8](v23);
            if (v24 == 1)
            {
              v43 = 1;
            }
          }

          else
          {
            v43 = 1;
          }
        }

        if (v43)
        {
          v20 = v49;
          v21 = [ACUILocalization localizedStringForDataclass:v44 withSuffix:@"LABEL" forAccount:location[0]];
          [v20 addObject:?];
          MEMORY[0x277D82BD8](v21);
        }

        objc_storeStrong(&v44, 0);
        ++v31;
        if (v29 + 1 >= v32)
        {
          v31 = 0;
          v32 = [obj countByEnumeratingWithState:__b objects:v59 count:16];
          if (!v32)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    if ([v49 count])
    {
      if ([v49 count] <= 5)
      {
        v9 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v49];
        v10 = v51;
        v51 = v9;
        MEMORY[0x277D82BD8](v10);
      }

      else
      {
        v39 = [v49 count] - 3;
        v56 = 0;
        v55 = 3;
        v57 = 0;
        v58 = 3;
        v37[1] = 0;
        v37[2] = 3;
        v13 = [v49 subarrayWithRange:{0, 3}];
        v38 = [v13 mutableCopy];
        MEMORY[0x277D82BD8](v13);
        v15 = [v53 _numberFormatter];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v39];
        v37[0] = [v15 stringFromNumber:?];
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](v15);
        v16 = MEMORY[0x277CCACA8];
        v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v18 localizedStringForKey:@"AND_N_MORE" value:&stru_2850054A0 table:@"Localizable"];
        v36 = [v16 localizedStringWithFormat:v37[0]];
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](v18);
        [v38 addObject:v36];
        v7 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v38];
        v8 = v51;
        v51 = v7;
        MEMORY[0x277D82BD8](v8);
        objc_storeStrong(&v36, 0);
        objc_storeStrong(v37, 0);
        objc_storeStrong(&v38, 0);
      }
    }

    else
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v19 localizedStringForKey:@"INACTIVE" value:&stru_2850054A0 table:@"Localizable"];
      v6 = v51;
      v51 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v19);
    }

    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v49, 0);
  }

  else
  {
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v35 localizedStringForKey:@"INACTIVE" value:&stru_2850054A0 table:@"Localizable"];
    v4 = v51;
    v51 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v35);
  }

  v12 = MEMORY[0x277D82BE0](v51);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_numberFormatter
{
  if (!__ACUINumberFormatter)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v3 = __ACUINumberFormatter;
    __ACUINumberFormatter = v2;
    MEMORY[0x277D82BD8](v3);
  }

  v4 = __ACUINumberFormatter;

  return v4;
}

@end