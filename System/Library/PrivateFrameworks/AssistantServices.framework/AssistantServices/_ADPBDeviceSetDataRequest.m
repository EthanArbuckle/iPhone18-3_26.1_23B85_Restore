@interface _ADPBDeviceSetDataRequest
- (ADSharedData)_ad_data;
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_ad_performWithCloudService:(id)a3 fromPeer:(id)a4 completion:(id)a5;
- (void)_ad_performWithSharedDataRemote:(id)a3 completion:(id)a4;
- (void)_ad_setData:(id)a3;
- (void)addNotificationPreviewRestrictedApps:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCloudSyncEnabled:(BOOL)a3;
- (void)setHasDictationEnabled:(BOOL)a3;
- (void)setHasFullUodEnabled:(BOOL)a3;
- (void)setHasIsLocationSharingDevice:(BOOL)a3;
- (void)setHasIsRemotePlaybackDevice:(BOOL)a3;
- (void)setHasShouldCensorSpeech:(BOOL)a3;
- (void)setHasSiriEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _ADPBDeviceSetDataRequest

- (void)_ad_performWithSharedDataRemote:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(_ADPBDeviceSetDataRequest *)self _ad_data];
  [v6 _dataDidUpdate:v7];

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 0, 0);
    v8 = v9;
  }
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[176] < 0)
  {
    self->_siriEnabled = v4[175];
    *&self->_has |= 0x80u;
  }

  if (*(v4 + 14))
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  v5 = v4[176];
  if ((*&self->_has & 0x80000000) != 0)
  {
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    if (self->_siriEnabled)
    {
      if ((v4[175] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v4[175])
    {
      goto LABEL_60;
    }
  }

  else if (v5 < 0)
  {
    goto LABEL_60;
  }

  speechId = self->_speechId;
  if (speechId | *(v4 + 14) && ![(NSString *)speechId isEqual:?])
  {
    goto LABEL_60;
  }

  languageCode = self->_languageCode;
  if (languageCode | *(v4 + 6))
  {
    if (![(NSString *)languageCode isEqual:?])
    {
      goto LABEL_60;
    }
  }

  assistantId = self->_assistantId;
  if (assistantId | *(v4 + 2))
  {
    if (![(NSString *)assistantId isEqual:?])
    {
      goto LABEL_60;
    }
  }

  hostname = self->_hostname;
  if (hostname | *(v4 + 5))
  {
    if (![(NSString *)hostname isEqual:?])
    {
      goto LABEL_60;
    }
  }

  if (*&self->_has)
  {
    if ((v4[176] & 1) == 0)
    {
      goto LABEL_60;
    }

    if (self->_activityContinuationAllowed)
    {
      if ((v4[168] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v4[168])
    {
      goto LABEL_60;
    }
  }

  else if (v4[176])
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((v4[176] & 4) == 0)
    {
      goto LABEL_60;
    }

    if (self->_dictationEnabled)
    {
      if ((v4[170] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v4[170])
    {
      goto LABEL_60;
    }
  }

  else if ((v4[176] & 4) != 0)
  {
    goto LABEL_60;
  }

  sharedId = self->_sharedId;
  if (sharedId | *(v4 + 13) && ![(NSString *)sharedId isEqual:?])
  {
    goto LABEL_60;
  }

  previousLangaugeCode = self->_previousLangaugeCode;
  if (previousLangaugeCode | *(v4 + 11))
  {
    if (![(NSString *)previousLangaugeCode isEqual:?])
    {
      goto LABEL_60;
    }
  }

  previousOutputVoice = self->_previousOutputVoice;
  if (previousOutputVoice | *(v4 + 12))
  {
    if (![(_ADPBDeviceOutputVoiceInfo *)previousOutputVoice isEqual:?])
    {
      goto LABEL_60;
    }
  }

  outputVoice = self->_outputVoice;
  if (outputVoice | *(v4 + 10))
  {
    if (![(_ADPBDeviceOutputVoiceInfo *)outputVoice isEqual:?])
    {
      goto LABEL_60;
    }
  }

  has = self->_has;
  v15 = v4[176];
  if ((has & 2) != 0)
  {
    if ((v4[176] & 2) == 0)
    {
      goto LABEL_60;
    }

    if (self->_cloudSyncEnabled)
    {
      if ((v4[169] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v4[169])
    {
      goto LABEL_60;
    }
  }

  else if ((v4[176] & 2) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((v4[176] & 0x40) == 0)
    {
      goto LABEL_60;
    }

    if (self->_shouldCensorSpeech)
    {
      if ((v4[174] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v4[174])
    {
      goto LABEL_60;
    }
  }

  else if ((v4[176] & 0x40) != 0)
  {
    goto LABEL_60;
  }

  userAgent = self->_userAgent;
  if (userAgent | *(v4 + 17))
  {
    if (![(NSString *)userAgent isEqual:?])
    {
      goto LABEL_60;
    }

    has = self->_has;
    v15 = v4[176];
  }

  if ((has & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_60;
    }

    if (self->_isLocationSharingDevice)
    {
      if ((v4[172] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v4[172])
    {
      goto LABEL_60;
    }
  }

  else if ((v15 & 0x10) != 0)
  {
    goto LABEL_60;
  }

  notificationPreviewRestrictedApps = self->_notificationPreviewRestrictedApps;
  if (notificationPreviewRestrictedApps | *(v4 + 9) && ![(NSMutableArray *)notificationPreviewRestrictedApps isEqual:?])
  {
    goto LABEL_60;
  }

  temperatureUnit = self->_temperatureUnit;
  if (temperatureUnit | *(v4 + 16))
  {
    if (![(NSString *)temperatureUnit isEqual:?])
    {
      goto LABEL_60;
    }
  }

  loggingAssistantId = self->_loggingAssistantId;
  if (loggingAssistantId | *(v4 + 7))
  {
    if (![(NSString *)loggingAssistantId isEqual:?])
    {
      goto LABEL_60;
    }
  }

  loggingSharedId = self->_loggingSharedId;
  if (loggingSharedId | *(v4 + 8))
  {
    if (![(NSString *)loggingSharedId isEqual:?])
    {
      goto LABEL_60;
    }
  }

  storeFrontId = self->_storeFrontId;
  if (storeFrontId | *(v4 + 15))
  {
    if (![(NSString *)storeFrontId isEqual:?])
    {
      goto LABEL_60;
    }
  }

  airplayRouteId = self->_airplayRouteId;
  if (airplayRouteId | *(v4 + 1))
  {
    if (![(NSString *)airplayRouteId isEqual:?])
    {
      goto LABEL_60;
    }
  }

  ekToken = self->_ekToken;
  if (ekToken | *(v4 + 4))
  {
    if (![(NSString *)ekToken isEqual:?])
    {
      goto LABEL_60;
    }
  }

  userToken = self->_userToken;
  if (userToken | *(v4 + 19))
  {
    if (![(NSString *)userToken isEqual:?])
    {
      goto LABEL_60;
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((v4[176] & 0x20) == 0)
    {
      goto LABEL_60;
    }

    if (self->_isRemotePlaybackDevice)
    {
      if ((v4[173] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v4[173])
    {
      goto LABEL_60;
    }
  }

  else if ((v4[176] & 0x20) != 0)
  {
    goto LABEL_60;
  }

  userAssignedName = self->_userAssignedName;
  if (userAssignedName | *(v4 + 18) && ![(NSString *)userAssignedName isEqual:?])
  {
    goto LABEL_60;
  }

  utsRequiredRequestData = self->_utsRequiredRequestData;
  if (utsRequiredRequestData | *(v4 + 20))
  {
    if (![(_ADPBDeviceStringKeyValueDictionary *)utsRequiredRequestData isEqual:?])
    {
      goto LABEL_60;
    }
  }

  dataSharingOptInStatus = self->_dataSharingOptInStatus;
  if (dataSharingOptInStatus | *(v4 + 3))
  {
    if (![(NSString *)dataSharingOptInStatus isEqual:?])
    {
      goto LABEL_60;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((v4[176] & 8) != 0)
    {
      if (self->_fullUodEnabled)
      {
        if (v4[171])
        {
          goto LABEL_108;
        }
      }

      else if (!v4[171])
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

  v28 = (v4[176] & 8) == 0;
LABEL_61:

  return v28;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x80000000) != 0)
  {
    v5[175] = self->_siriEnabled;
    v5[176] |= 0x80u;
  }

  v7 = [(NSString *)self->_speechId copyWithZone:a3];
  v8 = v6[14];
  v6[14] = v7;

  v9 = [(NSString *)self->_languageCode copyWithZone:a3];
  v10 = v6[6];
  v6[6] = v9;

  v11 = [(NSString *)self->_assistantId copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(NSString *)self->_hostname copyWithZone:a3];
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

  v16 = [(NSString *)self->_sharedId copyWithZone:a3];
  v17 = v6[13];
  v6[13] = v16;

  v18 = [(NSString *)self->_previousLangaugeCode copyWithZone:a3];
  v19 = v6[11];
  v6[11] = v18;

  v20 = [(_ADPBDeviceOutputVoiceInfo *)self->_previousOutputVoice copyWithZone:a3];
  v21 = v6[12];
  v6[12] = v20;

  v22 = [(_ADPBDeviceOutputVoiceInfo *)self->_outputVoice copyWithZone:a3];
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

  v25 = [(NSString *)self->_userAgent copyWithZone:a3];
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

        v32 = [*(*(&v54 + 1) + 8 * i) copyWithZone:{a3, v54}];
        [v6 addNotificationPreviewRestrictedApps:v32];
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v29);
  }

  v33 = [(NSString *)self->_temperatureUnit copyWithZone:a3];
  v34 = v6[16];
  v6[16] = v33;

  v35 = [(NSString *)self->_loggingAssistantId copyWithZone:a3];
  v36 = v6[7];
  v6[7] = v35;

  v37 = [(NSString *)self->_loggingSharedId copyWithZone:a3];
  v38 = v6[8];
  v6[8] = v37;

  v39 = [(NSString *)self->_storeFrontId copyWithZone:a3];
  v40 = v6[15];
  v6[15] = v39;

  v41 = [(NSString *)self->_airplayRouteId copyWithZone:a3];
  v42 = v6[1];
  v6[1] = v41;

  v43 = [(NSString *)self->_ekToken copyWithZone:a3];
  v44 = v6[4];
  v6[4] = v43;

  v45 = [(NSString *)self->_userToken copyWithZone:a3];
  v46 = v6[19];
  v6[19] = v45;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 173) = self->_isRemotePlaybackDevice;
    *(v6 + 176) |= 0x20u;
  }

  v47 = [(NSString *)self->_userAssignedName copyWithZone:a3, v54];
  v48 = v6[18];
  v6[18] = v47;

  v49 = [(_ADPBDeviceStringKeyValueDictionary *)self->_utsRequiredRequestData copyWithZone:a3];
  v50 = v6[20];
  v6[20] = v49;

  v51 = [(NSString *)self->_dataSharingOptInStatus copyWithZone:a3];
  v52 = v6[3];
  v6[3] = v51;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 171) = self->_fullUodEnabled;
    *(v6 + 176) |= 8u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x80000000) != 0)
  {
    v4[175] = self->_siriEnabled;
    v4[176] |= 0x80u;
  }

  v12 = v4;
  if (self->_speechId)
  {
    [v4 setSpeechId:?];
    v4 = v12;
  }

  if (self->_languageCode)
  {
    [v12 setLanguageCode:?];
    v4 = v12;
  }

  if (self->_assistantId)
  {
    [v12 setAssistantId:?];
    v4 = v12;
  }

  if (self->_hostname)
  {
    [v12 setHostname:?];
    v4 = v12;
  }

  has = self->_has;
  if (has)
  {
    v4[168] = self->_activityContinuationAllowed;
    v4[176] |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[170] = self->_dictationEnabled;
    v4[176] |= 4u;
  }

  if (self->_sharedId)
  {
    [v12 setSharedId:?];
    v4 = v12;
  }

  if (self->_previousLangaugeCode)
  {
    [v12 setPreviousLangaugeCode:?];
    v4 = v12;
  }

  if (self->_previousOutputVoice)
  {
    [v12 setPreviousOutputVoice:?];
    v4 = v12;
  }

  if (self->_outputVoice)
  {
    [v12 setOutputVoice:?];
    v4 = v12;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    v4[169] = self->_cloudSyncEnabled;
    v4[176] |= 2u;
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {
    v4[174] = self->_shouldCensorSpeech;
    v4[176] |= 0x40u;
  }

  if (self->_userAgent)
  {
    [v12 setUserAgent:?];
    v4 = v12;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v4[172] = self->_isLocationSharingDevice;
    v4[176] |= 0x10u;
  }

  if ([(_ADPBDeviceSetDataRequest *)self notificationPreviewRestrictedAppsCount])
  {
    [v12 clearNotificationPreviewRestrictedApps];
    v7 = [(_ADPBDeviceSetDataRequest *)self notificationPreviewRestrictedAppsCount];
    if (v7)
    {
      v8 = v7;
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

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (BOOL)readFrom:(id)a3
{
  v5 = a3;
  while (2)
  {
    v6 = [v5 position];
    if (v6 >= [a3 length] || (objc_msgSend(a3, "hasError") & 1) != 0)
    {
      return [a3 hasError] ^ 1;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      LOBYTE(v71) = 0;
      v10 = [a3 position] + 1;
      if (v10 >= [a3 position] && (v11 = objc_msgSend(a3, "position") + 1, v11 <= objc_msgSend(a3, "length")))
      {
        v12 = [a3 data];
        [v12 getBytes:&v71 range:{objc_msgSend(a3, "position"), 1}];

        [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
      }

      else
      {
        [a3 _setError];
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

    v14 = [a3 hasError] ? 0 : v9;
LABEL_16:
    if (([a3 hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      return [a3 hasError] ^ 1;
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
          v18 = [a3 position] + 1;
          if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
          {
            v20 = [a3 data];
            [v20 getBytes:&v71 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v21 = (v17 != 0) & ~[a3 hasError];
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
          v59 = [a3 position] + 1;
          if (v59 >= [a3 position] && (v60 = objc_msgSend(a3, "position") + 1, v60 <= objc_msgSend(a3, "length")))
          {
            v61 = [a3 data];
            [v61 getBytes:&v71 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v21 = (v58 != 0) & ~[a3 hasError];
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
          v46 = [a3 position] + 1;
          if (v46 >= [a3 position] && (v47 = objc_msgSend(a3, "position") + 1, v47 <= objc_msgSend(a3, "length")))
          {
            v48 = [a3 data];
            [v48 getBytes:&v71 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v21 = (v45 != 0) & ~[a3 hasError];
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
        if (PBReaderPlaceMark() && sub_100143A78(v24, a3))
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
          v40 = [a3 position] + 1;
          if (v40 >= [a3 position] && (v41 = objc_msgSend(a3, "position") + 1, v41 <= objc_msgSend(a3, "length")))
          {
            v42 = [a3 data];
            [v42 getBytes:&v71 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v21 = (v39 != 0) & ~[a3 hasError];
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
          v34 = [a3 position] + 1;
          if (v34 >= [a3 position] && (v35 = objc_msgSend(a3, "position") + 1, v35 <= objc_msgSend(a3, "length")))
          {
            v36 = [a3 data];
            [v36 getBytes:&v71 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v21 = (v33 != 0) & ~[a3 hasError];
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
          v53 = [a3 position] + 1;
          if (v53 >= [a3 position] && (v54 = objc_msgSend(a3, "position") + 1, v54 <= objc_msgSend(a3, "length")))
          {
            v55 = [a3 data];
            [v55 getBytes:&v71 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v21 = (v52 != 0) & ~[a3 hasError];
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
          v28 = [a3 position] + 1;
          if (v28 >= [a3 position] && (v29 = objc_msgSend(a3, "position") + 1, v29 <= objc_msgSend(a3, "length")))
          {
            v30 = [a3 data];
            [v30 getBytes:&v71 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v21 = (v27 != 0) & ~[a3 hasError];
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
        if (PBReaderPlaceMark() && sub_100358760(v24, a3))
        {
LABEL_105:
          PBReaderRecallMark();
LABEL_106:

LABEL_138:
          v5 = a3;
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
          v65 = [a3 position] + 1;
          if (v65 >= [a3 position] && (v66 = objc_msgSend(a3, "position") + 1, v66 <= objc_msgSend(a3, "length")))
          {
            v67 = [a3 data];
            [v67 getBytes:&v71 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        v21 = (v64 != 0) & ~[a3 hasError];
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
    v15 = [(_ADPBDeviceOutputVoiceInfo *)previousOutputVoice dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"previous_output_voice"];
  }

  outputVoice = self->_outputVoice;
  if (outputVoice)
  {
    v17 = [(_ADPBDeviceOutputVoiceInfo *)outputVoice dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"output_voice"];
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
    v34 = [(_ADPBDeviceStringKeyValueDictionary *)utsRequiredRequestData dictionaryRepresentation];
    [v3 setObject:v34 forKey:@"uts_required_request_data"];
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
  v4 = [(_ADPBDeviceSetDataRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasFullUodEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsRemotePlaybackDevice:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)addNotificationPreviewRestrictedApps:(id)a3
{
  v4 = a3;
  notificationPreviewRestrictedApps = self->_notificationPreviewRestrictedApps;
  v8 = v4;
  if (!notificationPreviewRestrictedApps)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_notificationPreviewRestrictedApps;
    self->_notificationPreviewRestrictedApps = v6;

    v4 = v8;
    notificationPreviewRestrictedApps = self->_notificationPreviewRestrictedApps;
  }

  [(NSMutableArray *)notificationPreviewRestrictedApps addObject:v4];
}

- (void)setHasIsLocationSharingDevice:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasShouldCensorSpeech:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasCloudSyncEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDictationEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSiriEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)_ad_performWithCloudService:(id)a3 fromPeer:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[_ADPBDeviceSetDataRequest(ADPeerCloudService) _ad_performWithCloudService:fromPeer:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", &v13, 0xCu);
  }

  v12 = [(_ADPBDeviceSetDataRequest *)self _ad_data];
  [v8 _notifyObserversOfSharedData:v12 fromPeer:v9];

  (*(v10 + 2))(v10, 0, 0xFFFFLL, 0);
}

- (void)_ad_setData:(id)a3
{
  v4 = a3;
  -[_ADPBDeviceSetDataRequest setSiriEnabled:](self, "setSiriEnabled:", [v4 siriEnabled]);
  -[_ADPBDeviceSetDataRequest setDictationEnabled:](self, "setDictationEnabled:", [v4 dictationEnabled]);
  v5 = [v4 assistantId];
  [(_ADPBDeviceSetDataRequest *)self setAssistantId:v5];

  v6 = [v4 loggingAssistantId];
  [(_ADPBDeviceSetDataRequest *)self setLoggingAssistantId:v6];

  v7 = [v4 speechId];
  [(_ADPBDeviceSetDataRequest *)self setSpeechId:v7];

  v8 = [v4 sharedUserId];
  [(_ADPBDeviceSetDataRequest *)self setSharedId:v8];

  v9 = [v4 loggingSharedUserId];
  [(_ADPBDeviceSetDataRequest *)self setLoggingSharedId:v9];

  v10 = [v4 languageCode];
  [(_ADPBDeviceSetDataRequest *)self setLanguageCode:v10];

  v11 = [v4 previousLanguageCode];
  [(_ADPBDeviceSetDataRequest *)self setPreviousLangaugeCode:v11];

  v12 = objc_alloc_init(_ADPBDeviceOutputVoiceInfo);
  v13 = [v4 outputVoice];
  [(_ADPBDeviceOutputVoiceInfo *)v12 _ad_setVoiceInfo:v13];

  [(_ADPBDeviceSetDataRequest *)self setOutputVoice:v12];
  v14 = objc_alloc_init(_ADPBDeviceOutputVoiceInfo);
  v15 = [v4 previousOutputVoice];
  [(_ADPBDeviceOutputVoiceInfo *)v14 _ad_setVoiceInfo:v15];

  [(_ADPBDeviceSetDataRequest *)self setPreviousOutputVoice:v14];
  v16 = [v4 hostname];
  [(_ADPBDeviceSetDataRequest *)self setHostname:v16];

  -[_ADPBDeviceSetDataRequest setCloudSyncEnabled:](self, "setCloudSyncEnabled:", [v4 cloudSyncEnabled]);
  -[_ADPBDeviceSetDataRequest setShouldCensorSpeech:](self, "setShouldCensorSpeech:", [v4 shouldCensorSpeech]);
  v17 = [v4 userAgent];
  [(_ADPBDeviceSetDataRequest *)self setUserAgent:v17];

  -[_ADPBDeviceSetDataRequest setIsLocationSharingDevice:](self, "setIsLocationSharingDevice:", [v4 isLocationSharingDevice]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = [v4 notificationPreviewRestrictedApps];
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(v18);
        }

        [(_ADPBDeviceSetDataRequest *)self addNotificationPreviewRestrictedApps:*(*(&v32 + 1) + 8 * v22)];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v20);
  }

  v23 = [v4 temperatureUnit];
  [(_ADPBDeviceSetDataRequest *)self setTemperatureUnit:v23];

  v24 = [v4 airplayRouteId];
  [(_ADPBDeviceSetDataRequest *)self setAirplayRouteId:v24];

  v25 = [v4 storeFrontId];
  [(_ADPBDeviceSetDataRequest *)self setStoreFrontId:v25];

  v26 = [v4 ekToken];
  [(_ADPBDeviceSetDataRequest *)self setEkToken:v26];

  v27 = [v4 userToken];
  [(_ADPBDeviceSetDataRequest *)self setUserToken:v27];

  -[_ADPBDeviceSetDataRequest setIsRemotePlaybackDevice:](self, "setIsRemotePlaybackDevice:", [v4 isRemotePlaybackDevice]);
  v28 = [v4 userAssignedName];
  [(_ADPBDeviceSetDataRequest *)self setUserAssignedName:v28];

  v29 = [v4 utsRequiredRequestKeyValuePairs];
  v30 = [_ADPBDeviceStringKeyValueDictionary _ad_keyValueDictionaryWithDictionary:v29];
  [(_ADPBDeviceSetDataRequest *)self setUtsRequiredRequestData:v30];

  v31 = [v4 dataSharingOptInStatus];
  [(_ADPBDeviceSetDataRequest *)self setDataSharingOptInStatus:v31];

  -[_ADPBDeviceSetDataRequest setFullUodEnabled:](self, "setFullUodEnabled:", [v4 isFullUodEnabled]);
}

- (ADSharedData)_ad_data
{
  v3 = objc_alloc_init(ADSharedData);
  [(ADSharedData *)v3 setSiriEnabled:[(_ADPBDeviceSetDataRequest *)self siriEnabled]];
  [(ADSharedData *)v3 setDictationEnabled:[(_ADPBDeviceSetDataRequest *)self dictationEnabled]];
  v4 = [(_ADPBDeviceSetDataRequest *)self assistantId];
  [(ADSharedData *)v3 setAssistantId:v4];

  v5 = [(_ADPBDeviceSetDataRequest *)self loggingAssistantId];
  [(ADSharedData *)v3 setLoggingAssistantId:v5];

  v6 = [(_ADPBDeviceSetDataRequest *)self speechId];
  [(ADSharedData *)v3 setSpeechId:v6];

  v7 = [(_ADPBDeviceSetDataRequest *)self sharedId];
  [(ADSharedData *)v3 setSharedUserId:v7];

  v8 = [(_ADPBDeviceSetDataRequest *)self loggingSharedId];
  [(ADSharedData *)v3 setLoggingSharedUserId:v8];

  v9 = [(_ADPBDeviceSetDataRequest *)self languageCode];
  [(ADSharedData *)v3 setLanguageCode:v9];

  v10 = [(_ADPBDeviceSetDataRequest *)self previousLangaugeCode];
  [(ADSharedData *)v3 setPreviousLanguageCode:v10];

  v11 = [(_ADPBDeviceSetDataRequest *)self outputVoice];
  v12 = [v11 _ad_voiceInfo];
  [(ADSharedData *)v3 setOutputVoice:v12];

  v13 = [(_ADPBDeviceSetDataRequest *)self previousOutputVoice];
  v14 = [v13 _ad_voiceInfo];
  [(ADSharedData *)v3 setPreviousOutputVoice:v14];

  v15 = [(_ADPBDeviceSetDataRequest *)self hostname];
  [(ADSharedData *)v3 setHostname:v15];

  [(ADSharedData *)v3 setCloudSyncEnabled:[(_ADPBDeviceSetDataRequest *)self cloudSyncEnabled]];
  [(ADSharedData *)v3 setShouldCensorSpeech:[(_ADPBDeviceSetDataRequest *)self shouldCensorSpeech]];
  v16 = [(_ADPBDeviceSetDataRequest *)self userAgent];
  [(ADSharedData *)v3 setUserAgent:v16];

  [(ADSharedData *)v3 setIsLocationSharingDevice:[(_ADPBDeviceSetDataRequest *)self isLocationSharingDevice]];
  v17 = [(_ADPBDeviceSetDataRequest *)self notificationPreviewRestrictedApps];
  [(ADSharedData *)v3 setNotificationPreviewRestrictedApps:v17];

  v18 = [(_ADPBDeviceSetDataRequest *)self temperatureUnit];
  [(ADSharedData *)v3 setTemperatureUnit:v18];

  v19 = [(_ADPBDeviceSetDataRequest *)self airplayRouteId];
  [(ADSharedData *)v3 setAirplayRouteId:v19];

  v20 = [(_ADPBDeviceSetDataRequest *)self storeFrontId];
  [(ADSharedData *)v3 setStoreFrontId:v20];

  v21 = [(_ADPBDeviceSetDataRequest *)self ekToken];
  [(ADSharedData *)v3 setEkToken:v21];

  v22 = [(_ADPBDeviceSetDataRequest *)self userToken];
  [(ADSharedData *)v3 setUserToken:v22];

  [(ADSharedData *)v3 setIsRemotePlaybackDevice:[(_ADPBDeviceSetDataRequest *)self isRemotePlaybackDevice]];
  v23 = [(_ADPBDeviceSetDataRequest *)self userAssignedName];
  [(ADSharedData *)v3 setUserAssignedName:v23];

  v24 = [(_ADPBDeviceSetDataRequest *)self utsRequiredRequestData];
  v25 = [v24 _ad_dictionaryRepresentation];
  [(ADSharedData *)v3 setUtsRequiredRequestKeyValuePairs:v25];

  v26 = [(_ADPBDeviceSetDataRequest *)self dataSharingOptInStatus];
  [(ADSharedData *)v3 setDataSharingOptInStatus:v26];

  [(ADSharedData *)v3 setIsFullUodEnabled:[(_ADPBDeviceSetDataRequest *)self fullUodEnabled]];

  return v3;
}

@end