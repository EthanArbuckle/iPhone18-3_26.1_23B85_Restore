@interface ADCommunalDeviceUser
+ (id)saHomeMemberInfo:(id)a3;
+ (id)saMultiUserInfo:(id)a3;
+ (id)saRemoteDeviceForHomeMember:(id)a3;
- (ADCommunalDeviceUser)initWithDictionary:(id)a3 attribute:(unint64_t)a4;
- (BOOL)isSiriEnabledOnCompanion;
- (id)dictionaryRepresentation;
- (id)init:(id)a3 sharedUserId:(id)a4 loggableSharedUserId:(id)a5 iCloudAltDSID:(id)a6 attribute:(unint64_t)a7;
- (id)loggableDictionary;
- (id)userProperties;
- (void)setNonCloudSyncedUserAttribute:(BOOL)a3;
- (void)testAndSetLoggingIsAllowed:(BOOL)a3;
@end

@implementation ADCommunalDeviceUser

- (id)dictionaryRepresentation
{
  if ((AFIsATV() & 1) != 0 || self->_homeUserUUID && self->_sharedUserID && self->_loggableSharedUserID)
  {
    v3 = [NSMutableDictionary alloc];
    v4 = [(ADCommunalDeviceUser *)self sharedUserID];
    v5 = v4;
    v6 = @"empty";
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = @"empty";
    }

    v52 = v7;
    v8 = [(ADCommunalDeviceUser *)self homeUserUUID];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"empty";
    }

    v51 = v10;
    v11 = [(ADCommunalDeviceUser *)self enrollmentName];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"empty";
    }

    v50 = v13;
    v14 = [(ADCommunalDeviceUser *)self loggableSharedUserID];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"empty";
    }

    v17 = [(ADCommunalDeviceUser *)self iCloudAltDSID];
    v18 = v17;
    if (v17)
    {
      v6 = v17;
    }

    v19 = [(ADCommunalDeviceUser *)self speechID];
    v20 = v19;
    if (v19)
    {
      v21 = [v3 initWithObjectsAndKeys:{v52, @"sharedUserId", v51, @"homeUserId", v50, @"enrollmentName", v16, @"loggableSharedUserId", v6, @"iCloudAltDSID", v19, @"speechIdentifier", 0}];
    }

    else
    {
      v49 = +[NSUUID UUID];
      v22 = [v49 UUIDString];
      v23 = v3;
      v24 = v22;
      v21 = [v23 initWithObjectsAndKeys:{v52, @"sharedUserId", v51, @"homeUserId", v50, @"enrollmentName", v16, @"loggableSharedUserId", v6, @"iCloudAltDSID", v22, @"speechIdentifier", 0}];
    }

    if (self->_companionPeerToPeerHandoffCapable)
    {
      v25 = [&__kCFBooleanTrue stringValue];
      [v21 setObject:v25 forKey:@"companionPeerToPeerHandoffCapable"];
    }

    if (self->_companionAssistantID)
    {
      v26 = [(ADCommunalDeviceUser *)self companionAssistantID];
      [v21 setObject:v26 forKey:@"companionAssistantId"];
    }

    if (self->_companionSpeechID)
    {
      v27 = [(ADCommunalDeviceUser *)self companionSpeechID];
      [v21 setObject:v27 forKey:@"companionSpeechId"];
    }

    if (self->_companionIDSIdentifier)
    {
      v28 = [(ADCommunalDeviceUser *)self companionIDSIdentifier];
      [v21 setObject:v28 forKey:@"companionIDSIdentifier"];
    }

    if (self->_productPrefix)
    {
      v29 = [(ADCommunalDeviceUser *)self productPrefix];
      [v21 setObject:v29 forKey:@"userAgent"];
    }

    if (self->_personalDomainsIsEnabled)
    {
      v30 = [&__kCFBooleanTrue stringValue];
      [v21 setObject:v30 forKey:@"personalDomainEnabled"];
    }

    if (self->_unauthenticatedRequestsAllowed)
    {
      v31 = [&__kCFBooleanTrue stringValue];
      [v21 setObject:v31 forKey:@"personalDomainUnauthenticatedRequestsAllowed"];
    }

    if (self->_allowExplicitContent)
    {
      v32 = [&__kCFBooleanTrue stringValue];
      [v21 setObject:v32 forKey:@"allowExplicitContent"];
    }

    if (self->_isMediaFallbackUser)
    {
      v33 = [&__kCFBooleanTrue stringValue];
      [v21 setObject:v33 forKey:@"isMediafallbackUser"];
    }

    if (self->_shareOwnerName)
    {
      v34 = [(ADCommunalDeviceUser *)self shareOwnerName];
      [v21 setObject:v34 forKey:@"cloudShareOwnerName"];
    }

    if (self->_voiceIDAllowedByUser)
    {
      v35 = [NSNumber numberWithBool:[(ADCommunalDeviceUser *)self voiceIDAllowedByUser]];
      v36 = [v35 stringValue];
      [v21 setObject:v36 forKey:@"voiceIDAllowedByUser"];
    }

    if (self->_nonCloudSyncedUser)
    {
      v37 = [&__kCFBooleanTrue stringValue];
      [v21 setObject:v37 forKey:@"voiceIDAllowedByUser"];
    }

    if (self->_loggableMultiUserSharedUserID)
    {
      v38 = [(ADCommunalDeviceUser *)self loggableMultiUserSharedUserID];
      [v21 setObject:v38 forKey:@"loggableMultiUserSharedUserId"];
    }

    if (self->_loggableCompanionAssistantID)
    {
      v39 = [(ADCommunalDeviceUser *)self loggableCompanionAssistantID];
      [v21 setObject:v39 forKey:@"loggableCompanionAssistantId"];
    }

    if (self->_loggableMusicSyncSharedUserID)
    {
      v40 = [(ADCommunalDeviceUser *)self loggableMusicSyncSharedUserID];
      [v21 setObject:v40 forKey:@"loggableMusicSyncSharedUserId"];
    }

    aceHost = self->_aceHost;
    if (aceHost)
    {
      [v21 setObject:aceHost forKey:@"aceHost"];
    }

    if (self->_settings)
    {
      v42 = [(ADCommunalDeviceUser *)self settings];
      v43 = [NSPropertyListSerialization dataWithPropertyList:v42 format:200 options:0 error:0];

      [v21 setObject:v43 forKey:@"homeMemberSettings"];
    }

    if (self->_personaID)
    {
      v44 = [(ADCommunalDeviceUser *)self personaID];
      [v21 setObject:v44 forKey:@"personaId"];
    }

    if (self->_perceptionIdentifier)
    {
      v45 = [(ADCommunalDeviceUser *)self perceptionIdentifier];
      [v21 setObject:v45 forKey:@"perceptionIdentifier"];
    }

    if (self->_companionSiriLanguage)
    {
      v46 = [(ADCommunalDeviceUser *)self companionSiriLanguage];
      [v21 setObject:v46 forKey:@"companionSiriLanguage"];
    }

    if (self->_companionName)
    {
      v47 = [(ADCommunalDeviceUser *)self companionName];
      [v21 setObject:v47 forKey:@"companionName"];
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
  v3 = [(ADCommunalDeviceUser *)self companionAssistantID];
  if (v3)
  {
    v4 = [(ADCommunalDeviceUser *)self companionAssistantID];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)testAndSetLoggingIsAllowed:(BOOL)a3
{
  if (self->_loggingIsAllowed != a3)
  {
    self->_loggingIsAllowed = a3;
    if (a3)
    {
      objc_storeStrong(&self->_loggableCompanionAssistantID, self->_companionAssistantID);
      v5 = self->_sharedUserID;
      loggableMultiUserSharedUserID = self->_loggableMultiUserSharedUserID;
      self->_loggableMultiUserSharedUserID = v5;
    }

    else
    {
      v7 = +[NSUUID UUID];
      v8 = [v7 UUIDString];
      loggableCompanionAssistantID = self->_loggableCompanionAssistantID;
      self->_loggableCompanionAssistantID = v8;

      v12 = +[NSUUID UUID];
      v10 = [v12 UUIDString];
      v11 = self->_loggableMultiUserSharedUserID;
      self->_loggableMultiUserSharedUserID = v10;

      loggableMultiUserSharedUserID = v12;
    }

    _objc_release_x1(v5, loggableMultiUserSharedUserID);
  }
}

- (void)setNonCloudSyncedUserAttribute:(BOOL)a3
{
  self->_nonCloudSyncedUser = a3;
  if (a3)
  {
    [(ADCommunalDeviceUserAttributes *)self->_attributes addAttribute:4];
  }
}

- (id)loggableDictionary
{
  if ((AFIsATV() & 1) != 0 || self->_homeUserUUID && self->_sharedUserID && self->_loggableSharedUserID)
  {
    v3 = [(ADCommunalDeviceUser *)self dictionaryRepresentation];
    v4 = [v3 mutableCopy];

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
  v3 = [(ADCommunalDeviceUser *)self sharedUserID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"empty";
  }

  v6 = [(ADCommunalDeviceUser *)self homeUserUUID];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"empty";
  }

  v9 = [(ADCommunalDeviceUser *)self iCloudAltDSID];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"empty";
  }

  v12 = [(ADCommunalDeviceUser *)self enrollmentName];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"empty";
  }

  v15 = [NSNumber numberWithBool:[(ADCommunalDeviceUser *)self voiceIDAllowedByUser]];
  v16 = [v18 initWithObjectsAndKeys:{v5, @"sharedUserId", v8, @"homeUserId", v11, @"iCloudAltDSID", v14, @"enrollmentName", v15, @"voiceIDAllowedByUser", 0}];

  return v16;
}

- (ADCommunalDeviceUser)initWithDictionary:(id)a3 attribute:(unint64_t)a4
{
  v6 = a3;
  v73.receiver = self;
  v73.super_class = ADCommunalDeviceUser;
  v7 = [(ADCommunalDeviceUser *)&v73 init];
  if (v7)
  {
    v8 = [v6 objectForKey:@"homeUserId"];
    if ([v8 isEqualToString:@"empty"])
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    objc_storeStrong(&v7->_homeUserUUID, v9);

    v10 = [v6 objectForKey:@"sharedUserId"];
    if ([v10 isEqualToString:@"empty"])
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    objc_storeStrong(&v7->_sharedUserID, v11);

    v12 = [v6 objectForKey:@"loggableSharedUserId"];
    if ([v12 isEqualToString:@"empty"])
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    objc_storeStrong(&v7->_loggableSharedUserID, v13);

    v14 = [v6 objectForKey:@"iCloudAltDSID"];
    if ([v14 isEqualToString:@"empty"])
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    objc_storeStrong(&v7->_iCloudAltDSID, v15);

    v16 = [v6 objectForKey:@"companionAssistantId"];
    if ([v16 isEqualToString:@"empty"])
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    objc_storeStrong(&v7->_companionAssistantID, v17);

    v18 = [v6 objectForKey:@"companionSpeechId"];
    if ([v18 isEqualToString:@"empty"])
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    objc_storeStrong(&v7->_companionSpeechID, v19);

    v20 = [v6 objectForKey:@"companionIDSIdentifier"];
    if ([v20 isEqualToString:@"empty"])
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    objc_storeStrong(&v7->_companionIDSIdentifier, v21);

    v22 = [v6 objectForKey:@"enrollmentName"];
    if ([v22 isEqualToString:@"empty"])
    {
      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    objc_storeStrong(&v7->_enrollmentName, v23);

    v24 = [[ADCommunalDeviceUserAttributes alloc] initWithAttribute:a4];
    attributes = v7->_attributes;
    v7->_attributes = v24;

    v26 = [v6 objectForKey:@"speechIdentifier"];
    speechID = v7->_speechID;
    v7->_speechID = v26;

    v28 = [v6 objectForKey:@"companionPeerToPeerHandoffCapable"];
    v7->_companionPeerToPeerHandoffCapable = [v28 BOOLValue];

    v29 = [v6 objectForKey:@"companionSiriLanguage"];
    if ([v29 isEqualToString:@"empty"])
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    objc_storeStrong(&v7->_companionSiriLanguage, v30);

    v31 = [v6 objectForKey:@"companionName"];
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
      v34 = [v33 UUIDString];
      v35 = v7->_speechID;
      v7->_speechID = v34;
    }

    v36 = [v6 objectForKey:@"cloudShareOwnerName"];
    shareOwnerName = v7->_shareOwnerName;
    v7->_shareOwnerName = v36;

    v38 = [v6 objectForKey:@"voiceIDAllowedByUser"];
    v7->_voiceIDAllowedByUser = [v38 BOOLValue];

    v39 = [v6 objectForKey:@"personalDomainEnabled"];
    v7->_personalDomainsIsEnabled = [v39 BOOLValue];

    v40 = [v6 objectForKey:@"personalDomainUnauthenticatedRequestsAllowed"];
    v7->_unauthenticatedRequestsAllowed = [v40 BOOLValue];

    v41 = [v6 objectForKey:@"allowExplicitContent"];
    v7->_allowExplicitContent = [v41 BOOLValue];

    v42 = [v6 objectForKey:@"isMediafallbackUser"];
    v7->_isMediaFallbackUser = [v42 BOOLValue];

    v43 = [v6 objectForKey:@"userAgent"];
    productPrefix = v7->_productPrefix;
    v7->_productPrefix = v43;

    v45 = [v6 objectForKey:@"aceHost"];
    aceHost = v7->_aceHost;
    v7->_aceHost = v45;

    v47 = [v6 objectForKey:@"loggableCompanionAssistantId"];
    loggableCompanionAssistantID = v7->_loggableCompanionAssistantID;
    v7->_loggableCompanionAssistantID = v47;

    if (!v7->_loggableCompanionAssistantID)
    {
      v49 = +[NSUUID UUID];
      v50 = [v49 UUIDString];
      v51 = v7->_loggableCompanionAssistantID;
      v7->_loggableCompanionAssistantID = v50;
    }

    v52 = [v6 objectForKey:@"loggableMultiUserSharedUserId"];
    loggableMultiUserSharedUserID = v7->_loggableMultiUserSharedUserID;
    v7->_loggableMultiUserSharedUserID = v52;

    if (!v7->_loggableMultiUserSharedUserID)
    {
      v54 = +[NSUUID UUID];
      v55 = [v54 UUIDString];
      v56 = v7->_loggableMultiUserSharedUserID;
      v7->_loggableMultiUserSharedUserID = v55;
    }

    v57 = [v6 objectForKey:@"loggableMusicSyncSharedUserId"];
    loggableMusicSyncSharedUserID = v7->_loggableMusicSyncSharedUserID;
    v7->_loggableMusicSyncSharedUserID = v57;

    if (!v7->_loggableMusicSyncSharedUserID)
    {
      v59 = +[NSUUID UUID];
      v60 = [v59 UUIDString];
      v61 = v7->_loggableMusicSyncSharedUserID;
      v7->_loggableMusicSyncSharedUserID = v60;
    }

    v62 = [v6 objectForKey:@"homeMemberSettings"];
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
        v68 = [v6 objectForKey:@"personaId"];
        personaID = v7->_personaID;
        v7->_personaID = v68;

        v70 = [v6 objectForKey:@"perceptionIdentifier"];
        perceptionIdentifier = v7->_perceptionIdentifier;
        v7->_perceptionIdentifier = v70;

        goto LABEL_46;
      }

      settings = [v6 objectForKey:@"homeMemberSettings"];
      v65 = [AceObject aceObjectWithPlistData:settings];
      v66 = [v65 dictionary];
      v67 = v7->_settings;
      v7->_settings = v66;
    }

    goto LABEL_45;
  }

LABEL_46:

  return v7;
}

- (id)init:(id)a3 sharedUserId:(id)a4 loggableSharedUserId:(id)a5 iCloudAltDSID:(id)a6 attribute:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v34.receiver = self;
  v34.super_class = ADCommunalDeviceUser;
  v17 = [(ADCommunalDeviceUser *)&v34 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_homeUserUUID, a3);
    objc_storeStrong(&v18->_sharedUserID, a4);
    objc_storeStrong(&v18->_loggableSharedUserID, a5);
    objc_storeStrong(&v18->_iCloudAltDSID, a6);
    v19 = [[ADCommunalDeviceUserAttributes alloc] initWithAttribute:a7];
    attributes = v18->_attributes;
    v18->_attributes = v19;

    v21 = +[NSUUID UUID];
    v22 = [v21 UUIDString];
    speechID = v18->_speechID;
    v18->_speechID = v22;

    v18->_voiceIDAllowedByUser = 0;
    v24 = +[NSUUID UUID];
    v25 = [v24 UUIDString];
    loggableCompanionAssistantID = v18->_loggableCompanionAssistantID;
    v18->_loggableCompanionAssistantID = v25;

    v27 = +[NSUUID UUID];
    v28 = [v27 UUIDString];
    loggableMultiUserSharedUserID = v18->_loggableMultiUserSharedUserID;
    v18->_loggableMultiUserSharedUserID = v28;

    v30 = +[NSUUID UUID];
    v31 = [v30 UUIDString];
    loggableMusicSyncSharedUserID = v18->_loggableMusicSyncSharedUserID;
    v18->_loggableMusicSyncSharedUserID = v31;

    v18->_companionPeerToPeerHandoffCapable = 0;
  }

  return v18;
}

+ (id)saRemoteDeviceForHomeMember:(id)a3
{
  v3 = a3;
  v4 = [v3 companionAssistantID];
  if (v3)
  {
    v5 = objc_alloc_init(SARemoteDevice);
    [v5 setAssistantId:v4];
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 personalDomainsIsEnabled]);
    [v5 setPersonalDomainsEnabled:v6];

    v7 = [v3 unauthenticatedRequestsAllowed];
    v8 = &SARemoteDevicePersonalDomainsAuthenticationModeNeverValue;
    if (!v7)
    {
      v8 = &SARemoteDevicePersonalDomainsAuthenticationModeSecureRequestsValue;
    }

    [v5 setPersonalDomainsAuthenticationMode:*v8];
    [v5 setSiriEnabled:1];
    v9 = [v3 productPrefix];
    [v5 setUserAgent:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)saMultiUserInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SAMultiUserInfo);
  v5 = [ADCommunalDeviceUser saHomeMemberInfo:v3];

  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [v4 setHomeMembers:v6];

  return v4;
}

+ (id)saHomeMemberInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SAHomeMemberInfo);
  v5 = v4;
  if (v3)
  {
    v6 = [v3 sharedUserID];
    [v5 setSharedUserId:v6];

    v7 = [v3 loggableSharedUserID];
    [v5 setLoggableSharedUserId:v7];

    v8 = [v3 companionAssistantID];
    [v5 setCompanionAssistantId:v8];

    v9 = [v3 companionSpeechID];
    [v5 setCompanionSpeechId:v9];

    v10 = [v3 attributes];
    v11 = [ADCommunalDeviceUserAttributes saCopy:v10];
    [v5 setAttributes:v11];

    v12 = [v3 enrollmentName];
    [v5 setEnrollmentName:v12];

    v13 = [v3 speechID];
    [v5 setSpeechId:v13];

    v14 = [v3 loggableCompanionAssistantID];
    [v5 setLoggableCompanionAssistantId:v14];

    v15 = [v3 loggableMultiUserSharedUserID];
    [v5 setLoggableMultiUserSharedUserId:v15];

    v16 = [v3 aceHost];
    [v5 setLastVisitedAceHost:v16];

    v17 = [SAHomeMemberSettings alloc];
    v18 = [v3 settings];
    v19 = [v17 initWithDictionary:v18];

    [v19 setMediaPlayerExplicitContentDisallowed:{objc_msgSend(v3, "allowExplicitContent") ^ 1}];
    [v5 setHomeMemberSettings:v19];
    v20 = [v3 personaID];
    [v5 setPersonaIdentifier:v20];

    v21 = [v3 ephemeralID];
    [v5 setEphemeralUserId:v21];
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