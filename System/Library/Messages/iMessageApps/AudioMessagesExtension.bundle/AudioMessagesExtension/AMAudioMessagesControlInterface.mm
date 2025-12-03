@interface AMAudioMessagesControlInterface
+ (BOOL)isCurrentEntryViewEmpty;
- (AMAudioMessagesControlInterface)initWithDelegate:(id)delegate;
- (AMAudioMessagesControlInterfaceDelegate)controlInterfaceDelegate;
- (BOOL)audioMessageRecordingAvailable;
- (CKMessageEntryView)currentEntryView;
- (NSArray)powerLevels;
- (double)duration;
- (void)audioMessageDidCancelMessage;
- (void)audioMessageDidChangeAudioPowerLevel:(float)level duration:(double)duration;
- (void)audioMessageDidChangeCurrentPlaybackTime:(double)time;
- (void)audioMessageDidEndPlayback;
- (void)audioMessageDidSendMessage;
- (void)audioMessageDidStartPlayback;
- (void)audioMessageRecordingAvailabilityChanged;
- (void)audioMessageStartedRecordingFromMessages;
- (void)audioMessageStoppedRecordingFromMessages;
- (void)cancelAudioMessage;
- (void)disableRotationWhileRecordingAudioMessage;
- (void)pausePlaying;
- (void)sendAudioMessage;
- (void)startPlaying;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation AMAudioMessagesControlInterface

- (AMAudioMessagesControlInterface)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = AMAudioMessagesControlInterface;
  v5 = [(AMAudioMessagesControlInterface *)&v9 init];
  if (v5)
  {
    v6 = +[CKMessageEntryView currentEntryView];
    objc_storeWeak(&v5->_currentEntryView, v6);

    WeakRetained = objc_loadWeakRetained(&v5->_currentEntryView);
    [WeakRetained setAudioMessageAppDelegate:v5];

    objc_storeWeak(&v5->_controlInterfaceDelegate, delegateCopy);
  }

  return v5;
}

- (BOOL)audioMessageRecordingAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_currentEntryView);
  isAudioMessageRecordingAvailable = [WeakRetained isAudioMessageRecordingAvailable];

  return isAudioMessageRecordingAvailable;
}

- (NSArray)powerLevels
{
  WeakRetained = objc_loadWeakRetained(&self->_currentEntryView);
  powerLevels = [WeakRetained powerLevels];

  return powerLevels;
}

- (double)duration
{
  WeakRetained = objc_loadWeakRetained(&self->_currentEntryView);
  [WeakRetained duration];
  v4 = v3;

  return v4;
}

- (void)startRecording
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface startRecording]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentEntryView);
  [WeakRetained startRecording];
}

- (void)stopRecording
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface stopRecording]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentEntryView);
  [WeakRetained stopRecording];
}

- (void)sendAudioMessage
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface sendAudioMessage]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentEntryView);
  [WeakRetained sendAudioMessage];
}

- (void)cancelAudioMessage
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface cancelAudioMessage]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentEntryView);
  [WeakRetained cancelAudioMessage];
}

- (void)startPlaying
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface startPlaying]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentEntryView);
  [WeakRetained startPlaying];
}

- (void)pausePlaying
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface pausePlaying]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentEntryView);
  [WeakRetained pausePlaying];
}

- (void)disableRotationWhileRecordingAudioMessage
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[AMAudioMessagesControlInterface disableRotationWhileRecordingAudioMessage]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentEntryView);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_currentEntryView);
    [v5 disableRotationWhileRecordingAudioMessage];
  }
}

+ (BOOL)isCurrentEntryViewEmpty
{
  v2 = +[CKMessageEntryView currentEntryView];
  composition = [v2 composition];
  hasContent = [composition hasContent];

  return hasContent ^ 1;
}

- (void)audioMessageDidCancelMessage
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface audioMessageDidCancelMessage]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_controlInterfaceDelegate);
  [WeakRetained audioMessageDidCancelMessage];
}

- (void)audioMessageDidChangeAudioPowerLevel:(float)level duration:(double)duration
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[AMAudioMessagesControlInterface audioMessageDidChangeAudioPowerLevel:duration:]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_controlInterfaceDelegate);
  *&v8 = level;
  [WeakRetained audioMessageDidChangeAudioPowerLevel:v8 duration:duration];
}

- (void)audioMessageDidChangeCurrentPlaybackTime:(double)time
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[AMAudioMessagesControlInterface audioMessageDidChangeCurrentPlaybackTime:]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_controlInterfaceDelegate);
  [WeakRetained audioMessageDidChangeCurrentPlaybackTime:time];
}

- (void)audioMessageDidEndPlayback
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface audioMessageDidEndPlayback]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_controlInterfaceDelegate);
  [WeakRetained audioMessageDidEndPlayback];
}

- (void)audioMessageDidSendMessage
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface audioMessageDidSendMessage]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_controlInterfaceDelegate);
  [WeakRetained audioMessageDidSendMessage];
}

- (void)audioMessageDidStartPlayback
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface audioMessageDidStartPlayback]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_controlInterfaceDelegate);
  [WeakRetained audioMessageDidStartPlayback];
}

- (void)audioMessageRecordingAvailabilityChanged
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface audioMessageRecordingAvailabilityChanged]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_controlInterfaceDelegate);
  [WeakRetained audioMessageRecordingAvailabilityChanged];
}

- (void)audioMessageStartedRecordingFromMessages
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface audioMessageStartedRecordingFromMessages]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_controlInterfaceDelegate);
  [WeakRetained audioMessageStartedRecordingFromMessages];
}

- (void)audioMessageStoppedRecordingFromMessages
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AMAudioMessagesControlInterface audioMessageStoppedRecordingFromMessages]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_controlInterfaceDelegate);
  [WeakRetained audioMessageStoppedRecordingFromMessages];
}

- (AMAudioMessagesControlInterfaceDelegate)controlInterfaceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controlInterfaceDelegate);

  return WeakRetained;
}

- (CKMessageEntryView)currentEntryView
{
  WeakRetained = objc_loadWeakRetained(&self->_currentEntryView);

  return WeakRetained;
}

@end