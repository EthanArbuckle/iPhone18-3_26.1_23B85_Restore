@interface ACUIAccountSummaryCell
+ (id)_enabledDataclassesTextForAccount:(id)account;
+ (id)_nameForAccountSpecifier:(id)specifier withStyle:(int64_t)style;
+ (id)_numberFormatter;
+ (id)_valueForCellSpecifier:(id)specifier;
+ (id)specifierWithStyle:(int64_t)style account:(id)account detailControllerClass:(Class)class presentationStyle:(int64_t)presentationStyle;
+ (id)specifierWithStyle:(int64_t)style account:(id)account target:(id)target controllerLoadAction:(SEL)action;
+ (id)specifierWithStyle:(int64_t)style account:(id)account valueText:(id)text detailControllerClass:(Class)class presentationStyle:(int64_t)presentationStyle;
+ (void)_configureSpecifier:(id)specifier forAccount:(id)account withStyle:(int64_t)style valueText:(id)text;
@end

@implementation ACUIAccountSummaryCell

+ (id)specifierWithStyle:(int64_t)style account:(id)account target:(id)target controllerLoadAction:(SEL)action
{
  obj = target;
  actionCopy = action;
  selfCopy = self;
  v23 = a2;
  styleCopy = style;
  p_location = &location;
  v15 = 0;
  location = 0;
  objc_storeStrong(&location, account);
  v13 = &v20;
  v20 = 0;
  objc_storeStrong(&v20, obj);
  v19 = actionCopy;
  v12 = &v18;
  v18 = [selfCopy _nameForAccountSpecifier:location withStyle:styleCopy];
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v18 target:v20 set:0 get:0 detail:0 cell:2 edit:0];
  v11 = &v17;
  v17 = v6;
  [v6 setControllerLoadAction:v19];
  [selfCopy _configureSpecifier:v17 forAccount:location withStyle:styleCopy valueText:v15];
  v16 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(v11, v15);
  objc_storeStrong(v12, v15);
  objc_storeStrong(v13, v15);
  objc_storeStrong(p_location, v15);
  v7 = v16;

  return v7;
}

+ (id)specifierWithStyle:(int64_t)style account:(id)account detailControllerClass:(Class)class presentationStyle:(int64_t)presentationStyle
{
  selfCopy = self;
  v12 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, account);
  v9 = [selfCopy specifierWithStyle:styleCopy account:location valueText:0 detailControllerClass:class presentationStyle:presentationStyle];
  objc_storeStrong(&location, 0);

  return v9;
}

+ (id)specifierWithStyle:(int64_t)style account:(id)account valueText:(id)text detailControllerClass:(Class)class presentationStyle:(int64_t)presentationStyle
{
  selfCopy = self;
  v27 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, account);
  v24 = 0;
  objc_storeStrong(&v24, text);
  classCopy = class;
  presentationStyleCopy = presentationStyle;
  v21 = 0;
  v20 = [selfCopy _nameForAccountSpecifier:location withStyle:styleCopy];
  if (class)
  {
    if (presentationStyleCopy)
    {
      v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v20 target:0 set:0 get:0 detail:classCopy cell:2 edit:0];
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
      v16 = NSStringFromClass(classCopy);
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

  [selfCopy _configureSpecifier:v21 forAccount:location withStyle:styleCopy valueText:v24];
  v15 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);

  return v15;
}

+ (id)_nameForAccountSpecifier:(id)specifier withStyle:(int64_t)style
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  styleCopy = style;
  accountDescription = 0;
  if (style == 1 || styleCopy == 2)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v10 localizedStringForKey:@"ACCOUNT_SETTINGS" value:&stru_2850054A0 table:@"Localizable"];
    v5 = accountDescription;
    accountDescription = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    v6 = [location[0] accountPropertyForKey:@"ACUIAccountSimpleDisplayName"];
    v7 = accountDescription;
    accountDescription = v6;
    MEMORY[0x277D82BD8](v7);
    if (!accountDescription)
    {
      accountDescription = [location[0] accountPropertyForKey:@"fullname"];
      MEMORY[0x277D82BD8](0);
    }

    if (!accountDescription)
    {
      accountDescription = [location[0] accountDescription];
      MEMORY[0x277D82BD8](0);
    }
  }

  if (!accountDescription)
  {
    objc_storeStrong(&accountDescription, @"?");
  }

  v9 = MEMORY[0x277D82BE0](accountDescription);
  objc_storeStrong(&accountDescription, 0);
  objc_storeStrong(location, 0);

  return v9;
}

+ (void)_configureSpecifier:(id)specifier forAccount:(id)account withStyle:(int64_t)style valueText:(id)text
{
  v32[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v28 = 0;
  objc_storeStrong(&v28, account);
  styleCopy = style;
  v26 = 0;
  objc_storeStrong(&v26, text);
  identifier = [v28 identifier];
  if (styleCopy == 1 || styleCopy == 2)
  {
    objc_storeWeak((location[0] + *MEMORY[0x277D3FCB8]), selfCopy);
    *(location[0] + *MEMORY[0x277D3FCA8]) = sel__valueForCellSpecifier_;
    objc_storeStrong(&identifier, @"ACCOUNT_INFO");
  }

  [location[0] setProperty:v28 forKey:@"account"];
  v20 = location[0];
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:styleCopy];
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
  if (styleCopy == 3)
  {
    accountType = [v28 accountType];
    supportedDataclasses = [accountType supportedDataclasses];
    v17 = [supportedDataclasses count];
    MEMORY[0x277D82BD8](supportedDataclasses);
    MEMORY[0x277D82BD8](accountType);
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
      username = [v28 username];
      v7 = *MEMORY[0x277D40160];
      [v13 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](username);
    }
  }

  [location[0] setProperty:identifier forKey:*MEMORY[0x277D3FFB8]];
  v9 = location[0];
  v31 = @"account";
  v32[0] = v28;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [v9 setUserInfo:?];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&identifier, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)_valueForCellSpecifier:(id)specifier
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v4 = [location[0] propertyForKey:@"ACUIAccountSummaryValue"];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)_enabledDataclassesTextForAccount:(id)account
{
  v60[18] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v51 = MEMORY[0x277D82BE0](&stru_2850054A0);
  enabledDataclasses = [location[0] enabledDataclasses];
  if ([enabledDataclasses count])
  {
    array = [MEMORY[0x277CBEB18] array];
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
        if ([enabledDataclasses containsObject:v46])
        {
          if ([v46 isEqualToString:*MEMORY[0x277CB89F0]])
          {
            v42 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.news" fetchingPlaceholder:0 error:0];
            v40 = 0;
            LOBYTE(v28) = 0;
            if (v42)
            {
              applicationState = [v42 applicationState];
              v40 = 1;
              v28 = [applicationState isRestricted] ^ 1;
            }

            v43 = v28 & 1;
            if (v40)
            {
              MEMORY[0x277D82BD8](applicationState);
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
            currentDevice = [MEMORY[0x277D75418] currentDevice];
            userInterfaceIdiom = [currentDevice userInterfaceIdiom];
            MEMORY[0x277D82BD8](currentDevice);
            v54 = userInterfaceIdiom;
            v27 = 1;
            if (userInterfaceIdiom != 1)
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
            accountType = [location[0] accountType];
            supportedDataclasses = [accountType supportedDataclasses];
            v24 = [supportedDataclasses count];
            MEMORY[0x277D82BD8](supportedDataclasses);
            MEMORY[0x277D82BD8](accountType);
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
          v20 = array;
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
    if ([array count])
    {
      if ([array count] <= 5)
      {
        v9 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:array];
        v10 = v51;
        v51 = v9;
        MEMORY[0x277D82BD8](v10);
      }

      else
      {
        v39 = [array count] - 3;
        v56 = 0;
        v55 = 3;
        v57 = 0;
        v58 = 3;
        v37[1] = 0;
        v37[2] = 3;
        v13 = [array subarrayWithRange:{0, 3}];
        v38 = [v13 mutableCopy];
        MEMORY[0x277D82BD8](v13);
        _numberFormatter = [selfCopy _numberFormatter];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v39];
        v37[0] = [_numberFormatter stringFromNumber:?];
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](_numberFormatter);
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
    objc_storeStrong(&array, 0);
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
  objc_storeStrong(&enabledDataclasses, 0);
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