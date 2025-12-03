@interface ADCommunalDeviceUser
+ (id)saHomeMemberInfo:(id)info;
+ (id)saMultiUserInfo:(id)info;
+ (id)saRemoteDeviceForHomeMember:(id)member;
- (ADCommunalDeviceUser)initWithDictionary:(id)dictionary attribute:(unint64_t)attribute;
- (BOOL)isSiriEnabledOnCompanion;
- (id)dictionaryRepresentation;
- (id)init:(id)init sharedUserId:(id)id loggableSharedUserId:(id)userId iCloudAltDSID:(id)d attribute:(unint64_t)attribute;
- (id)loggableDictionary;
- (id)userProperties;
- (void)setNonCloudSyncedUserAttribute:(BOOL)attribute;
- (void)testAndSetLoggingIsAllowed:(BOOL)allowed;
@end

@implementation ADCommunalDeviceUser

- (id)dictionaryRepresentation
{
  if ((AFIsATV() & 1) != 0 || self->_homeUserUUID && self->_sharedUserID && self->_loggableSharedUserID)
  {
    v3 = [NSMutableDictionary alloc];
    sharedUserID = [(ADCommunalDeviceUser *)self sharedUserID];
    v5 = sharedUserID;
    v6 = @"empty";
    if (sharedUserID)
    {
      v7 = sharedUserID;
    }

    else
    {
      v7 = @"empty";
    }

    v52 = v7;
    homeUserUUID = [(ADCommunalDeviceUser *)self homeUserUUID];
    v9 = homeUserUUID;
    if (homeUserUUID)
    {
      v10 = homeUserUUID;
    }

    else
    {
      v10 = @"empty";
    }

    v51 = v10;
    enrollmentName = [(ADCommunalDeviceUser *)self enrollmentName];
    v12 = enrollmentName;
    if (enrollmentName)
    {
      v13 = enrollmentName;
    }

    else
    {
      v13 = @"empty";
    }

    v50 = v13;
    loggableSharedUserID = [(ADCommunalDeviceUser *)self loggableSharedUserID];
    v15 = loggableSharedUserID;
    if (loggableSharedUserID)
    {
      v16 = loggableSharedUserID;
    }

    else
    {
      v16 = @"empty";
    }

    iCloudAltDSID = [(ADCommunalDeviceUser *)self iCloudAltDSID];
    v18 = iCloudAltDSID;
    if (iCloudAltDSID)
    {
      v6 = iCloudAltDSID;
    }

    speechID = [(ADCommunalDeviceUser *)self speechID];
    v20 = speechID;
    if (speechID)
    {
      v21 = [v3 initWithObjectsAndKeys:{v52, @"sharedUserId", v51, @"homeUserId", v50, @"enrollmentName", v16, @"loggableSharedUserId", v6, @"iCloudAltDSID", speechID, @"speechIdentifier", 0}];
    }

    else
    {
      v49 = +[NSUUID UUID];
      uUIDString = [v49 UUIDString];
      v23 = v3;
      v24 = uUIDString;
      v21 = [v23 initWithObjectsAndKeys:{v52, @"sharedUserId", v51, @"homeUserId", v50, @"enrollmentName", v16, @"loggableSharedUserId", v6, @"iCloudAltDSID", uUIDString, @"speechIdentifier", 0}];
    }

    if (self->_companionPeerToPeerHandoffCapable)
    {
      stringValue = [&__kCFBooleanTrue stringValue];
      [v21 setObject:stringValue forKey:@"companionPeerToPeerHandoffCapable"];
    }

    if (self->_companionAssistantID)
    {
      companionAssistantID = [(ADCommunalDeviceUser *)self companionAssistantID];
      [v21 setObject:companionAssistantID forKey:@"companionAssistantId"];
    }

    if (self->_companionSpeechID)
    {
      companionSpeechID = [(ADCommunalDeviceUser *)self companionSpeechID];
      [v21 setObject:companionSpeechID forKey:@"companionSpeechId"];
    }

    if (self->_companionIDSIdentifier)
    {
      companionIDSIdentifier = [(ADCommunalDeviceUser *)self companionIDSIdentifier];
      [v21 setObject:companionIDSIdentifier forKey:@"companionIDSIdentifier"];
    }

    if (self->_productPrefix)
    {
      productPrefix = [(ADCommunalDeviceUser *)self productPrefix];
      [v21 setObject:productPrefix forKey:@"userAgent"];
    }

    if (self->_personalDomainsIsEnabled)
    {
      stringValue2 = [&__kCFBooleanTrue stringValue];
      [v21 setObject:stringValue2 forKey:@"personalDomainEnabled"];
    }

    if (self->_unauthenticatedRequestsAllowed)
    {
      stringValue3 = [&__kCFBooleanTrue stringValue];
      [v21 setObject:stringValue3 forKey:@"personalDomainUnauthenticatedRequestsAllowed"];
    }

    if (self->_allowExplicitContent)
    {
      stringValue4 = [&__kCFBooleanTrue stringValue];
      [v21 setObject:stringValue4 forKey:@"allowExplicitContent"];
    }

    if (self->_isMediaFallbackUser)
    {
      stringValue5 = [&__kCFBooleanTrue stringValue];
      [v21 setObject:stringValue5 forKey:@"isMediafallbackUser"];
    }

    if (self->_shareOwnerName)
    {
      shareOwnerName = [(ADCommunalDeviceUser *)self shareOwnerName];
      [v21 setObject:shareOwnerName forKey:@"cloudShareOwnerName"];
    }

    if (self->_voiceIDAllowedByUser)
    {
      v35 = [NSNumber numberWithBool:[(ADCommunalDeviceUser *)self voiceIDAllowedByUser]];
      stringValue6 = [v35 stringValue];
      [v21 setObject:stringValue6 forKey:@"voiceIDAllowedByUser"];
    }

    if (self->_nonCloudSyncedUser)
    {
      stringValue7 = [&__kCFBooleanTrue stringValue];
      [v21 setObject:stringValue7 forKey:@"voiceIDAllowedByUser"];
    }

    if (self->_loggableMultiUserSharedUserID)
    {
      loggableMultiUserSharedUserID = [(ADCommunalDeviceUser *)self loggableMultiUserSharedUserID];
      [v21 setObject:loggableMultiUserSharedUserID forKey:@"loggableMultiUserSharedUserId"];
    }

    if (self->_loggableCompanionAssistantID)
    {
      loggableCompanionAssistantID = [(ADCommunalDeviceUser *)self loggableCompanionAssistantID];
      [v21 setObject:loggableCompanionAssistantID forKey:@"loggableCompanionAssistantId"];
    }

    if (self->_loggableMusicSyncSharedUserID)
    {
      loggableMusicSyncSharedUserID = [(ADCommunalDeviceUser *)self loggableMusicSyncSharedUserID];
      [v21 setObject:loggableMusicSyncSharedUserID forKey:@"loggableMusicSyncSharedUserId"];
    }

    aceHost = self->_aceHost;
    if (aceHost)
    {
      [v21 setObject:aceHost forKey:@"aceHost"];
    }

    if (self->_settings)
    {
      settings = [(ADCommunalDeviceUser *)self settings];
      v43 = [NSPropertyListSerialization dataWithPropertyList:settings format:200 options:0 error:0];

      [v21 setObject:v43 forKey:@"homeMemberSettings"];
    }

    if (self->_personaID)
    {
      personaID = [(ADCommunalDeviceUser *)self personaID];
      [v21 setObject:personaID forKey:@"personaId"];
    }

    if (self->_perceptionIdentifier)
    {
      perceptionIdentifier = [(ADCommunalDeviceUser *)self perceptionIdentifier];
      [v21 setObject:perceptionIdentifier forKey:@"perceptionIdentifier"];
    }

    if (self->_companionSiriLanguage)
    {
      companionSiriLanguage = [(ADCommunalDeviceUser *)self companionSiriLanguage];
      [v21 setObject:companionSiriLanguage forKey:@"companionSiriLanguage"];
    }

    if (self->_companionName)
    {
      companionName = [(ADCommunalDeviceUser *)self companionName];
      [v21 setObject:companionName forKey:@"companionName"];
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)isSiriEnabledOnCompanion
{
  companionAssistantID = [(ADCommunalDeviceUser *)self companionAssistantID];
  if (companionAssistantID)
  {
    companionAssistantID2 = [(ADCommunalDeviceUser *)self companionAssistantID];
    v5 = [companionAssistantID2 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)testAndSetLoggingIsAllowed:(BOOL)allowed
{
  if (self->_loggingIsAllowed != allowed)
  {
    self->_loggingIsAllowed = allowed;
    if (allowed)
    {
      objc_storeStrong(&self->_loggableCompanionAssistantID, self->_companionAssistantID);
      v5 = self->_sharedUserID;
      loggableMultiUserSharedUserID = self->_loggableMultiUserSharedUserID;
      self->_loggableMultiUserSharedUserID = v5;
    }

    else
    {
      v7 = +[NSUUID UUID];
      uUIDString = [v7 UUIDString];
      loggableCompanionAssistantID = self->_loggableCompanionAssistantID;
      self->_loggableCompanionAssistantID = uUIDString;

      v12 = +[NSUUID UUID];
      uUIDString2 = [v12 UUIDString];
      v11 = self->_loggableMultiUserSharedUserID;
      self->_loggableMultiUserSharedUserID = uUIDString2;

      loggableMultiUserSharedUserID = v12;
    }

    _objc_release_x1(v5, loggableMultiUserSharedUserID);
  }
}

- (void)setNonCloudSyncedUserAttribute:(BOOL)attribute
{
  self->_nonCloudSyncedUser = attribute;
  if (attribute)
  {
    [(ADCommunalDeviceUserAttributes *)self->_attributes addAttribute:4];
  }
}

- (id)loggableDictionary
{
  if ((AFIsATV() & 1) != 0 || self->_homeUserUUID && self->_sharedUserID && self->_loggableSharedUserID)
  {
    dictionaryRepresentation = [(ADCommunalDeviceUser *)self dictionaryRepresentation];
    v4 = [dictionaryRepresentation mutableCopy];

    [v4 removeObjectForKey:@"loggableCompanionAssistantId"];
    [v4 removeObjectForKey:@"loggableMultiUserSharedUserId"];
    [v4 removeObjectForKey:@"loggableMusicSyncSharedUserId"];
    [v4 removeObjectForKey:@"loggableSharedUserId"];
    [v4 removeObjectForKey:@"aceHost"];
    [v4 removeObjectForKey:@"userAgent"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)userProperties
{
  v18 = [NSDictionary alloc];
  sharedUserID = [(ADCommunalDeviceUser *)self sharedUserID];
  v4 = sharedUserID;
  if (sharedUserID)
  {
    v5 = sharedUserID;
  }

  else
  {
    v5 = @"empty";
  }

  homeUserUUID = [(ADCommunalDeviceUser *)self homeUserUUID];
  v7 = homeUserUUID;
  if (homeUserUUID)
  {
    v8 = homeUserUUID;
  }

  else
  {
    v8 = @"empty";
  }

  iCloudAltDSID = [(ADCommunalDeviceUser *)self iCloudAltDSID];
  v10 = iCloudAltDSID;
  if (iCloudAltDSID)
  {
    v11 = iCloudAltDSID;
  }

  else
  {
    v11 = @"empty";
  }

  enrollmentName = [(ADCommunalDeviceUser *)self enrollmentName];
  v13 = enrollmentName;
  if (enrollmentName)
  {
    v14 = enrollmentName;
  }

  else
  {
    v14 = @"empty";
  }

  v15 = [NSNumber numberWithBool:[(ADCommunalDeviceUser *)self voiceIDAllowedByUser]];
  v16 = [v18 initWithObjectsAndKeys:{v5, @"sharedUserId", v8, @"homeUserId", v11, @"iCloudAltDSID", v14, @"enrollmentName", v15, @"voiceIDAllowedByUser", 0}];

  return v16;
}

- (ADCommunalDeviceUser)initWithDictionary:(id)dictionary attribute:(unint64_t)attribute
{
  dictionaryCopy = dictionary;
  v73.receiver = self;
  v73.super_class = ADCommunalDeviceUser;
  v7 = [(ADCommunalDeviceUser *)&v73 init];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKey:@"homeUserId"];
    if ([v8 isEqualToString:@"empty"])
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    objc_storeStrong(&v7->_homeUserUUID, v9);

    v10 = [dictionaryCopy objectForKey:@"sharedUserId"];
    if ([v10 isEqualToString:@"empty"])
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    objc_storeStrong(&v7->_sharedUserID, v11);

    v12 = [dictionaryCopy objectForKey:@"loggableSharedUserId"];
    if ([v12 isEqualToString:@"empty"])
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    objc_storeStrong(&v7->_loggableSharedUserID, v13);

    v14 = [dictionaryCopy objectForKey:@"iCloudAltDSID"];
    if ([v14 isEqualToString:@"empty"])
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    objc_storeStrong(&v7->_iCloudAltDSID, v15);

    v16 = [dictionaryCopy objectForKey:@"companionAssistantId"];
    if ([v16 isEqualToString:@"empty"])
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    objc_storeStrong(&v7->_companionAssistantID, v17);

    v18 = [dictionaryCopy objectForKey:@"companionSpeechId"];
    if ([v18 isEqualToString:@"empty"])
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    objc_storeStrong(&v7->_companionSpeechID, v19);

    v20 = [dictionaryCopy objectForKey:@"companionIDSIdentifier"];
    if ([v20 isEqualToString:@"empty"])
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    objc_storeStrong(&v7->_companionIDSIdentifier, v21);

    v22 = [dictionaryCopy objectForKey:@"enrollmentName"];
    if ([v22 isEqualToString:@"empty"])
    {
      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    objc_storeStrong(&v7->_enrollmentName, v23);

    v24 = [[ADCommunalDeviceUserAttributes alloc] initWithAttribute:attribute];
    attributes = v7->_attributes;
    v7->_attributes = v24;

    v26 = [dictionaryCopy objectForKey:@"speechIdentifier"];
    speechID = v7->_speechID;
    v7->_speechID = v26;

    v28 = [dictionaryCopy objectForKey:@"companionPeerToPeerHandoffCapable"];
    v7->_companionPeerToPeerHandoffCapable = [v28 BOOLValue];

    v29 = [dictionaryCopy objectForKey:@"companionSiriLanguage"];
    if ([v29 isEqualToString:@"empty"])
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    objc_storeStrong(&v7->_companionSiriLanguage, v30);

    v31 = [dictionaryCopy objectForKey:@"companionName"];
    if ([v31 isEqualToString:@"empty"])
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    objc_storeStrong(&v7->_companionName, v32);

    if (!v7->_speechID)
    {
      v33 = +[NSUUID UUID];
      uUIDString = [v33 UUIDString];
      v35 = v7->_speechID;
      v7->_speechID = uUIDString;
    }

    v36 = [dictionaryCopy objectForKey:@"cloudShareOwnerName"];
    shareOwnerName = v7->_shareOwnerName;
    v7->_shareOwnerName = v36;

    v38 = [dictionaryCopy objectForKey:@"voiceIDAllowedByUser"];
    v7->_voiceIDAllowedByUser = [v38 BOOLValue];

    v39 = [dictionaryCopy objectForKey:@"personalDomainEnabled"];
    v7->_personalDomainsIsEnabled = [v39 BOOLValue];

    v40 = [dictionaryCopy objectForKey:@"personalDomainUnauthenticatedRequestsAllowed"];
    v7->_unauthenticatedRequestsAllowed = [v40 BOOLValue];

    v41 = [dictionaryCopy objectForKey:@"allowExplicitContent"];
    v7->_allowExplicitContent = [v41 BOOLValue];

    v42 = [dictionaryCopy objectForKey:@"isMediafallbackUser"];
    v7->_isMediaFallbackUser = [v42 BOOLValue];

    v43 = [dictionaryCopy objectForKey:@"userAgent"];
    productPrefix = v7->_productPrefix;
    v7->_productPrefix = v43;

    v45 = [dictionaryCopy objectForKey:@"aceHost"];
    aceHost = v7->_aceHost;
    v7->_aceHost = v45;

    v47 = [dictionaryCopy objectForKey:@"loggableCompanionAssistantId"];
    loggableCompanionAssistantID = v7->_loggableCompanionAssistantID;
    v7->_loggableCompanionAssistantID = v47;

    if (!v7->_loggableCompanionAssistantID)
    {
      v49 = +[NSUUID UUID];
      uUIDString2 = [v49 UUIDString];
      v51 = v7->_loggableCompanionAssistantID;
      v7->_loggableCompanionAssistantID = uUIDString2;
    }

    v52 = [dictionaryCopy objectForKey:@"loggableMultiUserSharedUserId"];
    loggableMultiUserSharedUserID = v7->_loggableMultiUserSharedUserID;
    v7->_loggableMultiUserSharedUserID = v52;

    if (!v7->_loggableMultiUserSharedUserID)
    {
      v54 = +[NSUUID UUID];
      uUIDString3 = [v54 UUIDString];
      v56 = v7->_loggableMultiUserSharedUserID;
      v7->_loggableMultiUserSharedUserID = uUIDString3;
    }

    v57 = [dictionaryCopy objectForKey:@"loggableMusicSyncSharedUserId"];
    loggableMusicSyncSharedUserID = v7->_loggableMusicSyncSharedUserID;
    v7->_loggableMusicSyncSharedUserID = v57;

    if (!v7->_loggableMusicSyncSharedUserID)
    {
      v59 = +[NSUUID UUID];
      uUIDString4 = [v59 UUIDString];
      v61 = v7->_loggableMusicSyncSharedUserID;
      v7->_loggableMusicSyncSharedUserID = uUIDString4;
    }

    v62 = [dictionaryCopy objectForKey:@"homeMemberSettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = v62;
      settings = v7->_settings;
      v7->_settings = v63;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_45:
        v68 = [dictionaryCopy objectForKey:@"personaId"];
        personaID = v7->_personaID;
        v7->_personaID = v68;

        v70 = [dictionaryCopy objectForKey:@"perceptionIdentifier"];
        perceptionIdentifier = v7->_perceptionIdentifier;
        v7->_perceptionIdentifier = v70;

        goto LABEL_46;
      }

      settings = [dictionaryCopy objectForKey:@"homeMemberSettings"];
      v65 = [AceObject aceObjectWithPlistData:settings];
      dictionary = [v65 dictionary];
      v67 = v7->_settings;
      v7->_settings = dictionary;
    }

    goto LABEL_45;
  }

LABEL_46:

  return v7;
}

- (id)init:(id)init sharedUserId:(id)id loggableSharedUserId:(id)userId iCloudAltDSID:(id)d attribute:(unint64_t)attribute
{
  initCopy = init;
  idCopy = id;
  userIdCopy = userId;
  dCopy = d;
  v34.receiver = self;
  v34.super_class = ADCommunalDeviceUser;
  v17 = [(ADCommunalDeviceUser *)&v34 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_homeUserUUID, init);
    objc_storeStrong(&v18->_sharedUserID, id);
    objc_storeStrong(&v18->_loggableSharedUserID, userId);
    objc_storeStrong(&v18->_iCloudAltDSID, d);
    v19 = [[ADCommunalDeviceUserAttributes alloc] initWithAttribute:attribute];
    attributes = v18->_attributes;
    v18->_attributes = v19;

    v21 = +[NSUUID UUID];
    uUIDString = [v21 UUIDString];
    speechID = v18->_speechID;
    v18->_speechID = uUIDString;

    v18->_voiceIDAllowedByUser = 0;
    v24 = +[NSUUID UUID];
    uUIDString2 = [v24 UUIDString];
    loggableCompanionAssistantID = v18->_loggableCompanionAssistantID;
    v18->_loggableCompanionAssistantID = uUIDString2;

    v27 = +[NSUUID UUID];
    uUIDString3 = [v27 UUIDString];
    loggableMultiUserSharedUserID = v18->_loggableMultiUserSharedUserID;
    v18->_loggableMultiUserSharedUserID = uUIDString3;

    v30 = +[NSUUID UUID];
    uUIDString4 = [v30 UUIDString];
    loggableMusicSyncSharedUserID = v18->_loggableMusicSyncSharedUserID;
    v18->_loggableMusicSyncSharedUserID = uUIDString4;

    v18->_companionPeerToPeerHandoffCapable = 0;
  }

  return v18;
}

+ (id)saRemoteDeviceForHomeMember:(id)member
{
  memberCopy = member;
  companionAssistantID = [memberCopy companionAssistantID];
  if (memberCopy)
  {
    v5 = objc_alloc_init(SARemoteDevice);
    [v5 setAssistantId:companionAssistantID];
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [memberCopy personalDomainsIsEnabled]);
    [v5 setPersonalDomainsEnabled:v6];

    unauthenticatedRequestsAllowed = [memberCopy unauthenticatedRequestsAllowed];
    v8 = &SARemoteDevicePersonalDomainsAuthenticationModeNeverValue;
    if (!unauthenticatedRequestsAllowed)
    {
      v8 = &SARemoteDevicePersonalDomainsAuthenticationModeSecureRequestsValue;
    }

    [v5 setPersonalDomainsAuthenticationMode:*v8];
    [v5 setSiriEnabled:1];
    productPrefix = [memberCopy productPrefix];
    [v5 setUserAgent:productPrefix];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)saMultiUserInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(SAMultiUserInfo);
  v5 = [ADCommunalDeviceUser saHomeMemberInfo:infoCopy];

  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [v4 setHomeMembers:v6];

  return v4;
}

+ (id)saHomeMemberInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(SAHomeMemberInfo);
  v5 = v4;
  if (infoCopy)
  {
    sharedUserID = [infoCopy sharedUserID];
    [v5 setSharedUserId:sharedUserID];

    loggableSharedUserID = [infoCopy loggableSharedUserID];
    [v5 setLoggableSharedUserId:loggableSharedUserID];

    companionAssistantID = [infoCopy companionAssistantID];
    [v5 setCompanionAssistantId:companionAssistantID];

    companionSpeechID = [infoCopy companionSpeechID];
    [v5 setCompanionSpeechId:companionSpeechID];

    attributes = [infoCopy attributes];
    v11 = [ADCommunalDeviceUserAttributes saCopy:attributes];
    [v5 setAttributes:v11];

    enrollmentName = [infoCopy enrollmentName];
    [v5 setEnrollmentName:enrollmentName];

    speechID = [infoCopy speechID];
    [v5 setSpeechId:speechID];

    loggableCompanionAssistantID = [infoCopy loggableCompanionAssistantID];
    [v5 setLoggableCompanionAssistantId:loggableCompanionAssistantID];

    loggableMultiUserSharedUserID = [infoCopy loggableMultiUserSharedUserID];
    [v5 setLoggableMultiUserSharedUserId:loggableMultiUserSharedUserID];

    aceHost = [infoCopy aceHost];
    [v5 setLastVisitedAceHost:aceHost];

    v17 = [SAHomeMemberSettings alloc];
    settings = [infoCopy settings];
    v19 = [v17 initWithDictionary:settings];

    [v19 setMediaPlayerExplicitContentDisallowed:{objc_msgSend(infoCopy, "allowExplicitContent") ^ 1}];
    [v5 setHomeMemberSettings:v19];
    personaID = [infoCopy personaID];
    [v5 setPersonaIdentifier:personaID];

    ephemeralID = [infoCopy ephemeralID];
    [v5 setEphemeralUserId:ephemeralID];
  }

  else
  {
    v22 = AFMultiUserDefaultSharedUserId;
    [v4 setSharedUserId:AFMultiUserDefaultSharedUserId];
    [v5 setLoggableSharedUserId:v22];
    [v5 setCompanionAssistantId:0];
    [v5 setCompanionSpeechId:0];
    v23 = [ADCommunalDeviceUserAttributes saCopy:0];
    [v5 setAttributes:v23];

    [v5 setEnrollmentName:@"unknown"];
    [v5 setSpeechId:0];
    [v5 setLastVisitedAceHost:0];
    [v5 setLoggableCompanionAssistantId:0];
    [v5 setLoggableMultiUserSharedUserId:0];
    [v5 setPersonaIdentifier:v22];
    [v5 setEphemeralUserId:0];
  }

  return v5;
}

@end