@interface HomePodSetupSiriVoicePreviewer
- (SFSession)session;
- (SUICVoicePreviewingDelegate)delegate;
- (void)_updatePowerOutputLevel;
- (void)previewVoice:(id)a3 completion:(id)a4;
@end

@implementation HomePodSetupSiriVoicePreviewer

- (void)previewVoice:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSMutableDictionary dictionary];
  v10 = [v7 languageCode];
  if (v10)
  {
    [v9 setObject:v10 forKeyedSubscript:@"siriVL"];
  }

  v11 = [v7 name];

  if (v11)
  {
    [v9 setObject:v11 forKeyedSubscript:@"siriVN"];
  }

  v12 = [v7 gender];
  if (v12)
  {
    v13 = [NSNumber numberWithInteger:v12];
    [v9 setObject:v13 forKeyedSubscript:@"siriVG"];
  }

  if (![(NSTimer *)self->_powerLevelUpdaterTimer isValid])
  {
    v14 = [NSTimer scheduledTimerWithTimeInterval:self target:"_updatePowerOutputLevel" selector:0 userInfo:1 repeats:0.0166666675];
    powerLevelUpdaterTimer = self->_powerLevelUpdaterTimer;
    self->_powerLevelUpdaterTimer = v14;
  }

  objc_storeStrong(&self->_voicePreviewing, a3);
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000086F8;
  v19[3] = &unk_1000EDCB8;
  objc_copyWeak(&v22, &location);
  v17 = v7;
  v20 = v17;
  v18 = v8;
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

  v6 = [(HomePodSetupSiriVoicePreviewer *)self delegate];
  *&v5 = v3;
  [v6 voicePreviewerAudioOutputDidChangePowerLevel:v5];
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