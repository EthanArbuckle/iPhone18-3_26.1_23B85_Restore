@interface AFUIAudioPlayer
+ (id)audioMessagePlayer;
+ (id)voicemailPlayer;
- (AFUIAudioPlayerDelegate)delegate;
- (NSUUID)conversationItemIdentifier;
- (id)_audioURL;
- (void)_setPlayer:(id)player;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)startPlaying;
- (void)stopPlaying;
@end

@implementation AFUIAudioPlayer

+ (id)voicemailPlayer
{
  v2 = objc_alloc_init(AFUIVoicemailPlayer);

  return v2;
}

- (void)stopPlaying
{
  _player = [(AFUIAudioPlayer *)self _player];
  [_player stop];
}

+ (id)audioMessagePlayer
{
  v2 = objc_alloc_init(AFUIAudioMessagePlayer);

  return v2;
}

- (void)startPlaying
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(AFUIAudioPlayer *)self description];
    _audioURL = [(AFUIAudioPlayer *)self _audioURL];
    *buf = 136315650;
    v27 = "[AFUIAudioPlayer startPlaying]";
    v28 = 2112;
    v29 = v6;
    v30 = 2112;
    v31 = _audioURL;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s Playing audio from %@: %@", buf, 0x20u);
  }

  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  v25 = 0;
  v9 = [mEMORY[0x277CB83F8] setActive:1 error:&v25];
  v10 = v25;

  if ((v9 & 1) == 0)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      [AFUIAudioPlayer startPlaying];
    }

    goto LABEL_14;
  }

  mEMORY[0x277CB83F8]2 = [MEMORY[0x277CB83F8] sharedInstance];
  _audioCategory = [(AFUIAudioPlayer *)self _audioCategory];
  v24 = v10;
  v13 = [mEMORY[0x277CB83F8]2 setCategory:_audioCategory withOptions:-[AFUIAudioPlayer _audioOptions](self error:{"_audioOptions"), &v24}];
  v14 = v24;

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      [AFUIAudioPlayer startPlaying];
    }

    v10 = v14;
    goto LABEL_14;
  }

  v15 = objc_alloc(MEMORY[0x277CB83D0]);
  _audioURL2 = [(AFUIAudioPlayer *)self _audioURL];
  v23 = v14;
  v17 = [v15 initWithContentsOfURL:_audioURL2 error:&v23];
  v10 = v23;

  if (!v17)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      [AFUIAudioPlayer startPlaying];
    }

LABEL_14:
    delegate = [(AFUIAudioPlayer *)self delegate];
    playbackCommand = [(AFUIAudioPlayer *)self playbackCommand];
    [delegate audioPlayer:self didFinishPlayback:playbackCommand];

    goto LABEL_15;
  }

  [(AFUIAudioPlayer *)self _setPlayer:v17];
  _player = [(AFUIAudioPlayer *)self _player];
  [_player prepareToPlay];

  _player2 = [(AFUIAudioPlayer *)self _player];
  [_player2 setCurrentTime:0.0];

  _player3 = [(AFUIAudioPlayer *)self _player];
  [_player3 play];

  delegate = [(AFUIAudioPlayer *)self delegate];
  [delegate audioPlayerStartPlaying:self];
LABEL_15:
}

- (void)_setPlayer:(id)player
{
  playerCopy = player;
  [(AVAudioPlayer *)self->_player setDelegate:0];
  player = self->_player;
  self->_player = playerCopy;
  v6 = playerCopy;

  [(AVAudioPlayer *)self->_player setDelegate:self];
}

- (id)_audioURL
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AFUIAudioPlayer.m" lineNumber:86 description:@"This method should be overwritten by child class!"];

  return 0;
}

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  v22 = *MEMORY[0x277D85DE8];
  playingCopy = playing;
  v6 = MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(AFUIAudioPlayer *)self description];
    _audioURL = [(AFUIAudioPlayer *)self _audioURL];
    *buf = 136315650;
    v17 = "[AFUIAudioPlayer audioPlayerDidFinishPlaying:successfully:]";
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = _audioURL;
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s %@ did finish playing %@", buf, 0x20u);
  }

  if ([(AFUIAudioPlayer *)self deactivateAudioSessionOnPlaybackFinished])
  {
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    v15 = 0;
    [mEMORY[0x277CB83F8] setActive:0 withOptions:1 error:&v15];
    v12 = v15;

    if (v12 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      [AFUIAudioPlayer audioPlayerDidFinishPlaying:successfully:];
    }
  }

  delegate = [(AFUIAudioPlayer *)self delegate];
  playbackCommand = [(AFUIAudioPlayer *)self playbackCommand];
  [delegate audioPlayer:self didFinishPlayback:playbackCommand];
}

- (AFUIAudioPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSUUID)conversationItemIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_conversationItemIdentifier);

  return WeakRetained;
}

@end