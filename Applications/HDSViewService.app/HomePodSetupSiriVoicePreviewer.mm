@interface HomePodSetupSiriVoicePreviewer
- (SFSession)session;
- (SUICVoicePreviewingDelegate)delegate;
- (void)_updatePowerOutputLevel;
- (void)previewVoice:(id)voice completion:(id)completion;
@end

@implementation HomePodSetupSiriVoicePreviewer

- (void)previewVoice:(id)voice completion:(id)completion
{
  voiceCopy = voice;
  completionCopy = completion;
  v9 = +[NSMutableDictionary dictionary];
  languageCode = [voiceCopy languageCode];
  if (languageCode)
  {
    [v9 setObject:languageCode forKeyedSubscript:@"siriVL"];
  }

  name = [voiceCopy name];

  if (name)
  {
    [v9 setObject:name forKeyedSubscript:@"siriVN"];
  }

  gender = [voiceCopy gender];
  if (gender)
  {
    v13 = [NSNumber numberWithInteger:gender];
    [v9 setObject:v13 forKeyedSubscript:@"siriVG"];
  }

  if (![(NSTimer *)self->_powerLevelUpdaterTimer isValid])
  {
    v14 = [NSTimer scheduledTimerWithTimeInterval:self target:"_updatePowerOutputLevel" selector:0 userInfo:1 repeats:0.0166666675];
    powerLevelUpdaterTimer = self->_powerLevelUpdaterTimer;
    self->_powerLevelUpdaterTimer = v14;
  }

  objc_storeStrong(&self->_voicePreviewing, voice);
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000086F8;
  v19[3] = &unk_1000EDCB8;
  objc_copyWeak(&v22, &location);
  v17 = voiceCopy;
  v20 = v17;
  v18 = completionCopy;
  v21 = v18;
  [WeakRetained sendRequestID:@"_pvoice" options:&off_1000F3BE8 request:v9 responseHandler:v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_updatePowerOutputLevel
{
  if (self->_voicePreviewing)
  {
    v3 = arc4random_uniform(0x32u) + -60.0;
  }

  else
  {
    [(NSTimer *)self->_powerLevelUpdaterTimer invalidate];
    powerLevelUpdaterTimer = self->_powerLevelUpdaterTimer;
    self->_powerLevelUpdaterTimer = 0;

    v3 = -60.0;
  }

  delegate = [(HomePodSetupSiriVoicePreviewer *)self delegate];
  *&v5 = v3;
  [delegate voicePreviewerAudioOutputDidChangePowerLevel:v5];
}

- (SUICVoicePreviewingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_voicePreviewerDelegate);

  return WeakRetained;
}

- (SFSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end