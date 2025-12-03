@interface ADiOSAssistantPropertiesUtilities
+ (int)_audibleVoiceFeedbackSettingFromSISchemaToODD:(int)d;
+ (int)_heySiriHangupEnablementStateFromSISchemaToODD:(int)d;
+ (int)_siriInCallEnablementStateFromSISchemaToODD:(int)d;
+ (int)getHangUpEnablementState;
+ (int)getODDCarPlayAnnounceStatusFrom:(int64_t)from;
+ (int)getSiriInCallEnablementState;
+ (int)getSiriPauseTimeStateFrom:(int64_t)from;
+ (int)getVoiceFeedbackStatus;
@end

@implementation ADiOSAssistantPropertiesUtilities

+ (int)_audibleVoiceFeedbackSettingFromSISchemaToODD:(int)d
{
  if ((d - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return d;
  }
}

+ (int)_siriInCallEnablementStateFromSISchemaToODD:(int)d
{
  if ((d - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return d;
  }
}

+ (int)_heySiriHangupEnablementStateFromSISchemaToODD:(int)d
{
  if ((d - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return d;
  }
}

+ (int)getSiriPauseTimeStateFrom:(int64_t)from
{
  if ((from - 1) < 3)
  {
    return from;
  }

  else
  {
    return 0;
  }
}

+ (int)getODDCarPlayAnnounceStatusFrom:(int64_t)from
{
  if ((from - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_1003F0340[from - 1];
  }
}

+ (int)getVoiceFeedbackStatus
{
  v3 = +[AFPreferences sharedPreferences];
  useDeviceSpeakerForTTS = [v3 useDeviceSpeakerForTTS];

  if (useDeviceSpeakerForTTS > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_1003F0330[useDeviceSpeakerForTTS];
  }

  return [self _audibleVoiceFeedbackSettingFromSISchemaToODD:v5];
}

+ (int)getSiriInCallEnablementState
{
  if (AFDeviceSupportsFullSiriUOD() && (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 siriInCallEnablementState], v3, v4 <= 2))
  {
    v5 = dword_1003F03BC[v4];
  }

  else
  {
    v5 = 0;
  }

  return [self _siriInCallEnablementStateFromSISchemaToODD:v5];
}

+ (int)getHangUpEnablementState
{
  if (AFSupportsCallHangUp() && (+[VTPreferences sharedPreferences](VTPreferences, "sharedPreferences"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 canUseVoiceTriggerDuringPhoneCallWithState], v3, v4 <= 2))
  {
    v5 = dword_1003F03BC[v4];
  }

  else
  {
    v5 = 0;
  }

  return [self _heySiriHangupEnablementStateFromSISchemaToODD:v5];
}

@end