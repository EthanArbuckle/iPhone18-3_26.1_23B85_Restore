@interface AKAppleIDUserInformationResponse
- (AKAppleIDUserInformationResponse)initWithResponseBody:(id)a3;
- (NSArray)allAccountNames;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation AKAppleIDUserInformationResponse

- (AKAppleIDUserInformationResponse)initWithResponseBody:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = AKAppleIDUserInformationResponse;
  v11 = [(AKAppleIDUserInformationResponse *)&v9 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    v4 = [AKUserInformation alloc];
    v5 = [v4 initWithResponseBody:location[0]];
    userInformationRepresentation = v11->_userInformationRepresentation;
    v11->_userInformationRepresentation = v5;
    _objc_release(userInformationRepresentation);
  }

  v8 = _objc_retain(v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v8;
}

- (NSArray)allAccountNames
{
  v17 = self;
  v16[1] = a2;
  if (!self->_allAccountNames)
  {
    v16[0] = +[NSMutableArray array];
    v10 = [(AKUserInformation *)v17->_userInformationRepresentation primaryEmailAddress];
    v14 = 0;
    v12 = 0;
    v11 = 0;
    if (v10)
    {
      v15 = [(AKUserInformation *)v17->_userInformationRepresentation vettedPrimaryEmail];
      v14 = 1;
      v11 = 0;
      if ([v15 BOOLValue])
      {
        v13 = [(AKUserInformation *)v17->_userInformationRepresentation phoneAsAppleID];
        v12 = 1;
        v11 = [v13 BOOLValue] == 0;
      }
    }

    if (v12)
    {
      _objc_release(v13);
    }

    if (v14)
    {
      _objc_release(v15);
    }

    _objc_release(v10);
    if (v11)
    {
      v9 = [(AKUserInformation *)v17->_userInformationRepresentation primaryEmailAddress];
      [v16[0] addObject:?];
      _objc_release(v9);
    }

    v8 = [(AKUserInformation *)v17->_userInformationRepresentation accountAliases];
    _objc_release(v8);
    if (v8)
    {
      v7 = [(AKUserInformation *)v17->_userInformationRepresentation accountAliases];
      [v16[0] addObjectsFromArray:?];
      _objc_release(v7);
    }

    v2 = [v16[0] copy];
    allAccountNames = v17->_allAccountNames;
    v17->_allAccountNames = v2;
    _objc_release(allAccountNames);
    objc_storeStrong(location, 0);
  }

  v4 = v17->_allAccountNames;

  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v35 = self;
  v34[1] = a2;
  v34[0] = objc_alloc_init(NSMutableDictionary);
  if ([(AKUserInformation *)v35->_userInformationRepresentation appleIDSecurityLevel])
  {
    v33 = [NSNumber numberWithUnsignedInteger:[(AKUserInformation *)v35->_userInformationRepresentation appleIDSecurityLevel]];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v33);
  }

  if ([(AKUserInformation *)v35->_userInformationRepresentation authMode])
  {
    v32 = [NSNumber numberWithUnsignedInteger:[(AKUserInformation *)v35->_userInformationRepresentation authMode]];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v32);
  }

  v29 = [(AKUserInformation *)v35->_userInformationRepresentation isUnderage];
  [v34[0] setObject:? forKeyedSubscript:?];
  _objc_release(v29);
  v30 = [(AKUserInformation *)v35->_userInformationRepresentation isLegacyStudent];
  [v34[0] setObject:? forKeyedSubscript:?];
  _objc_release(v30);
  v31 = [(AKUserInformation *)v35->_userInformationRepresentation masterKeyID];
  _objc_release(v31);
  if (v31)
  {
    v28 = [(AKUserInformation *)v35->_userInformationRepresentation masterKeyID];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v28);
  }

  if ([(AKUserInformation *)v35->_userInformationRepresentation repairState])
  {
    v27 = [NSNumber numberWithUnsignedInteger:[(AKUserInformation *)v35->_userInformationRepresentation repairState]];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v27);
  }

  v26 = [(AKUserInformation *)v35->_userInformationRepresentation vettedPrimaryEmail];
  _objc_release(v26);
  if (v26)
  {
    v25 = [(AKUserInformation *)v35->_userInformationRepresentation vettedPrimaryEmail];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v25);
  }

  v24 = [(AKUserInformation *)v35->_userInformationRepresentation forwardingEmail];
  _objc_release(v24);
  if (v24)
  {
    v23 = [(AKUserInformation *)v35->_userInformationRepresentation forwardingEmail];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v23);
  }

  v22 = [(AKUserInformation *)v35->_userInformationRepresentation reachableEmails];
  _objc_release(v22);
  if (v22)
  {
    v21 = [(AKUserInformation *)v35->_userInformationRepresentation reachableEmails];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v21);
  }

  v20 = [(AKUserInformation *)v35->_userInformationRepresentation familyName];
  _objc_release(v20);
  if (v20)
  {
    v19 = [(AKUserInformation *)v35->_userInformationRepresentation familyName];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v19);
  }

  v18 = [(AKUserInformation *)v35->_userInformationRepresentation givenName];
  _objc_release(v18);
  if (v18)
  {
    v17 = [(AKUserInformation *)v35->_userInformationRepresentation givenName];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v17);
  }

  v16 = [(AKUserInformation *)v35->_userInformationRepresentation previouslySelectedEmail];
  _objc_release(v16);
  if (v16)
  {
    v15 = [(AKUserInformation *)v35->_userInformationRepresentation previouslySelectedEmail];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v15);
  }

  v14 = [(AKUserInformation *)v35->_userInformationRepresentation hasSOSActiveDevice];
  _objc_release(v14);
  if (v14)
  {
    v13 = [(AKUserInformation *)v35->_userInformationRepresentation hasSOSActiveDevice];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v13);
  }

  v12 = [(AKUserInformation *)v35->_userInformationRepresentation SOSNeeded];
  _objc_release(v12);
  if (v12)
  {
    v11 = [(AKUserInformation *)v35->_userInformationRepresentation SOSNeeded];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v11);
  }

  v10 = [(AKUserInformation *)v35->_userInformationRepresentation hasModernRecoveryKey];
  _objc_release(v10);
  if (v10)
  {
    v9 = [(AKUserInformation *)v35->_userInformationRepresentation hasModernRecoveryKey];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v9);
  }

  v8 = [(AKUserInformation *)v35->_userInformationRepresentation thirdPartyRegulatoryOverride];
  _objc_release(v8);
  if (v8)
  {
    v7 = [(AKUserInformation *)v35->_userInformationRepresentation thirdPartyRegulatoryOverride];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v7);
  }

  v3 = [(AKUserInformation *)v35->_userInformationRepresentation previouslyWantedPrivateEmail];
  [v34[0] setObject:? forKeyedSubscript:?];
  _objc_release(v3);
  v4 = [(AKUserInformation *)v35->_userInformationRepresentation additionalInfo];
  [v34[0] setObject:? forKeyedSubscript:?];
  _objc_release(v4);
  v5 = [(AKUserInformation *)v35->_userInformationRepresentation adpCohort];
  [v34[0] setObject:? forKeyedSubscript:?];
  _objc_release(v5);
  v6 = [v34[0] copy];
  objc_storeStrong(v34, 0);

  return v6;
}

@end