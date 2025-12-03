@interface AFUIVoicemailPlayer
- (VMVoicemail)_voicemailObject;
- (id)_audioURL;
- (id)_voicemailManager;
- (int64_t)_voicemailID;
- (void)_updateVoicemailPlayedState:(id)state finished:(BOOL)finished;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)setPlaybackCommand:(id)command;
@end

@implementation AFUIVoicemailPlayer

- (void)setPlaybackCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5.receiver = self;
    v5.super_class = AFUIVoicemailPlayer;
    [(AFUIAudioPlayer *)&v5 setPlaybackCommand:commandCopy];
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
  _audioURL = [(AFUIVoicemailPlayer *)self _audioURL];
  uRLByDeletingPathExtension = [_audioURL URLByDeletingPathExtension];

  lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];
  integerValue = [lastPathComponent integerValue];

  return integerValue;
}

- (VMVoicemail)_voicemailObject
{
  voicemailObject = self->_voicemailObject;
  if (!voicemailObject)
  {
    _voicemailManager = [(AFUIVoicemailPlayer *)self _voicemailManager];
    v5 = [_voicemailManager voicemailWithIdentifier:{-[AFUIVoicemailPlayer _voicemailID](self, "_voicemailID")}];
    v6 = self->_voicemailObject;
    self->_voicemailObject = v5;

    voicemailObject = self->_voicemailObject;
  }

  return voicemailObject;
}

- (void)_updateVoicemailPlayedState:(id)state finished:(BOOL)finished
{
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  [stateCopy duration];
  v8 = v7;
  [stateCopy currentTime];
  v10 = v9;

  if (finished || v8 != 0.0 && v10 / v8 > 0.75)
  {
    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      _audioURL = [(AFUIVoicemailPlayer *)self _audioURL];
      v17 = 136315394;
      v18 = "[AFUIVoicemailPlayer _updateVoicemailPlayedState:finished:]";
      v19 = 2112;
      v20 = _audioURL;
      _os_log_impl(&dword_241432000, v12, OS_LOG_TYPE_DEFAULT, "%s Marking voicemail as played %@", &v17, 0x16u);
    }

    _voicemailManager = [(AFUIVoicemailPlayer *)self _voicemailManager];
    _voicemailObject = [(AFUIVoicemailPlayer *)self _voicemailObject];
    v16 = [_voicemailManager markVoicemailAsRead:_voicemailObject];
  }
}

- (id)_audioURL
{
  playbackCommand = [(AFUIAudioPlayer *)self playbackCommand];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    playbackCommand2 = [(AFUIAudioPlayer *)self playbackCommand];
    voiceMailId = [playbackCommand2 voiceMailId];
  }

  else
  {
    voiceMailId = 0;
  }

  return voiceMailId;
}

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  playingCopy = playing;
  [(AFUIVoicemailPlayer *)self _updateVoicemailPlayedState:playingCopy finished:successfullyCopy];
  v7.receiver = self;
  v7.super_class = AFUIVoicemailPlayer;
  [(AFUIAudioPlayer *)&v7 audioPlayerDidFinishPlaying:playingCopy successfully:successfullyCopy];
}

@end