@interface ADSharedData
- (id)description;
@end

@implementation ADSharedData

- (id)description
{
  v27 = [NSString alloc];
  v35.receiver = self;
  v35.super_class = ADSharedData;
  v3 = [(ADSharedData *)&v35 description];
  userAssignedName = self->_userAssignedName;
  v4 = [NSNumber numberWithBool:self->_siriEnabled];
  v5 = [NSNumber numberWithBool:self->_dictationEnabled];
  loggingAssistantId = self->_loggingAssistantId;
  assistantId = self->_assistantId;
  sharedUserId = self->_sharedUserId;
  speechId = self->_speechId;
  languageCode = self->_languageCode;
  loggingSharedUserId = self->_loggingSharedUserId;
  previousLanguageCode = self->_previousLanguageCode;
  v34 = [(AFVoiceInfo *)self->_outputVoice languageCode];
  v32 = [(AFVoiceInfo *)self->_outputVoice name];
  v26 = v32;
  if (!v32)
  {
    v32 = [(AFVoiceInfo *)self->_outputVoice genderString];
  }

  v28 = v5;
  v29 = v4;
  v30 = v3;
  v33 = [(AFVoiceInfo *)self->_previousOutputVoice languageCode];
  v6 = [(AFVoiceInfo *)self->_previousOutputVoice name];
  v31 = v6;
  if (!v6)
  {
    v31 = [(AFVoiceInfo *)self->_previousOutputVoice genderString];
  }

  hostname = self->_hostname;
  v7 = [NSNumber numberWithBool:self->_cloudSyncEnabled];
  v8 = [NSNumber numberWithBool:self->_shouldCensorSpeech];
  userAgent = self->_userAgent;
  v10 = [NSNumber numberWithBool:self->_isLocationSharingDevice];
  notificationPreviewRestrictedApps = self->_notificationPreviewRestrictedApps;
  temperatureUnit = self->_temperatureUnit;
  v13 = [NSNumber numberWithBool:self->_isRemotePlaybackDevice];
  v14 = [NSNumber numberWithBool:self->_isFullUodEnabled];
  v15 = [v27 initWithFormat:@"%@ name: %@ enabled: %@ dictation: %@ assistant id: %@ logging assistant id: %@ speech id: %@ sharedUserId: %@ logging sharedUserId: %@ language: %@ prev language: %@ outputVoice: %@ %@ prev: outputVoice: %@ %@ hostname: %@ cloud sync enabled: %@ should censor speech: %@ user agent: %@ is location sharing device: %@ notification restricted apps: %@ temperature unit: %@ remote playback device: %@ isFullUodEnabled: %@", v30, userAssignedName, v29, v28, assistantId, loggingAssistantId, speechId, sharedUserId, loggingSharedUserId, languageCode, previousLanguageCode, v34, v32, v33, v31, hostname, v7, v8, userAgent, v10, notificationPreviewRestrictedApps, temperatureUnit, v13, v14];

  if (!v6)
  {
  }

  if (!v26)
  {
  }

  return v15;
}

@end