@interface AAProxCardsInfo
- (AAProxCardsInfo)initWithBluetoothAddress:(id)a3;
- (AAProxCardsInfo)initWithCoder:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAProxCardsInfo

- (AAProxCardsInfo)initWithBluetoothAddress:(id)a3
{
  v4 = a3;
  v5 = [(AAProxCardsInfo *)self init];
  if (v5)
  {
    v6 = [v4 uppercaseString];
    bluetoothAddress = v5->_bluetoothAddress;
    v5->_bluetoothAddress = v6;

    v8 = v5;
  }

  return v5;
}

- (id)descriptionWithLevel:(int)a3
{
  v25 = [objc_opt_class() description];
  NSAppendPrintF_safe();
  v5 = 0;

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    v26 = bluetoothAddress;
    NSAppendPrintF_safe();
    v7 = v5;

    v5 = v7;
  }

  if (self->_caseDoubleTapVersion)
  {
    caseDoubleTapVersion = self->_caseDoubleTapVersion;
    NSAppendPrintF_safe();
    v8 = v5;

    v5 = v8;
  }

  if (self->_chargingRemindersVersion)
  {
    chargingRemindersVersion = self->_chargingRemindersVersion;
    NSAppendPrintF_safe();
    v9 = v5;

    v5 = v9;
  }

  if (self->_dynamicEndOfChargeNotificationVersion)
  {
    dynamicEndOfChargeNotificationVersion = self->_dynamicEndOfChargeNotificationVersion;
    NSAppendPrintF_safe();
    v10 = v5;

    v5 = v10;
  }

  if (self->_fitEducationNotificationsShownCount)
  {
    fitEducationNotificationsShownCount = self->_fitEducationNotificationsShownCount;
    NSAppendPrintF_safe();
    v11 = v5;

    v5 = v11;
  }

  if (self->_headGesturesVersion)
  {
    headGesturesVersion = self->_headGesturesVersion;
    NSAppendPrintF_safe();
    v12 = v5;

    v5 = v12;
  }

  if (self->_hearingAssistVersion)
  {
    hearingAssistVersion = self->_hearingAssistVersion;
    NSAppendPrintF_safe();
    v13 = v5;

    v5 = v13;
  }

  if (self->_hearingTestVersion)
  {
    hearingTestVersion = self->_hearingTestVersion;
    NSAppendPrintF_safe();
    v14 = v5;

    v5 = v14;
  }

  if (self->_heartRateVersion)
  {
    heartRateVersion = self->_heartRateVersion;
    NSAppendPrintF_safe();
    v15 = v5;

    v5 = v15;
  }

  if (self->_newChargingStatusVersion)
  {
    newChargingStatusVersion = self->_newChargingStatusVersion;
    NSAppendPrintF_safe();
    v16 = v5;

    v5 = v16;
  }

  if (self->_pauseMediaOnSleepVersion)
  {
    pauseMediaOnSleepVersion = self->_pauseMediaOnSleepVersion;
    NSAppendPrintF_safe();
    v17 = v5;

    v5 = v17;
  }

  if (self->_personalTranslatorVersion)
  {
    personalTranslatorVersion = self->_personalTranslatorVersion;
    NSAppendPrintF_safe();
    v18 = v5;

    v5 = v18;
  }

  if (self->_remoteCameraControlVersion)
  {
    remoteCameraControlVersion = self->_remoteCameraControlVersion;
    NSAppendPrintF_safe();
    v19 = v5;

    v5 = v19;
  }

  if (self->_usbAudioVersion)
  {
    usbAudioVersion = self->_usbAudioVersion;
    NSAppendPrintF_safe();
    v20 = v5;

    v5 = v20;
  }

  if (self->_voiceQualityVersion)
  {
    voiceQualityVersion = self->_voiceQualityVersion;
    NSAppendPrintF_safe();
    v21 = v5;

    v5 = v21;
  }

  if (self->_whatsNewVersion)
  {
    whatsNewVersion = self->_whatsNewVersion;
    NSAppendPrintF_safe();
    v22 = v5;

    v5 = v22;
  }

  if (a3 < 21)
  {
    NSAppendPrintF_safe();
    v23 = v5;

    v5 = v23;
  }

  return v5;
}

- (AAProxCardsInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AAProxCardsInfo *)self init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    if ([v7 containsValueForKey:@"caDT"])
    {
      v5->_caseDoubleTapVersion = [v7 decodeInt64ForKey:@"caDT"];
    }

    v8 = v7;
    if ([v8 containsValueForKey:@"chR"])
    {
      v5->_chargingRemindersVersion = [v8 decodeInt64ForKey:@"chR"];
    }

    v9 = v8;
    if ([v9 containsValueForKey:@"decN"])
    {
      v5->_dynamicEndOfChargeNotificationVersion = [v9 decodeInt64ForKey:@"decN"];
    }

    v10 = v9;
    if ([v10 containsValueForKey:@"fitEdN"])
    {
      v5->_fitEducationNotificationsShownCount = [v10 decodeInt64ForKey:@"fitEdN"];
    }

    v11 = v10;
    if ([v11 containsValueForKey:@"hGes"])
    {
      v5->_headGesturesVersion = [v11 decodeInt64ForKey:@"hGes"];
    }

    v12 = v11;
    if ([v12 containsValueForKey:@"hgAs"])
    {
      v5->_hearingAssistVersion = [v12 decodeInt64ForKey:@"hgAs"];
    }

    v13 = v12;
    if ([v13 containsValueForKey:@"hgTs"])
    {
      v5->_hearingTestVersion = [v13 decodeInt64ForKey:@"hgTs"];
    }

    v14 = v13;
    if ([v14 containsValueForKey:@"heRa"])
    {
      v5->_heartRateVersion = [v14 decodeInt64ForKey:@"heRa"];
    }

    v15 = v14;
    if ([v15 containsValueForKey:@"nCh"])
    {
      v5->_newChargingStatusVersion = [v15 decodeInt64ForKey:@"nCh"];
    }

    v16 = v15;
    if ([v16 containsValueForKey:@"pMOS"])
    {
      v5->_pauseMediaOnSleepVersion = [v16 decodeInt64ForKey:@"pMOS"];
    }

    v17 = v16;
    if ([v17 containsValueForKey:@"prT"])
    {
      v5->_personalTranslatorVersion = [v17 decodeInt64ForKey:@"prT"];
    }

    v18 = v17;
    if ([v18 containsValueForKey:@"rCC"])
    {
      v5->_remoteCameraControlVersion = [v18 decodeInt64ForKey:@"rCC"];
    }

    v19 = v18;
    if ([v19 containsValueForKey:@"usbA"])
    {
      v5->_usbAudioVersion = [v19 decodeInt64ForKey:@"usbA"];
    }

    v20 = v19;
    if ([v20 containsValueForKey:@"voQu"])
    {
      v5->_voiceQualityVersion = [v20 decodeInt64ForKey:@"voQu"];
    }

    v21 = v20;
    if ([v21 containsValueForKey:@"wNew"])
    {
      v5->_whatsNewVersion = [v21 decodeInt64ForKey:@"wNew"];
    }

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  bluetoothAddress = self->_bluetoothAddress;
  v21 = v4;
  if (bluetoothAddress)
  {
    [v4 encodeObject:bluetoothAddress forKey:@"btAd"];
    v4 = v21;
  }

  caseDoubleTapVersion = self->_caseDoubleTapVersion;
  if (caseDoubleTapVersion)
  {
    [v21 encodeInt64:caseDoubleTapVersion forKey:@"caDT"];
    v4 = v21;
  }

  chargingRemindersVersion = self->_chargingRemindersVersion;
  if (chargingRemindersVersion)
  {
    [v21 encodeInt64:chargingRemindersVersion forKey:@"chR"];
    v4 = v21;
  }

  dynamicEndOfChargeNotificationVersion = self->_dynamicEndOfChargeNotificationVersion;
  if (dynamicEndOfChargeNotificationVersion)
  {
    [v21 encodeInt64:dynamicEndOfChargeNotificationVersion forKey:@"decN"];
    v4 = v21;
  }

  fitEducationNotificationsShownCount = self->_fitEducationNotificationsShownCount;
  if (fitEducationNotificationsShownCount)
  {
    [v21 encodeInt64:fitEducationNotificationsShownCount forKey:@"fitEdN"];
    v4 = v21;
  }

  headGesturesVersion = self->_headGesturesVersion;
  if (headGesturesVersion)
  {
    [v21 encodeInt64:headGesturesVersion forKey:@"hGes"];
    v4 = v21;
  }

  hearingAssistVersion = self->_hearingAssistVersion;
  if (hearingAssistVersion)
  {
    [v21 encodeInt64:hearingAssistVersion forKey:@"hgAs"];
    v4 = v21;
  }

  hearingTestVersion = self->_hearingTestVersion;
  if (hearingTestVersion)
  {
    [v21 encodeInt64:hearingTestVersion forKey:@"hgTs"];
    v4 = v21;
  }

  heartRateVersion = self->_heartRateVersion;
  if (heartRateVersion)
  {
    [v21 encodeInt64:heartRateVersion forKey:@"heRa"];
    v4 = v21;
  }

  newChargingStatusVersion = self->_newChargingStatusVersion;
  if (newChargingStatusVersion)
  {
    [v21 encodeInt64:newChargingStatusVersion forKey:@"nCh"];
    v4 = v21;
  }

  pauseMediaOnSleepVersion = self->_pauseMediaOnSleepVersion;
  if (pauseMediaOnSleepVersion)
  {
    [v21 encodeInt64:pauseMediaOnSleepVersion forKey:@"pMOS"];
    v4 = v21;
  }

  personalTranslatorVersion = self->_personalTranslatorVersion;
  if (personalTranslatorVersion)
  {
    [v21 encodeInt64:personalTranslatorVersion forKey:@"prT"];
    v4 = v21;
  }

  remoteCameraControlVersion = self->_remoteCameraControlVersion;
  if (remoteCameraControlVersion)
  {
    [v21 encodeInt64:remoteCameraControlVersion forKey:@"rCC"];
    v4 = v21;
  }

  usbAudioVersion = self->_usbAudioVersion;
  if (usbAudioVersion)
  {
    [v21 encodeInt64:usbAudioVersion forKey:@"usbA"];
    v4 = v21;
  }

  voiceQualityVersion = self->_voiceQualityVersion;
  if (voiceQualityVersion)
  {
    [v21 encodeInt64:voiceQualityVersion forKey:@"voQu"];
    v4 = v21;
  }

  whatsNewVersion = self->_whatsNewVersion;
  if (whatsNewVersion)
  {
    [v21 encodeInt64:whatsNewVersion forKey:@"wNew"];
    v4 = v21;
  }
}

@end