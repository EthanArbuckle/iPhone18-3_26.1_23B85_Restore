@interface AFUIVoicemailPlayer
- (VMVoicemail)_voicemailObject;
- (id)_audioURL;
- (id)_voicemailManager;
- (int64_t)_voicemailID;
- (void)_updateVoicemailPlayedState:(id)a3 finished:(BOOL)a4;
- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4;
- (void)setPlaybackCommand:(id)a3;
@end

@implementation AFUIVoicemailPlayer

- (void)setPlaybackCommand:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5.receiver = self;
    v5.super_class = AFUIVoicemailPlayer;
    [(AFUIAudioPlayer *)&v5 setPlaybackCommand:v4];
    [(AFUIVoicemailPlayer *)self _setVoicemailObject:0];
  }
}

- (id)_voicemailManager
{
  voicemailManager = self->_voicemailManager;
  if (!voicemailManager)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getVMVoicemailManagerClass_softClass;
    v13 = getVMVoicemailManagerClass_softClass;
    if (!getVMVoicemailManagerClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getVMVoicemailManagerClass_block_invoke;
      v9[3] = &unk_278CD54F0;
      v9[4] = &v10;
      __getVMVoicemailManagerClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_voicemailManager;
    self->_voicemailManager = v6;

    voicemailManager = self->_voicemailManager;
  }

  return voicemailManager;
}

- (int64_t)_voicemailID
{
  v2 = [(AFUIVoicemailPlayer *)self _audioURL];
  v3 = [v2 URLByDeletingPathExtension];

  v4 = [v3 lastPathComponent];
  v5 = [v4 integerValue];

  return v5;
}

- (VMVoicemail)_voicemailObject
{
  voicemailObject = self->_voicemailObject;
  if (!voicemailObject)
  {
    v4 = [(AFUIVoicemailPlayer *)self _voicemailManager];
    v5 = [v4 voicemailWithIdentifier:{-[AFUIVoicemailPlayer _voicemailID](self, "_voicemailID")}];
    v6 = self->_voicemailObject;
    self->_voicemailObject = v5;

    voicemailObject = self->_voicemailObject;
  }

  return voicemailObject;
}

- (void)_updateVoicemailPlayedState:(id)a3 finished:(BOOL)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 duration];
  v8 = v7;
  [v6 currentTime];
  v10 = v9;

  if (a4 || v8 != 0.0 && v10 / v8 > 0.75)
  {
    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(AFUIVoicemailPlayer *)self _audioURL];
      v17 = 136315394;
      v18 = "[AFUIVoicemailPlayer _updateVoicemailPlayedState:finished:]";
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_241432000, v12, OS_LOG_TYPE_DEFAULT, "%s Marking voicemail as played %@", &v17, 0x16u);
    }

    v14 = [(AFUIVoicemailPlayer *)self _voicemailManager];
    v15 = [(AFUIVoicemailPlayer *)self _voicemailObject];
    v16 = [v14 markVoicemailAsRead:v15];
  }
}

- (id)_audioURL
{
  v3 = [(AFUIAudioPlayer *)self playbackCommand];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(AFUIAudioPlayer *)self playbackCommand];
    v6 = [v5 voiceMailId];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(AFUIVoicemailPlayer *)self _updateVoicemailPlayedState:v6 finished:v4];
  v7.receiver = self;
  v7.super_class = AFUIVoicemailPlayer;
  [(AFUIAudioPlayer *)&v7 audioPlayerDidFinishPlaying:v6 successfully:v4];
}

@end