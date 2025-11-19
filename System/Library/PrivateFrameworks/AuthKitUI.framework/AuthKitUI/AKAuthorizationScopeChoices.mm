@interface AKAuthorizationScopeChoices
+ (NSString)localizedFamilyNameLabel;
+ (NSString)localizedGivenNameLabel;
+ (id)obfuscatedEmail:(id)a3;
- (AKAuthorizationScopeChoices)initWithScopes:(id)a3 userInformation:(id)a4;
- (AKAuthorizationUserResponse)userResponse;
- (NSString)chosenEmail;
- (NSString)localizedChosenEmail;
- (NSString)localizedName;
- (id)_personNameComponents;
- (id)_userSelection;
- (id)description;
- (id)emailAtIndex:(unint64_t)a3;
- (unint64_t)personNameComponentsOrder;
- (void)setGivenName:(id)a3 familyName:(id)a4;
@end

@implementation AKAuthorizationScopeChoices

- (AKAuthorizationScopeChoices)initWithScopes:(id)a3 userInformation:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v4 = v19;
  v19 = 0;
  v16.receiver = v4;
  v16.super_class = AKAuthorizationScopeChoices;
  v19 = [(AKAuthorizationScopeChoices *)&v16 init];
  objc_storeStrong(&v19, v19);
  if (v19)
  {
    v5 = [location[0] copy];
    scopes = v19->_scopes;
    v19->_scopes = v5;
    *&v7 = MEMORY[0x277D82BD8](scopes).n128_u64[0];
    v8 = [v17 copy];
    userInformation = v19->_userInformation;
    v19->_userInformation = v8;
    *&v10 = MEMORY[0x277D82BD8](userInformation).n128_u64[0];
    v19->_indexOfChosenEmail = 0x7FFFFFFFFFFFFFFFLL;
    v19->_indexOfChosenLogin = 0x7FFFFFFFFFFFFFFFLL;
    v14 = [(AKUserInformation *)v19->_userInformation reachableEmails];
    v11 = [v14 count];
    v19->_emailCount = v11;
    MEMORY[0x277D82BD8](v14);
  }

  v13 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v13;
}

- (void)setGivenName:(id)a3 familyName:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v6 = location[0];
  v7 = [(AKAuthorizationScopeChoices *)v12 userInformation];
  [(AKUserInformation *)v7 setGivenName:v6];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = v10;
  v9 = [(AKAuthorizationScopeChoices *)v12 userInformation];
  [(AKUserInformation *)v9 setFamilyName:v8];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (NSString)chosenEmail
{
  v10 = self;
  location[1] = a2;
  v7 = [(AKAuthorizationScopeChoices *)self userInformation];
  v8 = [(AKUserInformation *)v7 isManagedAppleID];
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(AKAuthorizationScopeChoices *)v10 userInformation];
    location[0] = [(AKUserInformation *)v6 sharedEmailForManagedAppleID];
    MEMORY[0x277D82BD8](v6);
    if (!location[0])
    {
      objc_storeStrong(location, &stru_28358EF68);
    }

    v11 = MEMORY[0x277D82BE0](location[0]);
    objc_storeStrong(location, 0);
  }

  else if ([(AKAuthorizationScopeChoices *)v10 indexOfChosenEmail]== 0x7FFFFFFFFFFFFFFFLL || (v5 = [(AKAuthorizationScopeChoices *)v10 indexOfChosenEmail], v5 >= [(AKAuthorizationScopeChoices *)v10 emailCount]))
  {
    v11 = MEMORY[0x277D82BE0](&stru_28358EF68);
  }

  else
  {
    v11 = [(AKAuthorizationScopeChoices *)v10 emailAtIndex:[(AKAuthorizationScopeChoices *)v10 indexOfChosenEmail]];
  }

  v3 = v11;

  return v3;
}

- (AKAuthorizationUserResponse)userResponse
{
  v16 = self;
  v15[1] = a2;
  v15[0] = objc_alloc_init(MEMORY[0x277CF01C8]);
  v12 = [(AKAuthorizationScopeChoices *)v16 loginChoice];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass() & 1;
  *&v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (v13 == 1)
  {
    [v15[0] setUserSelection:{0, v2}];
  }

  else
  {
    v14 = [(AKAuthorizationScopeChoices *)v16 _userSelection];
    [v15[0] setUserSelection:v14];
    objc_storeStrong(&v14, 0);
  }

  v3 = [(AKAuthorizationScopeChoices *)v16 indexOfChosenLogin];
  v8 = [v7 numberWithUnsignedInteger:v3];
  [v15[0] setLoginChoiceIndex:?];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = [(AKAuthorizationScopeChoices *)v16 loginChoice];
  [v15[0] setLoginChoice:?];
  *&v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = [(AKAuthorizationScopeChoices *)v16 selectedRequest];
  [v15[0] setSelectedRequest:?];
  MEMORY[0x277D82BD8](v10);
  v11 = MEMORY[0x277D82BE0](v15[0]);
  objc_storeStrong(v15, 0);

  return v11;
}

- (id)_userSelection
{
  v37 = self;
  v36[1] = a2;
  v36[0] = objc_alloc_init(MEMORY[0x277CF01B8]);
  v35 = objc_alloc_init(MEMORY[0x277CF02F8]);
  v22 = [(AKAuthorizationScopeChoices *)v37 selectedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  *&v2 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  if (isKindOfClass)
  {
    v34 = [(AKAuthorizationScopeChoices *)v37 selectedRequest];
    v20 = [v34 requestedScopes];
    v21 = [v20 containsObject:*MEMORY[0x277CEFFE0]];
    *&v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
    if (v21)
    {
      location = _AKLogSiwa();
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        log = location;
        type = v32;
        __os_log_helper_16_0_0(v31);
        _os_log_impl(&dword_222379000, log, type, "Selected request contains email scope.", v31, 2u);
      }

      objc_storeStrong(&location, 0);
      v29 = 0;
      v27 = 0;
      if ([(AKAuthorizationScopeChoices *)v37 wantsPrivateEmail])
      {
        v30 = [(AKAuthorizationScopeChoices *)v37 forwardingEmail];
        v29 = 1;
        v17 = v30;
      }

      else
      {
        v28 = [(AKAuthorizationScopeChoices *)v37 chosenEmail];
        v27 = 1;
        v17 = v28;
      }

      [v35 setSelectedEmail:v17];
      if (v27)
      {
        MEMORY[0x277D82BD8](v28);
      }

      if (v29)
      {
        MEMORY[0x277D82BD8](v30);
      }

      v4 = [(AKAuthorizationScopeChoices *)v37 wantsPrivateEmail];
      [v36[0] setMakePrivateEmail:v4];
    }

    v15 = [v34 requestedScopes];
    v16 = [v15 containsObject:*MEMORY[0x277CEFFE8]];
    v5 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    if (v16)
    {
      v26 = _AKLogSiwa();
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v26;
        v14 = v25;
        __os_log_helper_16_0_0(v24);
        _os_log_impl(&dword_222379000, v13, v14, "Selected request contains name scope.", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      v10 = [(AKAuthorizationScopeChoices *)v37 userInformation];
      v9 = [(AKUserInformation *)v10 givenName];
      [v35 setGivenName:?];
      MEMORY[0x277D82BD8](v9);
      *&v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
      v12 = [(AKAuthorizationScopeChoices *)v37 userInformation];
      v11 = [(AKUserInformation *)v12 familyName];
      [v35 setFamilyName:?];
      MEMORY[0x277D82BD8](v11);
      v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    }

    [v36[0] setUserInformation:{v35, *&v5}];
    objc_storeStrong(&v34, 0);
  }

  v8 = MEMORY[0x277D82BE0](v36[0]);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(v36, 0);

  return v8;
}

- (id)emailAtIndex:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = self;
  v10 = a2;
  v9 = a3;
  if (a3 < [(AKAuthorizationScopeChoices *)self emailCount])
  {
    v5 = [(AKUserInformation *)v11->_userInformation reachableEmails];
    v12 = [v5 objectAtIndexedSubscript:v9];
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    location = _AKLogSiwa();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AKAuthorizationScopeChoices emailCount](v11, "emailCount")}];
      __os_log_helper_16_2_2_8_64_8_64(v13, v7, v6);
      _os_log_error_impl(&dword_222379000, location, OS_LOG_TYPE_ERROR, "index %@ beyond email address count %@", v13, 0x16u);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
    }

    objc_storeStrong(&location, 0);
    v12 = MEMORY[0x277D82BE0](&stru_28358EF68);
  }

  *MEMORY[0x277D85DE8];
  v3 = v12;

  return v3;
}

- (unint64_t)personNameComponentsOrder
{
  v3 = MEMORY[0x277CCAC08];
  v4 = [(AKAuthorizationScopeChoices *)self _personNameComponents];
  v5 = [v3 _nameOrderWithOverridesForComponents:? options:?];
  MEMORY[0x277D82BD8](v4);
  if (v5 <= 1)
  {
    return 0;
  }

  if (v5 == 2)
  {
    return 1;
  }

  return v6;
}

- (NSString)localizedName
{
  v3 = MEMORY[0x277CCAC08];
  v4 = [(AKAuthorizationScopeChoices *)self _personNameComponents];
  v5 = [v3 localizedStringFromPersonNameComponents:? style:? options:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (NSString)localizedChosenEmail
{
  if ([(AKAuthorizationScopeChoices *)self wantsPrivateEmail])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v3 localizedStringForKey:@"AUTHORIZE_PRIVATE_EMAIL_TITLE" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    v5 = [(AKAuthorizationScopeChoices *)self chosenEmail];
  }

  return v5;
}

- (id)_personNameComponents
{
  v8 = self;
  v7[1] = a2;
  v7[0] = objc_alloc_init(MEMORY[0x277CCAC00]);
  v4 = [(AKUserInformation *)v8->_userInformation givenName];
  [v7[0] setGivenName:?];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v5 = [(AKUserInformation *)v8->_userInformation familyName];
  [v7[0] setFamilyName:?];
  MEMORY[0x277D82BD8](v5);
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

+ (NSString)localizedGivenNameLabel
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"AUTHORIZE_GIVEN_NAME" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

+ (NSString)localizedFamilyNameLabel
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"AUTHORIZE_FAMILY_NAME" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

+ (id)obfuscatedEmail:(id)a3
{
  v15 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [location[0] rangeOfString:@"@"];
  v12 = v3;
  v13 = v11;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL && v13)
  {
    if (v13 > 2)
    {
      v8 = v13 - 2;
    }

    else
    {
      v8 = 1;
    }

    v9[3] = v8;
    v18 = v13 - v8;
    v17 = v8;
    v19 = v13 - v8;
    v20 = v8;
    v9[1] = (v13 - v8);
    v9[2] = v8;
    v6 = location[0];
    v7 = [v15 _dotsWithLength:v8];
    v9[0] = [v6 stringByReplacingCharactersInRange:v13 - v8 withString:v8];
    MEMORY[0x277D82BD8](v7);
    v16 = MEMORY[0x277D82BE0](v9[0]);
    v10 = 1;
    objc_storeStrong(v9, 0);
  }

  else
  {
    v16 = MEMORY[0x277D82BE0](location[0]);
    v10 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = v16;

  return v4;
}

- (id)description
{
  v9 = MEMORY[0x277CCACA8];
  v14 = [(AKAuthorizationScopeChoices *)self scopes];
  v13 = [(AKAuthorizationScopeChoices *)self userInformation];
  v5 = [(AKAuthorizationScopeChoices *)self indexOfChosenEmail];
  v6 = [(AKAuthorizationScopeChoices *)self indexOfChosenLogin];
  v2 = [(AKAuthorizationScopeChoices *)self wantsPrivateEmail];
  v3 = @"YES";
  if (!v2)
  {
    v3 = @"NO";
  }

  v7 = v3;
  v8 = [(AKAuthorizationScopeChoices *)self emailCount];
  v12 = [(AKAuthorizationScopeChoices *)self chosenEmail];
  v11 = [(AKAuthorizationScopeChoices *)self forwardingEmail];
  v10 = [(AKAuthorizationScopeChoices *)self userResponse];
  v15 = [v9 stringWithFormat:@"Scope Choices:\n    scopes: %@\n    userinformation: %@\n    indexOfChosenEmail: %lu\n    indexOfChosenLogin: %lu\n    wantsPrivateEmail: %@\n    emailCount: %lu\n    chosenEmail: %@\n    forwardingEmail: %@\n    userResponse: %@", v14, v13, v5, v6, v7, v8, v12, v11, v10];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  return v15;
}

@end