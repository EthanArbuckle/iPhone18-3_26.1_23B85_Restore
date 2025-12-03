@interface _ADPBDeviceSetDataRequest
- (ADSharedData)_ad_data;
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_ad_performWithCloudService:(id)service fromPeer:(id)peer completion:(id)completion;
- (void)_ad_performWithSharedDataRemote:(id)remote completion:(id)completion;
- (void)_ad_setData:(id)data;
- (void)addNotificationPreviewRestrictedApps:(id)apps;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCloudSyncEnabled:(BOOL)enabled;
- (void)setHasDictationEnabled:(BOOL)enabled;
- (void)setHasFullUodEnabled:(BOOL)enabled;
- (void)setHasIsLocationSharingDevice:(BOOL)device;
- (void)setHasIsRemotePlaybackDevice:(BOOL)device;
- (void)setHasShouldCensorSpeech:(BOOL)speech;
- (void)setHasSiriEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation _ADPBDeviceSetDataRequest

- (void)_ad_performWithSharedDataRemote:(id)remote completion:(id)completion
{
  completionCopy = completion;
  remoteCopy = remote;
  _ad_data = [(_ADPBDeviceSetDataRequest *)self _ad_data];
  [remoteCopy _dataDidUpdate:_ad_data];

  v8 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
    v8 = completionCopy;
  }
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[176] < 0)
  {
    self->_siriEnabled = fromCopy[175];
    *&self->_has |= 0x80u;
  }

  if (*(fromCopy + 14))
  {
    [(_ADPBDeviceSetDataRequest *)self setSpeechId:?];
  }

  if (*(v5 + 6))
  {
    [(_ADPBDeviceSetDataRequest *)self setLanguageCode:?];
  }

  if (*(v5 + 2))
  {
    [(_ADPBDeviceSetDataRequest *)self setAssistantId:?];
  }

  if (*(v5 + 5))
  {
    [(_ADPBDeviceSetDataRequest *)self setHostname:?];
  }

  v6 = *(v5 + 176);
  if (v6)
  {
    self->_activityContinuationAllowed = *(v5 + 168);
    *&self->_has |= 1u;
    v6 = *(v5 + 176);
  }

  if ((v6 & 4) != 0)
  {
    self->_dictationEnabled = *(v5 + 170);
    *&self->_has |= 4u;
  }

  if (*(v5 + 13))
  {
    [(_ADPBDeviceSetDataRequest *)self setSharedId:?];
  }

  if (*(v5 + 11))
  {
    [(_ADPBDeviceSetDataRequest *)self setPreviousLangaugeCode:?];
  }

  previousOutputVoice = self->_previousOutputVoice;
  v8 = *(v5 + 12);
  if (previousOutputVoice)
  {
    if (v8)
    {
      [(_ADPBDeviceOutputVoiceInfo *)previousOutputVoice mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(_ADPBDeviceSetDataRequest *)self setPreviousOutputVoice:?];
  }

  outputVoice = self->_outputVoice;
  v10 = *(v5 + 10);
  if (outputVoice)
  {
    if (v10)
    {
      [(_ADPBDeviceOutputVoiceInfo *)outputVoice mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(_ADPBDeviceSetDataRequest *)self setOutputVoice:?];
  }

  v11 = *(v5 + 176);
  if ((v11 & 2) != 0)
  {
    self->_cloudSyncEnabled = *(v5 + 169);
    *&self->_has |= 2u;
    v11 = *(v5 + 176);
  }

  if ((v11 & 0x40) != 0)
  {
    self->_shouldCensorSpeech = *(v5 + 174);
    *&self->_has |= 0x40u;
  }

  if (*(v5 + 17))
  {
    [(_ADPBDeviceSetDataRequest *)self setUserAgent:?];
  }

  if ((*(v5 + 176) & 0x10) != 0)
  {
    self->_isLocationSharingDevice = *(v5 + 172);
    *&self->_has |= 0x10u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(v5 + 9);
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(_ADPBDeviceSetDataRequest *)self addNotificationPreviewRestrictedApps:*(*(&v19 + 1) + 8 * i), v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  if (*(v5 + 16))
  {
    [(_ADPBDeviceSetDataRequest *)self setTemperatureUnit:?];
  }

  if (*(v5 + 7))
  {
    [(_ADPBDeviceSetDataRequest *)self setLoggingAssistantId:?];
  }

  if (*(v5 + 8))
  {
    [(_ADPBDeviceSetDataRequest *)self setLoggingSharedId:?];
  }

  if (*(v5 + 15))
  {
    [(_ADPBDeviceSetDataRequest *)self setStoreFrontId:?];
  }

  if (*(v5 + 1))
  {
    [(_ADPBDeviceSetDataRequest *)self setAirplayRouteId:?];
  }

  if (*(v5 + 4))
  {
    [(_ADPBDeviceSetDataRequest *)self setEkToken:?];
  }

  if (*(v5 + 19))
  {
    [(_ADPBDeviceSetDataRequest *)self setUserToken:?];
  }

  if ((*(v5 + 176) & 0x20) != 0)
  {
    self->_isRemotePlaybackDevice = *(v5 + 173);
    *&self->_has |= 0x20u;
  }

  if (*(v5 + 18))
  {
    [(_ADPBDeviceSetDataRequest *)self setUserAssignedName:?];
  }

  utsRequiredRequestData = self->_utsRequiredRequestData;
  v18 = *(v5 + 20);
  if (utsRequiredRequestData)
  {
    if (v18)
    {
      [(_ADPBDeviceStringKeyValueDictionary *)utsRequiredRequestData mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(_ADPBDeviceSetDataRequest *)self setUtsRequiredRequestData:?];
  }

  if (*(v5 + 3))
  {
    [(_ADPBDeviceSetDataRequest *)self setDataSharingOptInStatus:?];
  }

  if ((*(v5 + 176) & 8) != 0)
  {
    self->_fullUodEnabled = *(v5 + 171);
    *&self->_has |= 8u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x80000000) != 0)
  {
    v31 = 2654435761 * self->_siriEnabled;
  }

  else
  {
    v31 = 0;
  }

  v30 = [(NSString *)self->_speechId hash];
  v29 = [(NSString *)self->_languageCode hash];
  v28 = [(NSString *)self->_assistantId hash];
  v27 = [(NSString *)self->_hostname hash];
  if (*&self->_has)
  {
    v26 = 2654435761 * self->_activityContinuationAllowed;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v26 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v25 = 2654435761 * self->_dictationEnabled;
      goto LABEL_9;
    }
  }

  v25 = 0;
LABEL_9:
  v24 = [(NSString *)self->_sharedId hash];
  v23 = [(NSString *)self->_previousLangaugeCode hash];
  v22 = [(_ADPBDeviceOutputVoiceInfo *)self->_previousOutputVoice hash];
  v21 = [(_ADPBDeviceOutputVoiceInfo *)self->_outputVoice hash];
  if ((*&self->_has & 2) != 0)
  {
    v20 = 2654435761 * self->_cloudSyncEnabled;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v20 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_11:
      v19 = 2654435761 * self->_shouldCensorSpeech;
      goto LABEL_14;
    }
  }

  v19 = 0;
LABEL_14:
  v18 = [(NSString *)self->_userAgent hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v17 = 2654435761 * self->_isLocationSharingDevice;
  }

  else
  {
    v17 = 0;
  }

  v16 = [(NSMutableArray *)self->_notificationPreviewRestrictedApps hash];
  v15 = [(NSString *)self->_temperatureUnit hash];
  v14 = [(NSString *)self->_loggingAssistantId hash];
  v13 = [(NSString *)self->_loggingSharedId hash];
  v3 = [(NSString *)self->_storeFrontId hash];
  v4 = [(NSString *)self->_airplayRouteId hash];
  v5 = [(NSString *)self->_ekToken hash];
  v6 = [(NSString *)self->_userToken hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v7 = 2654435761 * self->_isRemotePlaybackDevice;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_userAssignedName hash];
  v9 = [(_ADPBDeviceStringKeyValueDictionary *)self->_utsRequiredRequestData hash];
  v10 = [(NSString *)self->_dataSharingOptInStatus hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_fullUodEnabled;
  }

  else
  {
    v11 = 0;
  }

  return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  v5 = equalCopy[176];
  if ((*&self->_has & 0x80000000) != 0)
  {
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    if (self->_siriEnabled)
    {
      if ((equalCopy[175] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (equalCopy[175])
    {
      goto LABEL_60;
    }
  }

  else if (v5 < 0)
  {
    goto LABEL_60;
  }

  speechId = self->_speechId;
  if (speechId | *(equalCopy + 14) && ![(NSString *)speechId isEqual:?])
  {
    goto LABEL_60;
  }

  languageCode = self->_languageCode;
  if (languageCode | *(equalCopy + 6))
  {
    if (![(NSString *)languageCode isEqual:?])
    {
      goto LABEL_60;
    }
  }

  assistantId = self->_assistantId;
  if (assistantId | *(equalCopy + 2))
  {
    if (![(NSString *)assistantId isEqual:?])
    {
      goto LABEL_60;
    }
  }

  hostname = self->_hostname;
  if (hostname | *(equalCopy + 5))
  {
    if (![(NSString *)hostname isEqual:?])
    {
      goto LABEL_60;
    }
  }

  if (*&self->_has)
  {
    if ((equalCopy[176] & 1) == 0)
    {
      goto LABEL_60;
    }

    if (self->_activityContinuationAllowed)
    {
      if ((equalCopy[168] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (equalCopy[168])
    {
      goto LABEL_60;
    }
  }

  else if (equalCopy[176])
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[176] & 4) == 0)
    {
      goto LABEL_60;
    }

    if (self->_dictationEnabled)
    {
      if ((equalCopy[170] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (equalCopy[170])
    {
      goto LABEL_60;
    }
  }

  else if ((equalCopy[176] & 4) != 0)
  {
    goto LABEL_60;
  }

  sharedId = self->_sharedId;
  if (sharedId | *(equalCopy + 13) && ![(NSString *)sharedId isEqual:?])
  {
    goto LABEL_60;
  }

  previousLangaugeCode = self->_previousLangaugeCode;
  if (previousLangaugeCode | *(equalCopy + 11))
  {
    if (![(NSString *)previousLangaugeCode isEqual:?])
    {
      goto LABEL_60;
    }
  }

  previousOutputVoice = self->_previousOutputVoice;
  if (previousOutputVoice | *(equalCopy + 12))
  {
    if (![(_ADPBDeviceOutputVoiceInfo *)previousOutputVoice isEqual:?])
    {
      goto LABEL_60;
    }
  }

  outputVoice = self->_outputVoice;
  if (outputVoice | *(equalCopy + 10))
  {
    if (![(_ADPBDeviceOutputVoiceInfo *)outputVoice isEqual:?])
    {
      goto LABEL_60;
    }
  }

  has = self->_has;
  v15 = equalCopy[176];
  if ((has & 2) != 0)
  {
    if ((equalCopy[176] & 2) == 0)
    {
      goto LABEL_60;
    }

    if (self->_cloudSyncEnabled)
    {
      if ((equalCopy[169] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (equalCopy[169])
    {
      goto LABEL_60;
    }
  }

  else if ((equalCopy[176] & 2) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((equalCopy[176] & 0x40) == 0)
    {
      goto LABEL_60;
    }

    if (self->_shouldCensorSpeech)
    {
      if ((equalCopy[174] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (equalCopy[174])
    {
      goto LABEL_60;
    }
  }

  else if ((equalCopy[176] & 0x40) != 0)
  {
    goto LABEL_60;
  }

  userAgent = self->_userAgent;
  if (userAgent | *(equalCopy + 17))
  {
    if (![(NSString *)userAgent isEqual:?])
    {
      goto LABEL_60;
    }

    has = self->_has;
    v15 = equalCopy[176];
  }

  if ((has & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_60;
    }

    if (self->_isLocationSharingDevice)
    {
      if ((equalCopy[172] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (equalCopy[172])
    {
      goto LABEL_60;
    }
  }

  else if ((v15 & 0x10) != 0)
  {
    goto LABEL_60;
  }

  notificationPreviewRestrictedApps = self->_notificationPreviewRestrictedApps;
  if (notificationPreviewRestrictedApps | *(equalCopy + 9) && ![(NSMutableArray *)notificationPreviewRestrictedApps isEqual:?])
  {
    goto LABEL_60;
  }

  temperatureUnit = self->_temperatureUnit;
  if (temperatureUnit | *(equalCopy + 16))
  {
    if (![(NSString *)temperatureUnit isEqual:?])
    {
      goto LABEL_60;
    }
  }

  loggingAssistantId = self->_loggingAssistantId;
  if (loggingAssistantId | *(equalCopy + 7))
  {
    if (![(NSString *)loggingAssistantId isEqual:?])
    {
      goto LABEL_60;
    }
  }

  loggingSharedId = self->_loggingSharedId;
  if (loggingSharedId | *(equalCopy + 8))
  {
    if (![(NSString *)loggingSharedId isEqual:?])
    {
      goto LABEL_60;
    }
  }

  storeFrontId = self->_storeFrontId;
  if (storeFrontId | *(equalCopy + 15))
  {
    if (![(NSString *)storeFrontId isEqual:?])
    {
      goto LABEL_60;
    }
  }

  airplayRouteId = self->_airplayRouteId;
  if (airplayRouteId | *(equalCopy + 1))
  {
    if (![(NSString *)airplayRouteId isEqual:?])
    {
      goto LABEL_60;
    }
  }

  ekToken = self->_ekToken;
  if (ekToken | *(equalCopy + 4))
  {
    if (![(NSString *)ekToken isEqual:?])
    {
      goto LABEL_60;
    }
  }

  userToken = self->_userToken;
  if (userToken | *(equalCopy + 19))
  {
    if (![(NSString *)userToken isEqual:?])
    {
      goto LABEL_60;
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((equalCopy[176] & 0x20) == 0)
    {
      goto LABEL_60;
    }

    if (self->_isRemotePlaybackDevice)
    {
      if ((equalCopy[173] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (equalCopy[173])
    {
      goto LABEL_60;
    }
  }

  else if ((equalCopy[176] & 0x20) != 0)
  {
    goto LABEL_60;
  }

  userAssignedName = self->_userAssignedName;
  if (userAssignedName | *(equalCopy + 18) && ![(NSString *)userAssignedName isEqual:?])
  {
    goto LABEL_60;
  }

  utsRequiredRequestData = self->_utsRequiredRequestData;
  if (utsRequiredRequestData | *(equalCopy + 20))
  {
    if (![(_ADPBDeviceStringKeyValueDictionary *)utsRequiredRequestData isEqual:?])
    {
      goto LABEL_60;
    }
  }

  dataSharingOptInStatus = self->_dataSharingOptInStatus;
  if (dataSharingOptInStatus | *(equalCopy + 3))
  {
    if (![(NSString *)dataSharingOptInStatus isEqual:?])
    {
      goto LABEL_60;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((equalCopy[176] & 8) != 0)
    {
      if (self->_fullUodEnabled)
      {
        if (equalCopy[171])
        {
          goto LABEL_108;
        }
      }

      else if (!equalCopy[171])
      {
LABEL_108:
        v28 = 1;
        goto LABEL_61;
      }
    }

LABEL_60:
    v28 = 0;
    goto LABEL_61;
  }

  v28 = (equalCopy[176] & 8) == 0;
LABEL_61:

  return v28;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x80000000) != 0)
  {
    v5[175] = self->_siriEnabled;
    v5[176] |= 0x80u;
  }

  v7 = [(NSString *)self->_speechId copyWithZone:zone];
  v8 = v6[14];
  v6[14] = v7;

  v9 = [(NSString *)self->_languageCode copyWithZone:zone];
  v10 = v6[6];
  v6[6] = v9;

  v11 = [(NSString *)self->_assistantId copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(NSString *)self->_hostname copyWithZone:zone];
  v14 = v6[5];
  v6[5] = v13;

  has = self->_has;
  if (has)
  {
    *(v6 + 168) = self->_activityContinuationAllowed;
    *(v6 + 176) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 170) = self->_dictationEnabled;
    *(v6 + 176) |= 4u;
  }

  v16 = [(NSString *)self->_sharedId copyWithZone:zone];
  v17 = v6[13];
  v6[13] = v16;

  v18 = [(NSString *)self->_previousLangaugeCode copyWithZone:zone];
  v19 = v6[11];
  v6[11] = v18;

  v20 = [(_ADPBDeviceOutputVoiceInfo *)self->_previousOutputVoice copyWithZone:zone];
  v21 = v6[12];
  v6[12] = v20;

  v22 = [(_ADPBDeviceOutputVoiceInfo *)self->_outputVoice copyWithZone:zone];
  v23 = v6[10];
  v6[10] = v22;

  v24 = self->_has;
  if ((v24 & 2) != 0)
  {
    *(v6 + 169) = self->_cloudSyncEnabled;
    *(v6 + 176) |= 2u;
    v24 = self->_has;
  }

  if ((v24 & 0x40) != 0)
  {
    *(v6 + 174) = self->_shouldCensorSpeech;
    *(v6 + 176) |= 0x40u;
  }

  v25 = [(NSString *)self->_userAgent copyWithZone:zone];
  v26 = v6[17];
  v6[17] = v25;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 172) = self->_isLocationSharingDevice;
    *(v6 + 176) |= 0x10u;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v27 = self->_notificationPreviewRestrictedApps;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v55;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v55 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v54 + 1) + 8 * i) copyWithZone:{zone, v54}];
        [v6 addNotificationPreviewRestrictedApps:v32];
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v29);
  }

  v33 = [(NSString *)self->_temperatureUnit copyWithZone:zone];
  v34 = v6[16];
  v6[16] = v33;

  v35 = [(NSString *)self->_loggingAssistantId copyWithZone:zone];
  v36 = v6[7];
  v6[7] = v35;

  v37 = [(NSString *)self->_loggingSharedId copyWithZone:zone];
  v38 = v6[8];
  v6[8] = v37;

  v39 = [(NSString *)self->_storeFrontId copyWithZone:zone];
  v40 = v6[15];
  v6[15] = v39;

  v41 = [(NSString *)self->_airplayRouteId copyWithZone:zone];
  v42 = v6[1];
  v6[1] = v41;

  v43 = [(NSString *)self->_ekToken copyWithZone:zone];
  v44 = v6[4];
  v6[4] = v43;

  v45 = [(NSString *)self->_userToken copyWithZone:zone];
  v46 = v6[19];
  v6[19] = v45;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 173) = self->_isRemotePlaybackDevice;
    *(v6 + 176) |= 0x20u;
  }

  v47 = [(NSString *)self->_userAssignedName copyWithZone:zone, v54];
  v48 = v6[18];
  v6[18] = v47;

  v49 = [(_ADPBDeviceStringKeyValueDictionary *)self->_utsRequiredRequestData copyWithZone:zone];
  v50 = v6[20];
  v6[20] = v49;

  v51 = [(NSString *)self->_dataSharingOptInStatus copyWithZone:zone];
  v52 = v6[3];
  v6[3] = v51;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 171) = self->_fullUodEnabled;
    *(v6 + 176) |= 8u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x80000000) != 0)
  {
    toCopy[175] = self->_siriEnabled;
    toCopy[176] |= 0x80u;
  }

  v12 = toCopy;
  if (self->_speechId)
  {
    [toCopy setSpeechId:?];
    toCopy = v12;
  }

  if (self->_languageCode)
  {
    [v12 setLanguageCode:?];
    toCopy = v12;
  }

  if (self->_assistantId)
  {
    [v12 setAssistantId:?];
    toCopy = v12;
  }

  if (self->_hostname)
  {
    [v12 setHostname:?];
    toCopy = v12;
  }

  has = self->_has;
  if (has)
  {
    toCopy[168] = self->_activityContinuationAllowed;
    toCopy[176] |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[170] = self->_dictationEnabled;
    toCopy[176] |= 4u;
  }

  if (self->_sharedId)
  {
    [v12 setSharedId:?];
    toCopy = v12;
  }

  if (self->_previousLangaugeCode)
  {
    [v12 setPreviousLangaugeCode:?];
    toCopy = v12;
  }

  if (self->_previousOutputVoice)
  {
    [v12 setPreviousOutputVoice:?];
    toCopy = v12;
  }

  if (self->_outputVoice)
  {
    [v12 setOutputVoice:?];
    toCopy = v12;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    toCopy[169] = self->_cloudSyncEnabled;
    toCopy[176] |= 2u;
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {
    toCopy[174] = self->_shouldCensorSpeech;
    toCopy[176] |= 0x40u;
  }

  if (self->_userAgent)
  {
    [v12 setUserAgent:?];
    toCopy = v12;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    toCopy[172] = self->_isLocationSharingDevice;
    toCopy[176] |= 0x10u;
  }

  if ([(_ADPBDeviceSetDataRequest *)self notificationPreviewRestrictedAppsCount])
  {
    [v12 clearNotificationPreviewRestrictedApps];
    notificationPreviewRestrictedAppsCount = [(_ADPBDeviceSetDataRequest *)self notificationPreviewRestrictedAppsCount];
    if (notificationPreviewRestrictedAppsCount)
    {
      v8 = notificationPreviewRestrictedAppsCount;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(_ADPBDeviceSetDataRequest *)self notificationPreviewRestrictedAppsAtIndex:i];
        [v12 addNotificationPreviewRestrictedApps:v10];
      }
    }
  }

  if (self->_temperatureUnit)
  {
    [v12 setTemperatureUnit:?];
  }

  v11 = v12;
  if (self->_loggingAssistantId)
  {
    [v12 setLoggingAssistantId:?];
    v11 = v12;
  }

  if (self->_loggingSharedId)
  {
    [v12 setLoggingSharedId:?];
    v11 = v12;
  }

  if (self->_storeFrontId)
  {
    [v12 setStoreFrontId:?];
    v11 = v12;
  }

  if (self->_airplayRouteId)
  {
    [v12 setAirplayRouteId:?];
    v11 = v12;
  }

  if (self->_ekToken)
  {
    [v12 setEkToken:?];
    v11 = v12;
  }

  if (self->_userToken)
  {
    [v12 setUserToken:?];
    v11 = v12;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v11[173] = self->_isRemotePlaybackDevice;
    v11[176] |= 0x20u;
  }

  if (self->_userAssignedName)
  {
    [v12 setUserAssignedName:?];
    v11 = v12;
  }

  if (self->_utsRequiredRequestData)
  {
    [v12 setUtsRequiredRequestData:?];
    v11 = v12;
  }

  if (self->_dataSharingOptInStatus)
  {
    [v12 setDataSharingOptInStatus:?];
    v11 = v12;
  }

  if ((*&self->_has & 8) != 0)
  {
    v11[171] = self->_fullUodEnabled;
    v11[176] |= 8u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x80000000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_speechId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_languageCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assistantId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hostname)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_sharedId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_previousLangaugeCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_previousOutputVoice)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_outputVoice)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_userAgent)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_notificationPreviewRestrictedApps;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if (self->_temperatureUnit)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_loggingAssistantId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_loggingSharedId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_storeFrontId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_airplayRouteId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ekToken)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userToken)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_userAssignedName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_utsRequiredRequestData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dataSharingOptInStatus)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (BOOL)readFrom:(id)from
{
  fromCopy2 = from;
  while (2)
  {
    position = [fromCopy2 position];
    if (position >= [from length] || (objc_msgSend(from, "hasError") & 1) != 0)
    {
      return [from hasError] ^ 1;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      LOBYTE(v71) = 0;
      v10 = [from position] + 1;
      if (v10 >= [from position] && (v11 = objc_msgSend(from, "position") + 1, v11 <= objc_msgSend(from, "length")))
      {
        data = [from data];
        [data getBytes:&v71 range:{objc_msgSend(from, "position"), 1}];

        [from setPosition:{objc_msgSend(from, "position") + 1}];
      }

      else
      {
        [from _setError];
      }

      v9 |= (v71 & 0x7F) << v7;
      if ((v71 & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      v13 = v8++ >= 9;
      if (v13)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [from hasError] ? 0 : v9;
LABEL_16:
    if (([from hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      return [from hasError] ^ 1;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *&self->_has |= 0x80u;
        while (1)
        {
          LOBYTE(v71) = 0;
          v18 = [from position] + 1;
          if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:&v71 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v17 |= (v71 & 0x7F) << v15;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v13 = v16++ >= 9;
          if (v13)
          {
            LOBYTE(v21) = 0;
LABEL_130:
            v69 = 175;
            goto LABEL_137;
          }
        }

        v21 = (v17 != 0) & ~[from hasError];
        goto LABEL_130;
      case 4u:
        v22 = PBReaderReadString();
        v23 = 112;
        goto LABEL_120;
      case 5u:
        v22 = PBReaderReadString();
        v23 = 48;
        goto LABEL_120;
      case 6u:
        v22 = PBReaderReadString();
        v23 = 16;
        goto LABEL_120;
      case 7u:
        v22 = PBReaderReadString();
        v23 = 40;
        goto LABEL_120;
      case 8u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v71) = 0;
          v59 = [from position] + 1;
          if (v59 >= [from position] && (v60 = objc_msgSend(from, "position") + 1, v60 <= objc_msgSend(from, "length")))
          {
            data3 = [from data];
            [data3 getBytes:&v71 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v58 |= (v71 & 0x7F) << v56;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v13 = v57++ >= 9;
          if (v13)
          {
            LOBYTE(v21) = 0;
            goto LABEL_134;
          }
        }

        v21 = (v58 != 0) & ~[from hasError];
LABEL_134:
        v69 = 168;
        goto LABEL_137;
      case 9u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *&self->_has |= 4u;
        while (1)
        {
          LOBYTE(v71) = 0;
          v46 = [from position] + 1;
          if (v46 >= [from position] && (v47 = objc_msgSend(from, "position") + 1, v47 <= objc_msgSend(from, "length")))
          {
            data4 = [from data];
            [data4 getBytes:&v71 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v45 |= (v71 & 0x7F) << v43;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v13 = v44++ >= 9;
          if (v13)
          {
            LOBYTE(v21) = 0;
            goto LABEL_128;
          }
        }

        v21 = (v45 != 0) & ~[from hasError];
LABEL_128:
        v69 = 170;
        goto LABEL_137;
      case 0xAu:
        v22 = PBReaderReadString();
        v23 = 104;
        goto LABEL_120;
      case 0xBu:
        v22 = PBReaderReadString();
        v23 = 88;
        goto LABEL_120;
      case 0xCu:
        v24 = objc_alloc_init(_ADPBDeviceOutputVoiceInfo);
        v49 = 96;
        goto LABEL_103;
      case 0xDu:
        v24 = objc_alloc_init(_ADPBDeviceOutputVoiceInfo);
        v49 = 80;
LABEL_103:
        objc_storeStrong(&self->PBRequest_opaque[v49], v24);
        v71 = 0;
        v72 = 0;
        if (PBReaderPlaceMark() && sub_100143A78(v24, from))
        {
          goto LABEL_105;
        }

        goto LABEL_140;
      case 0xEu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          LOBYTE(v71) = 0;
          v40 = [from position] + 1;
          if (v40 >= [from position] && (v41 = objc_msgSend(from, "position") + 1, v41 <= objc_msgSend(from, "length")))
          {
            data5 = [from data];
            [data5 getBytes:&v71 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v39 |= (v71 & 0x7F) << v37;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v13 = v38++ >= 9;
          if (v13)
          {
            LOBYTE(v21) = 0;
            goto LABEL_126;
          }
        }

        v21 = (v39 != 0) & ~[from hasError];
LABEL_126:
        v69 = 169;
        goto LABEL_137;
      case 0xFu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *&self->_has |= 0x40u;
        while (1)
        {
          LOBYTE(v71) = 0;
          v34 = [from position] + 1;
          if (v34 >= [from position] && (v35 = objc_msgSend(from, "position") + 1, v35 <= objc_msgSend(from, "length")))
          {
            data6 = [from data];
            [data6 getBytes:&v71 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v33 |= (v71 & 0x7F) << v31;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v13 = v32++ >= 9;
          if (v13)
          {
            LOBYTE(v21) = 0;
            goto LABEL_124;
          }
        }

        v21 = (v33 != 0) & ~[from hasError];
LABEL_124:
        v69 = 174;
        goto LABEL_137;
      case 0x10u:
        v22 = PBReaderReadString();
        v23 = 136;
        goto LABEL_120;
      case 0x11u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *&self->_has |= 0x10u;
        while (1)
        {
          LOBYTE(v71) = 0;
          v53 = [from position] + 1;
          if (v53 >= [from position] && (v54 = objc_msgSend(from, "position") + 1, v54 <= objc_msgSend(from, "length")))
          {
            data7 = [from data];
            [data7 getBytes:&v71 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v52 |= (v71 & 0x7F) << v50;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v13 = v51++ >= 9;
          if (v13)
          {
            LOBYTE(v21) = 0;
            goto LABEL_132;
          }
        }

        v21 = (v52 != 0) & ~[from hasError];
LABEL_132:
        v69 = 172;
        goto LABEL_137;
      case 0x12u:
        v24 = PBReaderReadString();
        if (v24)
        {
          [(_ADPBDeviceSetDataRequest *)self addNotificationPreviewRestrictedApps:v24];
        }

        goto LABEL_106;
      case 0x13u:
        v22 = PBReaderReadString();
        v23 = 128;
        goto LABEL_120;
      case 0x14u:
        v22 = PBReaderReadString();
        v23 = 56;
        goto LABEL_120;
      case 0x15u:
        v22 = PBReaderReadString();
        v23 = 64;
        goto LABEL_120;
      case 0x16u:
        v22 = PBReaderReadString();
        v23 = 120;
        goto LABEL_120;
      case 0x17u:
        v22 = PBReaderReadString();
        v23 = 8;
        goto LABEL_120;
      case 0x18u:
        v22 = PBReaderReadString();
        v23 = 32;
        goto LABEL_120;
      case 0x19u:
        v22 = PBReaderReadString();
        v23 = 152;
        goto LABEL_120;
      case 0x1Au:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *&self->_has |= 0x20u;
        while (1)
        {
          LOBYTE(v71) = 0;
          v28 = [from position] + 1;
          if (v28 >= [from position] && (v29 = objc_msgSend(from, "position") + 1, v29 <= objc_msgSend(from, "length")))
          {
            data8 = [from data];
            [data8 getBytes:&v71 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v27 |= (v71 & 0x7F) << v25;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            LOBYTE(v21) = 0;
            goto LABEL_122;
          }
        }

        v21 = (v27 != 0) & ~[from hasError];
LABEL_122:
        v69 = 173;
        goto LABEL_137;
      case 0x1Bu:
        v22 = PBReaderReadString();
        v23 = 144;
        goto LABEL_120;
      case 0x1Cu:
        v24 = objc_alloc_init(_ADPBDeviceStringKeyValueDictionary);
        objc_storeStrong(&self->_utsRequiredRequestData, v24);
        v71 = 0;
        v72 = 0;
        if (PBReaderPlaceMark() && sub_100358760(v24, from))
        {
LABEL_105:
          PBReaderRecallMark();
LABEL_106:

LABEL_138:
          fromCopy2 = from;
          continue;
        }

LABEL_140:

        return 0;
      case 0x1Du:
        v22 = PBReaderReadString();
        v23 = 24;
LABEL_120:
        v68 = *&self->PBRequest_opaque[v23];
        *&self->PBRequest_opaque[v23] = v22;

        goto LABEL_138;
      case 0x1Eu:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *&self->_has |= 8u;
        while (1)
        {
          LOBYTE(v71) = 0;
          v65 = [from position] + 1;
          if (v65 >= [from position] && (v66 = objc_msgSend(from, "position") + 1, v66 <= objc_msgSend(from, "length")))
          {
            data9 = [from data];
            [data9 getBytes:&v71 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v64 |= (v71 & 0x7F) << v62;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v13 = v63++ >= 9;
          if (v13)
          {
            LOBYTE(v21) = 0;
            goto LABEL_136;
          }
        }

        v21 = (v64 != 0) & ~[from hasError];
LABEL_136:
        v69 = 171;
LABEL_137:
        self->PBRequest_opaque[v69] = v21;
        goto LABEL_138;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_138;
    }
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v4 = [NSNumber numberWithBool:self->_siriEnabled];
    [v3 setObject:v4 forKey:@"siri_enabled"];
  }

  speechId = self->_speechId;
  if (speechId)
  {
    [v3 setObject:speechId forKey:@"speech_id"];
  }

  languageCode = self->_languageCode;
  if (languageCode)
  {
    [v3 setObject:languageCode forKey:@"language_code"];
  }

  assistantId = self->_assistantId;
  if (assistantId)
  {
    [v3 setObject:assistantId forKey:@"assistant_id"];
  }

  hostname = self->_hostname;
  if (hostname)
  {
    [v3 setObject:hostname forKey:@"hostname"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [NSNumber numberWithBool:self->_activityContinuationAllowed];
    [v3 setObject:v10 forKey:@"activity_continuation_allowed"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v11 = [NSNumber numberWithBool:self->_dictationEnabled];
    [v3 setObject:v11 forKey:@"dictation_enabled"];
  }

  sharedId = self->_sharedId;
  if (sharedId)
  {
    [v3 setObject:sharedId forKey:@"shared_id"];
  }

  previousLangaugeCode = self->_previousLangaugeCode;
  if (previousLangaugeCode)
  {
    [v3 setObject:previousLangaugeCode forKey:@"previous_langauge_code"];
  }

  previousOutputVoice = self->_previousOutputVoice;
  if (previousOutputVoice)
  {
    dictionaryRepresentation = [(_ADPBDeviceOutputVoiceInfo *)previousOutputVoice dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"previous_output_voice"];
  }

  outputVoice = self->_outputVoice;
  if (outputVoice)
  {
    dictionaryRepresentation2 = [(_ADPBDeviceOutputVoiceInfo *)outputVoice dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"output_voice"];
  }

  v18 = self->_has;
  if ((v18 & 2) != 0)
  {
    v19 = [NSNumber numberWithBool:self->_cloudSyncEnabled];
    [v3 setObject:v19 forKey:@"cloud_sync_enabled"];

    v18 = self->_has;
  }

  if ((v18 & 0x40) != 0)
  {
    v20 = [NSNumber numberWithBool:self->_shouldCensorSpeech];
    [v3 setObject:v20 forKey:@"should_censor_speech"];
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [v3 setObject:userAgent forKey:@"user_agent"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v22 = [NSNumber numberWithBool:self->_isLocationSharingDevice];
    [v3 setObject:v22 forKey:@"is_location_sharing_device"];
  }

  notificationPreviewRestrictedApps = self->_notificationPreviewRestrictedApps;
  if (notificationPreviewRestrictedApps)
  {
    [v3 setObject:notificationPreviewRestrictedApps forKey:@"notification_preview_restricted_apps"];
  }

  temperatureUnit = self->_temperatureUnit;
  if (temperatureUnit)
  {
    [v3 setObject:temperatureUnit forKey:@"temperature_unit"];
  }

  loggingAssistantId = self->_loggingAssistantId;
  if (loggingAssistantId)
  {
    [v3 setObject:loggingAssistantId forKey:@"logging_assistant_id"];
  }

  loggingSharedId = self->_loggingSharedId;
  if (loggingSharedId)
  {
    [v3 setObject:loggingSharedId forKey:@"logging_shared_id"];
  }

  storeFrontId = self->_storeFrontId;
  if (storeFrontId)
  {
    [v3 setObject:storeFrontId forKey:@"store_front_id"];
  }

  airplayRouteId = self->_airplayRouteId;
  if (airplayRouteId)
  {
    [v3 setObject:airplayRouteId forKey:@"airplay_route_id"];
  }

  ekToken = self->_ekToken;
  if (ekToken)
  {
    [v3 setObject:ekToken forKey:@"ek_token"];
  }

  userToken = self->_userToken;
  if (userToken)
  {
    [v3 setObject:userToken forKey:@"user_token"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v31 = [NSNumber numberWithBool:self->_isRemotePlaybackDevice];
    [v3 setObject:v31 forKey:@"is_remote_playback_device"];
  }

  userAssignedName = self->_userAssignedName;
  if (userAssignedName)
  {
    [v3 setObject:userAssignedName forKey:@"user_assigned_name"];
  }

  utsRequiredRequestData = self->_utsRequiredRequestData;
  if (utsRequiredRequestData)
  {
    dictionaryRepresentation3 = [(_ADPBDeviceStringKeyValueDictionary *)utsRequiredRequestData dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"uts_required_request_data"];
  }

  dataSharingOptInStatus = self->_dataSharingOptInStatus;
  if (dataSharingOptInStatus)
  {
    [v3 setObject:dataSharingOptInStatus forKey:@"data_sharing_opt_in_status"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v36 = [NSNumber numberWithBool:self->_fullUodEnabled];
    [v3 setObject:v36 forKey:@"full_uod_enabled"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _ADPBDeviceSetDataRequest;
  v3 = [(_ADPBDeviceSetDataRequest *)&v7 description];
  dictionaryRepresentation = [(_ADPBDeviceSetDataRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasFullUodEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsRemotePlaybackDevice:(BOOL)device
{
  if (device)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)addNotificationPreviewRestrictedApps:(id)apps
{
  appsCopy = apps;
  notificationPreviewRestrictedApps = self->_notificationPreviewRestrictedApps;
  v8 = appsCopy;
  if (!notificationPreviewRestrictedApps)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_notificationPreviewRestrictedApps;
    self->_notificationPreviewRestrictedApps = v6;

    appsCopy = v8;
    notificationPreviewRestrictedApps = self->_notificationPreviewRestrictedApps;
  }

  [(NSMutableArray *)notificationPreviewRestrictedApps addObject:appsCopy];
}

- (void)setHasIsLocationSharingDevice:(BOOL)device
{
  if (device)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasShouldCensorSpeech:(BOOL)speech
{
  if (speech)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasCloudSyncEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDictationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSiriEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)_ad_performWithCloudService:(id)service fromPeer:(id)peer completion:(id)completion
{
  serviceCopy = service;
  peerCopy = peer;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[_ADPBDeviceSetDataRequest(ADPeerCloudService) _ad_performWithCloudService:fromPeer:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", &v13, 0xCu);
  }

  _ad_data = [(_ADPBDeviceSetDataRequest *)self _ad_data];
  [serviceCopy _notifyObserversOfSharedData:_ad_data fromPeer:peerCopy];

  (*(completionCopy + 2))(completionCopy, 0, 0xFFFFLL, 0);
}

- (void)_ad_setData:(id)data
{
  dataCopy = data;
  -[_ADPBDeviceSetDataRequest setSiriEnabled:](self, "setSiriEnabled:", [dataCopy siriEnabled]);
  -[_ADPBDeviceSetDataRequest setDictationEnabled:](self, "setDictationEnabled:", [dataCopy dictationEnabled]);
  assistantId = [dataCopy assistantId];
  [(_ADPBDeviceSetDataRequest *)self setAssistantId:assistantId];

  loggingAssistantId = [dataCopy loggingAssistantId];
  [(_ADPBDeviceSetDataRequest *)self setLoggingAssistantId:loggingAssistantId];

  speechId = [dataCopy speechId];
  [(_ADPBDeviceSetDataRequest *)self setSpeechId:speechId];

  sharedUserId = [dataCopy sharedUserId];
  [(_ADPBDeviceSetDataRequest *)self setSharedId:sharedUserId];

  loggingSharedUserId = [dataCopy loggingSharedUserId];
  [(_ADPBDeviceSetDataRequest *)self setLoggingSharedId:loggingSharedUserId];

  languageCode = [dataCopy languageCode];
  [(_ADPBDeviceSetDataRequest *)self setLanguageCode:languageCode];

  previousLanguageCode = [dataCopy previousLanguageCode];
  [(_ADPBDeviceSetDataRequest *)self setPreviousLangaugeCode:previousLanguageCode];

  v12 = objc_alloc_init(_ADPBDeviceOutputVoiceInfo);
  outputVoice = [dataCopy outputVoice];
  [(_ADPBDeviceOutputVoiceInfo *)v12 _ad_setVoiceInfo:outputVoice];

  [(_ADPBDeviceSetDataRequest *)self setOutputVoice:v12];
  v14 = objc_alloc_init(_ADPBDeviceOutputVoiceInfo);
  previousOutputVoice = [dataCopy previousOutputVoice];
  [(_ADPBDeviceOutputVoiceInfo *)v14 _ad_setVoiceInfo:previousOutputVoice];

  [(_ADPBDeviceSetDataRequest *)self setPreviousOutputVoice:v14];
  hostname = [dataCopy hostname];
  [(_ADPBDeviceSetDataRequest *)self setHostname:hostname];

  -[_ADPBDeviceSetDataRequest setCloudSyncEnabled:](self, "setCloudSyncEnabled:", [dataCopy cloudSyncEnabled]);
  -[_ADPBDeviceSetDataRequest setShouldCensorSpeech:](self, "setShouldCensorSpeech:", [dataCopy shouldCensorSpeech]);
  userAgent = [dataCopy userAgent];
  [(_ADPBDeviceSetDataRequest *)self setUserAgent:userAgent];

  -[_ADPBDeviceSetDataRequest setIsLocationSharingDevice:](self, "setIsLocationSharingDevice:", [dataCopy isLocationSharingDevice]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  notificationPreviewRestrictedApps = [dataCopy notificationPreviewRestrictedApps];
  v19 = [notificationPreviewRestrictedApps countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      v22 = 0;
      do
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(notificationPreviewRestrictedApps);
        }

        [(_ADPBDeviceSetDataRequest *)self addNotificationPreviewRestrictedApps:*(*(&v32 + 1) + 8 * v22)];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [notificationPreviewRestrictedApps countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v20);
  }

  temperatureUnit = [dataCopy temperatureUnit];
  [(_ADPBDeviceSetDataRequest *)self setTemperatureUnit:temperatureUnit];

  airplayRouteId = [dataCopy airplayRouteId];
  [(_ADPBDeviceSetDataRequest *)self setAirplayRouteId:airplayRouteId];

  storeFrontId = [dataCopy storeFrontId];
  [(_ADPBDeviceSetDataRequest *)self setStoreFrontId:storeFrontId];

  ekToken = [dataCopy ekToken];
  [(_ADPBDeviceSetDataRequest *)self setEkToken:ekToken];

  userToken = [dataCopy userToken];
  [(_ADPBDeviceSetDataRequest *)self setUserToken:userToken];

  -[_ADPBDeviceSetDataRequest setIsRemotePlaybackDevice:](self, "setIsRemotePlaybackDevice:", [dataCopy isRemotePlaybackDevice]);
  userAssignedName = [dataCopy userAssignedName];
  [(_ADPBDeviceSetDataRequest *)self setUserAssignedName:userAssignedName];

  utsRequiredRequestKeyValuePairs = [dataCopy utsRequiredRequestKeyValuePairs];
  v30 = [_ADPBDeviceStringKeyValueDictionary _ad_keyValueDictionaryWithDictionary:utsRequiredRequestKeyValuePairs];
  [(_ADPBDeviceSetDataRequest *)self setUtsRequiredRequestData:v30];

  dataSharingOptInStatus = [dataCopy dataSharingOptInStatus];
  [(_ADPBDeviceSetDataRequest *)self setDataSharingOptInStatus:dataSharingOptInStatus];

  -[_ADPBDeviceSetDataRequest setFullUodEnabled:](self, "setFullUodEnabled:", [dataCopy isFullUodEnabled]);
}

- (ADSharedData)_ad_data
{
  v3 = objc_alloc_init(ADSharedData);
  [(ADSharedData *)v3 setSiriEnabled:[(_ADPBDeviceSetDataRequest *)self siriEnabled]];
  [(ADSharedData *)v3 setDictationEnabled:[(_ADPBDeviceSetDataRequest *)self dictationEnabled]];
  assistantId = [(_ADPBDeviceSetDataRequest *)self assistantId];
  [(ADSharedData *)v3 setAssistantId:assistantId];

  loggingAssistantId = [(_ADPBDeviceSetDataRequest *)self loggingAssistantId];
  [(ADSharedData *)v3 setLoggingAssistantId:loggingAssistantId];

  speechId = [(_ADPBDeviceSetDataRequest *)self speechId];
  [(ADSharedData *)v3 setSpeechId:speechId];

  sharedId = [(_ADPBDeviceSetDataRequest *)self sharedId];
  [(ADSharedData *)v3 setSharedUserId:sharedId];

  loggingSharedId = [(_ADPBDeviceSetDataRequest *)self loggingSharedId];
  [(ADSharedData *)v3 setLoggingSharedUserId:loggingSharedId];

  languageCode = [(_ADPBDeviceSetDataRequest *)self languageCode];
  [(ADSharedData *)v3 setLanguageCode:languageCode];

  previousLangaugeCode = [(_ADPBDeviceSetDataRequest *)self previousLangaugeCode];
  [(ADSharedData *)v3 setPreviousLanguageCode:previousLangaugeCode];

  outputVoice = [(_ADPBDeviceSetDataRequest *)self outputVoice];
  _ad_voiceInfo = [outputVoice _ad_voiceInfo];
  [(ADSharedData *)v3 setOutputVoice:_ad_voiceInfo];

  previousOutputVoice = [(_ADPBDeviceSetDataRequest *)self previousOutputVoice];
  _ad_voiceInfo2 = [previousOutputVoice _ad_voiceInfo];
  [(ADSharedData *)v3 setPreviousOutputVoice:_ad_voiceInfo2];

  hostname = [(_ADPBDeviceSetDataRequest *)self hostname];
  [(ADSharedData *)v3 setHostname:hostname];

  [(ADSharedData *)v3 setCloudSyncEnabled:[(_ADPBDeviceSetDataRequest *)self cloudSyncEnabled]];
  [(ADSharedData *)v3 setShouldCensorSpeech:[(_ADPBDeviceSetDataRequest *)self shouldCensorSpeech]];
  userAgent = [(_ADPBDeviceSetDataRequest *)self userAgent];
  [(ADSharedData *)v3 setUserAgent:userAgent];

  [(ADSharedData *)v3 setIsLocationSharingDevice:[(_ADPBDeviceSetDataRequest *)self isLocationSharingDevice]];
  notificationPreviewRestrictedApps = [(_ADPBDeviceSetDataRequest *)self notificationPreviewRestrictedApps];
  [(ADSharedData *)v3 setNotificationPreviewRestrictedApps:notificationPreviewRestrictedApps];

  temperatureUnit = [(_ADPBDeviceSetDataRequest *)self temperatureUnit];
  [(ADSharedData *)v3 setTemperatureUnit:temperatureUnit];

  airplayRouteId = [(_ADPBDeviceSetDataRequest *)self airplayRouteId];
  [(ADSharedData *)v3 setAirplayRouteId:airplayRouteId];

  storeFrontId = [(_ADPBDeviceSetDataRequest *)self storeFrontId];
  [(ADSharedData *)v3 setStoreFrontId:storeFrontId];

  ekToken = [(_ADPBDeviceSetDataRequest *)self ekToken];
  [(ADSharedData *)v3 setEkToken:ekToken];

  userToken = [(_ADPBDeviceSetDataRequest *)self userToken];
  [(ADSharedData *)v3 setUserToken:userToken];

  [(ADSharedData *)v3 setIsRemotePlaybackDevice:[(_ADPBDeviceSetDataRequest *)self isRemotePlaybackDevice]];
  userAssignedName = [(_ADPBDeviceSetDataRequest *)self userAssignedName];
  [(ADSharedData *)v3 setUserAssignedName:userAssignedName];

  utsRequiredRequestData = [(_ADPBDeviceSetDataRequest *)self utsRequiredRequestData];
  _ad_dictionaryRepresentation = [utsRequiredRequestData _ad_dictionaryRepresentation];
  [(ADSharedData *)v3 setUtsRequiredRequestKeyValuePairs:_ad_dictionaryRepresentation];

  dataSharingOptInStatus = [(_ADPBDeviceSetDataRequest *)self dataSharingOptInStatus];
  [(ADSharedData *)v3 setDataSharingOptInStatus:dataSharingOptInStatus];

  [(ADSharedData *)v3 setIsFullUodEnabled:[(_ADPBDeviceSetDataRequest *)self fullUodEnabled]];

  return v3;
}

@end