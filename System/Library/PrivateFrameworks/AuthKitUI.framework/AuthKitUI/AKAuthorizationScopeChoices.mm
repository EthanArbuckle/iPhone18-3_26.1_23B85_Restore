@interface AKAuthorizationScopeChoices
+ (NSString)localizedFamilyNameLabel;
+ (NSString)localizedGivenNameLabel;
+ (id)obfuscatedEmail:(id)email;
- (AKAuthorizationScopeChoices)initWithScopes:(id)scopes userInformation:(id)information;
- (AKAuthorizationUserResponse)userResponse;
- (NSString)chosenEmail;
- (NSString)localizedChosenEmail;
- (NSString)localizedName;
- (id)_personNameComponents;
- (id)_userSelection;
- (id)description;
- (id)emailAtIndex:(unint64_t)index;
- (unint64_t)personNameComponentsOrder;
- (void)setGivenName:(id)name familyName:(id)familyName;
@end

@implementation AKAuthorizationScopeChoices

- (AKAuthorizationScopeChoices)initWithScopes:(id)scopes userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scopes);
  v17 = 0;
  objc_storeStrong(&v17, information);
  v4 = selfCopy;
  selfCopy = 0;
  v16.receiver = v4;
  v16.super_class = AKAuthorizationScopeChoices;
  selfCopy = [(AKAuthorizationScopeChoices *)&v16 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = [location[0] copy];
    scopes = selfCopy->_scopes;
    selfCopy->_scopes = v5;
    *&v7 = MEMORY[0x277D82BD8](scopes).n128_u64[0];
    v8 = [v17 copy];
    userInformation = selfCopy->_userInformation;
    selfCopy->_userInformation = v8;
    *&v10 = MEMORY[0x277D82BD8](userInformation).n128_u64[0];
    selfCopy->_indexOfChosenEmail = 0x7FFFFFFFFFFFFFFFLL;
    selfCopy->_indexOfChosenLogin = 0x7FFFFFFFFFFFFFFFLL;
    reachableEmails = [(AKUserInformation *)selfCopy->_userInformation reachableEmails];
    v11 = [reachableEmails count];
    selfCopy->_emailCount = v11;
    MEMORY[0x277D82BD8](reachableEmails);
  }

  v13 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (void)setGivenName:(id)name familyName:(id)familyName
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v10 = 0;
  objc_storeStrong(&v10, familyName);
  v6 = location[0];
  userInformation = [(AKAuthorizationScopeChoices *)selfCopy userInformation];
  [(AKUserInformation *)userInformation setGivenName:v6];
  *&v4 = MEMORY[0x277D82BD8](userInformation).n128_u64[0];
  v8 = v10;
  userInformation2 = [(AKAuthorizationScopeChoices *)selfCopy userInformation];
  [(AKUserInformation *)userInformation2 setFamilyName:v8];
  MEMORY[0x277D82BD8](userInformation2);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (NSString)chosenEmail
{
  selfCopy = self;
  location[1] = a2;
  userInformation = [(AKAuthorizationScopeChoices *)self userInformation];
  isManagedAppleID = [(AKUserInformation *)userInformation isManagedAppleID];
  *&v2 = MEMORY[0x277D82BD8](userInformation).n128_u64[0];
  if (isManagedAppleID)
  {
    userInformation2 = [(AKAuthorizationScopeChoices *)selfCopy userInformation];
    location[0] = [(AKUserInformation *)userInformation2 sharedEmailForManagedAppleID];
    MEMORY[0x277D82BD8](userInformation2);
    if (!location[0])
    {
      objc_storeStrong(location, &stru_28358EF68);
    }

    v11 = MEMORY[0x277D82BE0](location[0]);
    objc_storeStrong(location, 0);
  }

  else if ([(AKAuthorizationScopeChoices *)selfCopy indexOfChosenEmail]== 0x7FFFFFFFFFFFFFFFLL || (v5 = [(AKAuthorizationScopeChoices *)selfCopy indexOfChosenEmail], v5 >= [(AKAuthorizationScopeChoices *)selfCopy emailCount]))
  {
    v11 = MEMORY[0x277D82BE0](&stru_28358EF68);
  }

  else
  {
    v11 = [(AKAuthorizationScopeChoices *)selfCopy emailAtIndex:[(AKAuthorizationScopeChoices *)selfCopy indexOfChosenEmail]];
  }

  v3 = v11;

  return v3;
}

- (AKAuthorizationUserResponse)userResponse
{
  selfCopy = self;
  v15[1] = a2;
  v15[0] = objc_alloc_init(MEMORY[0x277CF01C8]);
  loginChoice = [(AKAuthorizationScopeChoices *)selfCopy loginChoice];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass() & 1;
  *&v2 = MEMORY[0x277D82BD8](loginChoice).n128_u64[0];
  if (v13 == 1)
  {
    [v15[0] setUserSelection:{0, v2}];
  }

  else
  {
    _userSelection = [(AKAuthorizationScopeChoices *)selfCopy _userSelection];
    [v15[0] setUserSelection:_userSelection];
    objc_storeStrong(&_userSelection, 0);
  }

  indexOfChosenLogin = [(AKAuthorizationScopeChoices *)selfCopy indexOfChosenLogin];
  v8 = [v7 numberWithUnsignedInteger:indexOfChosenLogin];
  [v15[0] setLoginChoiceIndex:?];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  loginChoice2 = [(AKAuthorizationScopeChoices *)selfCopy loginChoice];
  [v15[0] setLoginChoice:?];
  *&v5 = MEMORY[0x277D82BD8](loginChoice2).n128_u64[0];
  selectedRequest = [(AKAuthorizationScopeChoices *)selfCopy selectedRequest];
  [v15[0] setSelectedRequest:?];
  MEMORY[0x277D82BD8](selectedRequest);
  v11 = MEMORY[0x277D82BE0](v15[0]);
  objc_storeStrong(v15, 0);

  return v11;
}

- (id)_userSelection
{
  selfCopy = self;
  v36[1] = a2;
  v36[0] = objc_alloc_init(MEMORY[0x277CF01B8]);
  v35 = objc_alloc_init(MEMORY[0x277CF02F8]);
  selectedRequest = [(AKAuthorizationScopeChoices *)selfCopy selectedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  *&v2 = MEMORY[0x277D82BD8](selectedRequest).n128_u64[0];
  if (isKindOfClass)
  {
    selectedRequest2 = [(AKAuthorizationScopeChoices *)selfCopy selectedRequest];
    requestedScopes = [selectedRequest2 requestedScopes];
    v21 = [requestedScopes containsObject:*MEMORY[0x277CEFFE0]];
    *&v3 = MEMORY[0x277D82BD8](requestedScopes).n128_u64[0];
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
      if ([(AKAuthorizationScopeChoices *)selfCopy wantsPrivateEmail])
      {
        forwardingEmail = [(AKAuthorizationScopeChoices *)selfCopy forwardingEmail];
        v29 = 1;
        v17 = forwardingEmail;
      }

      else
      {
        chosenEmail = [(AKAuthorizationScopeChoices *)selfCopy chosenEmail];
        v27 = 1;
        v17 = chosenEmail;
      }

      [v35 setSelectedEmail:v17];
      if (v27)
      {
        MEMORY[0x277D82BD8](chosenEmail);
      }

      if (v29)
      {
        MEMORY[0x277D82BD8](forwardingEmail);
      }

      wantsPrivateEmail = [(AKAuthorizationScopeChoices *)selfCopy wantsPrivateEmail];
      [v36[0] setMakePrivateEmail:wantsPrivateEmail];
    }

    requestedScopes2 = [selectedRequest2 requestedScopes];
    v16 = [requestedScopes2 containsObject:*MEMORY[0x277CEFFE8]];
    v5 = MEMORY[0x277D82BD8](requestedScopes2).n128_u64[0];
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
      userInformation = [(AKAuthorizationScopeChoices *)selfCopy userInformation];
      givenName = [(AKUserInformation *)userInformation givenName];
      [v35 setGivenName:?];
      MEMORY[0x277D82BD8](givenName);
      *&v6 = MEMORY[0x277D82BD8](userInformation).n128_u64[0];
      userInformation2 = [(AKAuthorizationScopeChoices *)selfCopy userInformation];
      familyName = [(AKUserInformation *)userInformation2 familyName];
      [v35 setFamilyName:?];
      MEMORY[0x277D82BD8](familyName);
      v5 = MEMORY[0x277D82BD8](userInformation2).n128_u64[0];
    }

    [v36[0] setUserInformation:{v35, *&v5}];
    objc_storeStrong(&selectedRequest2, 0);
  }

  v8 = MEMORY[0x277D82BE0](v36[0]);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(v36, 0);

  return v8;
}

- (id)emailAtIndex:(unint64_t)index
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v10 = a2;
  indexCopy = index;
  if (index < [(AKAuthorizationScopeChoices *)self emailCount])
  {
    reachableEmails = [(AKUserInformation *)selfCopy->_userInformation reachableEmails];
    v12 = [reachableEmails objectAtIndexedSubscript:indexCopy];
    MEMORY[0x277D82BD8](reachableEmails);
  }

  else
  {
    location = _AKLogSiwa();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:indexCopy];
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AKAuthorizationScopeChoices emailCount](selfCopy, "emailCount")}];
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
  _personNameComponents = [(AKAuthorizationScopeChoices *)self _personNameComponents];
  v5 = [v3 _nameOrderWithOverridesForComponents:? options:?];
  MEMORY[0x277D82BD8](_personNameComponents);
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
  _personNameComponents = [(AKAuthorizationScopeChoices *)self _personNameComponents];
  v5 = [v3 localizedStringFromPersonNameComponents:? style:? options:?];
  MEMORY[0x277D82BD8](_personNameComponents);

  return v5;
}

- (NSString)localizedChosenEmail
{
  if ([(AKAuthorizationScopeChoices *)self wantsPrivateEmail])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    chosenEmail = [v3 localizedStringForKey:@"AUTHORIZE_PRIVATE_EMAIL_TITLE" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    chosenEmail = [(AKAuthorizationScopeChoices *)self chosenEmail];
  }

  return chosenEmail;
}

- (id)_personNameComponents
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = objc_alloc_init(MEMORY[0x277CCAC00]);
  givenName = [(AKUserInformation *)selfCopy->_userInformation givenName];
  [v7[0] setGivenName:?];
  *&v2 = MEMORY[0x277D82BD8](givenName).n128_u64[0];
  familyName = [(AKUserInformation *)selfCopy->_userInformation familyName];
  [v7[0] setFamilyName:?];
  MEMORY[0x277D82BD8](familyName);
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

+ (id)obfuscatedEmail:(id)email
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, email);
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
    v7 = [selfCopy _dotsWithLength:v8];
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
  scopes = [(AKAuthorizationScopeChoices *)self scopes];
  userInformation = [(AKAuthorizationScopeChoices *)self userInformation];
  indexOfChosenEmail = [(AKAuthorizationScopeChoices *)self indexOfChosenEmail];
  indexOfChosenLogin = [(AKAuthorizationScopeChoices *)self indexOfChosenLogin];
  wantsPrivateEmail = [(AKAuthorizationScopeChoices *)self wantsPrivateEmail];
  v3 = @"YES";
  if (!wantsPrivateEmail)
  {
    v3 = @"NO";
  }

  v7 = v3;
  emailCount = [(AKAuthorizationScopeChoices *)self emailCount];
  chosenEmail = [(AKAuthorizationScopeChoices *)self chosenEmail];
  forwardingEmail = [(AKAuthorizationScopeChoices *)self forwardingEmail];
  userResponse = [(AKAuthorizationScopeChoices *)self userResponse];
  v15 = [v9 stringWithFormat:@"Scope Choices:\n    scopes: %@\n    userinformation: %@\n    indexOfChosenEmail: %lu\n    indexOfChosenLogin: %lu\n    wantsPrivateEmail: %@\n    emailCount: %lu\n    chosenEmail: %@\n    forwardingEmail: %@\n    userResponse: %@", scopes, userInformation, indexOfChosenEmail, indexOfChosenLogin, v7, emailCount, chosenEmail, forwardingEmail, userResponse];
  MEMORY[0x277D82BD8](userResponse);
  MEMORY[0x277D82BD8](forwardingEmail);
  MEMORY[0x277D82BD8](chosenEmail);
  MEMORY[0x277D82BD8](userInformation);
  MEMORY[0x277D82BD8](scopes);

  return v15;
}

@end