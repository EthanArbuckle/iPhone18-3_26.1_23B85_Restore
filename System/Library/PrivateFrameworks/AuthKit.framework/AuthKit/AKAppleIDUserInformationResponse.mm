@interface AKAppleIDUserInformationResponse
- (AKAppleIDUserInformationResponse)initWithResponseBody:(id)body;
- (NSArray)allAccountNames;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation AKAppleIDUserInformationResponse

- (AKAppleIDUserInformationResponse)initWithResponseBody:(id)body
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, body);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKAppleIDUserInformationResponse;
  selfCopy = [(AKAppleIDUserInformationResponse *)&v9 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [AKUserInformation alloc];
    v5 = [v4 initWithResponseBody:location[0]];
    userInformationRepresentation = selfCopy->_userInformationRepresentation;
    selfCopy->_userInformationRepresentation = v5;
    _objc_release(userInformationRepresentation);
  }

  v8 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (NSArray)allAccountNames
{
  selfCopy = self;
  v16[1] = a2;
  if (!self->_allAccountNames)
  {
    v16[0] = +[NSMutableArray array];
    primaryEmailAddress = [(AKUserInformation *)selfCopy->_userInformationRepresentation primaryEmailAddress];
    v14 = 0;
    v12 = 0;
    v11 = 0;
    if (primaryEmailAddress)
    {
      vettedPrimaryEmail = [(AKUserInformation *)selfCopy->_userInformationRepresentation vettedPrimaryEmail];
      v14 = 1;
      v11 = 0;
      if ([vettedPrimaryEmail BOOLValue])
      {
        phoneAsAppleID = [(AKUserInformation *)selfCopy->_userInformationRepresentation phoneAsAppleID];
        v12 = 1;
        v11 = [phoneAsAppleID BOOLValue] == 0;
      }
    }

    if (v12)
    {
      _objc_release(phoneAsAppleID);
    }

    if (v14)
    {
      _objc_release(vettedPrimaryEmail);
    }

    _objc_release(primaryEmailAddress);
    if (v11)
    {
      primaryEmailAddress2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation primaryEmailAddress];
      [v16[0] addObject:?];
      _objc_release(primaryEmailAddress2);
    }

    accountAliases = [(AKUserInformation *)selfCopy->_userInformationRepresentation accountAliases];
    _objc_release(accountAliases);
    if (accountAliases)
    {
      accountAliases2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation accountAliases];
      [v16[0] addObjectsFromArray:?];
      _objc_release(accountAliases2);
    }

    v2 = [v16[0] copy];
    allAccountNames = selfCopy->_allAccountNames;
    selfCopy->_allAccountNames = v2;
    _objc_release(allAccountNames);
    objc_storeStrong(location, 0);
  }

  v4 = selfCopy->_allAccountNames;

  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  selfCopy = self;
  v34[1] = a2;
  v34[0] = objc_alloc_init(NSMutableDictionary);
  if ([(AKUserInformation *)selfCopy->_userInformationRepresentation appleIDSecurityLevel])
  {
    v33 = [NSNumber numberWithUnsignedInteger:[(AKUserInformation *)selfCopy->_userInformationRepresentation appleIDSecurityLevel]];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v33);
  }

  if ([(AKUserInformation *)selfCopy->_userInformationRepresentation authMode])
  {
    v32 = [NSNumber numberWithUnsignedInteger:[(AKUserInformation *)selfCopy->_userInformationRepresentation authMode]];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v32);
  }

  isUnderage = [(AKUserInformation *)selfCopy->_userInformationRepresentation isUnderage];
  [v34[0] setObject:? forKeyedSubscript:?];
  _objc_release(isUnderage);
  isLegacyStudent = [(AKUserInformation *)selfCopy->_userInformationRepresentation isLegacyStudent];
  [v34[0] setObject:? forKeyedSubscript:?];
  _objc_release(isLegacyStudent);
  masterKeyID = [(AKUserInformation *)selfCopy->_userInformationRepresentation masterKeyID];
  _objc_release(masterKeyID);
  if (masterKeyID)
  {
    masterKeyID2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation masterKeyID];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(masterKeyID2);
  }

  if ([(AKUserInformation *)selfCopy->_userInformationRepresentation repairState])
  {
    v27 = [NSNumber numberWithUnsignedInteger:[(AKUserInformation *)selfCopy->_userInformationRepresentation repairState]];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(v27);
  }

  vettedPrimaryEmail = [(AKUserInformation *)selfCopy->_userInformationRepresentation vettedPrimaryEmail];
  _objc_release(vettedPrimaryEmail);
  if (vettedPrimaryEmail)
  {
    vettedPrimaryEmail2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation vettedPrimaryEmail];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(vettedPrimaryEmail2);
  }

  forwardingEmail = [(AKUserInformation *)selfCopy->_userInformationRepresentation forwardingEmail];
  _objc_release(forwardingEmail);
  if (forwardingEmail)
  {
    forwardingEmail2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation forwardingEmail];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(forwardingEmail2);
  }

  reachableEmails = [(AKUserInformation *)selfCopy->_userInformationRepresentation reachableEmails];
  _objc_release(reachableEmails);
  if (reachableEmails)
  {
    reachableEmails2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation reachableEmails];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(reachableEmails2);
  }

  familyName = [(AKUserInformation *)selfCopy->_userInformationRepresentation familyName];
  _objc_release(familyName);
  if (familyName)
  {
    familyName2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation familyName];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(familyName2);
  }

  givenName = [(AKUserInformation *)selfCopy->_userInformationRepresentation givenName];
  _objc_release(givenName);
  if (givenName)
  {
    givenName2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation givenName];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(givenName2);
  }

  previouslySelectedEmail = [(AKUserInformation *)selfCopy->_userInformationRepresentation previouslySelectedEmail];
  _objc_release(previouslySelectedEmail);
  if (previouslySelectedEmail)
  {
    previouslySelectedEmail2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation previouslySelectedEmail];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(previouslySelectedEmail2);
  }

  hasSOSActiveDevice = [(AKUserInformation *)selfCopy->_userInformationRepresentation hasSOSActiveDevice];
  _objc_release(hasSOSActiveDevice);
  if (hasSOSActiveDevice)
  {
    hasSOSActiveDevice2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation hasSOSActiveDevice];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(hasSOSActiveDevice2);
  }

  sOSNeeded = [(AKUserInformation *)selfCopy->_userInformationRepresentation SOSNeeded];
  _objc_release(sOSNeeded);
  if (sOSNeeded)
  {
    sOSNeeded2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation SOSNeeded];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(sOSNeeded2);
  }

  hasModernRecoveryKey = [(AKUserInformation *)selfCopy->_userInformationRepresentation hasModernRecoveryKey];
  _objc_release(hasModernRecoveryKey);
  if (hasModernRecoveryKey)
  {
    hasModernRecoveryKey2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation hasModernRecoveryKey];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(hasModernRecoveryKey2);
  }

  thirdPartyRegulatoryOverride = [(AKUserInformation *)selfCopy->_userInformationRepresentation thirdPartyRegulatoryOverride];
  _objc_release(thirdPartyRegulatoryOverride);
  if (thirdPartyRegulatoryOverride)
  {
    thirdPartyRegulatoryOverride2 = [(AKUserInformation *)selfCopy->_userInformationRepresentation thirdPartyRegulatoryOverride];
    [v34[0] setObject:? forKeyedSubscript:?];
    _objc_release(thirdPartyRegulatoryOverride2);
  }

  previouslyWantedPrivateEmail = [(AKUserInformation *)selfCopy->_userInformationRepresentation previouslyWantedPrivateEmail];
  [v34[0] setObject:? forKeyedSubscript:?];
  _objc_release(previouslyWantedPrivateEmail);
  additionalInfo = [(AKUserInformation *)selfCopy->_userInformationRepresentation additionalInfo];
  [v34[0] setObject:? forKeyedSubscript:?];
  _objc_release(additionalInfo);
  adpCohort = [(AKUserInformation *)selfCopy->_userInformationRepresentation adpCohort];
  [v34[0] setObject:? forKeyedSubscript:?];
  _objc_release(adpCohort);
  v6 = [v34[0] copy];
  objc_storeStrong(v34, 0);

  return v6;
}

@end